package zeekr.exporter;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.util.Log;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Читает android.car (CarSensorManager + CarSettingYfveManager) и GPS, пишет изменения в локальный буфер
 * и отправляет буфер в VictoriaMetrics (/api/v1/import/prometheus) с исходными метками времени.
 * Только чтение: ни одно свойство машины не записывается.
 */
public class ExportService extends Service {
    private static final String T = "ZEXP";
    private static final String CAR = "android.car.Car";
    private static final String SENSOR_CLS = "android.car.hardware.CarSensorManager";
    private static final String SETTING_CLS = "android.car.hardware.setting.CarSettingYfveManager";
    private static final long HEARTBEAT_MS = 60_000;     // повторная запись неизменного значения
    private static final long ACTIVE_MS = 5_000;         // опрос в движении и на зарядке
    private static final long IDLE_MS = 30_000;          // опрос на стоянке
    private static final long UPLOAD_MS = 10_000;

    private HandlerThread ht, ut;
    private Handler h, uh;
    private Buffer buf;
    private SharedPreferences prefs;
    private Object car, sensorMgr, settingMgr;
    private boolean connecting;

    private int[] sensorIds = new int[0];
    private final Map<Integer, String> sensorNames = new HashMap<>();
    private Method getLatest;
    private final List<int[]> props = new ArrayList<>();            // {id, area, kind(0 int,1 float,2 bool)}
    private final Map<Integer, String> propNames = new HashMap<>();
    private Method getInt, getFloat, getBool;

    private final Map<String, Double> last = new HashMap<>();
    private final Map<String, Long> lastTs = new HashMap<>();
    private double speed = 0; private boolean charging = false;
    private String uploadState = "none";

    @Override public void onCreate() {
        super.onCreate();
        prefs = getSharedPreferences("cfg", MODE_PRIVATE);
        buf = new Buffer(this);
        ht = new HandlerThread("collect"); ht.start(); h = new Handler(ht.getLooper());
        ut = new HandlerThread("upload"); ut.start(); uh = new Handler(ut.getLooper());
        NotificationManager nm = getSystemService(NotificationManager.class);
        nm.createNotificationChannel(new NotificationChannel("exp", "Exporter", NotificationManager.IMPORTANCE_MIN));
        startForeground(1, new Notification.Builder(this, "exp").setSmallIcon(android.R.drawable.stat_notify_sync)
            .setContentTitle("Zeekr Exporter").build());
        h.post(this::connectCar);
        uh.postDelayed(this::uploadLoop, UPLOAD_MS);
    }

    @Override public int onStartCommand(Intent i, int f, int id) {
        if (i != null && i.hasExtra("url")) prefs.edit().putString("url", i.getStringExtra("url")).apply();
        Log.i(T, "start url=" + prefs.getString("url", ""));
        return START_STICKY;
    }

    @Override public IBinder onBind(Intent i) { return null; }

    @Override public void onDestroy() { ht.quit(); ut.quit(); super.onDestroy(); }

    // ---------------------------------------------------------------- car

    private void connectCar() {
        if (connecting) return;
        connecting = true;
        try {
            Class<?> cc = Class.forName(CAR);
            car = cc.getMethod("createCar", Context.class, ServiceConnection.class).invoke(null, this, new ServiceConnection() {
                public void onServiceConnected(ComponentName n, IBinder s) { h.post(ExportService.this::onCarReady); }
                public void onServiceDisconnected(ComponentName n) {
                    Log.w(T, "car disconnected");
                    sensorMgr = null; settingMgr = null; connecting = false;
                    h.postDelayed(ExportService.this::connectCar, 5000);
                }
            });
            cc.getMethod("connect").invoke(car);
        } catch (Throwable e) {
            Log.e(T, "car connect fail", e); connecting = false; h.postDelayed(this::connectCar, 10000);
        }
    }

    private Object mgr(String constName) throws Exception {
        Class<?> cc = Class.forName(CAR);
        String name = (String) cc.getField(constName).get(null);
        return cc.getMethod("getCarManager", String.class).invoke(car, name);
    }

    private static Map<Integer, String> idNames(Class<?> k, String prefix) {
        Map<Integer, String> m = new HashMap<>();
        for (Field f : k.getFields())
            if (f.getType() == int.class && Modifier.isStatic(f.getModifiers()) && f.getName().startsWith(prefix))
                try { m.put(f.getInt(null), f.getName()); } catch (Exception ignored) {}
        return m;
    }

