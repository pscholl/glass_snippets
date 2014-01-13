package de.tud.ess;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.RobotoTypefaces;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.widget.TextView;

public class HotWord extends Activity {

  public class MyVoiceListener extends StubVoiceListener {
    protected PowerHelper mPower;

    protected final String YES = "yes";
    protected final String NO = "no";
    protected final VoiceConfig VOICECONFIG = 
        new VoiceConfig("myhotwords", 
        new String[] { YES, NO  } );

    @Override
    public void onVoiceServiceConnected() {
      Log.e("Voice", "set voiceconfig");
      
      /* this is here to keep the device from going to sleep on voice activity */
      mPower = new PowerHelper(getApplicationContext());
      
      /* set the voice config, second argument is if the device should do hotword
       * detection even if the display is turned off. */
      mVoiceInputHelper.setVoiceConfig(VOICECONFIG, false);
    }
    
    @Override
    public void onVoiceServiceDisconnected() {
      mPower = null; 
      super.onVoiceServiceDisconnected();
    }
    
    @Override
    public VoiceConfig onVoiceCommand(VoiceCommand vc) {
      mPower.stayAwake(3000); /* in ms */
      
      if ( YES.equals(vc.getLiteral()) )
        mTextView.setText("Yes!");
      else if ( NO.equals(vc.getLiteral()) )
        mTextView.setText("No!");
      else
        return null;
      
      /* return the voiceconfig if the command has been handled */
      return VOICECONFIG;
    }
  }

  private TextView mTextView;
  private VoiceInputHelper mVoiceInputHelper;

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
    
    mVoiceInputHelper = new VoiceInputHelper(this, new MyVoiceListener(),
        VoiceInputHelper.newUserActivityObserver(this));
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    mVoiceInputHelper.addVoiceServiceListener();
  }
  
  @Override
  protected void onPause() {
    mVoiceInputHelper.removeVoiceServiceListener();
    super.onPause();
  }
}
