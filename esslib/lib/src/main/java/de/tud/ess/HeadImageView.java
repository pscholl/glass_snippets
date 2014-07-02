package de.tud.ess;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;

public class HeadImageView extends ImageView implements SensorEventListener {

  protected static final int SENSOR_RATE = 50 * 1000 * 1000;
  protected float mScaleFactor = 1;
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
  
  public void setScaleFactor(float factor) {
    if (getAnimation() != null && !getAnimation().hasEnded())
      getAnimation().cancel();
    
    if (factor < 1)
      factor = 1;
    else if (factor > 2)
      factor = 2;
    
    deactivate();
    
    ScaleAnimation a = new ScaleAnimation(mScaleFactor, factor, mScaleFactor, factor,
        Animation.RELATIVE_TO_SELF, .5F, Animation.RELATIVE_TO_SELF, .5F);
  
    a.setDuration(500);
    a.setFillAfter(true);
    a.setFillEnabled(true);
    setAnimation(a);

    mScaleFactor = factor;
    MAX_SCROLL_X = MAX_SCROLL_Y = null;
    
    activate();
  }
  
  public float getScaleFactor() {
    return mScaleFactor;
  }
  
  @Override
  protected void onVisibilityChanged(View changedView, int visibility) {
    super.onVisibilityChanged(changedView, visibility);
    
    if (visibility == VISIBLE) { 
      if (mScaleFactor != 1) activate();
    }
    else deactivate();
  }

  public void deactivate() {
    if (mSensorManager == null)
      return;
    
    mSensorManager.unregisterListener(this);
    mSensorManager = null;
    mSensor = null;
  }
  
  public void activate() {
    if (mSensorManager != null)
      return; // already active
    
    mSensorManager = (SensorManager) getContext().getSystemService(Context.SENSOR_SERVICE);
    mSensor = mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
    mSensorManager.registerListener(this, mSensor, SENSOR_RATE);

    if (getAnimation() != null) { // && !getAnimation().hasEnded())
      getAnimation().reset();
      startAnimation(getAnimation());
    }
  }
  
  static final float INVALID = 10;
  protected static final float ANGLE_RANGE_Y = (float) (Math.PI/16);
  protected static final float ANGLE_RANGE_X = (float) (Math.PI/8);
  float[] mMat = new float[9],
          mOrientation = new float[3];
  float mEdgeX = INVALID, 
        mEdgeY = INVALID;
  protected Float MAX_SCROLL_X=null;
  protected Float MAX_SCROLL_Y=null;

  @Override
  public void onSensorChanged(SensorEvent event) {    
    if (mLastAccuracy == SensorManager.SENSOR_STATUS_UNRELIABLE)
      return;
    
    if (getAnimation() == null || !getAnimation().hasEnded())
      return;
    
    float w = getWidth(),
          h = getMeasuredHeight();
    
    SensorManager.getRotationMatrixFromVector(mMat, event.values);
    SensorManager.remapCoordinateSystem(mMat, SensorManager.AXIS_X, SensorManager.AXIS_Z, mMat);
    SensorManager.getOrientation(mMat, mOrientation);
    
    float ry = mOrientation[0], // see https://developers.google.com/glass/develop/gdk/location-sensors/index
          rx = mOrientation[1],
          rz = mOrientation[2],
          velocityX = (float) (w/2 * (1/ANGLE_RANGE_X)),
          velocityY = (float) (h/2 * (1/ANGLE_RANGE_Y));
    
    if (MAX_SCROLL_X == null) MAX_SCROLL_X = w * (1-1/mScaleFactor)/2;
    if (MAX_SCROLL_Y == null) MAX_SCROLL_Y = h * (1-1/mScaleFactor)/2;
    
    if (mEdgeX == INVALID) mEdgeX = ry;
    if (mEdgeY == INVALID) mEdgeY = rx;
    
    float dx = radbox(mEdgeX - ry),
          dy = radbox(mEdgeY - rx);
    
    if (Math.abs(dx) > MAX_SCROLL_X / velocityX) {
      float mx = Math.signum(dx) * (Math.abs(dx) - MAX_SCROLL_X / velocityX);
      mEdgeX = radbox(mEdgeX - mx);
    }
    
    if (Math.abs(dy) > MAX_SCROLL_Y / velocityY) {
      float my = Math.signum(dy) * (Math.abs(dy) - MAX_SCROLL_Y / velocityY);
      mEdgeY = radbox(mEdgeY - my);
    }
    
    float tx = dx * velocityX,
          ty = dy * velocityY;
    
    scrollTo((int) -tx, (int) -ty);
    if (getParent()!=null) ((View) getParent()).invalidate();
  }

  protected float radbox(float x) {
    // keep radian in [-pi: pi]
    return (float) (x + (x>Math.PI ? -2*Math.PI : x<-Math.PI ? 2*Math.PI : 0));
  }

  @Override
  public void onAccuracyChanged(Sensor sensor, int accuracy) {
    mLastAccuracy = accuracy;
  }
  
}
