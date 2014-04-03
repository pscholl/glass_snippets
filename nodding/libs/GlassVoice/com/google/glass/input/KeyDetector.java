package com.google.glass.input;

import android.content.Context;
import android.view.KeyEvent;
import com.google.glass.util.PowerHelper;

public final class KeyDetector
{
  private InputListener inputListener;
  private PowerHelper powerHelper;

  public KeyDetector(Context paramContext, InputListener paramInputListener)
  {
    if (paramInputListener == null)
      throw new NullPointerException("InputDetector constructed with null InputListener");
    this.inputListener = paramInputListener;
    this.powerHelper = new PowerHelper(paramContext);
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

  private boolean dispatchSwipe(SwipeDirection paramSwipeDirection)
  {
    if (this.inputListener.onSwipe(1, paramSwipeDirection))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 21:
      return dispatchSwipe(SwipeDirection.LEFT);
    case 22:
    }
    return dispatchSwipe(SwipeDirection.RIGHT);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 23:
    case 66:
    }
    return dispatchConfirm();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.KeyDetector
 * JD-Core Version:    0.6.2
 */