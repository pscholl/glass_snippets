package com.x.google.common.io.android;

import com.x.google.common.io.BaseTcpConnectionFactory;
import com.x.google.common.io.GoogleTcpConnection;
import java.io.IOException;

public abstract class J2SeTcpConnectionFactory extends BaseTcpConnectionFactory
  implements CountingByteChannel.Counter
{
  private long receivedBytes;
  private long sentBytes;

  public void bytesRead(int paramInt)
  {
    try
    {
      this.receivedBytes += paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void bytesWritten(int paramInt)
  {
    try
    {
      this.sentBytes += paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public GoogleTcpConnection createConnection(String paramString, int paramInt)
    throws IOException
  {
    return new J2SeTcpConnection(this, paramString, paramInt);
  }

  public long getReceivedBytes()
  {
    return this.receivedBytes;
  }

  public long getSentBytes()
  {
    return this.sentBytes;
  }

  public abstract int isNetworkAvailable();

  public void resetSentReceiveBytes()
  {
    this.receivedBytes = 0L;
    this.sentBytes = 0L;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.J2SeTcpConnectionFactory
 * JD-Core Version:    0.6.2
 */