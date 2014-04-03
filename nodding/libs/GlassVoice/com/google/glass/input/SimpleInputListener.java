package com.google.glass.input;

public class SimpleInputListener
  implements InputListener
{
  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public boolean onConfirm()
  {
    return false;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return false;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return false;
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    return false;
  }

  public boolean onVerticalHeadScroll(float paramFloat)
  {
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.SimpleInputListener
 * JD-Core Version:    0.6.2
 */