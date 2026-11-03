import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/** Run against the APK's actual classes on Android (see run-locale-regression.sh). */
public final class LocaleRegression {
    public static void main(String[] args) throws Exception {
        Locale saved = Locale.getDefault();
        try {
            Method create = Class.forName("com.zeekrlife.myCar.common.NumberFormats")
                .getMethod("create", String.class);
            Method distance = Class.forName("com.zeekrlife.myCar.common.DistanceUtils")
                .getMethod("a", float.class);
            Class<?> tripClass = Class.forName("com.zeekrlife.myCar.common.TripHelper");
            Object trip = tripClass.getConstructor().newInstance();
            Method roundTrip = tripClass.getMethod("h", Float.class);
            int checks = 0;
            for (String tag : new String[] {"ru-RU", "en-US", "zh-CN", "de-DE", "ar-EG"}) {
                Locale.setDefault(Locale.forLanguageTag(tag));
                for (float value : new float[] {0f, 0.01f, 0.05f, 0.15f, 1.25f, 12f, 19.5f, 28.6f, 37.5f, 46f, 1234.56f, -1.25f}) {
                    DecimalFormat reference = new DecimalFormat("#.0", DecimalFormatSymbols.getInstance(Locale.US));
                    float expected = Float.parseFloat(reference.format(value));
                    DecimalFormat actual = (DecimalFormat) create.invoke(null, "#.0");
                    check(expected, Float.parseFloat(actual.format(value)), tag + " formatter");
                    float expectedDistance = Float.parseFloat(reference.format((double) (value / 1000f)));
                    check(expectedDistance, ((Float) distance.invoke(null, value)).floatValue(), tag + " distance");
                    float expectedTrip = Float.parseFloat(reference.format(Float.valueOf(Math.max(0f, value))));
                    check(expectedTrip, ((Float) roundTrip.invoke(trip, Float.valueOf(value))).floatValue(), tag + " trip");
                    checks += 3;
                }
                if (!Locale.getDefault().equals(Locale.forLanguageTag(tag))) {
                    throw new AssertionError("UI locale changed");
                }
                System.out.println("PASS " + tag);
            }
            System.out.println("PASS " + checks + " checks against APK classes");
        } finally {
            Locale.setDefault(saved);
        }
    }

    private static void check(float expected, float actual, String label) {
        if (Float.compare(expected, actual) != 0) {
            throw new AssertionError(label + ": expected " + expected + ", actual " + actual);
        }
    }
}
