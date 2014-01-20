package de.tud.ess;

import android.app.Activity;
import android.os.Bundle;

public class Main extends Activity {

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
    vBars.activate();
  }
  
  @Override
  protected void onPause() {
    vBars.deactivate();
    super.onPause();
  }
  
}