    private void onCarReady() {
        try {
            sensorMgr = mgr("SENSOR_SERVICE");
            settingMgr = mgr("SETTING_YFVE_SERVICE");
            Class<?> sk = Class.forName(SENSOR_CLS);
            sensorNames.clear(); sensorNames.putAll(idNames(sk, "SENSOR_TYPE_"));
            sensorIds = (int[]) sk.getMethod("getSupportedSensors").invoke(sensorMgr);
            getLatest = sk.getMethod("getLatestSensorEvent", int.class);

            Class<?> pk = Class.forName(SETTING_CLS);
            propNames.clear(); propNames.putAll(idNames(pk, "ID_"));
            getInt = pk.getMethod("getIntProperty", int.class, int.class);
            getFloat = pk.getMethod("getFloatProperty", int.class, int.class);
            getBool = pk.getMethod("getBooleanProperty", int.class, int.class);
            props.clear();
            for (Object c : (List<?>) pk.getMethod("getPropertyList").invoke(settingMgr)) {
                Class<?> cc = c.getClass();
                int id = (Integer) cc.getMethod("getPropertyId").invoke(c);
                String type = String.valueOf(cc.getMethod("getPropertyType").invoke(c));
                int kind = type.contains("Integer") ? 0 : type.contains("Float") ? 1 : type.contains("Boolean") ? 2 : -1;
                if (kind < 0) continue; // byte[] и прочее пропускаем
                int[] areas = (int[]) cc.getMethod("getAreaIds").invoke(c);
                if (areas == null || areas.length == 0) areas = new int[]{0};
                for (int a : areas) props.add(new int[]{id, a, kind});
            }
            Log.i(T, "car ready: sensors=" + sensorIds.length + " props=" + props.size());
            h.removeCallbacks(this::tick);
            h.post(this::tick);
        } catch (Throwable e) {
            Log.e(T, "car init fail", e); connecting = false; h.postDelayed(this::connectCar, 10000);
        }
    }

    // ---------------------------------------------------------------- collect

    private final List<Object[]> out = new ArrayList<>();

    private void emit(String metric, String labels, double v, long now) {
        if (Double.isNaN(v) || Double.isInfinite(v)) return;
        String key = metric + labels;
        Double p = last.get(key); Long pt = lastTs.get(key);
        if (p != null && p == v && pt != null && now - pt < HEARTBEAT_MS) return;
        last.put(key, v); lastTs.put(key, now);
        String num = (v == Math.rint(v) && Math.abs(v) < 1e15) ? Long.toString((long) v) : Double.toString(v);
        out.add(new Object[]{now, metric + labels + " " + num});
    }

    private static double f(float x) { return Double.parseDouble(Float.toString(x)); }

    private void tick() {
        long next = IDLE_MS;
        if (sensorMgr == null || settingMgr == null) return;
        long now = System.currentTimeMillis();
        try {
            out.clear();
            collectSensors(now);
            collectProps(now);
            collectLocation(now);
            buf.addAll(out);
            boolean active = speed > 0 || charging;
            next = active ? ACTIVE_MS : IDLE_MS;
        } catch (Throwable e) { Log.e(T, "tick fail", e); }
        h.postDelayed(this::tick, next);
    }

    private void collectSensors(long now) throws Exception {
        for (int t : sensorIds) {
            Object ev;
            try { ev = getLatest.invoke(sensorMgr, t); } catch (Throwable e) { continue; }
            if (ev == null) continue;
            Class<?> ec = ev.getClass();
            float[] fv = (float[]) ec.getField("floatValues").get(ev);
            int[] iv = (int[]) ec.getField("intValues").get(ev);
            String name = sensorNames.containsKey(t) ? sensorNames.get(t) : "TYPE_0x" + Integer.toHexString(t);
            for (int i = 0; i < fv.length; i++) emit("zeekr_sensor", "{name=\"" + name + "\",i=\"" + i + "\"}", f(fv[i]), now);
            for (int i = 0; i < iv.length; i++) emit("zeekr_sensor", "{name=\"" + name + "\",i=\"" + i + "\"}", iv[i], now);
            // удобные именованные метрики
            if ("SENSOR_TYPE_BATTERY_LEVEL".equals(name) && fv.length > 0) emit("zeekr_soc_percent", "", f(fv[0]), now);
            else if ("SENSOR_TYPE_YFVE_ENDURANCE_MILEAGE".equals(name) && iv.length > 0) emit("zeekr_range_km", "", iv[0], now);
            else if ("SENSOR_TYPE_ODOMETER".equals(name) && iv.length > 0) emit("zeekr_odometer_km", "", iv[0], now);
            else if ("SENSOR_TYPE_YFVE_OUTSIDE_TEMP".equals(name) && fv.length > 0) emit("zeekr_outside_temp_c", "", f(fv[0]), now);
            else if ("SENSOR_TYPE_YFVE_INSIDE_AIRTEMP".equals(name) && fv.length > 0) emit("zeekr_inside_temp_c", "", f(fv[0]), now);
            else if ("SENSOR_TYPE_YFVE_VEHICLE_SPEED".equals(name) && iv.length > 0) { speed = iv[0]; emit("zeekr_speed", "", iv[0], now); }
            else if (t == 1610612759 && iv.length > 0) emit("zeekr_tire_pressure_kpa", "{pos=\"fl\"}", iv[0], now);
            else if (t == 1610612760 && iv.length > 0) emit("zeekr_tire_pressure_kpa", "{pos=\"fr\"}", iv[0], now);
            else if (t == 1610612761 && iv.length > 0) emit("zeekr_tire_pressure_kpa", "{pos=\"rl\"}", iv[0], now);
            else if (t == 1610612762 && iv.length > 0) emit("zeekr_tire_pressure_kpa", "{pos=\"rr\"}", iv[0], now);
            else if (t == 1610612763 && iv.length > 0) emit("zeekr_tire_temp_c", "{pos=\"fl\"}", iv[0] - 50, now);
            else if (t == 1610612764 && iv.length > 0) emit("zeekr_tire_temp_c", "{pos=\"fr\"}", iv[0] - 50, now);
            else if (t == 1610612765 && iv.length > 0) emit("zeekr_tire_temp_c", "{pos=\"rl\"}", iv[0] - 50, now);
            else if (t == 1610612766 && iv.length > 0) emit("zeekr_tire_temp_c", "{pos=\"rr\"}", iv[0] - 50, now);
        }
    }

