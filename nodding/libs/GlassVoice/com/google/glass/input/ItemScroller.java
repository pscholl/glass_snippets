package com.google.glass.input;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.os.Handler;
import android.os.Message;
import android.view.animation.DecelerateInterpolator;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public class ItemScroller extends SimpleInputListener
{
  private static final boolean DISABLE_ONE_FINGER_INERTIAL = false;
  private static final float FLING_DECELERATION_FACTOR = 10.0F;
  public static final float LOOKUP_HINT_SCALE = 0.8F;
  public static final float MAXIMUM_FLING_DISTANCE = 20.0F;
  private static final long MILLIS_BEFORE_ZOOM = 250L;
  private static final long MINIMUM_ANIMATION_TIME_MILLIS = 100L;
  private static final float MINIMUM_DRAG_DISTANCE_TO_START = 750.0F;
  private static final float MINIMUM_FLING_DISTANCE_TO_START = 2.0F;
  public static final float MINIMUM_SCALE = 0.33F;
  private static final int MSG_FINISH_SCALE = 1;
  private static final int MSG_STOP_FLING = 0;
  private static final float OVERSCROLL_AMOUNT = 0.49F;
  private static final long SCALE_ANIMATION_DURATION_MILLIS = 250L;
  private static final int TOUCH_PIXELS_PER_ITEM = 1500;
  private static final boolean VERBOSE_DEBUG;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private float animationLeftover;
  private Handler animationSelfChangeHandler;
  private float dragVelocity;
  private ValueAnimator flingAnimator;
  private boolean flingShouldSnapOnEnd;
  private float lastAccumulatorX;
  private float lastAnimatedValue;
  private float lastFingerCount;
  private ValueAnimator scaleAnimator;
  private float scaleDestination = 1.0F;
  private Scrollable scrollable;
  private SwipeAxis swipeAxis;
  private boolean userTouching;
  private boolean zoomedOutOnUp;

  public ItemScroller(final Scrollable paramScrollable)
  {
    this.scrollable = paramScrollable;
    this.animationSelfChangeHandler = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default:
          return;
        case 0:
          ItemScroller.this.snapToNearest(true);
          return;
        case 1:
        }
        ValueAnimator localValueAnimator = ItemScroller.this.scaleAnimator;
        float[] arrayOfFloat = new float[2];
        arrayOfFloat[0] = paramScrollable.getScale();
        arrayOfFloat[1] = ItemScroller.this.scaleDestination;
        localValueAnimator.setFloatValues(arrayOfFloat);
        ItemScroller.this.scaleAnimator.start();
      }
    };
    setupAnimations();
  }

  private boolean animateByItem(float paramFloat, long paramLong)
  {
    return animateByItem(paramFloat, paramLong, true);
  }

  private boolean animateByItem(float paramFloat, long paramLong, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Float.valueOf(this.scrollable.getItem());
    arrayOfObject[1] = Float.valueOf(paramFloat);
    arrayOfObject[2] = Long.valueOf(paramLong);
    logVerbose("animateByItem, from: %s by: %s duration: %s", arrayOfObject);
    this.flingAnimator.cancel();
    setAnimationLeftover(paramFloat);
    if (paramFloat == 0.0F)
    {
      zoomIn();
      return false;
    }
    this.flingShouldSnapOnEnd = paramBoolean;
    this.flingAnimator.setDuration(paramLong);
    this.flingAnimator.setFloatValues(new float[] { 0.0F, paramFloat });
    this.flingAnimator.start();
    return true;
  }

  private void cutFlingShort()
  {
    logVerbose("cutFlingShort", new Object[0]);
    this.animationSelfChangeHandler.obtainMessage(0).sendToTarget();
  }

  private float getDecelerationFactor(float paramFloat)
  {
    if (Math.abs(travelDistance(paramFloat, 10.0F)) <= 20.0F)
      return 10.0F;
    return paramFloat * paramFloat / 40.0F;
  }

  private void incrementItem(float paramFloat)
  {
    this.scrollable.setItem(rangeItem(paramFloat + this.scrollable.getItem(), true));
    setAnimationLeftover(this.animationLeftover - paramFloat);
  }

  private boolean isOverscrolled()
  {
    return (overscrolledLeft()) || (overscrolledRight());
  }

  private float leftEdge(boolean paramBoolean)
  {
    if (paramBoolean)
      return -0.49F;
    return 0.0F;
  }

  private void logVerbose(String paramString, Object[] paramArrayOfObject)
  {
  }

  private boolean overscrolledLeft()
  {
    return this.scrollable.getItem() < 0.0F;
  }

  private boolean overscrolledRight()
  {
    return this.scrollable.getItem() > -1 + this.scrollable.getNumberOfItems();
  }

  private float rangeDeltaItem(float paramFloat, boolean paramBoolean)
  {
    return rangeItem(paramFloat + this.scrollable.getItem(), paramBoolean) - this.scrollable.getItem();
  }

  private float rangeItem(float paramFloat, boolean paramBoolean)
  {
    return Math.min(Math.max(paramFloat, leftEdge(paramBoolean)), rightEdge(paramBoolean));
  }

  private float rightEdge(boolean paramBoolean)
  {
    float f = -1 + this.scrollable.getNumberOfItems();
    if (paramBoolean)
      f += 0.49F;
    return f;
  }

  private void setAnimationLeftover(float paramFloat)
  {
    this.animationLeftover = paramFloat;
  }

  private void setupAnimations()
  {
    this.flingAnimator = new ValueAnimator();
    this.flingAnimator.setInterpolator(new DecelerateInterpolator());
    this.flingAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f1 = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        if (paramAnonymousValueAnimator.getAnimatedFraction() == 0.0F)
        {
          ItemScroller.access$202(ItemScroller.this, f1);
          return;
        }
        float f2 = f1 - ItemScroller.this.lastAnimatedValue;
        float f3 = f2 + ItemScroller.this.scrollable.getItem();
        ItemScroller.access$202(ItemScroller.this, f1);
        ItemScroller.this.setAnimationLeftover(ItemScroller.this.animationLeftover - f2);
        float f4 = ItemScroller.this.rangeItem(f3, true);
        int i;
        if ((f4 == ItemScroller.this.leftEdge(true)) || (f4 == ItemScroller.this.rightEdge(true)))
        {
          i = 1;
          label124: ItemScroller.this.scrollable.setItem(f4);
          if (paramAnonymousValueAnimator.getDuration() - paramAnonymousValueAnimator.getCurrentPlayTime() > 250L)
            break label292;
        }
        label292: for (int j = 1; ; j = 0)
        {
          if ((i != 0) || (j != 0))
            ItemScroller.this.zoomIn();
          if (i != 0)
          {
            ItemScroller localItemScroller = ItemScroller.this;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Float.valueOf(f4);
            localItemScroller.logVerbose("hitEdge: %s", arrayOfObject);
            ItemScroller.this.cutFlingShort();
          }
          if (paramAnonymousValueAnimator.getAnimatedFraction() != 1.0F)
            break;
          if (ItemScroller.this.flingShouldSnapOnEnd)
          {
            ItemScroller.this.logVerbose("fling finished, snapping to nearest item", new Object[0]);
            ItemScroller.this.scrollable.setItem(Math.round(ItemScroller.this.scrollable.getItem()));
          }
          ItemScroller.this.setAnimationLeftover(0.0F);
          return;
          i = 0;
          break label124;
        }
      }
    });
    this.scaleAnimator = new ValueAnimator();
    this.scaleAnimator.setInterpolator(new DecelerateInterpolator());
    this.scaleAnimator.setDuration(250L);
    this.scaleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        ItemScroller.this.scrollable.setScale(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
      }
    });
    this.scaleAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (((ValueAnimator)paramAnonymousAnimator).getAnimatedFraction() == 0.0F)
        {
          ItemScroller.this.logVerbose("scaleAnimator race condition occurred", new Object[0]);
          ItemScroller.this.animationSelfChangeHandler.obtainMessage(1).sendToTarget();
        }
      }
    });
  }

  private boolean shouldStartInertialScroll()
  {
    int i;
    if ((this.scaleDestination == 0.33F) && (this.dragVelocity != 0.0F))
    {
      i = 1;
      if (i == 0)
        break label32;
    }
    label32: label100: label103: 
    while (true)
    {
      return true;
      i = 0;
      break;
      if (isOverscrolled())
        break label105;
      int j;
      if (Math.abs(this.lastAccumulatorX) > 750.0F)
      {
        j = 1;
        if (Math.abs(snappedStoppingPoint(this.dragVelocity, 10.0F) - this.scrollable.getItem()) <= 2.0F)
          break label100;
      }
      for (int k = 1; ; k = 0)
      {
        if ((k != 0) && (j != 0))
          break label103;
        return false;
        j = 0;
        break;
      }
    }
    label105: return false;
  }

  private boolean snapToNearestInDirection(float paramFloat)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Float.valueOf(paramFloat);
    logVerbose("snapToNearestInDirection: %s", arrayOfObject1);
    boolean bool2;
    if (paramFloat == 1.0F)
      bool2 = animateByItem(rangeDeltaItem(1.0F + this.animationLeftover, false), 100L);
    boolean bool1;
    do
    {
      return bool2;
      if (paramFloat == -1.0F)
        return animateByItem(rangeDeltaItem(this.animationLeftover - 1.0F, false), 100L);
      bool1 = paramFloat < 0.0F;
      bool2 = false;
    }
    while (bool1);
    if ((this.scrollable.getScale() == 1.0F) && (this.animationLeftover != 0.0F))
    {
      float f = Math.round(this.scrollable.getItem() + this.animationLeftover);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(f);
      logVerbose("Confirm while moving one item at a time. Snapping to: %s", arrayOfObject2);
      this.scrollable.setItem(f);
      return false;
    }
    return snapToNearest(true);
  }

  private int snappedStoppingPoint(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat2 * -Math.signum(paramFloat1);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(f1);
    logVerbose("Using deceleration factor: %s", arrayOfObject);
    float f2 = timeToStop(paramFloat1, paramFloat2);
    return Math.round(this.scrollable.getItem() + paramFloat1 * f2 + 0.5F * f1 * (f2 * f2));
  }

  private void startFling(float paramFloat)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(paramFloat);
    logVerbose("startFling with velocity: %s", arrayOfObject);
    stopFling();
    float f = getDecelerationFactor(paramFloat);
    long l = ()Math.max(1000.0F * timeToStop(paramFloat, f), 100.0F);
    if (animateByItem(travelDistance(paramFloat, f), l))
      zoomOut();
  }

  private void stopFling()
  {
    logVerbose("stopFling", new Object[0]);
    this.flingAnimator.cancel();
  }

  private float timeToStop(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat2 * -Math.signum(paramFloat1);
    return -paramFloat1 / f;
  }

  private float travelDistance(float paramFloat1, float paramFloat2)
  {
    return snappedStoppingPoint(paramFloat1, paramFloat2) - this.scrollable.getItem();
  }

  private boolean zoomIn()
  {
    if (this.scaleDestination == 1.0F)
      return false;
    logVerbose("zoomIn", new Object[0]);
    this.scaleAnimator.cancel();
    ValueAnimator localValueAnimator = this.scaleAnimator;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.scrollable.getScale();
    arrayOfFloat[1] = 1.0F;
    localValueAnimator.setFloatValues(arrayOfFloat);
    this.scaleAnimator.start();
    this.scaleDestination = 1.0F;
    return true;
  }

  private void zoomOut()
  {
    if (this.scaleDestination == 0.33F)
      return;
    logVerbose("zoomOut", new Object[0]);
    this.scaleAnimator.cancel();
    ValueAnimator localValueAnimator = this.scaleAnimator;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.scrollable.getScale();
    arrayOfFloat[1] = 0.33F;
    localValueAnimator.setFloatValues(arrayOfFloat);
    this.scaleAnimator.start();
    this.scaleDestination = 0.33F;
  }

  public int getAnticipatedSettlePosition(float paramFloat)
  {
    if (Math.abs(paramFloat) < 1.0F)
      return Math.round(this.scrollable.getItem());
    return Math.max(Math.min(snappedStoppingPoint(paramFloat, getDecelerationFactor(paramFloat)), -1 + this.scrollable.getNumberOfItems()), 0);
  }

  public boolean onConfirm()
  {
    logVerbose("onConfirm", new Object[0]);
    snapToNearestInDirection(0.0F);
    return this.zoomedOutOnUp;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      if (paramInt == 1)
      {
        logVerbose("Down", new Object[0]);
        this.userTouching = true;
        this.lastAccumulatorX = 0.0F;
        this.dragVelocity = 0.0F;
        this.swipeAxis = SwipeAxis.NONE;
        stopFling();
      }
    do
      while (true)
      {
        return super.onFingerCountChanged(paramInt, paramBoolean);
        if (paramInt > 1)
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(paramInt);
          logVerbose("%s fingers down", arrayOfObject2);
          continue;
          if (paramInt == 2)
          {
            logVerbose("3rd finger up", new Object[0]);
          }
          else
          {
            if (paramInt != 1)
              break;
            logVerbose("2nd finger up", new Object[0]);
          }
        }
      }
    while (paramInt != 0);
    logVerbose("Up", new Object[0]);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Float.valueOf(this.lastAccumulatorX);
    arrayOfObject1[1] = Float.valueOf(this.dragVelocity);
    logVerbose("Drag distance, velocity: %s, %s", arrayOfObject1);
    boolean bool;
    if (this.scrollable.getScale() != 1.0F)
    {
      bool = true;
      label187: this.zoomedOutOnUp = bool;
      if (!shouldStartInertialScroll())
        break label222;
      startFling(this.dragVelocity);
    }
    while (true)
    {
      this.userTouching = false;
      break;
      bool = false;
      break label187;
      label222: zoomIn();
      if (this.swipeAxis == SwipeAxis.HORIZONTAL)
        snapToNearestInDirection(Math.signum(-this.lastAccumulatorX));
      else
        snapToNearest(true);
    }
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (!Labs.isEnabled(Labs.Feature.NON_MCKENZIAN))
    {
      paramFloat1 *= -1.0F;
      paramFloat3 *= -1.0F;
    }
    if (this.swipeAxis == SwipeAxis.NONE)
    {
      if (Math.abs(paramFloat2) <= Math.abs(paramFloat1))
        break label152;
      logVerbose("Initial swipe axis vertical, ignoring rest of swipe.", new Object[0]);
      this.swipeAxis = SwipeAxis.VERTICAL;
    }
    float f1;
    float f2;
    float f4;
    while (true)
    {
      if ((paramInt1 == this.lastFingerCount) && (this.swipeAxis == SwipeAxis.HORIZONTAL))
      {
        f1 = this.lastAccumulatorX - paramFloat1;
        f2 = 1500.0F * this.scrollable.getScale();
        if (isOverscrolled())
          break;
        f4 = f1 / f2;
        incrementItem(f4);
        this.dragVelocity = (1000.0F * (paramFloat3 / f2));
      }
      this.lastAccumulatorX = paramFloat1;
      this.lastFingerCount = paramInt1;
      return true;
      label152: if (Math.abs(paramFloat1) > Math.abs(paramFloat2))
        this.swipeAxis = SwipeAxis.HORIZONTAL;
    }
    float f3;
    if (this.scrollable.getItem() < 0.0F)
      f3 = Math.abs(this.scrollable.getItem());
    while (true)
    {
      f4 = f1 * (1.0F - f3 / 0.49F) / f2;
      break;
      boolean bool = this.scrollable.getItem() < -1 + this.scrollable.getNumberOfItems();
      f3 = 0.0F;
      if (bool)
        f3 = this.scrollable.getItem() - (-1 + this.scrollable.getNumberOfItems());
    }
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramSwipeDirection;
    logVerbose("onSwipe: %s, %s", arrayOfObject);
    if (this.userTouching)
      return false;
    switch (5.$SwitchMap$com$google$glass$input$SwipeDirection[paramSwipeDirection.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return true;
      snapToNearestInDirection(-1.0F);
      continue;
      snapToNearestInDirection(1.0F);
    }
  }

  public void setItem(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    logVerbose("Hard setting to: %s", arrayOfObject);
    stopFling();
    this.scrollable.setItem(paramInt);
    setAnimationLeftover(0.0F);
  }

  public boolean snapToNearest(boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    logVerbose("snapToNearest: %s", arrayOfObject);
    stopFling();
    if (paramBoolean)
      return animateByItem(rangeItem(Math.round(this.scrollable.getItem()), false) - this.scrollable.getItem(), 100L);
    this.scaleAnimator.cancel();
    setAnimationLeftover(0.0F);
    this.scrollable.setItem(Math.round(this.scrollable.getItem()));
    this.scaleDestination = 1.0F;
    this.scrollable.setScale(1.0F);
    return false;
  }

  public static abstract interface Scrollable
  {
    public abstract float getItem();

    public abstract int getNumberOfItems();

    public abstract float getScale();

    public abstract void setItem(float paramFloat);

    public abstract void setScale(float paramFloat);
  }

  private static enum SwipeAxis
  {
    static
    {
      HORIZONTAL = new SwipeAxis("HORIZONTAL", 1);
      VERTICAL = new SwipeAxis("VERTICAL", 2);
      SwipeAxis[] arrayOfSwipeAxis = new SwipeAxis[3];
      arrayOfSwipeAxis[0] = NONE;
      arrayOfSwipeAxis[1] = HORIZONTAL;
      arrayOfSwipeAxis[2] = VERTICAL;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.ItemScroller
 * JD-Core Version:    0.6.2
 */