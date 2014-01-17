package de.tud.ess;

import com.google.glass.widget.RobotoTypefaces;

import android.app.Activity;
import android.graphics.Typeface;
import android.hardware.Camera;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.TextView;
import android.widget.Toast;

public class CameraTest extends Activity {

  private TextView mTextView;
  private SurfaceView mSurface;
  private SurfaceHolder mSurfaceHolder;
  protected Camera mCamera;
  protected boolean inPreview = false;
  private boolean mCameraConfigured = false;

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
  }
  
  @Override
  protected void onResume() {
    super.onResume();
    
    mCamera = Camera.open();
    startPreview();
  }
  
  @Override
  protected void onPause() {
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
