package zeekr.exporter;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/** Локальный буфер точек: переживает обрывы связи и перезагрузки ГУ. */
class Buffer extends SQLiteOpenHelper {
    static final long MAX_ROWS = 3_000_000;

    Buffer(Context c) { super(c, "buffer.db", null, 1); }

    @Override public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE s(id INTEGER PRIMARY KEY AUTOINCREMENT, ts INTEGER NOT NULL, line TEXT NOT NULL)");
    }
    @Override public void onUpgrade(SQLiteDatabase db, int o, int n) {}

    /** line — "metric{labels} value" без метки времени, ts — миллисекунды. */
    void addAll(java.util.List<Object[]> rows) {
        if (rows.isEmpty()) return;
        SQLiteDatabase db = getWritableDatabase();
        db.beginTransaction();
        try {
            ContentValues v = new ContentValues();
            for (Object[] r : rows) { v.put("ts", (Long) r[0]); v.put("line", (String) r[1]); db.insert("s", null, v); }
            db.setTransactionSuccessful();
        } finally { db.endTransaction(); }
    }

    long count() {
        try (Cursor c = getReadableDatabase().rawQuery("SELECT COUNT(*) FROM s", null)) { c.moveToFirst(); return c.getLong(0); }
    }

    /** Возвращает текст пачки в формате Prometheus (с метками времени); maxId[0] — последний id в пачке. */
    String batch(int limit, long[] maxId) {
        StringBuilder sb = new StringBuilder();
        try (Cursor c = getReadableDatabase().rawQuery("SELECT id, ts, line FROM s ORDER BY id LIMIT " + limit, null)) {
            while (c.moveToNext()) {
                maxId[0] = c.getLong(0);
                sb.append(c.getString(2)).append(' ').append(c.getLong(1)).append('\n');
            }
        }
        return sb.toString();
    }

    void deleteUpTo(long id) { getWritableDatabase().execSQL("DELETE FROM s WHERE id<=" + id); }

    void trim() {
        long n = count();
        if (n > MAX_ROWS) getWritableDatabase().execSQL("DELETE FROM s WHERE id IN (SELECT id FROM s ORDER BY id LIMIT " + (n - MAX_ROWS) + ")");
    }
}
