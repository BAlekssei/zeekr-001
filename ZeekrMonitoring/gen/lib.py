"""Мелкие помощники для сборки JSON дашбордов Grafana (schemaVersion 39)."""
DS = {"type": "prometheus", "uid": "vm"}

SOC = "zeekr_soc_percent"
RANGE = "zeekr_range_km"
ODO = "zeekr_odometer_km"
SPEED = "zeekr_speed"


def prop(name, area=None):
    return 'zeekr_prop{name="%s"%s}' % (name, "" if area is None else ',area="%s"' % area)


VOLT = prop("ID_CHARGING_WORK_VOLTAGE", 1)
AMP = prop("ID_CHARGING_WORK_CURRENT", 1)
PLUG_AC = prop("ID_CHARGING_PLUG_STATE_AC")
PLUG_DC = prop("ID_CHARGING_PLUG_STATE_DC")
POWER_KW = "(%s * ignoring(name) %s / 1000)" % (VOLT, AMP)

# состояние: 0 стоянка, 1 движение, 2 зарядка (нет данных = ГУ спит/нет связи)
STATE = ("((sum(last_over_time(%s[2m]) >= bool 1) default 0)"
         " + 2 * (sum(last_over_time(%s[2m]) > bool 0.5) default 0))" % (SPEED, AMP))

STATE_MAPPING = [{"type": "value", "options": {
    "0": {"text": "Стоянка", "color": "#5794F2", "index": 0},
    "1": {"text": "Движение", "color": "#73BF69", "index": 1},
    "2": {"text": "Зарядка", "color": "#FADE2A", "index": 2},
    "3": {"text": "Движение+зарядка?", "color": "#F2495C", "index": 3}}}]


def thr(*steps):
    """thr(('green',None),('red',80)) -> thresholds"""
    return {"mode": "absolute", "steps": [{"color": c, "value": v} for c, v in steps]}


def tgt(expr, legend="", ref=None, instant=False, fmt=None, hide=False):
    t = {"expr": expr, "legendFormat": legend, "refId": ref or "A", "datasource": DS}
    if instant:
        t["instant"] = True
        t["range"] = False
    if fmt:
        t["format"] = fmt
    if hide:
        t["hide"] = True
    return t


def targets(items, **kw):
    """items: [(expr, legend)] -> targets с refId A, B, ..."""
    return [tgt(e, l, chr(65 + i), **kw) for i, (e, l) in enumerate(items)]


def panel(kind, title, x, y, w, h, tg, unit=None, desc=None, mn=None, mx=None, decimals=None,
          thresholds=None, overrides=None, options=None, custom=None, transformations=None, mappings=None, extra=None):
    d = {"type": kind, "title": title, "gridPos": {"x": x, "y": y, "w": w, "h": h}, "datasource": DS,
         "targets": tg, "fieldConfig": {"defaults": {}, "overrides": overrides or []}, "options": options or {}}
    dd = d["fieldConfig"]["defaults"]
    if unit:
        dd["unit"] = unit
    if mn is not None:
        dd["min"] = mn
    if mx is not None:
        dd["max"] = mx
    if decimals is not None:
        dd["decimals"] = decimals
    if thresholds:
        dd["thresholds"] = thresholds
    if custom:
        dd["custom"] = custom
    if mappings:
        dd["mappings"] = mappings
    if desc:
        d["description"] = desc
    if transformations:
        d["transformations"] = transformations
    if extra:
        d.update(extra)
    return d


def stat(title, x, y, w, h, expr, unit=None, **kw):
    kw.setdefault("options", {"reduceOptions": {"calcs": ["lastNotNull"], "fields": "", "values": False}, "colorMode": "value", "graphMode": "none"})
    return panel("stat", title, x, y, w, h, [tgt(expr, instant=True)], unit=unit, **kw)


def gauge(title, x, y, w, h, items, unit=None, mn=0, mx=100, **kw):
    kw.setdefault("options", {"reduceOptions": {"calcs": ["lastNotNull"], "fields": "", "values": False}, "showThresholdMarkers": True})
    return panel("gauge", title, x, y, w, h, targets(items), unit=unit, mn=mn, mx=mx, **kw)


def ts(title, x, y, w, h, items, unit=None, fill=10, bars=False, **kw):
    custom = {"lineWidth": 1, "fillOpacity": fill, "spanNulls": 600000, "showPoints": "never"}
    if bars:
        custom.update({"drawStyle": "bars", "fillOpacity": 60, "spanNulls": False})
    kw.setdefault("options", {"legend": {"displayMode": "list", "placement": "bottom"}, "tooltip": {"mode": "multi"}})
    return panel("timeseries", title, x, y, w, h, targets(items), unit=unit, custom=custom, **kw)


