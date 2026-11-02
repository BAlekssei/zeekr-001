"""Прогоняет все выражения дашбордов через VictoriaMetrics (синтаксис + есть ли данные)."""
import json, glob, os, sys, time, urllib.parse, urllib.request
VM = os.environ.get("VM_URL", "http://192.168.200.7:8300")
SUBST = [("$__range_s", "10800"), ("$__range", "3h"), ("$__interval", "1m"), ("$battery_capacity", "100"), ("$ac_price", "6.5"),
         ("$dc_price", "20"), ("$min_dist", "1"), ("$ac_eff", "0.9")]
bad = empty = ok = 0
for f in sorted(glob.glob(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "grafana", "dashboards-json", "*.json"))):
    d = json.load(open(f))
    for p in d["panels"]:
        for t in p.get("targets", []):
            e = t["expr"]
            for a, b in SUBST:
                e = e.replace(a, b)
            if "$" in e:
                print("UNSUBSTITUTED", d["uid"], p["title"], e); bad += 1; continue
            try:
                r = json.load(urllib.request.urlopen(VM + "/api/v1/query?" + urllib.parse.urlencode({"query": e}), timeout=30))
                n = len(r["data"]["result"])
                if n: ok += 1
                else:
                    empty += 1
                    if "-v" in sys.argv: print("  empty:", d["uid"], "|", p["title"])
            except urllib.error.HTTPError as ex:
                bad += 1; print("ERR", d["uid"], "|", p["title"], "|", ex.read().decode()[:300].replace("\n", " "), "\n   ", e[:200])
print("ok(with data)=%d empty=%d errors=%d" % (ok, empty, bad))
