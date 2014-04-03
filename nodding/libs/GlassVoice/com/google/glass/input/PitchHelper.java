package com.google.glass.input;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.Iterator;
import java.util.List;

public class PitchHelper
  implements SensorEventListener
{
  private static final float MAX_TIMESTAMP_DISCONTINUITY_IN_SECS = 0.25F;
  private static final float MOVING_AVERAGE_ALPHA = 1.0E-05F;
  private static final float NANOS_TO_S = 1.0E-09F;
  private static final float ROUNDING_PRECISION = 0.1F;
  static final int SENSOR_RATE = 20000;
  private static final boolean USE_INVENSENSE_MPL = true;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private float gyroZMovingAverage;
  private Sensor gyroscopeSensor;
  private float integratedGyroZ;
  private boolean isStarted;
  private long lastTimestamp;
  private PitchListener listener;
  private SensorManager sensorManager;

  public PitchHelper(Context paramContext, PitchListener paramPitchListener)
  {
    this.listener = paramPitchListener;
    this.sensorManager = ((SensorManager)paramContext.getSystemService("sensor"));
    this.gyroscopeSensor = getPreferredSensor(this.sensorManager, 4);
  }

  static Sensor getPreferredSensor(SensorManager paramSensorManager, int paramInt)
  {
    Iterator localIterator = paramSensorManager.getSensorList(paramInt).iterator();
    while (localIterator.hasNext())
    {
      Sensor localSensor2 = (Sensor)localIterator.next();
      String str1 = localSensor2.getName();
      String str2 = localSensor2.getVendor();
      if (("Invensense".equals(str2)) && (str1.contains("MPL")))
      {
        logger.d("Using sensor: %s (%s)", new Object[] { str1, str2 });
        return localSensor2;
      }
    }
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    localFormattingLogger1.w("Could not find Invensese MPL sensor of type %s.", arrayOfObject1);
    Sensor localSensor1 = paramSensorManager.getDefaultSensor(paramInt);
    if (localSensor1 == null)
    {
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      localFormattingLogger3.e("No default sensor of type %s found.", arrayOfObject3);
      return null;
    }
    FormattingLogger localFormattingLogger2 = logger;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = localSensor1.getName();
    arrayOfObject2[1] = localSensor1.getVendor();
    localFormattingLogger2.d("Using default sensor: %s (%s)", arrayOfObject2);
    return localSensor1;
  }

  private void handleGyroscopeSensorEvent(SensorEvent paramSensorEvent)
  {
    float f1;
    float f2;
    float f3;
    if (this.lastTimestamp != 0L)
    {
      f1 = paramSensorEvent.values[0];
      f2 = roundValueToPrecision(f1 - this.gyroZMovingAverage, 0.1F);
      f3 = 1.0E-09F * (float)(paramSensorEvent.timestamp - this.lastTimestamp);
      if (f3 <= 0.25F)
        break label65;
    }
    for (this.gyroZMovingAverage = 0.0F; ; this.gyroZMovingAverage = (1.0E-05F * f1 + 0.99999F * this.gyroZMovingAverage))
    {
      this.lastTimestamp = paramSensorEvent.timestamp;
      return;
      label65: this.integratedGyroZ += f2 * f3;
      if (this.listener != null)
        this.listener.onRelativePitchChange((float)Math.toDegrees(-this.integratedGyroZ));
    }
  }

  static float roundValueToPrecision(float paramFloat1, float paramFloat2)
  {
    return paramFloat2 * Math.round(paramFloat1 / paramFloat2);
  }

  boolean isStarted()
  {
    return this.isStarted;
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (!this.isStarted)
      return;
    handleGyroscopeSensorEvent(paramSensorEvent);
  }

  public void setListener(PitchListener paramPitchListener)
  {
    this.listener = paramPitchListener;
  }

  public void start()
  {
    Assert.assertUiThread();
    this.lastTimestamp = 0L;
    if (this.isStarted)
    {
      logger.w("OrientationHelper was already started, but got call to start again.  Punting.", new Object[0]);
      return;
    }
    logger.d("Registering sensors...", new Object[0]);
    this.sensorManager.registerListener(this, this.gyroscopeSensor, 20000);
    this.isStarted = true;
  }

  public void stop()
  {
    Assert.assertUiThread();
    if (!this.isStarted)
    {
      logger.w("OrientationHelper was not started, but got call to stop.  Punting.", new Object[0]);
      return;
    }
    logger.d("Unregistering sensors...", new Object[0]);
    this.sensorManager.unregisterListener(this, this.gyroscopeSensor);
    this.isStarted = false;
  }

  public static abstract interface PitchListener
  {
    public abstract void onRelativePitchChange(float paramFloat);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.PitchHelper
 * JD-Core Version:    0.6.2
 */