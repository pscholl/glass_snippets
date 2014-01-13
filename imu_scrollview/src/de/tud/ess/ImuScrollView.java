package de.tud.ess;

import com.google.glass.input.HeadScroller;
import com.google.glass.input.ItemScroller.Scrollable;
import com.google.glass.util.PowerHelper;
import com.google.glass.widget.RobotoTypefaces;

import android.app.Activity;
import android.graphics.Typeface;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.widget.ScrollView;
import android.widget.TextView;

public class ImuScrollView extends Activity {
  private TextView mTextView;
  private ScrollView mScrollView;
  private HeadScrollView mHeadScroll;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mScrollView = (ScrollView) findViewById(R.id.scrollView);
    mTextView   = (TextView) findViewById(R.id.textView);
    
    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText("Hello World!\nHello World again!\nAnd again hello World!\n\n\n\nAnd some more at the bottom!");
    mTextView.setGravity(Gravity.CENTER);
    
    mHeadScroll = new HeadScrollView(mScrollView, (SensorManager) getSystemService(SENSOR_SERVICE), new PowerHelper(this));
  }
  
  @Override
  protected void onResume() {
    mHeadScroll.activate();
    super.onResume();
  }
  
  @Override
  protected void onPause() {
    mHeadScroll.deactivate();
    super.onPause();
  }
}
