from lib import *

L = lambda m: "last_over_time(%s[$__range])" % m
D = lambda n: "zeekr_drive_" + n
C = lambda n: "zeekr_charge_" + n
DRIVE_F = L(D("distance_km")) + " >= $min_dist"
SOC_THR = thr(("red", None), ("orange", 20), ("green", 40))
LAST = lambda m: "last_over_time(%s[1h])" % m
TIRES = [("fl", "передняя левая"), ("fr", "передняя правая"), ("rl", "задняя левая"), ("rr", "задняя правая")]


def overview():
    p = [
        gauge("Заряд батареи", 0, 0, 4, 6, [(LAST(SOC), "SOC")], "percent", thresholds=SOC_THR, decimals=1),
        gauge("Напряжение зарядки (AC)", 4, 0, 4, 6, [(LAST(VOLT), "В")], "volt", 0, 260, thresholds=thr(("green", None))),
        gauge("Мощность зарядки (AC), кВт", 8, 0, 4, 6, [("(%s) or vector(0)" % POWER_KW, "кВт")], "kwatt", 0, 22, decimals=1, thresholds=thr(("green", None))),
        panel("geomap", "Положение", 12, 0, 12, 12,
              [tgt("last_over_time(zeekr_gps_lat[1d])", ref="A", instant=True, fmt="table"), tgt("last_over_time(zeekr_gps_lon[1d])", ref="B", instant=True, fmt="table")],
              transformations=[{"id": "merge", "options": {}}],
              desc="Нужен GPS: метрики zeekr_gps_lat/lon появляются, когда у ГУ есть свежая координата.",
              options={"view": {"id": "coords", "lat": 55.75, "lon": 37.62, "zoom": 12}, "basemap": {"type": "default", "name": "Basemap"},
                       "controls": {"showZoom": True, "mouseWheelZoom": True},
                       "layers": [{"type": "markers", "name": "Авто", "config": {"showLegend": False, "style": {"size": {"fixed": 8, "min": 2, "max": 15}, "color": {"fixed": "dark-green"}, "opacity": 0.8}},
                                   "location": {"mode": "coords", "latitude": "Value #A", "longitude": "Value #B"}}]}),
        ts("Уровень заряда и запас хода", 0, 6, 12, 6, [(SOC, "SOC, %"), (RANGE, "запас хода, км")], fill=8,
           overrides=[{"matcher": {"id": "byName", "options": "запас хода, км"}, "properties": [{"id": "custom.axisPlacement", "value": "right"}, {"id": "unit", "value": "lengthkm"}]},
                      {"matcher": {"id": "byName", "options": "SOC, %"}, "properties": [{"id": "unit", "value": "percent"}, {"id": "min", "value": 0}, {"id": "max", "value": 100}]}]),
        stat("Запас хода", 0, 12, 4, 3, LAST(RANGE), "lengthkm", thresholds=thr(("red", None), ("orange", 100), ("green", 200))),
        stat("Одометр", 4, 12, 4, 3, LAST(ODO), "lengthkm", decimals=0, thresholds=thr(("text", None))),
        stat("Снаружи", 8, 12, 2, 3, LAST("zeekr_outside_temp_c"), "celsius", decimals=1, thresholds=thr(("blue", None))),
        stat("В салоне", 10, 12, 2, 3, LAST("zeekr_inside_temp_c"), "celsius", decimals=1, thresholds=thr(("blue", None))),
        gauge("Давление в шинах, кПа", 12, 12, 12, 5, [(LAST('zeekr_tire_pressure_kpa{pos="%s"}' % k), n) for k, n in TIRES], "pressurekpa", 150, 300,
              thresholds=thr(("red", None), ("orange", 200), ("green", 220), ("orange", 270)), decimals=0),
        ts("Подробности зарядки", 0, 15, 12, 7, [(VOLT, "напряжение, В"), (AMP, "ток, А"), (POWER_KW, "мощность, кВт")],
           overrides=[{"matcher": {"id": "byName", "options": "напряжение, В"}, "properties": [{"id": "unit", "value": "volt"}, {"id": "custom.axisPlacement", "value": "right"}]},
                      {"matcher": {"id": "byName", "options": "ток, А"}, "properties": [{"id": "unit", "value": "amp"}]},
                      {"matcher": {"id": "byName", "options": "мощность, кВт"}, "properties": [{"id": "unit", "value": "kwatt"}]}]),
        panel("state-timeline", "Состояния", 12, 17, 12, 5, [tgt(STATE, "состояние")], mappings=STATE_MAPPING,
              options={"mergeValues": True, "showValue": "never", "rowHeight": 0.8, "legend": {"showLegend": True, "displayMode": "list", "placement": "bottom"}},
              desc="Стоянка / движение / зарядка выводятся из скорости и тока AC-зарядки; пропуск = нет данных (ГУ спит или нет связи, буфер догрузится позже).",
              custom={"fillOpacity": 70, "lineWidth": 0}),
    ]
    return dashboard("zeekr-overview", "Zeekr — Обзор", p, time_from="now-24h", refresh="30s")


