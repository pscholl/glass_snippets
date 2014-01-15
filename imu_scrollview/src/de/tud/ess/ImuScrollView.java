package de.tud.ess;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

import com.google.glass.widget.RobotoTypefaces;

public class ImuScrollView extends Activity {
  private TextView mTextView;
  private HeadScrollView mHeadScrollView;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mHeadScrollView = (HeadScrollView) findViewById(R.id.scrollView);
    mTextView       = (TextView) findViewById(R.id.textView);
    
    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText("\n\nHello World!\nHello World again!\nAnd again hello World!\n\n\n\nAnd some more at the bottom!\n\n");
    mTextView.setGravity(Gravity.CENTER);
  }
  
  @Override
  protected void onResume() {
    mHeadScrollView.activate();
    super.onResume();
  }
  
  @Override
  protected void onPause() {
    mHeadScrollView.deactivate();
    super.onPause();
  }
}
