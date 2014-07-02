package de.tud.ess.voiceMenu;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuDialogFragment;
import de.tud.ess.VoiceMenuEss;

public class VoiceMenuActivity extends Activity implements VoiceDetection.VoiceDetectionListener {

    private static final String OKGLASS = "ok glass";
    private static final String GREEN = "green";
    private static final String BLUE = "blue";
    private static final String RED = "red";
    private static final String BROWN = "brown";
    private static final String YELLOW = "yellow";
    private static final String BLACK = "black";
    private static final String WHITE = "white";

    private TextView mTextView;
    private VoiceMenuEss mVoiceMenu;
    private String[] mPhrases = new String[] { RED, GREEN, BLUE, BROWN, YELLOW, BLACK, WHITE };

    @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);
    mTextView.setText("Try \"ok glass\"");
    mTextView.setGravity(Gravity.CENTER);

    mVoiceMenu = new VoiceMenuEss(this, this, OKGLASS, new String[] {RED,GREEN,BLUE});
  }

    @Override
    protected void onResume() {
        super.onResume();
        mVoiceMenu.start();
    }

    @Override
    protected void onPause() {
        super.onPause();
        mVoiceMenu.stop();
    }

    @Override
    public void onHotwordDetected() {
    }

    @Override
    public void onPhraseDetected(int index, String phrase) {
        mTextView.setText(phrase);
    }
}