def current_charge():
    p = [
        gauge("Уровень заряда", 0, 0, 5, 6, [(LAST(SOC), "SOC")], "percent", thresholds=SOC_THR, decimals=1),
        stat("Добавлено за период", 5, 0, 4, 3, "last_over_time(%s[$__range]) - first_over_time(%s[$__range])" % (SOC, SOC), "percent", decimals=1,
             desc="Разница SOC между началом и концом выбранного периода: выберите период, равный сессии зарядки."),
        stat("Начальный SOC", 9, 0, 3, 3, "first_over_time(%s[$__range])" % SOC, "percent", decimals=1),
        stat("Запас хода", 12, 0, 4, 3, LAST(RANGE), "lengthkm"),
        stat("Подключена, времени", 16, 0, 4, 3,
             "time() - last_over_time(timestamp(%s == 0)[7d])" % PLUG_AC, "s", decimals=0,
             desc="Время с последнего момента, когда разъём AC был не подключён (по метрике состояния разъёма)."),
        stat("Лимит зарядки", 20, 0, 4, 3, LAST(prop("ID_CHARGING_SOC_LEVEL")), "percent", decimals=0),
        stat("Напряжение сети", 5, 3, 4, 3, LAST(VOLT), "volt", decimals=1),
        stat("Ток", 9, 3, 3, 3, LAST(AMP), "amp", decimals=1),
        stat("Мощность", 12, 3, 4, 3, "(%s)" % POWER_KW, "kwatt", decimals=2),
        stat("Осталось (оценка авто)", 16, 3, 4, 3, "last_over_time(%s[1h]) * 60" % prop("ID_CHARGING_ESTIMATED_TIME"), "s",
             desc="Оценка из ID_CHARGING_ESTIMATED_TIME (единицы предположительно минуты; 2047 = нет оценки)."),
        stat("Снаружи / в салоне", 20, 3, 4, 3, LAST("zeekr_outside_temp_c"), "celsius", decimals=1),
        ts("Ход зарядки", 0, 6, 24, 9, [(SOC, "SOC, %"), (POWER_KW, "мощность, кВт"), (RANGE, "запас хода, км"), (VOLT, "В"), (AMP, "А")], fill=5,
           overrides=[{"matcher": {"id": "byName", "options": "SOC, %"}, "properties": [{"id": "unit", "value": "percent"}]},
                      {"matcher": {"id": "byName", "options": "мощность, кВт"}, "properties": [{"id": "unit", "value": "kwatt"}, {"id": "custom.axisPlacement", "value": "right"}]},
                      {"matcher": {"id": "byName", "options": "запас хода, км"}, "properties": [{"id": "custom.hideFrom", "value": {"viz": False, "legend": False, "tooltip": False}}]}]),
    ]
    return dashboard("zeekr-current-charge", "Zeekr — Текущая зарядка", p, time_from="now-3h", refresh="10s")


