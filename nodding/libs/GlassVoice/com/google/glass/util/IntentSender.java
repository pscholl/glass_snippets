package com.google.glass.util;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import com.google.glass.build.BuildHelper;
import com.google.glass.predicates.Assert;

public abstract class IntentSender
{
  private static IntentSender instance = null;

  public static IntentSender getInstance()
  {
    if (instance == null)
      instance = new DefaultIntentSender();
    return instance;
  }

  public static void setInstance(IntentSender paramIntentSender)
  {
    Assert.isTest();
    Assert.assertNotNull(paramIntentSender);
    instance = paramIntentSender;
  }

  public abstract void sendOrderedBroadcast(Context paramContext, Intent paramIntent, String paramString1, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString2, Bundle paramBundle);

  public abstract void sendOrderedBroadcastAsUser(Context paramContext, Intent paramIntent, UserHandle paramUserHandle, String paramString1, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString2, Bundle paramBundle);

  public abstract void startActivity(Context paramContext, Intent paramIntent);

  public abstract ComponentName startService(Context paramContext, Intent paramIntent);

  public abstract boolean stopService(Context paramContext, Intent paramIntent);

  public static class DefaultIntentSender extends IntentSender
  {
    public void sendOrderedBroadcast(Context paramContext, Intent paramIntent, String paramString1, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString2, Bundle paramBundle)
    {
      paramContext.sendOrderedBroadcast(paramIntent, paramString1, paramBroadcastReceiver, paramHandler, paramInt, paramString2, paramBundle);
    }

    @SuppressLint({"NewApi"})
    public void sendOrderedBroadcastAsUser(Context paramContext, Intent paramIntent, UserHandle paramUserHandle, String paramString1, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString2, Bundle paramBundle)
    {
      Assert.assertTrue(BuildHelper.isJellyBean());
      paramContext.sendOrderedBroadcastAsUser(paramIntent, paramUserHandle, paramString1, paramBroadcastReceiver, paramHandler, paramInt, paramString2, paramBundle);
    }

    public void startActivity(Context paramContext, Intent paramIntent)
    {
      paramContext.startActivity(paramIntent);
    }

    public ComponentName startService(Context paramContext, Intent paramIntent)
    {
      return paramContext.startService(paramIntent);
    }

    public boolean stopService(Context paramContext, Intent paramIntent)
    {
      return paramContext.stopService(paramIntent);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.IntentSender
 * JD-Core Version:    0.6.2
 */