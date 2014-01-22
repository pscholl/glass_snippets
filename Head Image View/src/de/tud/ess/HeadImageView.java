package de.tud.ess;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;

public class HeadImageView extends ImageView implements SensorEventListener {

  protected static final int SENSOR_RATE = 50 * 1000 * 1000;
  protected static final float SCALE_FACTOR = 5;
  protected SensorManager mSensorManager;
  protected Sensor mSensor;
  protected int mLastAccuracy;

  public HeadImageView(Context context) {
    super(context);
  }

  public HeadImageView(Context context, AttributeSet attrs, int defStyle) {
    super(context, attrs, defStyle);
  }

  public HeadImageView(Context context, AttributeSet attrs) {
    super(context, attrs);
  }
  
  @Override
  protected void onVisibilityChanged(View changedView, int visibility) {
    super.onVisibilityChanged(changedView, visibility);
    if (visibility == VISIBLE) activate();
    else                     deactivate();
  }

  public void deactivate() {
    if (mSensorManager == null)
      return;
    
    mSensorManager.unregisterListener(this);
    mSensorManager = null;
    mSensor = null;
    setAnimation(null);
  }

  public void activate() {
    if (mSensorManager != null)
      return; // already active
    
    mSensorManager = (SensorManager) getContext().getSystemService(Context.SENSOR_SERVICE);
    mSensor = mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
    mSensorManager.registerListener(this, mSensor, SENSOR_RATE);
    
    // animate a delayed zoom in
    ScaleAnimation a = new ScaleAnimation(1, SCALE_FACTOR, 1, SCALE_FACTOR,
        Animation.RELATIVE_TO_SELF, .5F, Animation.RELATIVE_TO_SELF, .5F);
    
    a.setDuration(500);
    a.setStartOffset(1000);
    a.setFillAfter(true);
    a.setFillEnabled(true);
    setAnimation(a);
  }
  
  
  static final float INVALID = 10;
  protected final float dps = getContext().getResources().getDisplayMetrics().density;
  protected static final float ANGLE_RANGE_Y = (float) (Math.PI/16);
  protected static final float ANGLE_RANGE_X = (float) (Math.PI/8);
  float[] mMat = new float[9],
          mOrientation = new float[3];
  float mEdgeX = INVALID, 
        mEdgeY = INVALID;

  @Override
  public void onSensorChanged(SensorEvent event) {
    if (mLastAccuracy == SensorManager.SENSOR_STATUS_UNRELIABLE)
      return;
    
    if (!getAnimation().hasEnded())
      return;
    
    float w = getWidth(),
          h = getHeight(),
          x = getTranslationX(), // in px, midpoint
          y = getTranslationY();
    
    SensorManager.getRotationMatrixFromVector(mMat, event.values);
    SensorManager.remapCoordinateSystem(mMat, SensorManager.AXIS_X, SensorManager.AXIS_Z, mMat);
    SensorManager.getOrientation(mMat, mOrientation);
    
    float ry = mOrientation[0], // see https://developers.google.com/glass/develop/gdk/location-sensors/index
          rx = mOrientation[1],
          rz = mOrientation[2],
          velocityX = (float) (w/2 * (1/ANGLE_RANGE_X)),
          velocityY = (float) (h/2 * (1/ANGLE_RANGE_Y));
    
    if (mEdgeX == INVALID) mEdgeX = ry;
    if (mEdgeY == INVALID) mEdgeY = rx;
    
    float tx = (mEdgeX - ry) * velocityX,
          ty = (mEdgeY - rx) * velocityY;
    
    // https://stackoverflow.com/questions/7773206/where-does-android-view-scrolltox-y-scroll-to
    
    if      (tx > w)  tx = w;
    else if (tx < -2*w) tx = -2*w;
    
    if      (ty > h)  ty = h;
    else if (ty < -2*h) ty = -2*h;
    
    
    scrollTo((int) -tx, (int) -ty);
  }

  @Override
  public void onAccuracyChanged(Sensor sensor, int accuracy) {
    mLastAccuracy = accuracy;
  }
  
}