def tire_pressure():
    cur = [(LAST('zeekr_tire_pressure_kpa{pos="%s"}' % k), n) for k, n in TIRES]
    col = lambda f: [tgt('%s(zeekr_tire_pressure_kpa[$__range])' % f, ref=r, instant=True, fmt="table") for r in ("A",)]
    tg = [tgt("min_over_time(zeekr_tire_pressure_kpa[$__range])", ref="A", instant=True, fmt="table"),
          tgt("avg_over_time(zeekr_tire_pressure_kpa[$__range])", ref="B", instant=True, fmt="table"),
          tgt("max_over_time(zeekr_tire_pressure_kpa[$__range])", ref="C", instant=True, fmt="table"),
          tgt("last_over_time(zeekr_tire_temp_c[$__range])", ref="D", instant=True, fmt="table")]
    p = [
        gauge("Текущее давление, кПа", 0, 0, 12, 7, cur, "pressurekpa", 150, 300, decimals=0,
              thresholds=thr(("red", None), ("orange", 200), ("green", 220), ("orange", 270))),
        gauge("Температура шин, °C", 12, 0, 12, 7, [(LAST('zeekr_tire_temp_c{pos="%s"}' % k), n) for k, n in TIRES], "celsius", -20, 80, decimals=0),
        panel("table", "Давление за выбранный период", 0, 7, 24, 6, tg,
              overrides=[ov("Value #A", "мин, кПа", "pressurekpa", 0), ov("Value #B", "сред, кПа", "pressurekpa", 0), ov("Value #C", "макс, кПа", "pressurekpa", 0), ov("Value #D", "темп., °C", "celsius", 0), ov("pos", "колесо")],
              transformations=[{"id": "merge", "options": {}}, {"id": "organize", "options": {"excludeByName": {"Time": True, "car": True}, "indexByName": {"pos": 0, "Value #A": 1, "Value #B": 2, "Value #C": 3, "Value #D": 4}}}],
              options={"showHeader": True}),
        ts("Давление", 0, 13, 12, 8, [('zeekr_tire_pressure_kpa{pos="%s"}' % k, n) for k, n in TIRES], "pressurekpa"),
        ts("Температура", 12, 13, 12, 8, [('zeekr_tire_temp_c{pos="%s"}' % k, n) for k, n in TIRES], "celsius"),
    ]
    return dashboard("zeekr-tires", "Zeekr — Давление в шинах", p, time_from="now-7d")


def states():
    p = [
        stat("Текущее состояние", 0, 0, 5, 4, STATE, mappings=STATE_MAPPING, thresholds=thr(("text", None))),
        stat("Последняя смена состояния", 5, 0, 7, 4, "time() - max_over_time(timestamp(%s != (%s offset 2m))[7d:1m])" % (STATE, STATE), "s", decimals=0,
             desc="Время с последнего изменения состояния (шаг 1 мин)."),
        stat("Стоянка за период, %", 12, 0, 6, 4, "avg_over_time((%s == bool 0)[$__range:1m]) * 100" % STATE, "percent", decimals=1),
        stat("В движении за период, %", 18, 0, 6, 4, "avg_over_time((%s == bool 1)[$__range:1m]) * 100" % STATE, "percent", decimals=1),
        panel("state-timeline", "Состояния", 0, 4, 24, 8, [tgt(STATE, "состояние")], mappings=STATE_MAPPING,
              options={"mergeValues": True, "showValue": "auto", "rowHeight": 0.8, "legend": {"showLegend": True, "displayMode": "list", "placement": "bottom"}},
              custom={"fillOpacity": 70, "lineWidth": 0}),
        ts("Скорость", 0, 12, 12, 6, [(SPEED, "скорость")], fill=10),
        ts("SOC", 12, 12, 12, 6, [(SOC, "SOC, %")], "percent", mn=0, mx=100),
    ]
    return dashboard("zeekr-states", "Zeekr — Состояния", p, time_from="now-3d", refresh="1m")


def drives():
    cols = [(D("start_ts"), "Старт", "dateTimeAsLocal", None, 1000), (D("end_ts"), "Финиш", "dateTimeAsLocal", None, 1000),
            (D("duration_s"), "Длительность", "s", 0, None), (D("distance_km"), "Дистанция", "lengthkm", 1, None),
            (D("avg_speed_kmh"), "Средняя", "velocitykmh", 0, None), (D("max_speed_kmh"), "Макс.", "velocitykmh", 0, None),
            (D("soc_start"), "SOC старт", "percent", 1, None), (D("soc_end"), "SOC финиш", "percent", 1, None),
            ("(%s - %s) / 100 * $battery_capacity" % (L(D("soc_start")), L(D("soc_end"))), "Энергия, кВт·ч", "kwatth", 1, None),
            ("(%s - %s) / 100 * $battery_capacity * 1000 / (%s)" % (L(D("soc_start")), L(D("soc_end")), L(D("distance_km"))), "Расход, Вт·ч/км", "none", 0, None),
            (D("outside_temp_c"), "Снаружи", "celsius", 0, None), (D("odometer_end_km"), "Одометр", "lengthkm", 0, None)]
    p = [table("Поездки", 0, 0, 24, 20, cols, D("distance_km"), sort=(0, True), filt=DRIVE_F,
               desc="Поездки определяет sessionizer по скорости ≥ 1 км/ч, пауза > 5 мин завершает поездку. Показаны поездки, закончившиеся в выбранном периоде.")]
    return dashboard("zeekr-drives", "Zeekr — Поездки", p, [V_CAP, V_DIST])


