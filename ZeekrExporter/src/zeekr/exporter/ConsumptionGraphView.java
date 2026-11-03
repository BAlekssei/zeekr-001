package zeekr.exporter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

final class ConsumptionGraphView extends View {
    private static final int GRID = 0xff35414d;
    private static final int TEXT = 0xff93a2b1;
    private static final int LINE = 0xff69dbbd;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private List<ChargeStats.Point> points = new ArrayList<>();

    ConsumptionGraphView(Context context) {
        super(context);
    }

    void setPoints(List<ChargeStats.Point> value) {
        points = new ArrayList<>(value);
        setContentDescription(points.isEmpty() ? "Недостаточно данных для графика расхода"
                : "График расхода, " + points.size() + " участков");
        invalidate();
    }

    @Override protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float density = getResources().getDisplayMetrics().density;
        float left = 48 * density;
        float right = getWidth() - 16 * density;
        float top = 18 * density;
        float bottom = getHeight() - 32 * density;
        paint.setStrokeWidth(1 * density);
        paint.setTextSize(11 * density);
        paint.setTypeface(android.graphics.Typeface.create("sans", android.graphics.Typeface.NORMAL));

        if (points.isEmpty()) {
            paint.setColor(TEXT);
            paint.setTextAlign(Paint.Align.CENTER);
            canvas.drawText("График появится после первых 10 км", getWidth() / 2f, getHeight() / 2f, paint);
            return;
        }

        double maxY = 20;
        double minY = 0;
        for (ChargeStats.Point p : points) {
            maxY = Math.max(maxY, p.consumptionKwh100Km);
            minY = Math.min(minY, p.consumptionKwh100Km);
        }
        maxY = Math.ceil(maxY / 10.0) * 10.0;
        minY = Math.floor(minY / 10.0) * 10.0;
        double maxX = Math.max(10, points.get(points.size() - 1).distanceKm);

        paint.setTextAlign(Paint.Align.RIGHT);
        for (int i = 0; i <= 4; i++) {
            double value = minY + (maxY - minY) * i / 4.0;
            float y = y(value, minY, maxY, top, bottom);
            paint.setColor(GRID);
            canvas.drawLine(left, y, right, y, paint);
            paint.setColor(TEXT);
            canvas.drawText(String.format(Locale.getDefault(), "%.0f", value), left - 8 * density,
                    y + 4 * density, paint);
        }

        paint.setTextAlign(Paint.Align.CENTER);
        paint.setColor(TEXT);
        canvas.drawText("0 км", left, getHeight() - 8 * density, paint);
        canvas.drawText(formatKm(maxX / 2), (left + right) / 2, getHeight() - 8 * density, paint);
        canvas.drawText(formatKm(maxX), right, getHeight() - 8 * density, paint);

        path.reset();
        for (int i = 0; i < points.size(); i++) {
            ChargeStats.Point p = points.get(i);
            float x = (float) (left + (right - left) * p.distanceKm / maxX);
            float y = y(p.consumptionKwh100Km, minY, maxY, top, bottom);
            if (i == 0) path.moveTo(x, y); else path.lineTo(x, y);
        }
        paint.setColor(LINE);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2.5f * density);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        canvas.drawPath(path, paint);
        paint.setStyle(Paint.Style.FILL);
        for (ChargeStats.Point p : points) {
            float x = (float) (left + (right - left) * p.distanceKm / maxX);
            float y = y(p.consumptionKwh100Km, minY, maxY, top, bottom);
            canvas.drawCircle(x, y, 3 * density, paint);
        }
    }

    private static float y(double value, double min, double max, float top, float bottom) {
        return (float) (bottom - (bottom - top) * (value - min) / (max - min));
    }

    private static String formatKm(double value) {
        return String.format(Locale.getDefault(), value < 10 ? "%.1f км" : "%.0f км", value);
    }
}
