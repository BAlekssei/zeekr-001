#!/usr/bin/env python3
"""Находит поездки и зарядки в метриках zeekr_* и пишет по ним итоговые метрики обратно в VictoriaMetrics.

Аналог того, что TeslaMate делает при записи в БД (drives / charging_processes): дашбордам нужны готовые сессии.
Каждая сессия — набор метрик zeekr_drive_* / zeekr_charge_* с меткой id=<время начала, unix-секунды>
и временем точки = время окончания сессии. Пересчёт идемпотентен: окно последних WINDOW_H часов
пересчитывается целиком, а устаревшие id (если после обрыва связи пришли запоздавшие точки и границы
сессии сдвинулись) удаляются.

Только стандартная библиотека. Режимы: цикл (по умолчанию), --once, --dry-run, --selftest.
"""
import json, math, os, sys, time, urllib.parse, urllib.request

VM = os.environ.get("VM_URL", "http://victoria:8428")
STEP = int(os.environ.get("STEP_S", "15"))
WINDOW_H = int(os.environ.get("WINDOW_H", "72"))
INTERVAL = int(os.environ.get("INTERVAL_S", "300"))
CAPACITY_KWH = float(os.environ.get("CAPACITY_KWH", "100"))   # полезная ёмкость, для оценки энергии по SOC
DRIVE_GAP_S = int(os.environ.get("DRIVE_GAP_S", "300"))      # пауза, после которой поездка считается законченной
CHARGE_GAP_S = int(os.environ.get("CHARGE_GAP_S", "600"))
SPEED_UNIT_KMH = float(os.environ.get("SPEED_TO_KMH", "1"))   # множитель к значению zeekr_speed -> км/ч
SETTLE_S = int(os.environ.get("SETTLE_S", "600"))             # не закрывать сессию, пока не прошло столько после конца

P = lambda n, a=None: 'last_over_time(zeekr_prop{name="%s"%s}[2m])' % (n, "" if a is None else ',area="%s"' % a)
S = lambda n: "last_over_time(%s[2m])" % n
SERIES = {
    "speed": S("zeekr_speed"), "odo": S("zeekr_odometer_km"), "soc": S("zeekr_soc_percent"),
    "range": S("zeekr_range_km"), "temp": S("zeekr_outside_temp_c"),
    "plug_ac": P("ID_CHARGING_PLUG_STATE_AC"), "plug_dc": P("ID_CHARGING_PLUG_STATE_DC"),
    "volt": P("ID_CHARGING_WORK_VOLTAGE", 1), "amp": P("ID_CHARGING_WORK_CURRENT", 1),
    "lat": S("zeekr_gps_lat"), "lon": S("zeekr_gps_lon"),
}
nan = float("nan")
isn = math.isnan


def http(path, params=None, data=None):
    url = VM + path + ("?" + urllib.parse.urlencode(params) if params else "")
    req = urllib.request.Request(url, data=data, method="POST" if data is not None or (params and path.startswith("/api/v1/admin")) else "GET")
    with urllib.request.urlopen(req, timeout=60) as r:
        return r.read()


