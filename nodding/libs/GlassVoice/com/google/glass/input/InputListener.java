package com.google.glass.input;

public abstract interface InputListener
{
  public abstract boolean onCameraButtonPressed();

  public abstract boolean onConfirm();

  public abstract boolean onDismiss(DismissAction paramDismissAction);

  public abstract boolean onFingerCountChanged(int paramInt, boolean paramBoolean);

  public abstract boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3);

  public abstract boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection);

  public abstract boolean onVerticalHeadScroll(float paramFloat);

  public static enum DismissAction
  {
    static
    {
      NUDGE = new DismissAction("NUDGE", 1);
      OPTION_ITEM = new DismissAction("OPTION_ITEM", 2);
      DismissAction[] arrayOfDismissAction = new DismissAction[3];
      arrayOfDismissAction[0] = SWIPE_DOWN;
      arrayOfDismissAction[1] = NUDGE;
      arrayOfDismissAction[2] = OPTION_ITEM;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputListener
 * JD-Core Version:    0.6.2
 */