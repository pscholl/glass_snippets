package com.x.google.common.io;

public abstract interface LogAdapter
{
  public abstract void logHttpFailure(ConnectionLoggingInfo paramConnectionLoggingInfo);

  public abstract void logHttpSuccess(ConnectionLoggingInfo paramConnectionLoggingInfo);

  public abstract void logHttpTimeout(ConnectionLoggingInfo paramConnectionLoggingInfo);

  public abstract void logTcpFailure(ConnectionLoggingInfo paramConnectionLoggingInfo);

  public abstract void logTcpSuccess(ConnectionLoggingInfo paramConnectionLoggingInfo);

  public abstract void logTcpTimeout(ConnectionLoggingInfo paramConnectionLoggingInfo);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.LogAdapter
 * JD-Core Version:    0.6.2
 */