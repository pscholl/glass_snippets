package com.google.glass.phone;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public abstract class PhoneCallManagerServiceConnection
  implements ServiceConnection
{
  public static final String ACTION_GET_MANAGEMENT_BINDER = "com.google.glass.phone.MANAGEMENT_BINDER";

  @VisibleForTesting
  static final ComponentName PHONE_CALL_SERVICE = new ComponentName("com.google.glass.phone", "com.google.glass.phone.PhoneCallService");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public void bind(Context paramContext)
  {
    logger.d("Binding to phone call service.", new Object[0]);
    Intent localIntent = new Intent("com.google.glass.phone.MANAGEMENT_BINDER");
    localIntent.setComponent(PHONE_CALL_SERVICE);
    paramContext.bindService(localIntent, this, 1);
  }

  public abstract void onListenerAttached(IPhoneCallListener paramIPhoneCallListener);

  public abstract void onListenerDetached();

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    logger.d("Service connected.", new Object[0]);
    onListenerAttached(IPhoneCallListener.Stub.asInterface(paramIBinder));
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    logger.d("Service disconnected.", new Object[0]);
    onListenerDetached();
  }

  public void unbind(Context paramContext)
  {
    logger.d("Unbinding from phone call service.", new Object[0]);
    paramContext.unbindService(this);
    onListenerDetached();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCallManagerServiceConnection
 * JD-Core Version:    0.6.2
 */