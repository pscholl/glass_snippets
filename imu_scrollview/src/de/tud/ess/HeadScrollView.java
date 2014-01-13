package de.tud.ess;

import com.google.glass.util.PowerHelper;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import android.view.View;
import android.widget.ScrollView;

public class HeadScrollView implements SensorEventListener {

  private ScrollView mScrollView;
  private PowerHelper mPower;
  private Sensor mSensor;
  private int mLastAccuracy;
  private SensorManager mSensorManager;
  private float mStartX = 10;
  private static final int SENSOR_RATE_uS = 200000;
  private static final float VELOCITY = -1000; // from rad to pixels

  public HeadScrollView(ScrollView sv, SensorManager sm, PowerHelper ph) {
    mScrollView = sv;
    mSensorManager = sm;
    mSensor = sm.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
    mPower  = ph;
  }
  
  public void activate() {
    if (mSensor == null)
      return;
    
    mSensorManager.registerListener(this, mSensor, SENSOR_RATE_uS);
    mStartX = 10;
  }
  
  public void deactivate() {
    mSensorManager.unregisterListener(this);
    mStartX = 10;
  }
  
  @Override
  public void onAccuracyChanged(Sensor sensor, int accuracy) {
    mLastAccuracy = accuracy;
  }

  @Override
  public void onSensorChanged(SensorEvent event) {
    float[] mat = new float[9], 
            orientation = new float[3];
    
    if (mLastAccuracy == SensorManager.SENSOR_STATUS_UNRELIABLE)
      return;
    
    SensorManager.getRotationMatrixFromVector(mat, event.values);
    SensorManager.remapCoordinateSystem(mat, SensorManager.AXIS_X, SensorManager.AXIS_Z, mat);
    SensorManager.getOrientation(mat, orientation);
    
    float z = orientation[0], // see https://developers.google.com/glass/develop/gdk/location-sensors/index
          x = orientation[1],
          y = orientation[2];
    
    if (mStartX  == 10)
      mStartX = x;
   
    int prior = mScrollView.getScrollY();
    mScrollView.scrollTo(0, (int) ((mStartX-x) * VELOCITY));
    
    if (prior != mScrollView.getScrollY())
      mPower.stayAwake(3000);
  }

}