def text(title, x, y, w, h, md):
    return {"type": "text", "title": title, "gridPos": {"x": x, "y": y, "w": w, "h": h},
            "options": {"mode": "markdown", "content": md}}


def ov(col, name=None, unit=None, decimals=None, width=None, extra=None):
    props = []
    if name:
        props.append({"id": "displayName", "value": name})
    if unit:
        props.append({"id": "unit", "value": unit})
    if decimals is not None:
        props.append({"id": "decimals", "value": decimals})
    if width:
        props.append({"id": "custom.width", "value": width})
    props += extra or []
    return {"matcher": {"id": "byName", "options": col}, "properties": props}


def table(title, x, y, w, h, cols, base, sort=None, filt=None, limit=None, desc=None, extra_tr=None):
    """Таблица по сессиям. cols: [(metric_or_expr, заголовок, unit, decimals, scale)], base — метрика-ключ (для фильтра).

    Каждый столбец — отдельный instant-запрос last_over_time(metric[$__range]); merge склеивает строки по id.
    filt — PromQL-условие по ключевой метрике (напр. '>= $min_dist'); применяется ко всем столбцам через `and on(id)`.
    """
    tg, over = [], []
    for i, (m, name, unit, dec, scale) in enumerate(cols):
        ref = chr(65 + i)
        e = "last_over_time(%s[$__range])" % m if m.startswith("zeekr_") and "(" not in m else m
        if scale:
            e = "(%s) * %s" % (e, scale)
        if filt:
            e = "(%s) and on(id) (%s)" % (e, filt)
        tg.append(tgt(e, ref=ref, instant=True, fmt="table"))
        over.append(ov("Value #" + ref, name, unit, dec))
    # merge склеивает строки по полям, общим для всех фреймов. Метки car/id
    # лежат только в метаданных, поэтому сначала labelsToFields делает их
    # колонками, а Time отбрасываем: у instant-запросов оно разное (±мс)
    tr = [{"id": "labelsToFields", "options": {}},
          {"id": "filterFieldsByName", "options": {"exclude": {"names": ["Time", "__name__"]}}},
          {"id": "merge", "options": {}},
          {"id": "organize", "options": {"excludeByName": {"Time": True, "car": True, "id": True, "__name__": True}, "indexByName": {"Value #" + chr(65 + i): i for i in range(len(cols))}}}]
    if sort is not None:
        tr.append({"id": "sortBy", "options": {"fields": {}, "sort": [{"field": "Value #" + chr(65 + sort[0]), "desc": sort[1]}]}})
    if limit:
        tr.append({"id": "limit", "options": {"limitField": limit}})
    tr += extra_tr or []
    return panel("table", title, x, y, w, h, tg, overrides=over, transformations=tr, desc=desc,
                 options={"showHeader": True, "cellHeight": "sm"})


def var_text(name, label, default):
    return {"type": "textbox", "name": name, "label": label, "query": default,
            "current": {"selected": False, "text": default, "value": default}, "options": [{"selected": True, "text": default, "value": default}], "hide": 0}


def dashboard(uid, title, panels, variables=None, time_from="now-30d", refresh="1m", tags=None):
    return {"uid": uid, "title": title, "tags": ["zeekr"] + (tags or []), "timezone": "browser", "schemaVersion": 39, "version": 1,
            "editable": True, "refresh": refresh, "time": {"from": time_from, "to": "now"},
            "templating": {"list": variables or []}, "panels": [dict(p, id=i + 1) for i, p in enumerate(panels)],
            "links": [{"type": "dashboards", "tags": ["zeekr"], "asDropdown": True, "title": "Zeekr", "includeVars": False, "keepTime": True}],
            "annotations": {"list": []}}


V_CAP = var_text("battery_capacity", "Ёмкость батареи, кВт·ч", "100")
V_AC = var_text("ac_price", "Тариф AC, ₽/кВт·ч", "6.5")
V_DC = var_text("dc_price", "Тариф DC, ₽/кВт·ч", "20")
V_EFF = var_text("ac_eff", "КПД AC-зарядки (оценка)", "0.9")
V_DIST = var_text("min_dist", "Мин. дистанция поездки, км", "1")