def charges():
    cols = [(C("start_ts"), "Старт", "dateTimeAsLocal", None, 1000), (C("end_ts"), "Финиш", "dateTimeAsLocal", None, 1000),
            (C("duration_s"), "Длительность", "s", 0, None),
            (C("dc"), "DC (1) / AC (0)", "none", 0, None),
            (C("soc_start"), "SOC старт", "percent", 1, None), (C("soc_end"), "SOC финиш", "percent", 1, None),
            (C("energy_added_kwh"), "Добавлено, кВт·ч", "kwatth", 1, None), (C("energy_used_kwh"), "Из сети, кВт·ч", "kwatth", 1, None),
            (C("max_power_kw"), "Макс. мощность", "kwatt", 1, None), (C("avg_power_kw"), "Средняя", "kwatt", 1, None),
            ("%s * (1 - %s) * $ac_price + %s * %s * $dc_price" % (L(C("energy_added_kwh")), L(C("dc")), L(C("energy_added_kwh")), L(C("dc"))), "Стоимость (оценка), ₽", "currencyRUB", 0, None),
            (C("outside_temp_c"), "Снаружи", "celsius", 0, None)]
    p = [
        stat("Добавлено", 0, 0, 6, 3, "sum(%s)" % L(C("energy_added_kwh")), "kwatth", decimals=1),
        stat("Из сети", 6, 0, 6, 3, "sum(%s)" % L(C("energy_used_kwh")), "kwatth", decimals=1),
        stat("Стоимость (оценка)", 12, 0, 6, 3, "sum(%s * (1 - %s) * $ac_price + %s * %s * $dc_price)" % (L(C("energy_added_kwh")), L(C("dc")), L(C("energy_added_kwh")), L(C("dc"))), "currencyRUB", decimals=0),
        stat("Зарядок", 18, 0, 6, 3, "count(%s)" % L(C("start_ts")), "none", decimals=0),
        table("Зарядки", 0, 3, 24, 18, cols, C("start_ts"), sort=(0, True),
              desc="Энергия «добавлено» считается по приросту SOC × ёмкость (переменная battery_capacity), «из сети» — интегрирование U×I по AC. Стоимость — оценка по тарифам из переменных."),
    ]
    return dashboard("zeekr-charges", "Zeekr — Зарядки", p, [V_CAP, V_AC, V_DC])


