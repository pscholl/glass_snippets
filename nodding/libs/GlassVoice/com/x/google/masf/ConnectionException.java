package com.x.google.masf;

import java.io.IOException;

public class ConnectionException extends IOException
{
  private int statusCode;

  public ConnectionException(int paramInt)
  {
    this(String.valueOf(paramInt), paramInt);
  }

  public ConnectionException(String paramString, int paramInt)
  {
    super(paramString);
    this.statusCode = paramInt;
  }

  public int getStatusCode()
  {
    return this.statusCode;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.ConnectionException
 * JD-Core Version:    0.6.2
 */