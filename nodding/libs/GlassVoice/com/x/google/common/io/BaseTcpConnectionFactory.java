package com.x.google.common.io;

public abstract class BaseTcpConnectionFactory extends BaseConnectionFactory
  implements TcpConnectionFactory
{
  protected static final String NETWORK_AVAILABLE_PREF_NAME = "TcpWorks";

  protected BaseTcpConnectionFactory()
  {
    super("TcpWorks");
  }

  public boolean isAvailable()
  {
    return true;
  }

  public void notifyUnreliable()
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.BaseTcpConnectionFactory
 * JD-Core Version:    0.6.2
 */