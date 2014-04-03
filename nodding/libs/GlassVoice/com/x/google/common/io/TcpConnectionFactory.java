package com.x.google.common.io;

import java.io.IOException;

public abstract interface TcpConnectionFactory extends ConnectionFactory
{
  public abstract GoogleTcpConnection createConnection(String paramString, int paramInt)
    throws IOException;

  public abstract long getReceivedBytes();

  public abstract long getSentBytes();

  public abstract boolean isAvailable();

  public abstract void notifyUnreliable();

  public abstract void resetSentReceiveBytes();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.TcpConnectionFactory
 * JD-Core Version:    0.6.2
 */