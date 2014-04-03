package com.google.glass.input;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.glass.touchpad.Gesture;
import com.google.android.glass.touchpad.GestureDetector;
import com.google.android.glass.touchpad.GestureDetector.BaseListener;
import com.google.android.glass.touchpad.GestureDetector.FingerListener;
import com.google.android.glass.touchpad.GestureDetector.ScrollListener;
import com.google.android.glass.touchpad.GestureDetector.TwoFingerScrollListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.PowerHelper;

public final class TouchDetector
  implements GestureDetector.BaseListener, GestureDetector.ScrollListener, GestureDetector.FingerListener, GestureDetector.TwoFingerScrollListener
{

  @Deprecated
  private static final float DEPRECATED_PARAM_FLOAT;

  @Deprecated
  private static final int DEPRECATED_PARAM_INT;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  @Deprecated
  private int fingerCount;
  private final GestureDetector gestureDetector;
  private final InputListener inputListener;
  private final PowerHelper powerHelper;

  public TouchDetector(Context paramContext, InputListener paramInputListener)
  {
    if (paramInputListener == null)
      throw new NullPointerException("InputDetector constructed with null InputListener");
    this.inputListener = paramInputListener;
    this.gestureDetector = new GestureDetector(paramContext).setBaseListener(this).setScrollListener(this).setTwoFingerScrollListener(this).setFingerListener(this);
    this.powerHelper = new PowerHelper(paramContext);
    this.fingerCount = 0;
  }

  private boolean dispatchConfirm()
  {
    if (this.inputListener.onConfirm())
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private void dispatchFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    this.inputListener.onFingerCountChanged(paramInt, paramBoolean);
  }

  private boolean dispatchPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (this.inputListener.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private boolean dispatchSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (this.inputListener.onSwipe(paramInt, paramSwipeDirection))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  public void onFingerCountChanged(int paramInt1, int paramInt2)
  {
    this.fingerCount = paramInt2;
    if (paramInt1 < paramInt2);
    for (boolean bool = true; ; bool = false)
    {
      dispatchFingerCountChanged(paramInt2, bool);
      return;
    }
  }

  public boolean onGesture(Gesture paramGesture)
  {
    logger.v("onGesture: " + paramGesture, new Object[0]);
    switch (1.$SwitchMap$com$google$android$glass$touchpad$Gesture[paramGesture.ordinal()])
    {
    default:
      return false;
    case 1:
      return dispatchSwipe(this.fingerCount, SwipeDirection.UP);
    case 2:
      return dispatchSwipe(this.fingerCount, SwipeDirection.DOWN);
    case 3:
      return dispatchSwipe(this.fingerCount, SwipeDirection.LEFT);
    case 4:
      return dispatchSwipe(this.fingerCount, SwipeDirection.RIGHT);
    case 5:
    }
    return dispatchConfirm();
  }

  public boolean onScroll(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    dispatchPrepareSwipe(this.fingerCount, paramFloat1, 0.0F, -paramFloat3, 0.0F, 0, 0);
    return false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.gestureDetector.onMotionEvent(paramMotionEvent);
  }

  public boolean onTwoFingerScroll(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    dispatchPrepareSwipe(this.fingerCount, paramFloat1, 0.0F, -paramFloat3, 0.0F, 0, 0);
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.TouchDetector
 * JD-Core Version:    0.6.2
 */