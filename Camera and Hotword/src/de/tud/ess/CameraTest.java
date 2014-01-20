package de.tud.ess;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.menu.VoiceMenu;
import com.google.glass.widget.RobotoTypefaces;

import android.app.Activity;
import android.graphics.Typeface;
import android.hardware.Camera;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;

public class CameraTest extends Activity {

  private TextView mTextView;
  private SurfaceView mSurface;
  private SurfaceHolder mSurfaceHolder;
  protected Camera mCamera;
  protected boolean inPreview = false;
  private boolean mCameraConfigured = false;
  protected VoiceInputHelper mVoiceInputHelper;
  
  public class MyVoiceListener extends StubVoiceListener {
    protected PowerHelper mPower;

    protected final String YES = "yes";
    protected final String NO = "no";
    protected final VoiceConfig VOICECONFIG = 
        new VoiceConfig("myhotwords", 
        new String[] { YES, NO  } );

    @Override
    public void onVoiceServiceConnected() {      
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

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    setContentView(R.layout.main);
    mTextView = (TextView) findViewById(R.id.textView);

    /* Typeface can't be set in layout specs prior to API16 */
    Typeface roboto = RobotoTypefaces.getTypeface(this,
        RobotoTypefaces.WEIGHT_THIN);
    mTextView.setTypeface(roboto);
    mTextView.setText("Hello World!");
    mTextView.setGravity(Gravity.CENTER);

    mSurface = (SurfaceView) findViewById(R.id.surfaceView);
    mSurfaceHolder = mSurface.getHolder();
    mSurfaceHolder.addCallback(surfaceCB);
    
    mVoiceInputHelper = new VoiceInputHelper(this, new MyVoiceListener(),
        VoiceInputHelper.newUserActivityObserver(this));
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    
    mVoiceInputHelper.addVoiceServiceListener();
    mCamera = Camera.open();
    startPreview();
  }
  
  @Override
  protected void onPause() {
    mVoiceInputHelper.removeVoiceServiceListener();
    if (inPreview) 
      mCamera.stopPreview();
    
    mCamera.release();
    mCamera = null;
    inPreview = false;
    
    super.onPause();
  }

  private void startPreview() {
    if (mCameraConfigured && mCamera!=null) {
      mCamera.startPreview();
      inPreview  =true;
    } else {
      Log.e("mycam", "preview not started");
    }
  }

  private Callback surfaceCB = new SurfaceHolder.Callback() {

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
    }

    @Override
    public void surfaceCreated(SurfaceHolder holder) {

    }

    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width,
        int height) {
      initPreview(width, height);
      startPreview();
    }

    private Camera.Size getBestPreviewSize(int width, int height,
        Camera.Parameters parameters) {
      Camera.Size result = null;

      for (Camera.Size size : parameters.getSupportedPreviewSizes()) {
        if (size.width <= width && size.height <= height) {
          if (result == null) {
            result = size;
          } else {
            int resultArea = result.width * result.height;
            int newArea = size.width * size.height;

            if (newArea > resultArea) {
              result = size;
            }
          }
        }
      }

      return (result);
    }

    private void initPreview(int width, int height) {
      if (mCamera != null && mSurfaceHolder.getSurface() != null) {
        try {
          mCamera.setPreviewDisplay(mSurfaceHolder);
        } catch (Throwable t) {
          Log.e("PreviewDemo-surfaceCallback",
              "Exception in setPreviewDisplay()", t);
          Toast.makeText(CameraTest.this, t.getMessage(), Toast.LENGTH_LONG)
              .show();
        }

        if (!mCameraConfigured) {
          Camera.Parameters parameters = mCamera.getParameters();
          Camera.Size size = getBestPreviewSize(width, height, parameters);

          if (size != null) {
            parameters.setPreviewSize(size.width, size.height);
            mCamera.setParameters(parameters);
            mCameraConfigured = true;
          }
        }
      }
    }
  };
}
