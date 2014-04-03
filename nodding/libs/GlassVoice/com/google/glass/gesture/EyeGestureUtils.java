package com.google.glass.gesture;

import android.content.Context;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.google.android.glass.hidden.HiddenGestureManager;
import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class EyeGestureUtils
{
  public static final String ACTION_EYE_GESTURE = "com.google.glass.action.EYE_GESTURE";
  public static final String ACTION_ON_HEAD_CALIBRATION = "com.google.glass.action.ACTION_ON_HEAD_CALIBRATION";
  public static final String ACTION_PRELOAD_RESOURCES = "com.google.glass.gesture.action.PRELOAD_RESOURCES";
  public static final String ACTION_WINK_CALIBRATION = "com.google.glass.action.ACTION_WINK_CALIBRATION";
  public static final String ACTION_WINK_CALIBRATION_TIPS = "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS";
  public static final String EXTRA_EYE_GESTURE = "gesture";
  private static final long MAX_WAKE_LOCK_DURATION_MILLIS = TimeUnit.SECONDS.toMillis(10L);
  private static final Executor SERIAL_EXECUTOR;
  public static final String TAG = EyeGestureUtils.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static HiddenGestureManager managerForTest;
  private static PowerManager.WakeLock wakeLockSingleton;

  static
  {
    SERIAL_EXECUTOR = Executors.newSingleThreadExecutor(new PriorityThreadFactory(5, TAG + ":AsyncSerialExecutor"));
  }

  public static void activateGazeServiceLogging(Context paramContext, boolean paramBoolean)
  {
    getHiddenGestureManager(paramContext).activateGazeLogging(paramBoolean);
  }

  public static boolean applyAndSaveCalibrationForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).applyAndSaveCalibrationForEyeGesture(paramEyeGesture.ordinal());
  }

  public static boolean clearCalibrationForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).clearCalibrationForEyeGesture(paramEyeGesture.ordinal());
  }

  public static boolean enableEyeGestureDetectorPersistently(Context paramContext, EyeGesture paramEyeGesture, boolean paramBoolean)
  {
    return enableEyeGestureDetectorPersistently(paramContext, paramEyeGesture, paramBoolean, true);
  }

  public static boolean enableEyeGestureDetectorPersistently(Context paramContext, EyeGesture paramEyeGesture, boolean paramBoolean1, boolean paramBoolean2)
  {
    return getHiddenGestureManager(paramContext).enableEyeGestureDetectorPersistentlyOptionalStart(paramEyeGesture.ordinal(), paramBoolean1, paramBoolean2);
  }

  private static void enableGazeService(Context paramContext, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localFormattingLogger.d("enableGazeService called: enable=%s", arrayOfObject);
    getHiddenGestureManager(paramContext).enableGazeService(paramBoolean);
  }

  public static void enableGazeServiceAsync(final Context paramContext, boolean paramBoolean)
  {
    try
    {
      Assert.assertUiThread();
      logger.v("Incrementing wake lock.", new Object[0]);
      getWakeLockInstance(paramContext).acquire(MAX_WAKE_LOCK_DURATION_MILLIS);
      new AsyncTask()
      {
        protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          FormattingLogger localFormattingLogger = EyeGestureUtils.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(this.val$enableState);
          localFormattingLogger.d("Executing switch of GazeService master enable to %s", arrayOfObject);
          EyeGestureUtils.enableGazeService(paramContext, this.val$enableState);
          return null;
        }

        protected void onPostExecute(Void paramAnonymousVoid)
        {
          EyeGestureUtils.logger.v("Decrementing wake lock.", new Object[0]);
          PowerManager.WakeLock localWakeLock = EyeGestureUtils.getWakeLockInstance(paramContext);
          if ((localWakeLock != null) && (localWakeLock.isHeld()))
            localWakeLock.release();
        }
      }
      .executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void enableGazeServiceGuestMode(Context paramContext, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localFormattingLogger.d("enableGazeServiceGuestMode called: enable=%s", arrayOfObject);
    getHiddenGestureManager(paramContext).enableGazeServiceGuestMode(paramBoolean);
  }

  public static void enableGazeServiceGuestModeAsync(final Context paramContext, boolean paramBoolean)
  {
    try
    {
      Assert.assertUiThread();
      logger.v("Incrementing wake lock.", new Object[0]);
      getWakeLockInstance(paramContext).acquire(MAX_WAKE_LOCK_DURATION_MILLIS);
      new AsyncTask()
      {
        protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          FormattingLogger localFormattingLogger = EyeGestureUtils.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(this.val$enableState);
          localFormattingLogger.d("Executing setting of GazeService Guest Mode to %s", arrayOfObject);
          EyeGestureUtils.enableGazeServiceGuestMode(paramContext, this.val$enableState);
          return null;
        }

        protected void onPostExecute(Void paramAnonymousVoid)
        {
          EyeGestureUtils.logger.v("Decrementing wake lock.", new Object[0]);
          PowerManager.WakeLock localWakeLock = EyeGestureUtils.getWakeLockInstance(paramContext);
          if ((localWakeLock != null) && (localWakeLock.isHeld()))
            localWakeLock.release();
        }
      }
      .executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean endCalibrationIntervalForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).endCalibrationIntervalForEyeGesture(paramEyeGesture.ordinal());
  }

  public static void forceGlasshubResetHack(Context paramContext)
  {
    Assert.assertNotUiThread();
    logger.d("forceGlasshubResetHack() called!  NOTE: A reboot is required!", new Object[0]);
    getHiddenGestureManager(paramContext).forceGlasshubResetHack();
  }

  private static HiddenGestureManager getHiddenGestureManager(Context paramContext)
  {
    if ((Assert.isTest()) && (managerForTest != null))
      return managerForTest;
    return new HiddenGestureManager(paramContext);
  }

  private static PowerManager.WakeLock getWakeLockInstance(Context paramContext)
  {
    try
    {
      if (wakeLockSingleton == null)
      {
        wakeLockSingleton = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, TAG + ":WakeLock");
        wakeLockSingleton.setReferenceCounted(true);
      }
      PowerManager.WakeLock localWakeLock = wakeLockSingleton;
      return localWakeLock;
    }
    finally
    {
    }
  }

  public static boolean isCalibrationCompleteForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).isCalibrationCompleteForEyeGesture(paramEyeGesture.ordinal());
  }

  public static boolean isEyeGestureDetectorPersistentlyEnabled(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).isEyeGestureDetectorPersistentlyEnabled(paramEyeGesture.ordinal());
  }

  public static boolean isEyeGestureDetectorRunning(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).isEyeGestureDetectorRunning(paramEyeGesture.ordinal());
  }

  public static boolean isEyeGestureSupported(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).isGestureSupported(paramEyeGesture.ordinal());
  }

  public static boolean isGazeServiceGuestMode(Context paramContext)
  {
    logger.d("isGazeServiceGuestMode called...", new Object[0]);
    return getHiddenGestureManager(paramContext).isGazeServiceGuestMode();
  }

  public static boolean isGazeServiceLogging(Context paramContext)
  {
    return getHiddenGestureManager(paramContext).isGazeLogging();
  }

  public static boolean loadCalibrationForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).loadCalibrationForEyeGesture(paramEyeGesture.ordinal());
  }

  public static void setManagerForTest(HiddenGestureManager paramHiddenGestureManager)
  {
    Assert.assertIsTest();
    managerForTest = paramHiddenGestureManager;
  }

  public static boolean startCalibrationIntervalForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).startCalibrationIntervalForEyeGesture(paramEyeGesture.ordinal());
  }

  public static boolean startEyeGestureDetector(Context paramContext, EyeGesture paramEyeGesture, boolean paramBoolean, int paramInt)
  {
    return getHiddenGestureManager(paramContext).startEyeGestureDetector(paramEyeGesture.ordinal(), paramBoolean, paramInt);
  }

  public static boolean stopEyeGestureDetector(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getHiddenGestureManager(paramContext).stopEyeGestureDetector(paramEyeGesture.ordinal());
  }

  public static enum EyeGesture
  {
    static
    {
      DOUBLE_WINK = new EyeGesture("DOUBLE_WINK", 2);
      BLINK = new EyeGesture("BLINK", 3);
      DOUBLE_BLINK = new EyeGesture("DOUBLE_BLINK", 4);
      DON = new EyeGesture("DON", 5);
      DOFF = new EyeGesture("DOFF", 6);
      EyeGesture[] arrayOfEyeGesture = new EyeGesture[7];
      arrayOfEyeGesture[0] = NO_GESTURE;
      arrayOfEyeGesture[1] = WINK;
      arrayOfEyeGesture[2] = DOUBLE_WINK;
      arrayOfEyeGesture[3] = BLINK;
      arrayOfEyeGesture[4] = DOUBLE_BLINK;
      arrayOfEyeGesture[5] = DON;
      arrayOfEyeGesture[6] = DOFF;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.gesture.EyeGestureUtils
 * JD-Core Version:    0.6.2
 */