package com.google.glass.input;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.common.collect.Lists;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.LinkedList;
import java.util.Queue;

public class InputDetectingFrameLayout extends FrameLayout
  implements InputListener
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private InputListener childInputListener;
  private InputDetector inputDetector;
  private KeyDetector keyDetector;
  private TouchDetector touchDetector;

  public InputDetectingFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.inputDetector = new InputDetector(paramContext, this);
    this.touchDetector = new TouchDetector(paramContext, this);
    this.keyDetector = new KeyDetector(paramContext, this);
  }

  private InputListener findInputListenerView()
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    for (int i = 0; i < getChildCount(); i++)
      localLinkedList.add(getChildAt(i));
    while (localLinkedList.peek() != null)
    {
      View localView = (View)localLinkedList.remove();
      if ((localView instanceof InputListener))
        return (InputListener)localView;
      if ((localView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)localView;
        for (int j = 0; j < localViewGroup.getChildCount(); j++)
          localLinkedList.add(localViewGroup.getChildAt(j));
      }
    }
    return null;
  }

  public boolean dispatchGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if ((getVisibility() != 0) || (!isFocusable()) || (!isFocusableInTouchMode()))
      return false;
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if ((localView.getVisibility() == 0) && (localView.dispatchGenericMotionEvent(paramMotionEvent)))
        return true;
    }
    return onGenericMotionEvent(paramMotionEvent);
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    requestFocus();
  }

  public boolean onCameraButtonPressed()
  {
    if (this.childInputListener != null)
      return this.childInputListener.onCameraButtonPressed();
    return false;
  }

  public boolean onConfirm()
  {
    long l = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent1 = MotionEvent.obtain(l - 100L, l - 100L, 0, 0.0F, 0.0F, 1);
    MotionEvent localMotionEvent2 = MotionEvent.obtain(l, l, 1, 0.0F, 0.0F, 1);
    if ((dispatchTouchEvent(localMotionEvent1)) && (dispatchTouchEvent(localMotionEvent2)))
      return true;
    if (this.childInputListener != null)
      return this.childInputListener.onConfirm();
    return false;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    if (this.childInputListener != null)
      return this.childInputListener.onDismiss(paramDismissAction);
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if (this.childInputListener != null)
      return this.childInputListener.onFingerCountChanged(paramInt, paramBoolean);
    return false;
  }

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.touchDetector != null)
      this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 27) && (paramKeyEvent.getRepeatCount() == 0) && (onCameraButtonPressed()));
    while ((this.keyDetector.onKeyDown(paramInt, paramKeyEvent)) || (super.onKeyDown(paramInt, paramKeyEvent)))
      return true;
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return (this.keyDetector.onKeyUp(paramInt, paramKeyEvent)) || (super.onKeyUp(paramInt, paramKeyEvent));
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
    {
      this.childInputListener = findInputListenerView();
      if (this.childInputListener == null)
        logger.w("Could not find an InputListener in the children heirarchy", new Object[0]);
    }
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (this.childInputListener != null)
      return this.childInputListener.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return false;
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (this.childInputListener != null)
      return this.childInputListener.onSwipe(paramInt, paramSwipeDirection);
    return false;
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    if (this.childInputListener != null)
      return this.childInputListener.onVerticalHeadScroll(paramFloat);
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputDetectingFrameLayout
 * JD-Core Version:    0.6.2
 */