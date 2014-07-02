package de.tud.ess;

import java.util.Date;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.ScaleAnimation;

public class CameraService extends Service implements SurfaceHolder.Callback {

  public static final String TAG = "timelapse";
  private WindowManager windowManager;
  private SurfaceView surfaceView;
  private Camera camera = null;
  private MediaRecorder mediaRecorder = null;
  
  public static class Parameters {
    public static final String WIDTH  = "width";
    public static final String HEIGHT = "height";
    public static final String RATE = "rate";
    public static final String X = "x";
    public static final String Y = "y";
    public static final String OUTFILE = "outfile";
  }
  
  protected int mWidth  = 200,
                mHeight = 100,
                mX      = 320 - mWidth/2,
                mY      = 240 - mHeight/2;
  
  protected float mCaptureRate = 15.f;
  
  protected String mOutFile = Environment.getExternalStorageDirectory()+"/"+"DCIM"+"/"+
                    DateFormat.format("yyyy-MM-dd_kk-mm-ss", new Date().getTime())+
                    ".mp4";
  protected LogCatWriter mLogCatWriter;
  
  @Override
  public int onStartCommand(Intent intent, int flags, int startId) {
    if (intent.getExtras() != null) {
      Bundle e = intent.getExtras();
      
      Log.e(TAG, e.keySet().toString());
      
      mWidth = e.getInt(Parameters.WIDTH, mWidth);
      Log.e(TAG, String.format("mWidth is %d", mWidth));
      mHeight = e.getInt(Parameters.HEIGHT, mHeight);
      mX = e.getInt(Parameters.X, mX);
      mY = e.getInt(Parameters.Y, mY);
      mOutFile = e.getString(Parameters.OUTFILE, mOutFile);
      mCaptureRate = e.getFloat(Parameters.RATE, mCaptureRate);
    }
    
    // Create new SurfaceView, set its size to 1x1, move it to the top left corner and set this service as a callback
    windowManager = (WindowManager) this.getSystemService(Context.WINDOW_SERVICE);
    surfaceView = new SurfaceView(this);
    LayoutParams layoutParams = new WindowManager.LayoutParams(
        mWidth, mHeight, mX, mY,
        WindowManager.LayoutParams.TYPE_SYSTEM_OVERLAY,
        WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
        PixelFormat.TRANSLUCENT
    );
    layoutParams.gravity = Gravity.LEFT | Gravity.TOP;
    windowManager.addView(surfaceView, layoutParams);
    surfaceView.getHolder().addCallback(this);
    
    mLogCatWriter = new LogCatWriter(mOutFile+".log", TAG);
    
    super.onStartCommand(intent, flags, startId);
    return START_NOT_STICKY;
  }
  
  @Override
  public void onCreate() {

      // Start foreground service to avoid unexpected kill
//      Notification notification = new Notification.Builder(this)
//          .setContentTitle("Background Video Recorder")
//          .setContentText("")
//          .setSmallIcon(R.drawable.bio)
//          .build();
//      startForeground(1234, notification);
  }

  // Method called right after Surface created (initializing and starting MediaRecorder)
  @Override
  public void surfaceCreated(SurfaceHolder surfaceHolder) {

      camera = Camera.open();
      mediaRecorder = new MediaRecorder();
      camera.unlock();
      
      mediaRecorder.setPreviewDisplay(surfaceHolder.getSurface());
      mediaRecorder.setCamera(camera);
      
      mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
      //if (mCaptureRate > 25) {
      //  mediaRecorder.setAudioSource(MediaRecorder.AudioSource.CAMCORDER);
      //  mediaRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_HIGH));
      //} else {
        mediaRecorder.setProfile(CamcorderProfile.get(CamcorderProfile.QUALITY_TIME_LAPSE_720P));
        mediaRecorder.setCaptureRate(mCaptureRate);
        mediaRecorder.setVideoFrameRate((int) Math.ceil(mCaptureRate));
      //}
      mediaRecorder.setOutputFile(mOutFile);

      try { mediaRecorder.prepare(); } catch (Exception e) {Log.e(TAG, e.toString());}
      mediaRecorder.start();
      
      ScaleAnimation a = new ScaleAnimation(3, 2, 3, 2);
      a.setDuration(2000);
      surfaceView.startAnimation(a);
      
      Log.i(TAG, String.format("recording %s with rate %.2f", mOutFile, mCaptureRate));
  }

  // Stop recording and remove SurfaceView
  @Override
  public void onDestroy() {
      mediaRecorder.stop();
      mediaRecorder.reset();
      mediaRecorder.release();

      camera.lock();
      camera.release();

      windowManager.removeView(surfaceView);
  }

  @Override
  public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {}

  @Override
  public void surfaceDestroyed(SurfaceHolder surfaceHolder) {}

  @Override
  public IBinder onBind(Intent intent) { return null; }

}