def drive_tops():
    dist = L(D("distance_km"))
    p = [
        table("Самые длинные поездки", 0, 0, 12, 9, [(D("start_ts"), "Старт", "dateTimeAsLocal", None, 1000), (D("distance_km"), "Дистанция", "lengthkm", 1, None),
                                                      (D("duration_s"), "Время", "s", 0, None), (D("avg_speed_kmh"), "Средняя", "velocitykmh", 0, None)],
              D("distance_km"), sort=(1, True), limit=10),
        text("Info", 12, 0, 12, 9, "Поездки определяет `sessionizer` (скорость ≥ 1 км/ч, пауза > 5 мин). "
                                    "«Макс. пробег между зарядками» из оригинала не воспроизведён: он требует связки поездок и зарядок по времени."),
        ts("Расстояние по месяцам", 0, 9, 12, 7, [("sum(sum_over_time(%s[30d]))" % D("distance_km"), "км за 30 дн.")], "lengthkm", bars=True, extra={"interval": "30d"}),
        ts("Расстояние по годам", 12, 9, 12, 7, [("sum(sum_over_time(%s[365d]))" % D("distance_km"), "км за 365 дн.")], "lengthkm", bars=True, extra={"interval": "365d"}),
        stat("Медианная поездка", 0, 16, 6, 4, "quantile(0.5, %s)" % dist, "lengthkm", decimals=1),
        stat("Медиана за день", 6, 16, 6, 4, "quantile_over_time(0.5, (sum(sum_over_time(%s[1d])))[$__range:1d])" % D("distance_km"), "lengthkm", decimals=1),
        stat("Прогноз на месяц", 12, 16, 6, 4, "sum(sum_over_time(%s[$__range])) / ($__range_s / 86400) * 30" % D("distance_km"), "lengthkm", decimals=0),
        stat("Прогноз на год", 18, 16, 6, 4, "sum(sum_over_time(%s[$__range])) / ($__range_s / 86400) * 365" % D("distance_km"), "lengthkm", decimals=0),
        stat("Средняя скорость поездок", 0, 20, 12, 4, "avg(%s)" % L(D("avg_speed_kmh")), "velocitykmh", decimals=0),
        stat("Средняя скорость в движении", 12, 20, 12, 4, "avg(%s)" % L(D("moving_speed_kmh")), "velocitykmh", decimals=0),
    ]
    return dashboard("zeekr-drive-tops", "Zeekr — Топы поездок", p, [V_DIST], time_from="now-1y")


def charging_tops():
    def top(title, x, dc):
        flt = "%s == %d" % (L(C("dc")), dc)
        return table(title, x, 5, 12, 9, [(C("start_ts"), "Старт", "dateTimeAsLocal", None, 1000), (C("energy_added_kwh"), "Добавлено, кВт·ч", "kwatth", 1, None),
                                          (C("max_power_kw"), "Макс. кВт", "kwatt", 1, None), (C("duration_s"), "Время", "s", 0, None)],
                     C("start_ts"), sort=(1, True), filt=flt, limit=10)
    p = [
        stat("Заряжено всего", 0, 0, 6, 5, "sum(%s)" % L(C("energy_added_kwh")), "kwatth", decimals=0),
        panel("bargauge", "AC / DC — добавлено", 6, 0, 10, 5,
              [tgt("sum(%s * (1 - %s))" % (L(C("energy_added_kwh")), L(C("dc"))), "AC", "A", instant=True), tgt("sum(%s * %s)" % (L(C("energy_added_kwh")), L(C("dc"))), "DC", "B", instant=True)],
              unit="kwatth", decimals=0, options={"orientation": "horizontal", "displayMode": "gradient", "reduceOptions": {"calcs": ["lastNotNull"]}}),
        stat("Стоимость (оценка)", 16, 0, 8, 5, "sum(%s * (1 - %s) * $ac_price + %s * %s * $dc_price)" % (L(C("energy_added_kwh")), L(C("dc")), L(C("energy_added_kwh")), L(C("dc"))), "currencyRUB", decimals=0),
        top("Топ зарядок — AC", 0, 0), top("Топ зарядок — DC", 12, 1),
    ]
    return dashboard("zeekr-charging-tops", "Zeekr — Топы зарядок", p, [V_AC, V_DC], time_from="now-1y")


