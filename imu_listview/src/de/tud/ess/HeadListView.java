package de.tud.ess;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.widget.ListView;

public class HeadListView implements SensorEventListener {

  private ListView mListView;
  private Sensor mSensor;
  private int mLastAccuracy;
  private SensorManager mSensorManager;
  private float mStartX = 10;
  private static final int SENSOR_RATE_uS = 200000;
  private static final float VELOCITY = -1000; // from rad to pixels

  public HeadListView(ListView lv, SensorManager sm) {
    mListView = lv;
    mSensorManager = sm;
    mSensor = sm.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
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

    int MAX_RANGE = 800;
    int value = (int) ((mStartX-x) * VELOCITY);
    int adjValue = (int) (value + (MAX_RANGE / 2));
    adjValue = Math.min(adjValue, MAX_RANGE);
    adjValue = Math.max(adjValue, 0);
    
    int interval = (int) MAX_RANGE /  mListView.getCount();
    int position =  (int) adjValue / interval;

    mListView.setSelection(position);
    
  }

}
