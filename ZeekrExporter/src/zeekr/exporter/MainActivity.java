package zeekr.exporter;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/** Запуск службы вручную. Настройка адреса: am start -n zeekr.exporter/.MainActivity --es url http://HOST:8428 */
public class MainActivity extends Activity {
    @Override protected void onCreate(Bundle b) {
        super.onCreate(b);
        Intent i = new Intent(this, ExportService.class);
        if (getIntent().hasExtra("url")) i.putExtra("url", getIntent().getStringExtra("url"));
        startForegroundService(i);
        finish();
    }
}
