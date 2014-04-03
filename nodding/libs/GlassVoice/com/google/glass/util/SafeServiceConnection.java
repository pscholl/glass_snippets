package com.google.glass.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.SystemClock;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.predicates.Assert;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class SafeServiceConnection
  implements ServiceConnection
{
  private volatile Thread bindThread;
  private final ComponentName component;
  private final AtomicBoolean isBindCalled = new AtomicBoolean();
  private final AtomicBoolean isConnected = new AtomicBoolean();

  public SafeServiceConnection(ComponentName paramComponentName)
  {
    Assert.assertNotNull(paramComponentName);
    this.component = paramComponentName;
  }

  private void checkThread()
  {
    String str;
    try
    {
      Thread localThread = Thread.currentThread();
      if (this.bindThread == null)
        this.bindThread = localThread;
      while (true)
      {
        return;
        if (localThread != this.bindThread)
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = this.bindThread.getName();
          arrayOfObject[1] = localThread.getName();
          str = String.format("Bind/unbind not invoked from consistent thread. First thread: %s, current thread: %s", arrayOfObject);
          if (!Assert.isTest())
            break;
          getLogger().d(str, new Object[0]);
        }
      }
    }
    finally
    {
    }
    throw new IllegalStateException(str);
  }

  public SafeServiceConnection bind(Context paramContext)
  {
    if (!this.isBindCalled.getAndSet(true))
    {
      checkThread();
      Intent localIntent = new Intent().setComponent(this.component);
      long l1 = SystemClock.uptimeMillis();
      boolean bool = paramContext.bindService(localIntent, this, 1);
      long l2 = SystemClock.uptimeMillis();
      if (bool)
      {
        FormattingLogger localFormattingLogger2 = getLogger();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Long.valueOf(l2 - l1);
        arrayOfObject2[1] = Boolean.valueOf(Assert.isUiThread());
        localFormattingLogger2.d("Binding to service, time: %sms, UI thread: %s", arrayOfObject2);
        return this;
      }
      FormattingLogger localFormattingLogger1 = getLogger();
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Long.valueOf(l2 - l1);
      arrayOfObject1[1] = Boolean.valueOf(Assert.isUiThread());
      localFormattingLogger1.e("Binding to service failed, time: %sms, UI thread: %s", arrayOfObject1);
      this.bindThread = null;
      this.isBindCalled.set(false);
      return this;
    }
    getLogger().d("We have already requested binding to this service.", new Object[0]);
    return this;
  }

  public void bindAsync(Executor paramExecutor, final Context paramContext)
  {
    paramExecutor.execute(new Runnable()
    {
      public void run()
      {
        SafeServiceConnection.this.bind(paramContext);
      }
    });
  }

  protected abstract FormattingLogger getLogger();

  public boolean isBindCalled()
  {
    return this.isBindCalled.get();
  }

  public boolean isConnected()
  {
    return this.isConnected.get();
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    getLogger().d("Connected to service", new Object[0]);
    if (!Assert.isTest())
      Assert.assertUiThread();
    Assert.assertTrue(this.component.equals(paramComponentName));
    if (!this.isConnected.getAndSet(true))
      onServiceConnectedInternal(paramComponentName, paramIBinder);
  }

  public abstract void onServiceConnectedInternal(ComponentName paramComponentName, IBinder paramIBinder);

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (!Assert.isTest())
      Assert.assertUiThread();
    onServiceDisconnected(paramComponentName, true);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName, boolean paramBoolean)
  {
    getLogger().d("Disconnected from service", new Object[0]);
    if (!Assert.isTest())
      Assert.assertUiThread();
    Assert.assertTrue(this.component.equals(paramComponentName));
    if (this.isConnected.getAndSet(false))
      onServiceDisconnectedInternal(paramComponentName, paramBoolean);
  }

  public abstract void onServiceDisconnectedInternal(ComponentName paramComponentName, boolean paramBoolean);

  @VisibleForTesting
  public void setStateForTest(boolean paramBoolean1, boolean paramBoolean2)
  {
    Assert.assertIsTest();
    this.isBindCalled.set(paramBoolean1);
    this.isConnected.set(paramBoolean2);
  }

  public SafeServiceConnection unbind(Context paramContext)
  {
    checkThread();
    this.bindThread = null;
    if (this.isBindCalled.getAndSet(false))
    {
      getLogger().d("Unbinding from service.", new Object[0]);
      try
      {
        long l1 = SystemClock.uptimeMillis();
        paramContext.unbindService(this);
        long l2 = SystemClock.uptimeMillis();
        FormattingLogger localFormattingLogger = getLogger();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Long.valueOf(l2 - l1);
        arrayOfObject[1] = Boolean.valueOf(Assert.isUiThread());
        localFormattingLogger.d("Unbound from service, time: %sms, UI thread: %s", arrayOfObject);
        if (Assert.isUiThread())
        {
          onServiceDisconnected(this.component, false);
          return this;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          getLogger().w(localIllegalArgumentException, "Was already unbound.", new Object[0]);
        MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
        {
          public void run()
          {
            SafeServiceConnection.this.onServiceDisconnected(SafeServiceConnection.this.component, false);
          }
        });
        return this;
      }
    }
    getLogger().d("We have already requested unbind from this service.", new Object[0]);
    return this;
  }

  public void unbindAsync(Executor paramExecutor, final Context paramContext)
  {
    paramExecutor.execute(new Runnable()
    {
      public void run()
      {
        SafeServiceConnection.this.unbind(paramContext);
      }
    });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SafeServiceConnection
 * JD-Core Version:    0.6.2
 */