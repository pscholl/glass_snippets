package com.x.google.common.io;

import com.x.google.common.util.Observable;

public abstract interface ConnectionFactory
{
  public static final int NETWORK_IS_AVAILABLE = 1;
  public static final int NETWORK_MAY_BE_AVAILABLE = 2;
  public static final int NETWORK_NOT_AVAILABLE;

  public abstract boolean getNetworkWorked();

  public abstract boolean getNetworkWorkedThisSession();

  public abstract int isNetworkAvailable();

  public abstract void notifyFailure();

  public abstract boolean registerNetworkSuccess(boolean paramBoolean);

  public abstract void resetNetworkSettings();

  public abstract void setLogAdapter(LogAdapter paramLogAdapter);

  public abstract void setSettingObservable(Observable paramObservable);

  public abstract boolean usingMDS();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.ConnectionFactory
 * JD-Core Version:    0.6.2
 */