package de.tud.ess.glass_hello_world;

import java.util.LinkedList;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;

public class NodDetector implements SensorEventListener {

  public interface Listener {
    void onNodDetected(boolean yesno);
  }

  private static final int SENSOR_RATE_uS = 20000;
  private static final int MAX_QSIZE = 80;
  private static final int AXIS = 1;

  private Sensor rotationSensor;
  private Listener listener;
  private SensorManager sensormanager;
  private LinkedList<Float> q = new LinkedList<Float>();
  private int lastaccuracy;
  private int mcounter;
    
  public NodDetector(SensorManager s, Listener l) {
    sensormanager = s;
    rotationSensor = s.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
    listener = l;
  }
  
  public boolean startListening() {
    if (rotationSensor == null) {
      Log.e("NodDetector", "rotation sensor not available, refusing to detect nod");
      return false;
    }
    
    return sensormanager.registerListener(this, rotationSensor, SENSOR_RATE_uS);
  }

  @Override
  public void onAccuracyChanged(Sensor sensor, int accuracy) {
    lastaccuracy = accuracy;
  }

  @Override
  public void onSensorChanged(SensorEvent event) {
    if (lastaccuracy == SensorManager.SENSOR_STATUS_UNRELIABLE)
      return;
    
    float[] mat = new float[9], orientation = new float[3];
    
    // the remapping here is to fix the rotation order to Y-X-Z (in glass coordinates)
    SensorManager.getRotationMatrixFromVector(mat, event.values);
    SensorManager.remapCoordinateSystem(mat, SensorManager.AXIS_X, SensorManager.AXIS_Z, mat);
    SensorManager.getOrientation(mat, orientation);
    
    //Log.e("xyz", Float.toString(orientation[0])+ "\t"+Float.toString(orientation[1])+"\t"+Float.toString(orientation[2]));
    
    q.add(orientation[AXIS]);
  
    if (q.size() == MAX_QSIZE) {
      float p0 = q.remove(), mean = 0, var = 0;
      int i = 0;
      
      for (i=5; i<q.size(); i++)
        if (Math.abs(p0 - q.get(i)) < .1)
          break;
      
      if (i==q.size() || i==10)
        return;
      
      // found a possible match, now check the variance of the selected stride
      for (int j=0; j<i; j++)
        mean += q.get(j);
      mean /= i;
      
      for (int j=0; j<i; j++)
        var += Math.abs(q.get(j) - mean);
      var /= i;
      
      if (var > .015 && mean > 0) { // nodding downwards?
        listener.onNodDetected(true);
        q.clear();
      }
    }
  }

  public void stopListening() {
    sensormanager.unregisterListener(this);
  }

}
