package com.google.glass.input;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.predicates.Assert;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class AbsolutePitchHelper
  implements SensorEventListener
{
  private static final String TAG = AbsolutePitchHelper.class.getSimpleName();
  private Sensor gravitySensor;
  private boolean isStarted;
  private AbsolutePitchListener listener;
  private Executor sensorExecutor;
  private SensorManager sensorManager;
  private HandlerThread sensorThread;
  private Thread startStopThread;

  public AbsolutePitchHelper(Context paramContext, AbsolutePitchListener paramAbsolutePitchListener)
  {
    Assert.assertNotNull(paramAbsolutePitchListener);
    this.listener = paramAbsolutePitchListener;
    this.sensorManager = ((SensorManager)paramContext.getSystemService("sensor"));
    this.sensorExecutor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(5, TAG));
    this.sensorExecutor.execute(new Runnable()
    {
      public void run()
      {
        AbsolutePitchHelper.access$002(AbsolutePitchHelper.this, OrientationHelper.getPreferredSensor(AbsolutePitchHelper.this.sensorManager, 9));
      }
    });
  }

  private void checkThread()
  {
    try
    {
      if (this.startStopThread == null)
        this.startStopThread = Thread.currentThread();
      while (Thread.currentThread() == this.startStopThread)
        return;
      throw new IllegalStateException("Start/Stop not invoked from consistent thread. First thread: " + this.startStopThread.getName() + ", current thread: " + Thread.currentThread().getName());
    }
    finally
    {
    }
  }

  private void internalStop()
  {
    Assert.assertNotUiThread();
    Assert.assertTrue(this.isStarted);
    this.isStarted = false;
    this.sensorManager.unregisterListener(this, this.gravitySensor);
    this.sensorThread.quit();
    this.sensorThread = null;
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    Assert.assertNotUiThread();
    if (paramSensorEvent.sensor.getType() == 9)
    {
      float f1 = paramSensorEvent.values[0];
      float f2 = paramSensorEvent.values[1];
      float f3 = (float)Math.toDegrees(Math.atan2(paramSensorEvent.values[2], Math.sqrt(f1 * f1 + f2 * f2)));
      if (this.listener.onAbsolutePitchChange(f3, paramSensorEvent.timestamp))
        internalStop();
    }
  }

  public void start()
  {
    checkThread();
    this.sensorExecutor.execute(new Runnable()
    {
      public void run()
      {
        Assert.assertFalse(AbsolutePitchHelper.this.isStarted);
        AbsolutePitchHelper.access$202(AbsolutePitchHelper.this, true);
        AbsolutePitchHelper.access$302(AbsolutePitchHelper.this, new HandlerThread(AbsolutePitchHelper.TAG + "/sensorThread"));
        AbsolutePitchHelper.this.sensorThread.start();
        Handler localHandler = new Handler(AbsolutePitchHelper.this.sensorThread.getLooper());
        AbsolutePitchHelper.this.sensorManager.registerListener(AbsolutePitchHelper.this, AbsolutePitchHelper.this.gravitySensor, 2, localHandler);
      }
    });
  }

  public void stop()
  {
    checkThread();
    this.sensorExecutor.execute(new Runnable()
    {
      public void run()
      {
        AbsolutePitchHelper.this.internalStop();
      }
    });
  }

  public static abstract interface AbsolutePitchListener
  {
    public abstract boolean onAbsolutePitchChange(float paramFloat, long paramLong);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.AbsolutePitchHelper
 * JD-Core Version:    0.6.2
 */