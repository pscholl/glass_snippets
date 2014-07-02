package de.tud.ess.timeLapseRecorder;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;

import de.tud.ess.lib.CameraService;

public class ExampleTimeLapseActivity extends Activity {
  protected void log(String msg) {
      Log.e(getLocalClassName(), msg);
  }

  @Override
  protected void onResume() {
    super.onResume();

    Intent camIntent = new Intent(this, CameraService.class);
    camIntent.putExtra(CameraService.Parameters.RATE, .5f);   // recording frame rate
    camIntent.putExtra(CameraService.Parameters.HEIGHT, 100); // for the preview
    camIntent.putExtra(CameraService.Parameters.WIDTH,  200);
    camIntent.putExtra(CameraService.Parameters.X, 0);        // position of top-left corner
    camIntent.putExtra(CameraService.Parameters.Y, 0);        // of the shown preview

    log("onResume starting cam: " + startService(camIntent));
  }
  
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    Intent camIntent = new Intent(this, CameraService.class);
    log("onCreate stopping cam: " + stopService(camIntent) );
  }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER) {
            Intent camIntent = new Intent(this, CameraService.class);
            log("onKeyDown stopping cam: " + stopService(camIntent) );
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
  protected void onPause() {
    super.onPause();
    //Intent camIntent = new Intent(this, CameraService.class);
    //log("onPause stopping cam: " + stopService(camIntent) );
  }

}