def charging_costs():
    added, used, dc = L(C("energy_added_kwh")), L(C("energy_used_kwh")), L(C("dc"))
    cost = "(%s * (1 - %s) * $ac_price + %s * %s * $dc_price)" % (added, dc, added, dc)
    km = "sum(sum_over_time(%s[$__range]))" % D("distance_km")
    p = [
        text("Период", 0, 0, 24, 2, "Статистика за выбранный период. Тарифы задаются переменными `ac_price` и `dc_price`; «стоимость» — оценка, реальные платежи авто не передаёт."),
        stat("Общая стоимость", 0, 2, 4, 4, "sum(%s)" % cost, "currencyRUB", decimals=0),
        stat("Пройдено", 4, 2, 4, 4, km, "lengthkm", decimals=0),
        stat("Зарядок", 8, 2, 4, 4, "count(%s)" % L(C("start_ts")), "none", decimals=0),
        stat("Из сети", 12, 2, 4, 4, "sum(%s)" % used, "kwatth", decimals=0),
        stat("Добавлено", 16, 2, 4, 4, "sum(%s)" % added, "kwatth", decimals=0),
        stat("КПД зарядки (оценка)", 20, 2, 4, 4, "sum(%s) / sum(%s) * 100" % (added, used), "percent", decimals=0,
             desc="Отношение добавленной (SOC×ёмкость) к полученной из сети (U×I); верно только для AC и при правильной ёмкости."),
        stat("Стоимость на 100 км", 0, 6, 6, 4, "sum(%s) / (%s) * 100" % (cost, km), "currencyRUB", decimals=0),
        stat("Средняя цена кВт·ч", 6, 6, 6, 4, "sum(%s) / sum(%s)" % (cost, added), "currencyRUB", decimals=1),
        stat("Стоимость AC", 12, 6, 6, 4, "sum(%s * (1 - %s) * $ac_price)" % (added, dc), "currencyRUB", decimals=0),
        stat("Стоимость DC", 18, 6, 6, 4, "sum(%s * %s * $dc_price)" % (added, dc), "currencyRUB", decimals=0),
        ts("Добавлено по месяцам", 0, 10, 12, 7, [("sum(sum_over_time(zeekr_charge_energy_added_kwh[30d]))", "кВт·ч за 30 дн.")], "kwatth", bars=True, extra={"interval": "30d"}),
        ts("Энергия по месяцам", 12, 10, 12, 7, [("sum(sum_over_time(zeekr_charge_energy_added_kwh[30d]))", "добавлено"), ("sum(sum_over_time(zeekr_charge_energy_used_kwh[30d]))", "из сети")], "kwatth", bars=True, extra={"interval": "30d"}),
    ]
    return dashboard("zeekr-charging-costs", "Zeekr — Стоимость зарядок", p, [V_AC, V_DC], time_from="now-1y")


def charging_curves():
    pts = [tgt(POWER_KW, ref="A", fmt="table"), tgt(SOC, ref="B", fmt="table")]
    p = [
        panel("xychart", "Кривая зарядки (мощность от SOC)", 0, 0, 14, 11, pts,
              transformations=[{"id": "joinByField", "options": {"byField": "Time", "mode": "outer"}}],
              options={"mapping": "manual", "series": [{"x": "Value #B", "y": "Value #A", "pointSize": {"fixed": 5}, "name": "кВт"}]},
              desc="Точки за выбранный период. Выберите период одной зарядки, чтобы увидеть чистую кривую."),
        table("Макс. мощность по зарядкам", 14, 0, 10, 11, [(C("start_ts"), "Старт", "dateTimeAsLocal", None, 1000), (C("max_power_kw"), "Макс. кВт", "kwatt", 1, None), (C("dc"), "DC", "none", 0, None)],
              C("start_ts"), sort=(0, True)),
        ts("Мощность и SOC", 0, 11, 24, 8, [(POWER_KW, "кВт"), (SOC, "SOC, %")],
           overrides=[{"matcher": {"id": "byName", "options": "SOC, %"}, "properties": [{"id": "custom.axisPlacement", "value": "right"}, {"id": "unit", "value": "percent"}]},
                      {"matcher": {"id": "byName", "options": "кВт"}, "properties": [{"id": "unit", "value": "kwatt"}]}]),
    ]
    return dashboard("zeekr-charging-curves", "Zeekr — Кривые зарядки", p, time_from="now-24h")


