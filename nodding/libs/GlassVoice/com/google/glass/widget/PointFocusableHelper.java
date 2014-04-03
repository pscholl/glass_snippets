package com.google.glass.widget;

import android.view.View;
import android.view.ViewGroup;
import com.google.common.annotations.VisibleForTesting;

public class PointFocusableHelper
{
  private static PointFocusableHelper instance;

  private boolean containsPoint(View paramView, float paramFloat1, float paramFloat2)
  {
    return (paramFloat1 >= paramView.getLeft()) && (paramFloat1 <= paramView.getRight()) && (paramFloat2 >= paramView.getTop()) && (paramFloat2 <= paramView.getBottom());
  }

  public static PointFocusableHelper getInstance()
  {
    if (instance == null)
      instance = new PointFocusableHelper();
    return instance;
  }

  public boolean dispatchRequestPointFocus(View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramView == null);
    do
    {
      do
        return false;
      while (!containsPoint(paramView, paramFloat1, paramFloat2));
      if ((paramView instanceof PointFocusable))
        return ((PointFocusable)paramView).requestFocus(paramFloat1, paramFloat2);
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        for (int i = -1 + localViewGroup.getChildCount(); i >= 0; i--)
          if (dispatchRequestPointFocus(localViewGroup.getChildAt(i), paramFloat1 - paramView.getX(), paramFloat2 - paramView.getY()))
            return true;
      }
    }
    while ((!paramView.isFocusable()) || (!paramView.requestFocus()));
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.PointFocusableHelper
 * JD-Core Version:    0.6.2
 */