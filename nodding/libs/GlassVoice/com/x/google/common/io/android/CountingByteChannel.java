package com.x.google.common.io.android;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;

public class CountingByteChannel
  implements ByteChannel
{
  private final ByteChannel channel;
  private final Counter counter;

  CountingByteChannel(ByteChannel paramByteChannel, Counter paramCounter)
  {
    this.channel = paramByteChannel;
    this.counter = paramCounter;
  }

  public void close()
    throws IOException
  {
    this.channel.close();
  }

  public boolean isOpen()
  {
    return this.channel.isOpen();
  }

  public int read(ByteBuffer paramByteBuffer)
    throws IOException
  {
    int i = this.channel.read(paramByteBuffer);
    if (i > 0)
      this.counter.bytesRead(i);
    return i;
  }

  public int write(ByteBuffer paramByteBuffer)
    throws IOException
  {
    int i = this.channel.write(paramByteBuffer);
    if (i > 0)
      this.counter.bytesWritten(i);
    return i;
  }

  public static abstract interface Counter
  {
    public abstract void bytesRead(int paramInt);

    public abstract void bytesWritten(int paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.CountingByteChannel
 * JD-Core Version:    0.6.2
 */