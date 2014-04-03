package com.x.google.common.io;

public abstract interface ConnectionLoggingInfo
{
  public static final int PROTOCOL_HTTP = 1;
  public static final int PROTOCOL_HTTPS = 2;
  public static final int PROTOCOL_TCP = 0;
  public static final int PROTOCOL_UNDEFINED = -1;

  public abstract long getConnectTime();

  public abstract int getCreationDuration();

  public abstract long getCreationTime();

  public abstract int getDataLength();

  public abstract int getProtocol();

  public abstract int getResponseDuration();

  public abstract String getSetting();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.ConnectionLoggingInfo
 * JD-Core Version:    0.6.2
 */