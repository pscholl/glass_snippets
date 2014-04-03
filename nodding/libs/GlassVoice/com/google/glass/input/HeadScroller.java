package com.google.glass.input;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.DisplayMetrics;
import android.view.animation.DecelerateInterpolator;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.gesture.EyeGestureUtils;
import com.google.glass.gesture.EyeGestureUtils.EyeGesture;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.Stopwatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import junit.framework.Assert;

public class HeadScroller
  implements SensorEventListener, AbsolutePitchHelper.AbsolutePitchListener
{
  private static final long ANIMATION_DURATION_MILLIS = 250L;

  @VisibleForTesting
  static final float DEFAULT_GLU_ANGLE_DEGS = 30.0F;
  private static final String GLU_ANGLE_KEY = "glu_angle_degs";
  private static final String HEAD_GESTURE_SETTINGS_KEY = "head_gesture_settings";

  @VisibleForTesting
  static final float HEAD_PANNING_SCALE = 0.5F;

  @VisibleForTesting
  static final float HEAD_SCROLLING_SCALE = 0.33F;

  @VisibleForTesting
  static final float HEAD_WAKE_TRIGGER_HYSTERESIS_DEGREES = 10.0F;

  @VisibleForTesting
  static final float MAX_SCROLL_PIXELS_PER_SECOND = 900.0F;
  private static final float NANOS_PER_SECOND = 0.0F;
  private static final float PAN_ZONE_SIZE = 3.0F;
  private static final String TAG = HeadScroller.class.getSimpleName();
  private static final float YAW_DEGREES_PER_ITEM = 6.0F;
  private static final float YAW_DISPLACEMENT_FOR_SCROLL_MAX = 24.0F;
  private static final float YAW_DISPLACEMENT_FOR_SCROLL_START = 18.0F;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Context context;
  private SafeBroadcastReceiver doubleBlinkReceiver = new SafeBroadcastReceiver()
  {
    protected FormattingLogger getLogger()
    {
      return HeadScroller.logger;
    }

    public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (EyeGestureUtils.EyeGesture.valueOf(paramAnonymousIntent.getStringExtra("gesture")) == EyeGestureUtils.EyeGesture.DOUBLE_BLINK)
        HeadScroller.this.doubleBlinkDetected();
    }
  };
  private float extraYaw;
  private float gyroYMovingAverage;
  private Sensor gyroscopeSensor;
  private boolean handsfreeActivatedOnce;
  private Stopwatch handsfreeTimeStopWatch = new Stopwatch();
  private volatile float integratedGyroY;
  private boolean isActivated;
  private boolean isHeadScrollingActivated;
  private boolean isUserLookingUp;
  private float itemDisplacement;
  private float itemDistanceTraveled;
  private ValueAnimator itemPositionAnimator;
  private long lastGyroTimestamp;
  private long lastTimestamp;
  private float lastYaw;
  private boolean lastYawDataSet;
  private float lookDownAngle;
  private Stopwatch lookingUpStopWatch = new Stopwatch();
  private AbsolutePitchHelper pitchHelper;
  private PowerHelper powerHelper;
  private ValueAnimator scaleAnimator;
  private float scaleDestination = 1.0F;
  private SafeBroadcastReceiver screenOffReceiver;
  private final float screenWidth;
  private ItemScroller.Scrollable scrollable;
  private Executor sensorExecutor;
  private SensorManager sensorManager;
  private SoundManager soundManager;
  private Stopwatch timeToDblBlinkStopWatch = new Stopwatch();
  private UserEventHelper userEventHelper;
  private float userGluAngle;
  private float yawDisplacement;

  public HeadScroller(Context paramContext, ItemScroller.Scrollable paramScrollable)
  {
    this.context = paramContext;
    this.scrollable = paramScrollable;
    this.userEventHelper = new UserEventHelper(paramContext);
    this.screenWidth = paramContext.getResources().getDisplayMetrics().widthPixels;
    this.lookingUpStopWatch.start();
    this.timeToDblBlinkStopWatch.start();
    this.handsfreeTimeStopWatch.start();
    this.userGluAngle = getHeadWakeAngleDegs(paramContext);
    this.lookDownAngle = (this.userGluAngle - 10.0F);
    this.powerHelper = new PowerHelper(paramContext);
    this.soundManager = new SoundManager(paramContext);
    setupAnimations();
    setupSensors();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(this.userGluAngle);
    localFormattingLogger.v("User's GLU Angle is %f", arrayOfObject);
  }

  private void calculateYaw(SensorEvent paramSensorEvent)
  {
    float f1;
    float f2;
    float f3;
    if (this.lastGyroTimestamp != 0L)
    {
      f1 = paramSensorEvent.values[1];
      f2 = OrientationHelper.roundValueToPrecision(f1 - this.gyroYMovingAverage, 0.1F);
      f3 = (float)(paramSensorEvent.timestamp - this.lastGyroTimestamp) / NANOS_PER_SECOND;
      if (f3 <= 0.25F)
        break label117;
    }
    for (this.gyroYMovingAverage = 0.0F; ; this.gyroYMovingAverage = (1.0E-05F * f1 + 0.99999F * this.gyroYMovingAverage))
    {
      float f4 = (float)Math.toDegrees(-this.integratedGyroY);
      if (!this.lastYawDataSet)
        updateLastYawData(f4, paramSensorEvent.timestamp);
      panScrollBasedOnYaw(f4, paramSensorEvent.timestamp);
      updateLastYawData(f4, paramSensorEvent.timestamp);
      this.lastGyroTimestamp = paramSensorEvent.timestamp;
      return;
      label117: this.integratedGyroY += f2 * f3;
    }
  }

  private void disableWinkDetector()
  {
    if (EyeGestureUtils.stopEyeGestureDetector(this.context, EyeGestureUtils.EyeGesture.WINK))
    {
      logger.v("Wink detector stopped.", new Object[0]);
      return;
    }
    logger.e("Failed to stop wink detector.", new Object[0]);
  }

  private void enableWinkDetector()
  {
    if (EyeGestureUtils.startEyeGestureDetector(this.context, EyeGestureUtils.EyeGesture.WINK, false, -1))
    {
      logger.v("Wink detector started.", new Object[0]);
      return;
    }
    logger.e("Failed to start wink detector.", new Object[0]);
  }

  private void engageHandsfreeMode()
  {
    this.powerHelper.userActivity();
    this.yawDisplacement = 0.0F;
    this.extraYaw = 0.0F;
    this.handsfreeTimeStopWatch.reset();
    setIsHeadScrollingActivated(true);
    this.lastYawDataSet = false;
    MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
    {
      public void run()
      {
        HeadScroller.this.startYawCalculations();
        HeadScroller.this.zoomToPanScale();
      }
    });
  }

  private static float getHeadWakeAngleDegs(Context paramContext)
  {
    return paramContext.getSharedPreferences("head_gesture_settings", 0).getFloat("glu_angle_degs", 30.0F);
  }

  private boolean isPositionAtBoundary(float paramFloat)
  {
    return (paramFloat == 0.0F) || (paramFloat == -1 + this.scrollable.getNumberOfItems());
  }

  private void panScrollBasedOnYaw(float paramFloat, long paramLong)
  {
    float f1 = this.scrollable.getItem();
    float f2 = paramFloat - this.lastYaw;
    boolean bool = isYawDisplacementInScrollZone();
    updateYawDisplacement(f2);
    float f3 = Math.max(Math.min(f2 / 6.0F + this.scrollable.getItem(), -1 + this.scrollable.getNumberOfItems()), 0.0F);
    updateExtraYaw(f1, f3, f2);
    if (this.extraYaw != 0.0F)
      return;
    if (isYawDisplacementInScrollZone())
    {
      f3 = Math.max(Math.min(f3 + deltaItemBasedOnScrolling(this.yawDisplacement, paramLong), -1 + this.scrollable.getNumberOfItems()), 0.0F);
      this.scrollable.setItem(f3);
      updateItemScaleInScrollZone(this.yawDisplacement);
    }
    while (true)
    {
      if ((f1 != f3) && (Math.round(f1) != Math.round(this.scrollable.getItem())))
      {
        this.powerHelper.userActivity();
        logger.v("Changed focused item while head scrolling", new Object[0]);
      }
      float f4 = this.scrollable.getItem() - f1;
      this.itemDistanceTraveled += Math.abs(f4);
      this.itemDisplacement = (f4 + this.itemDisplacement);
      return;
      this.scrollable.setItem(f3);
      if (bool)
        zoomToPanScale();
    }
  }

  private void setupAnimations()
  {
    this.scaleAnimator = new ValueAnimator();
    this.scaleAnimator.setInterpolator(new DecelerateInterpolator());
    this.scaleAnimator.setDuration(250L);
    this.scaleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        HeadScroller.this.scrollable.setScale(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
      }
    });
    this.itemPositionAnimator = new ValueAnimator();
    this.itemPositionAnimator.setInterpolator(new DecelerateInterpolator());
    this.itemPositionAnimator.setDuration(250L);
    this.itemPositionAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        HeadScroller.this.scrollable.setItem(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
      }
    });
  }

  private void setupScreenOffReceiver()
  {
    if (this.screenOffReceiver == null)
    {
      this.screenOffReceiver = new SafeBroadcastReceiver()
      {
        protected FormattingLogger getLogger()
        {
          return HeadScroller.logger;
        }

        public void onReceiveInternal(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          if ("android.intent.action.SCREEN_OFF".equals(paramAnonymousIntent.getAction()))
          {
            HeadScroller.access$402(HeadScroller.this, false);
            HeadScroller.this.screenOffReceiver.unregisterAsync(AsyncThreadExecutorManager.getSerialExecutor(), paramAnonymousContext);
            HeadScroller.access$502(HeadScroller.this, null);
          }
        }
      };
      this.screenOffReceiver.registerAsync(AsyncThreadExecutorManager.getSerialExecutor(), this.context, new String[] { "android.intent.action.SCREEN_OFF" });
    }
  }

  private void setupSensors()
  {
    this.sensorManager = ((SensorManager)this.context.getSystemService("sensor"));
    this.sensorExecutor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(5, TAG));
    this.sensorExecutor.execute(new Runnable()
    {
      public void run()
      {
        HeadScroller.access$102(HeadScroller.this, OrientationHelper.getPreferredSensor(HeadScroller.this.sensorManager, 4));
      }
    });
    this.pitchHelper = new AbsolutePitchHelper(this.context, this);
  }

  private void snapToNearest(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      zoomIn();
      snapToNearestItem();
      return;
    }
    this.itemPositionAnimator.cancel();
    this.scaleAnimator.cancel();
    this.scrollable.setItem(Math.round(this.scrollable.getItem()));
    this.scaleDestination = 1.0F;
    this.scrollable.setScale(1.0F);
  }

  private void snapToNearestItem()
  {
    this.itemPositionAnimator.cancel();
    ValueAnimator localValueAnimator = this.itemPositionAnimator;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.scrollable.getItem();
    arrayOfFloat[1] = Math.round(this.scrollable.getItem());
    localValueAnimator.setFloatValues(arrayOfFloat);
    this.itemPositionAnimator.start();
  }

  private void startYawCalculations()
  {
    this.sensorExecutor.execute(new Runnable()
    {
      public void run()
      {
        HeadScroller.access$602(HeadScroller.this, 0L);
        HeadScroller.this.sensorManager.registerListener(HeadScroller.this, HeadScroller.this.gyroscopeSensor, 20000);
      }
    });
  }

  private void stopYawCalculations()
  {
    this.sensorExecutor.execute(new Runnable()
    {
      public void run()
      {
        HeadScroller.this.sensorManager.unregisterListener(HeadScroller.this, HeadScroller.this.gyroscopeSensor);
      }
    });
  }

  private void updateLastYawData(float paramFloat, long paramLong)
  {
    this.lastYaw = paramFloat;
    this.lastTimestamp = paramLong;
    this.lastYawDataSet = true;
  }

  private void zoomIn()
  {
    if (this.scaleDestination == 1.0F)
      return;
    logger.v("zoomIn", new Object[0]);
    this.scaleAnimator.cancel();
    ValueAnimator localValueAnimator = this.scaleAnimator;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.scrollable.getScale();
    arrayOfFloat[1] = 1.0F;
    localValueAnimator.setFloatValues(arrayOfFloat);
    this.scaleAnimator.start();
    this.scaleDestination = 1.0F;
  }

  private void zoomToPanScale()
  {
    if (this.scaleDestination == 0.5F)
      return;
    logger.v("zoomToPanScale", new Object[0]);
    this.scaleAnimator.cancel();
    ValueAnimator localValueAnimator = this.scaleAnimator;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.scrollable.getScale();
    arrayOfFloat[1] = 0.5F;
    localValueAnimator.setFloatValues(arrayOfFloat);
    this.scaleAnimator.start();
    this.scaleDestination = 0.5F;
  }

  public void activate()
  {
    if (!this.isActivated)
    {
      logger.v("activate", new Object[0]);
      this.isUserLookingUp = false;
      setupScreenOffReceiver();
      this.doubleBlinkReceiver.registerAsync(AsyncThreadExecutorManager.getSerialExecutor(), this.context, new String[] { "com.google.glass.action.EYE_GESTURE" });
      this.pitchHelper.start();
    }
    this.isActivated = true;
  }

  public void deactivate()
  {
    if (this.isActivated)
    {
      logger.v("deactivate", new Object[0]);
      this.doubleBlinkReceiver.unregisterAsync(AsyncThreadExecutorManager.getSerialExecutor(), this.context);
      this.pitchHelper.stop();
      stopYawCalculations();
      setIsHeadScrollingActivated(false);
      disableDoubleBlinkDetector();
      snapToNearest(false);
    }
    this.isActivated = false;
  }

  @VisibleForTesting
  float deltaItemBasedOnScrolling(float paramFloat, long paramLong)
  {
    int i = (int)Math.signum(paramFloat);
    float f1 = 900.0F * percentageToMaxScroll(paramFloat);
    float f2 = (float)(paramLong - this.lastTimestamp) / NANOS_PER_SECOND;
    return 1.0F / (this.scrollable.getScale() * this.screenWidth) * (f1 * f2) * i;
  }

  @VisibleForTesting
  void disableDoubleBlinkDetector()
  {
    logger.v("Stopping double blink detector...", new Object[0]);
    if (EyeGestureUtils.stopEyeGestureDetector(this.context, EyeGestureUtils.EyeGesture.DOUBLE_BLINK))
      logger.v("Double blink detector is stopped.", new Object[0]);
    while (true)
    {
      if ((EyeGestureUtils.isEyeGestureDetectorPersistentlyEnabled(this.context, EyeGestureUtils.EyeGesture.WINK)) && (!EyeGestureUtils.isEyeGestureDetectorRunning(this.context, EyeGestureUtils.EyeGesture.WINK)))
        enableWinkDetector();
      return;
      logger.e("Failed to stop double blink detector.", new Object[0]);
    }
  }

  @VisibleForTesting
  void doubleBlinkDetected()
  {
    if (!this.isUserLookingUp)
      return;
    engageHandsfreeMode();
    disableDoubleBlinkDetector();
    this.userEventHelper.log(UserEventAction.HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK, UserEventHelper.createEventTuple("t", Long.valueOf(this.timeToDblBlinkStopWatch.getTotalElapsedMilliseconds()), new Object[0]));
  }

  @VisibleForTesting
  void enableDoubleBlinkDetector()
  {
    logger.v("Starting double blink detector...", new Object[0]);
    if (EyeGestureUtils.startEyeGestureDetector(this.context, EyeGestureUtils.EyeGesture.DOUBLE_BLINK, false, -1))
    {
      logger.v("Double blink detector is started.", new Object[0]);
      this.timeToDblBlinkStopWatch.reset();
      if (EyeGestureUtils.isEyeGestureDetectorRunning(this.context, EyeGestureUtils.EyeGesture.WINK))
        disableWinkDetector();
      return;
    }
    logger.e("Failed to start double blink detector.", new Object[0]);
  }

  @VisibleForTesting
  float getExtraYaw()
  {
    return this.extraYaw;
  }

  @VisibleForTesting
  float getYawDisplacement()
  {
    return this.yawDisplacement;
  }

  @VisibleForTesting
  float getYawDisplacementForScrollMaxed()
  {
    return 24.0F;
  }

  @VisibleForTesting
  float getYawDisplacementForScrollStart()
  {
    return 18.0F;
  }

  public boolean isHeadScrollingActivated()
  {
    return this.isHeadScrollingActivated;
  }

  @VisibleForTesting
  boolean isUserLookingUp()
  {
    return this.isUserLookingUp;
  }

  @VisibleForTesting
  boolean isYawDisplacementInScrollZone()
  {
    return Math.abs(this.yawDisplacement) > 18.0F;
  }

  public boolean onAbsolutePitchChange(float paramFloat, long paramLong)
  {
    updateLookingUpState(paramFloat);
    return false;
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    Assert.assertEquals(4, paramSensorEvent.sensor.getType());
    calculateYaw(paramSensorEvent);
  }

  @VisibleForTesting
  float percentageToMaxScroll(float paramFloat)
  {
    return Math.max(0.0F, Math.min(1.0F, (Math.abs(paramFloat) - 18.0F) / 6.0F));
  }

  @VisibleForTesting
  boolean setIsHeadScrollingActivated(boolean paramBoolean)
  {
    if ((!this.isHeadScrollingActivated) && (paramBoolean))
    {
      if (!this.handsfreeActivatedOnce)
        this.soundManager.playSound(SoundManager.SoundId.TAP);
      this.handsfreeActivatedOnce = true;
    }
    this.isHeadScrollingActivated = paramBoolean;
    return paramBoolean;
  }

  @VisibleForTesting
  void updateExtraYaw(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if ((isPositionAtBoundary(paramFloat1)) && ((paramFloat1 == paramFloat2) || (this.extraYaw != 0.0F)))
    {
      int i = (int)Math.signum(this.extraYaw);
      this.extraYaw = (paramFloat3 + this.extraYaw);
      if ((i != 0) && (i != Math.signum(this.extraYaw)))
        this.extraYaw = 0.0F;
    }
  }

  @VisibleForTesting
  void updateItemScaleInScrollZone(float paramFloat)
  {
    float f = 0.5F - 0.17F * percentageToMaxScroll(paramFloat);
    if (this.scaleAnimator.isRunning())
      this.scaleAnimator.cancel();
    this.scrollable.setScale(f);
  }

  @VisibleForTesting
  void updateLookingUpState(float paramFloat)
  {
    if (this.isUserLookingUp)
    {
      if (paramFloat > -this.lookDownAngle);
      for (int j = 1; ; j = 0)
      {
        if (j != 0)
        {
          logger.v("User is looking down.", new Object[0]);
          disableDoubleBlinkDetector();
          this.isUserLookingUp = false;
          boolean bool2 = this.isHeadScrollingActivated;
          long l1 = this.lookingUpStopWatch.getTotalElapsedMilliseconds();
          long l2 = 0L;
          if (this.isHeadScrollingActivated)
          {
            stopYawCalculations();
            setIsHeadScrollingActivated(false);
            l2 = this.handsfreeTimeStopWatch.getTotalElapsedMilliseconds();
            MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
            {
              public void run()
              {
                HeadScroller.this.snapToNearest(true);
              }
            });
          }
          UserEventHelper localUserEventHelper2 = this.userEventHelper;
          UserEventAction localUserEventAction2 = UserEventAction.HEAD_GESTURES_HANDSFREE_BELOW_PITCH;
          Boolean localBoolean = Boolean.valueOf(bool2);
          Object[] arrayOfObject = new Object[8];
          arrayOfObject[0] = "hft";
          arrayOfObject[1] = Long.valueOf(l2);
          arrayOfObject[2] = "lut";
          arrayOfObject[3] = Long.valueOf(l1);
          arrayOfObject[4] = "idist";
          arrayOfObject[5] = Float.valueOf(this.itemDistanceTraveled);
          arrayOfObject[6] = "idisp";
          arrayOfObject[7] = Float.valueOf(this.itemDisplacement);
          localUserEventHelper2.log(localUserEventAction2, UserEventHelper.createEventTuple("s", localBoolean, arrayOfObject));
        }
        return;
      }
    }
    int i;
    label240: UserEventHelper localUserEventHelper1;
    label293: UserEventAction localUserEventAction1;
    if (paramFloat < -this.userGluAngle)
    {
      i = 1;
      if (i == 0)
        break label340;
      logger.v("User is looking up.", new Object[0]);
      this.lookingUpStopWatch.reset();
      this.itemDistanceTraveled = 0.0F;
      this.itemDisplacement = 0.0F;
      this.isUserLookingUp = true;
      if (!this.handsfreeActivatedOnce)
        break label342;
      engageHandsfreeMode();
      localUserEventHelper1 = this.userEventHelper;
      localUserEventAction1 = UserEventAction.HEAD_GESTURES_HANDSFREE_ABOVE_PITCH;
      if (this.handsfreeActivatedOnce)
        break label349;
    }
    label340: label342: label349: for (boolean bool1 = true; ; bool1 = false)
    {
      localUserEventHelper1.log(localUserEventAction1, UserEventHelper.createEventTuple("db", Boolean.valueOf(bool1), new Object[0]));
      return;
      i = 0;
      break label240;
      break;
      enableDoubleBlinkDetector();
      break label293;
    }
  }

  @VisibleForTesting
  void updateYawDisplacement(float paramFloat)
  {
    this.yawDisplacement = (paramFloat + this.yawDisplacement);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.HeadScroller
 * JD-Core Version:    0.6.2
 */