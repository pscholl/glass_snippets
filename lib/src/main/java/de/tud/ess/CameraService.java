package de.tud.ess;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.net.Uri;
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

import java.io.File;
import java.util.Date;
import java.util.List;

public class CameraService extends Service implements SurfaceHolder.Callback {

	public static final String TAG = "timelapse";
	private WindowManager windowManager;
	private SurfaceView surfaceView;
	private Camera camera = null;
	private MediaRecorder mediaRecorder = null;

	public static class Parameters {
		public static final String WIDTH = "width";
		public static final String HEIGHT = "height";
		public static final String RATE = "rate";
		public static final String X = "x";
		public static final String Y = "y";
		public static final String OUTFILE = "outfile";
	}

	protected int mWidth = 200,
			mHeight = 100,
			mX = 320 - mWidth / 2,
			mY = 240 - mHeight / 2;

	protected float mCaptureRate = 15.f;

	protected String mOutFile = Environment.getExternalStorageDirectory() + "/" + "DCIM" + "/" +
			DateFormat.format("yyyy-MM-dd_kk-mm-ss", new Date().getTime()) +
			".mp4";


	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		if (intent.getExtras() != null) {
			Bundle e = intent.getExtras();

			Log.d(TAG, e.keySet().toString());

			mWidth = e.getInt(Parameters.WIDTH, mWidth);
			Log.e(TAG, String.format("mWidth is %d", mWidth));
			mHeight = e.getInt(Parameters.HEIGHT, mHeight);
			mX = e.getInt(Parameters.X, mX);
			mY = e.getInt(Parameters.Y, mY);
			mOutFile = e.getString(Parameters.OUTFILE, mOutFile);
			mCaptureRate = e.getFloat(Parameters.RATE, mCaptureRate);
		}

		// Create new SurfaceView, and put on top of all other windows
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

		super.onStartCommand(intent, flags, startId);
		return START_NOT_STICKY;
	}

	// Method called right after Surface created (initializing and starting MediaRecorder)
	@Override
	public void surfaceCreated(SurfaceHolder surfaceHolder) {
		camera = Camera.open();
		try {
			mediaRecorder = new MediaRecorder();

			List<int[]> fps = camera.getParameters().getSupportedPreviewFpsRange();
			int preview_fps[] = fps.get(0);

			for (int i[] : camera.getParameters().getSupportedPreviewFpsRange())
				preview_fps = (mCaptureRate <= i[1] && mCaptureRate > i[0]) ? i : preview_fps;

			Camera.Parameters param = camera.getParameters();
			param.setVideoStabilization(true);
			param.setPreviewFpsRange(preview_fps[0], preview_fps[1]);
			camera.setParameters(param);
			camera.unlock();

			mediaRecorder.setPreviewDisplay(surfaceHolder.getSurface());
			mediaRecorder.setCamera(camera);

			mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
			CamcorderProfile profile;
			if (mCaptureRate > 25) {
				mediaRecorder.setAudioSource(MediaRecorder.AudioSource.DEFAULT);
				profile = CamcorderProfile.get(CamcorderProfile.QUALITY_HIGH);
			} else {
				profile = CamcorderProfile.get(CamcorderProfile.QUALITY_TIME_LAPSE_HIGH);
				mediaRecorder.setCaptureRate(mCaptureRate);
				profile.videoFrameRate = ((int) Math.ceil(mCaptureRate));
			}

			mediaRecorder.setProfile(profile);
			mediaRecorder.setOutputFile(mOutFile);

			mediaRecorder.prepare();
			mediaRecorder.start();

			ScaleAnimation a = new ScaleAnimation(3, 2, 3, 2);
			a.setDuration(2000);
			surfaceView.startAnimation(a);

			Log.i(TAG, String.format("recording %s with rate %.2f", mOutFile, mCaptureRate));
		} catch(Exception e) {
			onDestroy();
			Log.d(TAG, e.toString());
		}
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
		} catch (Exception e) {
		}
		;

		if (camera != null) {
			camera.lock();
			camera.release();
		}

		Intent mediaScannerIntent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE);
		Uri fileContentUri = Uri.fromFile(new File(mOutFile)); // With 'permFile' being the File object
		mediaScannerIntent.setData(fileContentUri);
		this.sendBroadcast(mediaScannerIntent);

		windowManager.removeView(surfaceView);
	}

	@Override
	public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {
	}

	@Override
	public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
	}

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

}