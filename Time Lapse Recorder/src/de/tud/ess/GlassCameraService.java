package de.tud.ess;

import java.util.Date;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.media.MediaScannerConnection;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.SurfaceHolder;

import com.google.android.glass.timeline.DirectRenderingCallback;
import com.google.android.glass.timeline.LiveCard;

public class GlassCameraService extends Service implements
    DirectRenderingCallback {

  protected static final String VIDEO_CARD = "timelapse_card";
  protected static final String TAG = CameraService.TAG;
  private Camera camera = null;
  private MediaRecorder mediaRecorder = null;

  public static class Parameters {
    public static final String RATE = "rate";
    public static final String OUTFILE = "outfile";
  }

  protected float mCaptureRate = 15.f;
  protected String mOutFile = Environment.getExternalStorageDirectory() + "/DCIM/"
      + DateFormat.format("yyyy-MM-dd_kk-mm-ss", new Date().getTime()) + ".mp4";
  protected LiveCard mLiveCard = null;
  protected LogCatWriter mLogCatWriter;

  @Override
  public int onStartCommand(Intent intent, int flags, int startId) {
    if (intent.getExtras() != null) {
      Bundle e = intent.getExtras();
      mOutFile = e.getString(Parameters.OUTFILE, mOutFile);
      mCaptureRate = e.getFloat(Parameters.RATE, mCaptureRate);
    }

    mLiveCard = new LiveCard(this, VIDEO_CARD);

    mLiveCard.setDirectRenderingEnabled(true);
    mLiveCard.getSurfaceHolder().addCallback(this);

    Intent menu = new Intent(this, CameraStart.class);
    menu.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
    mLiveCard.setAction(PendingIntent.getActivity(this, 0, menu, 0));
    mLiveCard.publish(LiveCard.PublishMode.REVEAL);

    mLogCatWriter = new LogCatWriter(mOutFile+".log", TAG);
    super.onStartCommand(intent, flags, startId);
    
    showVoiceMenu();
    return START_NOT_STICKY;
  }

  @Override
  public void onCreate() {
    super.onCreate();
  }

  // Method called right after Surface created (initializing and starting
  // MediaRecorder)
  @Override
  public void surfaceCreated(SurfaceHolder surfaceHolder) {
    camera = Camera.open();
    mediaRecorder = new MediaRecorder();
    camera.unlock();

    mediaRecorder.setPreviewDisplay(surfaceHolder.getSurface());
    mediaRecorder.setCamera(camera);

    mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
    mediaRecorder.setAudioSource(MediaRecorder.AudioSource.DEFAULT);
//    mediaRecorder.setProfile(CamcorderProfile
//        .get(CamcorderProfile.QUALITY_TIME_LAPSE_720P));
//    mediaRecorder.setCaptureRate(mCaptureRate);
//    mediaRecorder.setVideoFrameRate((int) Math.ceil(mCaptureRate));
    mediaRecorder.setProfile(CamcorderProfile
        .get(CamcorderProfile.QUALITY_720P));
    mediaRecorder.setOutputFile(mOutFile);

    try {
      mediaRecorder.prepare();
    } catch (Exception e) {
      Log.e(TAG, e.toString());
    }
    mediaRecorder.start();
  }

  // Stop recording and remove SurfaceView
  @Override
  public void onDestroy() {
    try {
      if (mediaRecorder != null) {
        mediaRecorder.stop();
        mediaRecorder.reset();
        mediaRecorder.release();
      }
    } catch (Exception e) {}

    if (camera != null) {
      camera.lock();
      camera.release();
    }
    
    MediaScannerConnection.scanFile(this, new String[] { mOutFile }, null, null);
    MediaScannerConnection.scanFile(this, new String[] { mOutFile+".log" }, null, null);

    mLiveCard.unpublish();
    mLogCatWriter.stop();
  }

  @Override
  public void surfaceChanged(SurfaceHolder surfaceHolder, int format,
      int width, int height) {  }

  @Override
  public void surfaceDestroyed(SurfaceHolder surfaceHolder) { }

  @Override
  public IBinder onBind(Intent intent) {
    return null;
  }

  @Override
  public void renderingPaused(SurfaceHolder holder, boolean paused) {
    if (!paused)
      showVoiceMenu();
  }

  private void showVoiceMenu() {
    //Intent i = new Intent(this, VoiceMenuActivity.class);
    //i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    //startActivity(i);
  }

}