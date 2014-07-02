package de.tud.ess.HelloWorld;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

public class HelloWorldActivity extends Activity {

  private TextView mTextView;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);
    mTextView.setText("Hello World!");
    mTextView.setGravity(Gravity.CENTER);
  }
}
