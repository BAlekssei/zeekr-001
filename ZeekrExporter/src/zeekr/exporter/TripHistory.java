package zeekr.exporter;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;

final class TripHistory extends SQLiteOpenHelper {
    private static final long HEARTBEAT_MS = 5 * 60_000;
    private static final long RETENTION_MS = 180L * 24 * 60 * 60 * 1000;
    private static final int MAX_READ_ROWS = 100_000;
    private static final String COLUMNS = "ts,odo,soc,charging,current_a,voltage_v,capacity_ah,trip_energy,trip_distance,trip_avg";

    TripHistory(Context context) {
        super(context, "trip_history.db", null, 3);
    }

    @Override public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE samples(ts INTEGER PRIMARY KEY, odo REAL, soc REAL, charging INTEGER NOT NULL,"
                + " current_a REAL, voltage_v REAL, capacity_ah REAL, trip_energy REAL, trip_distance REAL, trip_avg REAL)");
        db.execSQL("CREATE INDEX samples_charging ON samples(charging, ts)");
    }

    @Override public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion < 2) {
            db.execSQL("ALTER TABLE samples ADD COLUMN current_a REAL");
            db.execSQL("ALTER TABLE samples ADD COLUMN voltage_v REAL");
            db.execSQL("ALTER TABLE samples ADD COLUMN trip_energy REAL");
            db.execSQL("ALTER TABLE samples ADD COLUMN trip_distance REAL");
            db.execSQL("ALTER TABLE samples ADD COLUMN trip_avg REAL");
        }
        if (oldVersion < 3) {
            db.execSQL("ALTER TABLE samples ADD COLUMN capacity_ah REAL");
        }
    }

    void add(ChargeStats.Sample sample) {
        SQLiteDatabase db = getWritableDatabase();
        try (Cursor c = db.rawQuery("SELECT " + COLUMNS + " FROM samples ORDER BY ts DESC LIMIT 1", null)) {
            if (c.moveToFirst() && sample.ts - c.getLong(0) < HEARTBEAT_MS
                    && c.getInt(3) == (sample.charging ? 1 : 0)
                    && equalNullable(c, 1, sample.odometerKm) && equalNullable(c, 2, sample.socPercent)
                    && equalNullable(c, 4, sample.batteryCurrentA) && equalNullable(c, 5, sample.batteryVoltageV)
                    && equalNullable(c, 6, sample.batteryCapacityAh) && equalNullable(c, 7, sample.tripEnergyKwh)
                    && equalNullable(c, 8, sample.tripDistanceKm) && equalNullable(c, 9, sample.tripAvgConsumption)) return;
        }
        ContentValues values = new ContentValues();
        values.put("ts", sample.ts);
        putNullable(values, "odo", sample.odometerKm);
        putNullable(values, "soc", sample.socPercent);
        values.put("charging", sample.charging ? 1 : 0);
        putNullable(values, "current_a", sample.batteryCurrentA);
        putNullable(values, "voltage_v", sample.batteryVoltageV);
        putNullable(values, "capacity_ah", sample.batteryCapacityAh);
        putNullable(values, "trip_energy", sample.tripEnergyKwh);
        putNullable(values, "trip_distance", sample.tripDistanceKm);
        putNullable(values, "trip_avg", sample.tripAvgConsumption);
        db.insertWithOnConflict("samples", null, values, SQLiteDatabase.CONFLICT_REPLACE);
        db.delete("samples", "ts<?", new String[]{Long.toString(sample.ts - RETENTION_MS)});
    }

    List<ChargeStats.Sample> loadRecent() {
        List<ChargeStats.Sample> result = new ArrayList<>();
        try (Cursor c = getReadableDatabase().rawQuery(
                "SELECT " + COLUMNS + " FROM (SELECT " + COLUMNS + " FROM samples ORDER BY ts DESC LIMIT "
                        + MAX_READ_ROWS + ") ORDER BY ts", null)) {
            while (c.moveToNext()) {
                result.add(new ChargeStats.Sample(c.getLong(0), nullable(c, 1), nullable(c, 2), c.getInt(3) != 0,
                        nullable(c, 4), nullable(c, 5), nullable(c, 6), nullable(c, 7), nullable(c, 8), nullable(c, 9)));
            }
        }
        return result;
    }

    private static void putNullable(ContentValues values, String key, Double value) {
        if (value == null) values.putNull(key); else values.put(key, value);
    }

    private static Double nullable(Cursor c, int column) {
        return c.isNull(column) ? null : c.getDouble(column);
    }

    private static boolean equalNullable(Cursor c, int column, Double value) {
        return value == null ? c.isNull(column) : !c.isNull(column) && c.getDouble(column) == value;
    }
}