def fetch(start, end):
    """-> (times, {name: [float|nan]}) на сетке STEP секунд."""
    times = list(range(start - start % STEP, end, STEP))
    cols = {}
    for name, expr in SERIES.items():
        res = json.loads(http("/api/v1/query_range", {"query": expr, "start": times[0], "end": times[-1], "step": "%ds" % STEP}))["data"]["result"]
        col = [nan] * len(times)
        for s in res[:1]:
            for t, v in s["values"]:
                i = int((t - times[0]) // STEP)
                if 0 <= i < len(col):
                    col[i] = float(v)
        cols[name] = col
    return times, cols


def groups(active, times, gap):
    """Индексы-интервалы подряд идущих активных точек; разрыв > gap секунд разделяет сессии."""
    out, cur = [], None
    for i, a in enumerate(active):
        if not a:
            continue
        if cur and times[i] - times[cur[1]] <= gap:
            cur[1] = i
        else:
            cur = [i, i]
            out.append(cur)
    return out


def first_valid(col, lo, hi):
    for i in range(max(lo, 0), min(hi, len(col) - 1) + 1):
        if not isn(col[i]):
            return col[i]
    return nan


def last_valid(col, lo, hi):
    for i in range(min(hi, len(col) - 1), max(lo, 0) - 1, -1):
        if not isn(col[i]):
            return col[i]
    return nan


def mean(col, lo, hi, pred=lambda v: True):
    v = [x for x in col[lo:hi + 1] if not isn(x) and pred(x)]
    return sum(v) / len(v) if v else nan


def find_sessions(times, c, now):
    """-> список (end_ts, {metric: value}, id) закрытых сессий."""
    out = []
    pad = max(1, 120 // STEP)
    # --- поездки
    active = [(not isn(v)) and v * SPEED_UNIT_KMH >= 1 for v in c["speed"]]
    for lo, hi in groups(active, times, DRIVE_GAP_S):
        start, end = times[lo], times[hi] + STEP
        if now - end < SETTLE_S:
            continue
        odo0 = last_valid(c["odo"], 0, lo)
        odo1 = last_valid(c["odo"], lo, hi + pad)
        dist = odo1 - odo0 if not (isn(odo0) or isn(odo1)) else nan
        sp = [x * SPEED_UNIT_KMH for x in c["speed"][lo:hi + 1] if not isn(x)]
        integ = sum(x for x in sp) * STEP / 3600.0
        if isn(dist) or dist <= 0:
            dist = integ  # одометр целочисленный и может не успеть обновиться
        dur = end - start
        m = {
            "zeekr_drive_start_ts": start, "zeekr_drive_end_ts": end, "zeekr_drive_duration_s": dur,
            "zeekr_drive_distance_km": dist, "zeekr_drive_distance_speed_km": integ,
            "zeekr_drive_max_speed_kmh": max(sp) if sp else nan,
            "zeekr_drive_avg_speed_kmh": dist / (dur / 3600.0) if dur > 0 else nan,
            "zeekr_drive_moving_speed_kmh": sum(sp) / len(sp) if sp else nan,
            "zeekr_drive_soc_start": first_valid(c["soc"], lo - pad, lo + pad), "zeekr_drive_soc_end": last_valid(c["soc"], hi - pad, hi + pad * 2),
            "zeekr_drive_range_start": first_valid(c["range"], lo - pad, lo + pad), "zeekr_drive_range_end": last_valid(c["range"], hi - pad, hi + pad * 2),
            "zeekr_drive_odometer_start_km": odo0, "zeekr_drive_odometer_end_km": odo1,
            "zeekr_drive_outside_temp_c": mean(c["temp"], lo, hi),
            "zeekr_drive_start_lat": first_valid(c["lat"], lo - pad, lo + pad * 4), "zeekr_drive_start_lon": first_valid(c["lon"], lo - pad, lo + pad * 4),
            "zeekr_drive_end_lat": last_valid(c["lat"], hi - pad * 4, hi + pad), "zeekr_drive_end_lon": last_valid(c["lon"], hi - pad * 4, hi + pad),
        }
        out.append(("drive", start, end, m))
    # --- зарядки
    def chg(i):
        pa, pd, a = c["plug_ac"][i], c["plug_dc"][i], c["amp"][i]
        return (not isn(pa) and pa >= 3) or (not isn(pd) and pd >= 3) or (not isn(a) and a > 0.5)
    active = [chg(i) for i in range(len(times))]
    for lo, hi in groups(active, times, CHARGE_GAP_S):
        start, end = times[lo], times[hi] + STEP
        if now - end < SETTLE_S:
            continue
        pw = []
        e_used = 0.0
        for i in range(lo, hi + 1):
            u, a = c["volt"][i], c["amp"][i]
            if not (isn(u) or isn(a)) and a > 0:
                p = u * a
                pw.append(p)
                e_used += p * STEP / 3.6e6
        s0, s1 = first_valid(c["soc"], lo - pad, lo + pad), last_valid(c["soc"], hi - pad, hi + pad * 2)
        dc = any((not isn(x)) and x >= 3 for x in c["plug_dc"][lo:hi + 1])
        m = {
            "zeekr_charge_start_ts": start, "zeekr_charge_end_ts": end, "zeekr_charge_duration_s": end - start,
            "zeekr_charge_soc_start": s0, "zeekr_charge_soc_end": s1,
            "zeekr_charge_range_start": first_valid(c["range"], lo - pad, lo + pad), "zeekr_charge_range_end": last_valid(c["range"], hi - pad, hi + pad * 2),
            "zeekr_charge_energy_added_kwh": (s1 - s0) / 100.0 * CAPACITY_KWH if not (isn(s0) or isn(s1)) else nan,
            "zeekr_charge_energy_used_kwh": e_used if pw else nan,
            "zeekr_charge_max_power_kw": max(pw) / 1000.0 if pw else nan,
            "zeekr_charge_avg_power_kw": sum(pw) / len(pw) / 1000.0 if pw else nan,
            "zeekr_charge_dc": 1 if dc else 0,
            "zeekr_charge_outside_temp_c": mean(c["temp"], lo, hi),
            "zeekr_charge_odometer_km": last_valid(c["odo"], lo, hi),
            "zeekr_charge_lat": mean(c["lat"], lo, hi), "zeekr_charge_lon": mean(c["lon"], lo, hi),
        }
        out.append(("charge", start, end, m))
    return out


def render(sessions):
    lines = []
    for kind, start, end, m in sessions:
        for k, v in m.items():
            if isinstance(v, float) and (isn(v) or math.isinf(v)):
                continue
            num = repr(float(v)) if not float(v).is_integer() else str(int(v))
            lines.append('%s{id="%d"} %s %d' % (k, start, num, end * 1000))
    return "\n".join(lines) + "\n"


def stale_ids(sessions, win_start, win_end):
    """id уже записанных сессий из окна, которых нет в новом расчёте (границы сдвинулись)."""
    res = json.loads(http("/api/v1/series", {"match[]": '{__name__=~"zeekr_(drive|charge)_start_ts"}', "start": win_start, "end": win_end}))
    have = {s["id"] for k, st, e, m in sessions for s in [{"id": str(st)}]}
    out = []
    for s in res.get("data", []):
        i = s.get("id")
        if i and i not in have and win_start <= int(i) < win_end:
            out.append(i)
    return out


def run_once(dry=False):
    now = int(time.time())
    win_end = now
    win_start = now - WINDOW_H * 3600
    times, cols = fetch(win_start, win_end)
    sessions = find_sessions(times, cols, now)
    kinds = {}
    for s in sessions:
        kinds[s[0]] = kinds.get(s[0], 0) + 1
    print("sessions:", kinds, flush=True)
    if dry:
        for s in sessions:
            print(s[0], time.strftime("%F %T", time.localtime(s[1])), "->", time.strftime("%T", time.localtime(s[2])),
                  {k.split("_", 2)[2]: round(v, 2) for k, v in s[3].items() if isinstance(v, (int, float)) and not isn(v) and "_ts" not in k})
        return
    gone = stale_ids(sessions, win_start, win_end)
    if gone:
        http("/api/v1/admin/tsdb/delete_series", {"match[]": '{__name__=~"zeekr_(drive|charge)_.*",id=~"%s"}' % "|".join(gone)}, data=b"")
        print("deleted stale ids:", gone, flush=True)
    body = render(sessions)
    if sessions:
        http("/api/v1/import/prometheus", {"extra_label": "car=zeekr001"}, data=body.encode())
        print("written", body.count("\n"), "points", flush=True)


def selftest():
    # синтетика: стоянка, зарядка 1ч (3.2кВт), стоянка, поездка 20 мин (60 км/ч), стоянка
    t0 = 1_700_000_000 - 1_700_000_000 % STEP
    n = 4 * 3600 // STEP
    times = [t0 + i * STEP for i in range(n)]
    c = {k: [nan] * n for k in SERIES}
    soc, odo = 50.0, 1000.0
    for i in range(n):
        t = i * STEP
        charging = 600 <= t < 4200
        driving = 7200 <= t < 8400
        c["plug_ac"][i] = 3 if charging else 0
        c["plug_dc"][i] = 0
        c["volt"][i] = 220.0 if charging else 0.0
        c["amp"][i] = 14.5 if charging else 0.0
        c["speed"][i] = 60.0 if driving else 0.0
        if charging:
            soc += 3.19 / CAPACITY_KWH * 100 * STEP / 3600
        if driving:
            odo += 60 * STEP / 3600
            soc -= 0.003
        c["soc"][i], c["odo"][i], c["range"][i], c["temp"][i] = soc, float(int(odo)), soc * 6, 10.0
    ss = find_sessions(times, c, t0 + 10 * 3600)
    d = [s for s in ss if s[0] == "drive"]
    ch = [s for s in ss if s[0] == "charge"]
    assert len(d) == 1 and len(ch) == 1, (len(d), len(ch))
    assert abs(d[0][3]["zeekr_drive_distance_km"] - 20) <= 1.01, d[0][3]["zeekr_drive_distance_km"]
    assert abs(ch[0][3]["zeekr_charge_energy_used_kwh"] - 3.19) < 0.05, ch[0][3]["zeekr_charge_energy_used_kwh"]
    assert abs(ch[0][3]["zeekr_charge_energy_added_kwh"] - 3.19) < 0.1, ch[0][3]["zeekr_charge_energy_added_kwh"]
    assert abs(ch[0][3]["zeekr_charge_max_power_kw"] - 3.19) < 0.01
    # поездка, закончившаяся меньше SETTLE_S назад, ещё не закрыта
    assert not [s for s in find_sessions(times, c, t0 + 8400 + 60) if s[0] == "drive"]
    print("selftest ok:", d[0][3]["zeekr_drive_distance_km"], "км;", round(ch[0][3]["zeekr_charge_energy_used_kwh"], 2), "кВт·ч")


if __name__ == "__main__":
    if "--selftest" in sys.argv:
        selftest()
    elif "--dry-run" in sys.argv:
        run_once(dry=True)
    elif "--once" in sys.argv:
        run_once()
    else:
        while True:
            try:
                run_once()
            except Exception as e:
                print("run failed:", repr(e), flush=True)
            time.sleep(INTERVAL)
