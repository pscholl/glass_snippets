package de.tud.ess;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class CameraStart extends Activity {
  @Override
  protected void onResume() {
    super.onResume();
    
//    Intent i = new Intent(this, CameraService.class);
//    i.putExtra(CameraService.Parameters.WIDTH, 200);
//    i.putExtra(CameraService.Parameters.HEIGHT, 150);
//    startService(i);
    Intent i = new Intent(this, GlassCameraService.class);
    stopService(i);
    Log.e("test", "timelspaseaction");
  }
  
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    // TODO Auto-generated method stub
    super.onCreate(savedInstanceState);
  
    Log.e("test", "action");
    stopService(new Intent(this, GlassCameraService.class));
    Log.e("test", "timelspaseaction");
  }
  
  @Override
  protected void onPause() {
    super.onPause();
    
    Intent i = new Intent(this, CameraService.class);
    stopService(i);
  }

}
