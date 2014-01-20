package de.tud.ess;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.RobotoTypefaces;

import de.tud.ess.VoiceMenu.VoiceMenuListener;
import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

public class VoiceMenuDemo extends Activity implements VoiceMenuListener {
  private TextView mTextView;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);
    
    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText("Say either 'Yes' or 'No'");
    mTextView.setGravity(Gravity.CENTER);
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    VoiceMenu v = new VoiceMenu(this,
        "At least it looks simple from here, right?".split(" "));
    v.setListener(this);
    v.show();
  }

  @Override
  public void onItemSelected(String item) {

  }
}
