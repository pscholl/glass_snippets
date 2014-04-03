package com.google.glass.widget;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.glass.util.DeferredContentLoader.LoadingTask;

public abstract interface ImageLoader
{
  public abstract DeferredContentLoader.LoadingTask<?> createLoadingTask(Context paramContext, FrameLayout paramFrameLayout, int paramInt1, int paramInt2, int paramInt3);

  public abstract int drawListSize();

  public abstract String getBackoffText(int paramInt);

  public abstract MosaicView.GroupCountType getGroupCountType();

  public abstract int getHeight();

  public abstract String getKey();

  public abstract int getWidth();

  public abstract int sourceListSize();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ImageLoader
 * JD-Core Version:    0.6.2
 */