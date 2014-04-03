package com.google.glass.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class SafeBroadcastReceiver extends BroadcastReceiver
{
  private final AtomicBoolean isRegistered = new AtomicBoolean();
  private final AtomicBoolean isUnregisterPending = new AtomicBoolean();
  private Thread registerThread;

  private void checkThread()
  {
    try
    {
      if (this.registerThread == null)
        this.registerThread = Thread.currentThread();
      while (Thread.currentThread() == this.registerThread)
        return;
      throw new IllegalStateException("Register/unregister not invoked from consistent thread. First thread: " + this.registerThread.getName() + ", current thread: " + Thread.currentThread().getName());
    }
    finally
    {
    }
  }

  protected abstract FormattingLogger getLogger();

  protected UserEventHelper getUserEventHelper(Context paramContext)
  {
    return new UserEventHelper(paramContext);
  }

  public boolean isRegistered()
  {
    return this.isRegistered.get();
  }

  protected void logUserEvent(Context paramContext, UserEventAction paramUserEventAction)
  {
    getUserEventHelper(paramContext).log(paramUserEventAction);
  }

  protected void logUserEvent(Context paramContext, UserEventAction paramUserEventAction, String paramString)
  {
    getUserEventHelper(paramContext).log(paramUserEventAction, paramString);
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!this.isRegistered.get())
    {
      FormattingLogger localFormattingLogger2 = getLogger();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = paramIntent.getAction();
      localFormattingLogger2.w("Received %s even though we are not registered.", arrayOfObject2);
    }
    if (this.isUnregisterPending.get())
    {
      FormattingLogger localFormattingLogger1 = getLogger();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramIntent.getAction();
      localFormattingLogger1.d("Ignoring %s because unregister is pending.", arrayOfObject1);
      return;
    }
    onReceiveInternal(paramContext, paramIntent);
  }

  public abstract void onReceiveInternal(Context paramContext, Intent paramIntent);

  public Intent register(Context paramContext, IntentFilter paramIntentFilter)
  {
    return register(paramContext, paramIntentFilter, null);
  }

  public Intent register(Context paramContext, IntentFilter paramIntentFilter, String paramString)
  {
    if (this.isRegistered.getAndSet(true))
    {
      getLogger().w("Not registering receiver, because it is already registered.", new Object[0]);
      return null;
    }
    checkThread();
    long l1 = SystemClock.uptimeMillis();
    if (TextUtils.isEmpty(paramString));
    for (Intent localIntent = paramContext.registerReceiver(this, paramIntentFilter); ; localIntent = paramContext.registerReceiver(this, paramIntentFilter, paramString, null))
    {
      long l2 = SystemClock.uptimeMillis();
      FormattingLogger localFormattingLogger = getLogger();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(l2 - l1);
      arrayOfObject[1] = Boolean.valueOf(Assert.isUiThread());
      localFormattingLogger.d("Registered receiver, time: %sms, UI thread: %s", arrayOfObject);
      return localIntent;
    }
  }

  public Intent register(Context paramContext, String[] paramArrayOfString)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      localIntentFilter.addAction(paramArrayOfString[j]);
    return register(paramContext, localIntentFilter);
  }

  public void registerAsync(Executor paramExecutor, Context paramContext, IntentFilter paramIntentFilter)
  {
    registerAsync(paramExecutor, paramContext, paramIntentFilter, null);
  }

  public void registerAsync(Executor paramExecutor, final Context paramContext, final IntentFilter paramIntentFilter, final String paramString)
  {
    paramExecutor.execute(new Runnable()
    {
      public void run()
      {
        SafeBroadcastReceiver.this.register(paramContext, paramIntentFilter, paramString);
      }
    });
  }

  public void registerAsync(Executor paramExecutor, Context paramContext, String[] paramArrayOfString)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      localIntentFilter.addAction(paramArrayOfString[j]);
    registerAsync(paramExecutor, paramContext, localIntentFilter);
  }

  public String toString()
  {
    return getLogger().getTag();
  }

  public void unregister(Context paramContext)
  {
    checkThread();
    if (!this.isRegistered.getAndSet(false))
    {
      getLogger().w("Not unregistering receiver, because it is not registered.", new Object[0]);
      return;
    }
    long l1 = SystemClock.uptimeMillis();
    try
    {
      paramContext.unregisterReceiver(this);
      this.isUnregisterPending.set(false);
      long l2 = SystemClock.uptimeMillis();
      FormattingLogger localFormattingLogger = getLogger();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(l2 - l1);
      arrayOfObject[1] = Boolean.valueOf(Assert.isUiThread());
      localFormattingLogger.d("Unregistered receiver, time: %sms, UI thread: %s", arrayOfObject);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      getLogger().w(localIllegalArgumentException, "Receiver could not be unregistered.  It was probably forcibly unregistered by android.  See above logs.", new Object[0]);
      return;
    }
    finally
    {
      this.isUnregisterPending.set(false);
    }
  }

  public void unregisterAsync(Executor paramExecutor, final Context paramContext)
  {
    this.isUnregisterPending.set(true);
    paramExecutor.execute(new Runnable()
    {
      public void run()
      {
        SafeBroadcastReceiver.this.unregister(paramContext);
      }
    });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SafeBroadcastReceiver
 * JD-Core Version:    0.6.2
 */