def battery_health():
    dsoc = "(%s - %s)" % (L(C("soc_end")), L(C("soc_start")))
    cap_est = "(%s * $ac_eff / (%s / 100)) and on(id) (%s >= 10) and on(id) (%s == 0)" % (L(C("energy_used_kwh")), dsoc, dsoc, L(C("dc")))
    p = [
        ts("Оценка ёмкости батареи по зарядкам AC", 0, 0, 16, 8,
           [("%s" % cap_est.replace("$__range", "1h"), "кВт·ч (по зарядке)"), ("vector($battery_capacity)", "номинал")], "kwatth", fill=0,
           desc="Ёмкость = энергия из сети × КПД / прирост SOC; считается для AC-зарядок с приростом ≥ 10 %. Оценка зашумлена."),
        stat("Оценочная деградация", 16, 0, 4, 4, "(1 - quantile(0.5, %s) / $battery_capacity) * 100" % cap_est, "percent", decimals=1,
             desc="Медиана оценок ёмкости за период относительно номинала (переменная battery_capacity)."),
        stat("Полных циклов", 20, 0, 4, 4, "sum(%s) / $battery_capacity" % L(C("energy_added_kwh")), "none", decimals=1),
        stat("Зарядок", 16, 4, 4, 4, "count(%s)" % L(C("start_ts")), "none", decimals=0),
        stat("Ёмкость сейчас (оценка)", 20, 4, 4, 4, "quantile(0.5, %s)" % cap_est, "kwatth", decimals=1),
        gauge("Текущий уровень", 0, 8, 6, 6, [(LAST(SOC), "SOC")], "percent", thresholds=SOC_THR, decimals=1),
        panel("bargauge", "AC / DC — добавлено", 6, 8, 10, 6,
              [tgt("sum(%s * (1 - %s))" % (L(C("energy_added_kwh")), L(C("dc"))), "AC", "A", instant=True), tgt("sum(%s * %s)" % (L(C("energy_added_kwh")), L(C("dc"))), "DC", "B", instant=True)],
              unit="kwatth", decimals=0, options={"orientation": "horizontal", "displayMode": "gradient", "reduceOptions": {"calcs": ["lastNotNull"]}}),
        stat("Добавлено", 16, 8, 4, 3, "sum(%s)" % L(C("energy_added_kwh")), "kwatth", decimals=0),
        stat("Из сети", 20, 8, 4, 3, "sum(%s)" % L(C("energy_used_kwh")), "kwatth", decimals=0),
        stat("КПД зарядки (оценка)", 16, 11, 8, 3, "sum(%s) / sum(%s) * 100" % (L(C("energy_added_kwh")), L(C("energy_used_kwh"))), "percent", decimals=0),
        stat("Одометр", 0, 14, 8, 4, LAST(ODO), "lengthkm", decimals=0, thresholds=thr(("text", None))),
        stat("Запас хода", 8, 14, 8, 4, LAST(RANGE), "lengthkm"),
        stat("Запас хода на 100 %", 16, 14, 8, 4, "%s / %s * 100" % (LAST(RANGE), LAST(SOC)), "lengthkm", decimals=0,
             desc="Запас хода, пересчитанный на 100 % заряда (линейно, зависит от температуры и стиля езды)."),
    ]
    return dashboard("zeekr-battery-health", "Zeekr — Состояние батареи", p, [V_CAP, V_AC, V_EFF], time_from="now-1y")


def locations():
    p = [
        panel("geomap", "Трек за период", 0, 0, 16, 14,
              [tgt("zeekr_gps_lat", ref="A", fmt="table"), tgt("zeekr_gps_lon", ref="B", fmt="table")],
              transformations=[{"id": "merge", "options": {}}],
              options={"view": {"id": "fit", "lat": 55.75, "lon": 37.62, "zoom": 10}, "basemap": {"type": "default", "name": "Basemap"},
                       "layers": [{"type": "markers", "name": "Точки", "config": {"showLegend": False, "style": {"size": {"fixed": 4}, "color": {"fixed": "dark-green"}, "opacity": 0.6}},
                                   "location": {"mode": "coords", "latitude": "Value #A", "longitude": "Value #B"}}]},
              desc="Нужны метрики zeekr_gps_*: GPS читается из LocationManager, точка пишется, если координата свежее 30 с."),
        stat("Поездок", 16, 0, 4, 4, "count(%s)" % L(D("start_ts")), "none", decimals=0),
        stat("Зарядок", 20, 0, 4, 4, "count(%s)" % L(C("start_ts")), "none", decimals=0),
        table("Места зарядок (координаты)", 16, 4, 8, 10, [(C("start_ts"), "Когда", "dateTimeAsLocal", None, 1000), (C("lat"), "Широта", "none", 5, None), (C("lon"), "Долгота", "none", 5, None)],
              C("start_ts"), sort=(0, True), limit=20),
        text("Заметка", 0, 14, 24, 3, "В оригинале адреса, города и страны берутся из геокодера TeslaMate; здесь только координаты. "
                                       "Обратное геокодирование можно добавить в sessionizer отдельно."),
    ]
    return dashboard("zeekr-locations", "Zeekr — Места", p, time_from="now-90d")


ALL = [overview, current_charge, tire_pressure, states, drives, charges, drive_tops, charging_tops, charging_costs, charging_curves, battery_health, locations]
