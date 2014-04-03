package com.google.glass.util;

import android.os.Handler;
import com.google.glass.predicates.Assert;

public class HandlerWrapper
{
  private static volatile HandlerWrapper handlerWrapperForTesting;
  private Handler handler = new Handler();

  public static HandlerWrapper createHandlerWrapper()
  {
    if ((Assert.isTest()) && (handlerWrapperForTesting != null))
      return handlerWrapperForTesting;
    return new HandlerWrapper();
  }

  public static void setHandlerWrapperForTest(HandlerWrapper paramHandlerWrapper)
  {
    Assert.assertIsTest();
    handlerWrapperForTesting = paramHandlerWrapper;
  }

  public boolean post(Runnable paramRunnable)
  {
    return this.handler.post(paramRunnable);
  }

  public boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    return this.handler.postDelayed(paramRunnable, paramLong);
  }

  public void removeCallbacks(Runnable paramRunnable)
  {
    this.handler.removeCallbacks(paramRunnable);
  }

  public void removeCallbacksAndMessages(Object paramObject)
  {
    this.handler.removeCallbacksAndMessages(paramObject);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HandlerWrapper
 * JD-Core Version:    0.6.2
 */