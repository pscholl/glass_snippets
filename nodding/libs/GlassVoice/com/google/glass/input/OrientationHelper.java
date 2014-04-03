package com.google.glass.input;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.Iterator;
import java.util.List;

public class OrientationHelper
  implements SensorEventListener
{
  static final float MAX_TIMESTAMP_DISCONTINUITY_IN_SECS = 0.25F;
  static final float MOVING_AVERAGE_ALPHA = 1.0E-05F;
  private static final float NANOS_TO_S = 1.0E-09F;
  private static final long REBIND_WAIT_TIME = 2000L;
  static final float ROUNDING_PRECISION = 0.1F;
  static final int SENSOR_RATE = 20000;
  private static final boolean USE_INVENSENSE_MPL = true;
  private static final boolean USE_MAGNETIC_FIELD_FOR_YAW;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Sensor gravitySensor;
  private float gyroYMovingAverage;
  private Sensor gyroscopeSensor;
  private volatile float integratedGyroY;
  private boolean isStarted;
  private float lastPitch;
  private float lastRoll;
  private long lastTimestamp;
  private float lastYaw;
  private OrientationListener listener;
  private float offsetPitch;
  private float offsetRoll;
  private float offsetYaw;
  private final float[] orientation = new float[3];
  private final float[] rotationMatrix = new float[16];
  private Sensor rotationVectorSensor;
  private SensorManager sensorManager;
  private final float[] tempRotationMatrix = new float[16];
  private boolean triedRebinding;
  private long triedRebindingTime;

  public OrientationHelper(Context paramContext, OrientationListener paramOrientationListener)
  {
    this.listener = paramOrientationListener;
    this.sensorManager = ((SensorManager)paramContext.getSystemService("sensor"));
    cacheSensors();
  }

  private void cacheSensors()
  {
    this.gravitySensor = getPreferredSensor(this.sensorManager, 9);
    this.gyroscopeSensor = getPreferredSensor(this.sensorManager, 4);
  }

  private void callListener(float paramFloat1, float paramFloat2, float paramFloat3, long paramLong)
  {
    Assert.assertUiThread();
    this.lastYaw = paramFloat1;
    this.lastPitch = paramFloat2;
    this.lastRoll = paramFloat3;
    float f1 = paramFloat1 - this.offsetYaw;
    float f2 = paramFloat2 - this.offsetPitch;
    float f3 = paramFloat3 - this.offsetRoll;
    if (this.listener != null)
      this.listener.onOrientationChanged(f1, f2, f3, paramLong);
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

  private void handleGravitySensorEvent(SensorEvent paramSensorEvent)
  {
    float f1 = paramSensorEvent.values[0];
    float f2 = paramSensorEvent.values[1];
    float f3 = paramSensorEvent.values[2];
    if ((Float.isNaN(f1)) || (Float.isNaN(f2)))
    {
      if (this.triedRebinding)
      {
        if (SystemClock.uptimeMillis() - this.triedRebindingTime > 2000L)
          throw new IllegalStateException("Received NaN values from sensor, x: " + f1 + " y: " + f2);
      }
      else
      {
        logger.d("Rebinding since we're getting NaN values", new Object[0]);
        this.triedRebinding = true;
        this.triedRebindingTime = SystemClock.uptimeMillis();
        stop();
        start();
      }
      return;
    }
    if (this.triedRebinding)
    {
      this.triedRebinding = false;
      logger.d("Rebinding successfully gave us valid values", new Object[0]);
    }
    float f4 = (float)Math.toDegrees(Math.atan2(-f1, f2));
    float f5 = (float)Math.toDegrees(Math.atan2(f3, Math.sqrt(f1 * f1 + f2 * f2)));
    callListener((float)Math.toDegrees(-this.integratedGyroY), f5, f4, paramSensorEvent.timestamp);
  }

  private void handleGyroscopeSensorEvent(SensorEvent paramSensorEvent)
  {
    float f1;
    float f2;
    float f3;
    if (this.lastTimestamp != 0L)
    {
      f1 = paramSensorEvent.values[1];
      f2 = roundValueToPrecision(f1 - this.gyroYMovingAverage, 0.1F);
      f3 = 1.0E-09F * (float)(paramSensorEvent.timestamp - this.lastTimestamp);
      if (f3 <= 0.25F)
        break label65;
    }
    for (this.gyroYMovingAverage = 0.0F; ; this.gyroYMovingAverage = (1.0E-05F * f1 + 0.99999F * this.gyroYMovingAverage))
    {
      this.lastTimestamp = paramSensorEvent.timestamp;
      return;
      label65: this.integratedGyroY += f2 * f3;
    }
  }

  private void handleRotationSensorEvent(SensorEvent paramSensorEvent)
  {
    SensorManager.getRotationMatrixFromVector(this.rotationMatrix, paramSensorEvent.values);
    SensorManager.remapCoordinateSystem(this.rotationMatrix, 1, 3, this.tempRotationMatrix);
    SensorManager.remapCoordinateSystem(this.tempRotationMatrix, 3, 2, this.rotationMatrix);
    SensorManager.getOrientation(this.rotationMatrix, this.orientation);
    callListener((float)Math.toDegrees(this.orientation[0]), (float)Math.toDegrees(this.orientation[1]), (float)Math.toDegrees(this.orientation[2]), paramSensorEvent.timestamp);
  }

  static float roundValueToPrecision(float paramFloat1, float paramFloat2)
  {
    return paramFloat2 * Math.round(paramFloat1 / paramFloat2);
  }

  @VisibleForTesting
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
    switch (paramSensorEvent.sensor.getType())
    {
    default:
      return;
    case 4:
      handleGyroscopeSensorEvent(paramSensorEvent);
      return;
    case 9:
      handleGravitySensorEvent(paramSensorEvent);
      return;
    case 11:
    }
    handleRotationSensorEvent(paramSensorEvent);
  }

  public void resetTare()
  {
    this.offsetYaw = 0.0F;
    this.offsetRoll = 0.0F;
    this.offsetPitch = 0.0F;
  }

  public void setListener(OrientationListener paramOrientationListener)
  {
    this.listener = paramOrientationListener;
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
    this.sensorManager.registerListener(this, this.gravitySensor, 20000);
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
    this.sensorManager.unregisterListener(this, this.gravitySensor);
    this.sensorManager.unregisterListener(this, this.gyroscopeSensor);
    this.isStarted = false;
  }

  public void tare()
  {
    this.offsetYaw = this.lastYaw;
    this.offsetRoll = this.lastRoll;
    this.offsetPitch = this.lastPitch;
  }

  public static abstract interface OrientationListener
  {
    public abstract void onOrientationChanged(float paramFloat1, float paramFloat2, float paramFloat3, long paramLong);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.OrientationHelper
 * JD-Core Version:    0.6.2
 */