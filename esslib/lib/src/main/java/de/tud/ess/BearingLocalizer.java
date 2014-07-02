package de.tud.ess;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;

public class BearingLocalizer implements SensorEventListener {
  
  public interface BearingLocalizerListener {
      public void enteredBearing();
      public void leftBearing();
  }

  private Context mContext;
  private BearingLocalizerListener mListener;
  private float mFrom;
  private float mTo;

  private final float[] mRotationMatrix = new float[16];
  private final float[] mOrientation = new float[9];
  
  public static final String LANDMARKS = "compass_area";
  public static final String LANDMARK_FROM = "from";
  public static final String LANDMARK_TO = "to";
  public static final float DEFAULT_HEADING = 255;
  private int last_state = 0;
  private float mBearing = 0.f;
  private SensorManager s;
  private static final int LEFT= 2;
  private static final int ENTERED = 1;
  
  public BearingLocalizer(Context c, BearingLocalizerListener l) {
    mContext = c;
    mListener = l;
    
    Context con;
    try {
      con = c.createPackageContext("com.google.android.glass.sample.compass", Context.MODE_PRIVATE);
      SharedPreferences p = con.getSharedPreferences(LANDMARKS, 
          mContext.MODE_MULTI_PROCESS|
          mContext.MODE_WORLD_WRITEABLE|
          mContext.MODE_WORLD_READABLE);
      mFrom = p.getFloat(LANDMARK_FROM, DEFAULT_HEADING);
      mTo = p.getFloat(LANDMARK_TO, DEFAULT_HEADING);
    } catch (NameNotFoundException e) {
      e.printStackTrace();
    }
    
    s = (SensorManager) mContext.getSystemService(mContext.SENSOR_SERVICE);
    s.registerListener(this, s.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR), s.SENSOR_DELAY_UI);
  }

  @Override
  public void onSensorChanged(SensorEvent event) {
    if (event.sensor.getType() == Sensor.TYPE_ROTATION_VECTOR) {
      // Get the current heading from the sensor, then notify the listeners of the
      // change.
      SensorManager.getRotationMatrixFromVector(mRotationMatrix, event.values);
      SensorManager.remapCoordinateSystem(mRotationMatrix, SensorManager.AXIS_X,
              SensorManager.AXIS_Z, mRotationMatrix);
      SensorManager.getOrientation(mRotationMatrix, mOrientation);
      
      mBearing = mOrientation[0];
      
      //Log.e("enter", String.format("bearing: %.2f from %.2f to %.2f %d", mBearing, mFrom, mTo, last_state));
      
      if ((mBearing > mFrom) && (mBearing  < mTo)) {
        if (last_state != ENTERED) {
          mListener.enteredBearing();
          last_state = ENTERED;
        }
      } else {
        if (last_state != LEFT) {
          mListener.leftBearing();
          last_state = LEFT;
        }
      }
    }
  }

  public void deactivate() {
    s.unregisterListener(this);
  }
  
  @Override
  public void onAccuracyChanged(Sensor sensor, int accuracy) {
  }
  
  public boolean isInside() {
    return mBearing > mFrom && mBearing < mTo;
  }

}