    private void collectProps(long now) {
        boolean chg = false;
        for (int[] p : props) {
            double v;
            try {
                Object o = (p[2] == 0 ? getInt : p[2] == 1 ? getFloat : getBool).invoke(settingMgr, p[0], p[1]);
                v = o instanceof Boolean ? ((Boolean) o ? 1 : 0) : o instanceof Float ? f((Float) o) : ((Number) o).doubleValue();
            } catch (Throwable e) { continue; }
            String name = propNames.containsKey(p[0]) ? propNames.get(p[0]) : "0x" + Integer.toHexString(p[0]);
            emit("zeekr_prop", "{name=\"" + name + "\",area=\"" + p[1] + "\"}", v, now);
            if (("ID_CHARGING_PLUG_STATE_AC".equals(name) || "ID_CHARGING_PLUG_STATE_DC".equals(name)
                || "ID_CHARGINT_ACTION_STATE".equals(name)) && v != 0) chg = true;
        }
        charging = chg;
    }

    private void collectLocation(long now) {
        try {
            LocationManager lm = getSystemService(LocationManager.class);
            Location l = lm.getLastKnownLocation(LocationManager.GPS_PROVIDER);
            if (l == null || now - l.getTime() > 30_000) return;
            emit("zeekr_gps_lat", "", l.getLatitude(), now);
            emit("zeekr_gps_lon", "", l.getLongitude(), now);
            emit("zeekr_gps_alt_m", "", l.getAltitude(), now);
            emit("zeekr_gps_speed_ms", "", l.getSpeed(), now);
            emit("zeekr_gps_accuracy_m", "", l.getAccuracy(), now);
        } catch (Throwable ignored) {}
    }

    // ---------------------------------------------------------------- upload

    private void uploadLoop() {
        long delay = UPLOAD_MS;
        try {
            String url = prefs.getString("url", "");
            long n = buf.count();
            if (url.isEmpty()) uploadState = "no-url";
            else {
                while (true) {
                    long[] max = {0};
                    String body = buf.batch(5000, max);
                    if (body.isEmpty()) { uploadState = "ok"; break; }
                    int code = post(url + "/api/v1/import/prometheus?extra_label=car=zeekr001", body);
                    if (code / 100 != 2) { uploadState = "http " + code; delay = 30_000; break; }
                    buf.deleteUpTo(max[0]);
                    uploadState = "ok";
                }
            }
            buf.trim();
            Log.i(T, "buffer=" + n + " upload=" + uploadState + " active=" + (speed > 0 || charging));
        } catch (Throwable e) {
            uploadState = "err " + e.getClass().getSimpleName(); delay = 30_000;
            Log.w(T, "upload fail: " + e);
        }
        uh.postDelayed(this::uploadLoop, delay);
    }

    private int post(String url, String body) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
        c.setConnectTimeout(5000); c.setReadTimeout(15000); c.setRequestMethod("POST"); c.setDoOutput(true);
        byte[] b = body.getBytes(StandardCharsets.UTF_8);
        c.setFixedLengthStreamingMode(b.length);
        try (OutputStream o = c.getOutputStream()) { o.write(b); }
        int code = c.getResponseCode();
        c.disconnect();
        return code;
    }
}
