package de.tud.ess;

import android.app.Activity;
import android.os.Bundle;

public class VerticalBarsDemo extends Activity {

  protected VerticalBars vBars;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);
    vBars = (VerticalBars) findViewById(R.id.vbars);
  }
  
  @Override
  protected void onResume() {
    super.onResume();
  }
  
  @Override
  protected void onPause() {
    super.onPause();
  }
  
}
