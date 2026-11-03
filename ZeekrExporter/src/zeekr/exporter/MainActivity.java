package zeekr.exporter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainActivity extends Activity {
    private static final int BACKGROUND = 0xff10151b;
    private static final int CARD = 0xff1a222b;
    private static final int TEXT = 0xfff2f5f7;
    private static final int MUTED = 0xff93a2b1;
    private static final int ACCENT = 0xff69dbbd;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean loading = new AtomicBoolean();
    private SharedPreferences prefs;
    private TripHistory history;
    private boolean destroyed;

    private TextView capacityButton;
    private TextView chargeTitle;
    private TextView chargeMain;
    private TextView chargeDetail;
    private TextView chargeTime;
    private TextView tripTitle;
    private TextView distanceValue;
    private TextView energyValue;
    private TextView averageValue;
    private TextView currentValue;
    private TextView powerValue;
    private TextView voltageValue;
    private TextView socValue;
    private TextView remainingEnergyValue;
    private TextView status;
    private TextView estimate;
    private ConsumptionGraphView graph;

    private final Runnable refresh = new Runnable() {
        @Override public void run() {
            loadStats();
            handler.postDelayed(this, 30_000);
        }
    };

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setStatusBarColor(BACKGROUND);
        getWindow().setNavigationBarColor(BACKGROUND);
        prefs = getSharedPreferences("cfg", MODE_PRIVATE);
        history = new TripHistory(this);
        buildUi();
        updateCapacityLabel();

        Intent service = new Intent(this, ExportService.class);
        if (getIntent().hasExtra("url")) service.putExtra("url", getIntent().getStringExtra("url"));
        startForegroundService(service);
    }

    @Override protected void onResume() {
        super.onResume();
        handler.removeCallbacks(refresh);
        handler.post(refresh);
    }

    @Override protected void onPause() {
        handler.removeCallbacks(refresh);
        super.onPause();
    }

    @Override protected void onDestroy() {
        destroyed = true;
        handler.removeCallbacks(refresh);
        executor.shutdownNow();
        history.close();
        super.onDestroy();
    }

    private void buildUi() {
        ScrollView scroll = new ScrollView(this);
        scroll.setBackgroundColor(BACKGROUND);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(22), dp(18), dp(22), dp(24));
        scroll.addView(root, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout header = new LinearLayout(this);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        root.addView(header, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout titles = new LinearLayout(this);
        titles.setOrientation(LinearLayout.VERTICAL);
        header.addView(titles, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        TextView title = text("Zeekr Exporter", 28, TEXT);
        title.setTypeface(Typeface.create("sans", Typeface.BOLD));
        titles.addView(title);
        titles.addView(text("Энергия и пробег между зарядками", 14, MUTED));

        capacityButton = text("", 14, ACCENT);
        capacityButton.setGravity(Gravity.CENTER);
        capacityButton.setPadding(dp(12), dp(10), dp(12), dp(10));
        capacityButton.setOnClickListener(v -> showCapacityDialog());
        header.addView(capacityButton);

        TextView batteryTitle = text("Батарея сейчас", 20, TEXT);
        batteryTitle.setTypeface(Typeface.create("sans", Typeface.BOLD));
        batteryTitle.setPadding(0, dp(22), 0, dp(10));
        root.addView(batteryTitle);
        LinearLayout batteryMetrics = new LinearLayout(this);
        batteryMetrics.setOrientation(LinearLayout.HORIZONTAL);
        root.addView(batteryMetrics, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        currentValue = addMetric(batteryMetrics, "ТОК БАТАРИИ", 0);
        powerValue = addMetric(batteryMetrics, "МОЩНОСТЬ (+ ЗАРЯД)", dp(10));
        voltageValue = addMetric(batteryMetrics, "НАПРЯЖЕНИЕ", dp(10));

        LinearLayout energyMetrics = new LinearLayout(this);
        energyMetrics.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams energyParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        energyParams.topMargin = dp(10);
        root.addView(energyMetrics, energyParams);
        socValue = addMetric(energyMetrics, "ЗАРЯД БАТАРИИ (SOC)", 0);
        remainingEnergyValue = addMetric(energyMetrics, "ОСТАТОК ЭНЕРГИИ (РАСЧЁТ)", dp(10));

        LinearLayout chargeCard = card();
        LinearLayout.LayoutParams chargeParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        chargeParams.topMargin = dp(20);
        root.addView(chargeCard, chargeParams);
        chargeTitle = text("Последняя зарядка", 14, MUTED);
        chargeCard.addView(chargeTitle);
        chargeMain = text("—", 36, TEXT);
        chargeMain.setTypeface(Typeface.create("sans", Typeface.BOLD));
        chargeMain.setPadding(0, dp(5), 0, 0);
        chargeCard.addView(chargeMain);
        chargeDetail = text("", 16, TEXT);
        chargeDetail.setPadding(0, dp(3), 0, 0);
        chargeCard.addView(chargeDetail);
        chargeTime = text("", 13, MUTED);
        chargeTime.setPadding(0, dp(7), 0, 0);
        chargeCard.addView(chargeTime);

        tripTitle = text("После последней зарядки", 20, TEXT);
        tripTitle.setTypeface(Typeface.create("sans", Typeface.BOLD));
        tripTitle.setPadding(0, dp(22), 0, dp(10));
        root.addView(tripTitle);

        LinearLayout metrics = new LinearLayout(this);
        metrics.setOrientation(LinearLayout.HORIZONTAL);
        root.addView(metrics, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        distanceValue = addMetric(metrics, "ПРОЙДЕНО", 0);
        energyValue = addMetric(metrics, "ИЗРАСХОДОВАНО", dp(10));
        averageValue = addMetric(metrics, "СРЕДНИЙ РАСХОД", dp(10));

        LinearLayout graphCard = card();
        LinearLayout.LayoutParams graphParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        graphParams.topMargin = dp(12);
        root.addView(graphCard, graphParams);
        TextView graphTitle = text("График расхода", 18, TEXT);
        graphTitle.setTypeface(Typeface.create("sans", Typeface.BOLD));
        graphCard.addView(graphTitle);
        TextView graphSubtitle = text("кВт·ч/100 км · участки по 10 км", 13, MUTED);
        graphSubtitle.setPadding(0, dp(3), 0, 0);
        graphCard.addView(graphSubtitle);
        graph = new ConsumptionGraphView(this);
        LinearLayout.LayoutParams graphViewParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(240));
        graphViewParams.topMargin = dp(4);
        graphCard.addView(graph, graphViewParams);

        status = text("", 12, MUTED);
        status.setPadding(0, dp(12), 0, 0);
        root.addView(status);
        estimate = text("Энергия рассчитана по изменению заряда батареи (SOC) и указанной ёмкости. Это оценка, а не показания электросчётчика.",
                12, MUTED);
        estimate.setPadding(0, dp(5), 0, 0);
        root.addView(estimate);
        setContentView(scroll);
    }

    private TextView addMetric(LinearLayout parent, String label, int leftMargin) {
        LinearLayout card = card();
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1);
        params.leftMargin = leftMargin;
        parent.addView(card, params);
        TextView caption = text(label, 11, MUTED);
        card.addView(caption);
        TextView value = text("—", 24, TEXT);
        value.setTypeface(Typeface.create("sans", Typeface.BOLD));
        value.setPadding(0, dp(8), 0, 0);
        card.addView(value);
        return value;
    }

    private LinearLayout card() {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(18), dp(16), dp(18), dp(16));
        GradientDrawable background = new GradientDrawable();
        background.setColor(CARD);
        background.setCornerRadius(dp(14));
        card.setBackground(background);
        return card;
    }

    private TextView text(String value, int sp, int color) {
        TextView view = new TextView(this);
        view.setText(value);
        view.setTextSize(sp);
        view.setTextColor(color);
        view.setFontFeatureSettings("tnum");
        return view;
    }

    private void loadStats() {
        if (destroyed || !loading.compareAndSet(false, true)) return;
        final double capacity = prefs.getFloat("battery_capacity", 100);
        executor.execute(() -> {
            try {
                final ChargeStats.Result result = ChargeStats.analyze(history.loadRecent(), capacity,
                        System.currentTimeMillis());
                handler.post(() -> {
                    if (!destroyed) render(result);
                });
            } catch (Throwable e) {
                handler.post(() -> {
                    if (!destroyed) status.setText("Не удалось прочитать локальную историю: " + e.getClass().getSimpleName());
                });
            } finally {
                loading.set(false);
            }
        });
    }

    private void render(ChargeStats.Result r) {
        currentValue.setText(r.hasCurrent
                ? String.format(Locale.getDefault(), "%+.1f А", r.currentA) : "—");
        powerValue.setText(r.hasCurrent && r.hasVoltage
                ? power(r.currentA * r.voltageV / 1000.0) : "—");
        voltageValue.setText(r.hasVoltage ? number(r.voltageV, 0) + " В" : "—");
        socValue.setText(r.hasSoc ? percent(r.socPercent) : "—");
        remainingEnergyValue.setText(r.hasRemainingEnergy
                ? "≈ " + number(r.remainingEnergyKwh, 1) + " кВт·ч" : "—");

        if (!r.hasCharge) {
            chargeTitle.setText("Последняя зарядка");
            chargeMain.setText("Нет данных");
            chargeDetail.setText("История появится после первой зарядки с запущенным сбором данных");
            chargeTime.setText("");
        } else {
            chargeTitle.setText(r.chargeActive ? "Текущая зарядка" : "Последняя зарядка");
            chargeMain.setText(r.hasChargeEndSoc ? percent(r.chargeEndSoc) : "—");
            if (r.hasChargeStartSoc && r.hasChargeEndSoc) {
                chargeDetail.setText(percent(r.chargeStartSoc) + " → " + percent(r.chargeEndSoc)
                        + "   ·   +" + number(r.chargeAddedKwh, 1) + " кВт·ч");
            } else {
                chargeDetail.setText("Недостаточно измерений SOC для расчёта добавленной энергии");
            }
            String time = (r.chargeActive ? "Началась: " : "Завершена: ")
                    + date(r.chargeActive ? r.chargeStartTs : r.chargeEndTs);
            if (!r.chargeActive && r.chargeEndTs > r.chargeStartTs) {
                time += " · " + duration(r.chargeEndTs - r.chargeStartTs);
            }
            chargeTime.setText(time);
        }

        tripTitle.setText(r.vehicleTrip || !r.chargeActive
                ? "После последней зарядки" : "С начала текущей зарядки");
        if (r.vehicleTrip || r.hasCharge) {
            distanceValue.setText(r.hasDistance ? number(r.distanceKm, 1) + " км" : "0 км");
            energyValue.setText(r.hasEnergy ? number(r.usedKwh, 1) + " кВт·ч" : "0 кВт·ч");
            if (r.vehicleTrip) {
                averageValue.setText(r.hasAverage && r.hasDistance && r.distanceKm >= 0.1
                        ? number(r.averageConsumption, 1) : "—");
            } else {
                averageValue.setText(r.hasDistance && r.hasEnergy && r.distanceKm >= 0.1
                        ? number(r.usedKwh / r.distanceKm * 100.0, 1) : "—");
            }
            graph.setPoints(r.graph);
        } else {
            distanceValue.setText("—");
            energyValue.setText("—");
            averageValue.setText("—");
            graph.setPoints(java.util.Collections.emptyList());
        }
        estimate.setText(r.vehicleTrip
                ? "Пробег, энергия и средний расход — показания штатных счётчиков Trip 2 автомобиля."
                : "Энергия рассчитана по изменению заряда батареи (SOC) и указанной ёмкости. Это оценка, а не показания электросчётчика.");
        status.setText(r.lastSampleTs == 0 ? "Ожидание данных от автомобиля…"
                : "Последнее измерение: " + date(r.lastSampleTs));
    }

    private void showCapacityDialog() {
        final EditText input = new EditText(this);
        input.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        input.setSingleLine(true);
        input.setText(number(prefs.getFloat("battery_capacity", 100), 1));
        input.setSelection(input.getText().length());
        new AlertDialog.Builder(this)
                .setTitle("Полезная ёмкость батареи")
                .setMessage("Укажите ёмкость в кВт·ч. Она используется для расчёта энергии по SOC.")
                .setView(input)
                .setNegativeButton("Отмена", null)
                .setPositiveButton("Сохранить", (dialog, which) -> {
                    try {
                        float value = Float.parseFloat(input.getText().toString().replace(',', '.'));
                        if (value <= 0 || value > 300) throw new NumberFormatException();
                        prefs.edit().putFloat("battery_capacity", value).apply();
                        updateCapacityLabel();
                        loadStats();
                    } catch (NumberFormatException e) {
                        Toast.makeText(this, "Введите значение от 0 до 300 кВт·ч", Toast.LENGTH_SHORT).show();
                    }
                }).show();
    }

    private void updateCapacityLabel() {
        double capacity = prefs.getFloat("battery_capacity", 100);
        capacityButton.setText("Батарея: " + number(capacity,
                Math.abs(capacity - Math.rint(capacity)) < 0.05 ? 0 : 1) + " кВт·ч");
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private static String number(double value, int decimals) {
        return String.format(Locale.getDefault(), "%." + decimals + "f", value);
    }

    private static String power(double kw) {
        return Math.abs(kw) < 10.0
                ? String.format(Locale.getDefault(), "%+.0f Вт", kw * 1000.0)
                : String.format(Locale.getDefault(), "%+.1f кВт", kw);
    }

    private static String percent(double value) {
        return number(value, Math.abs(value - Math.rint(value)) < 0.05 ? 0 : 1) + " %";
    }

    private static String date(long ts) {
        return DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT).format(new Date(ts));
    }

    private static String duration(long ms) {
        long minutes = ms / 60_000;
        if (minutes < 60) return minutes + " мин";
        return minutes / 60 + " ч " + minutes % 60 + " мин";
    }
}
