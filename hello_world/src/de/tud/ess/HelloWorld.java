package de.tud.ess;

import com.google.glass.widget.RobotoTypefaces;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

public class HelloWorld extends Activity {

  private TextView mTextView;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);
    
    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText("Hello World!");
    mTextView.setGravity(Gravity.CENTER);
  }
}
