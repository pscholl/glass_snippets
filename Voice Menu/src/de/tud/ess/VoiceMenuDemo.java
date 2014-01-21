package de.tud.ess;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

import com.google.glass.widget.RobotoTypefaces;

import de.tud.ess.VoiceMenu.VoiceMenuListener;

public class VoiceMenuDemo extends Activity implements VoiceMenuListener {
  private TextView mTextView;
  private String mDefaultText;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);
    
    mDefaultText = "Say 'ok glass' to open the menu, or directly the command from the list.";
    
    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText(mDefaultText);
    mTextView.setGravity(Gravity.CENTER);
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    VoiceMenu v = new VoiceMenu(this, "ok glass",
        "At least it looks simple from here, right?".split(" "));
    v.setListener(this);
  }

  @Override
  public void onItemSelected(String item) {
    mTextView.setText(mDefaultText + "\n" + item);
  }
}
