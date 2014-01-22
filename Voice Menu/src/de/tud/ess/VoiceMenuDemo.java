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
  private VoiceMenu mVoice;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);
    
    mDefaultText = "Say 'ok glass' to open the menu, or directly the command from the list. ";
    
    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText(mDefaultText);
    mTextView.setGravity(Gravity.CENTER);
    
    mVoice = new VoiceMenu(this, "ok glass",
        "At least it looks simple from here right now".split(" "));
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    mVoice.setListener(this);
  }
  
  @Override
  protected void onPause() {
    mVoice.setListener(null);
    super.onPause();
  }

  @Override
  public void onItemSelected(String item) {
    mTextView.setText(mDefaultText + "\n" + item);
  }
}
