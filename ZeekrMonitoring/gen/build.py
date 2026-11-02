import json, os, sys
from dashboards import ALL
out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "grafana", "dashboards-json")
for f in ALL:
    d = f()
    # старый стартовый дашборд заменён
    with open(os.path.join(out, d["uid"] + ".json"), "w") as fh:
        json.dump(d, fh, ensure_ascii=False, indent=1)
    print(d["uid"], len(d["panels"]), "panels")
