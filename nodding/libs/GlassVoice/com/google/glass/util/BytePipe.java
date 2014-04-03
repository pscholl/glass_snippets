package com.google.glass.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class BytePipe extends InputStream
{
  final CircularByteBuffer circularBuffer;
  private boolean isClosed = false;

  public BytePipe(int paramInt)
  {
    this.circularBuffer = new CircularByteBuffer(ByteBuffer.allocateDirect(paramInt));
  }

  public void clear()
  {
    try
    {
      this.circularBuffer.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void close()
    throws IOException
  {
    try
    {
      this.isClosed = true;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int read()
    throws IOException
  {
    throw new UnsupportedOperationException("Read into a buffer rather than one int at a time.");
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2);
      while (true)
      {
        int i = this.circularBuffer.read(localByteBuffer);
        int j = i;
        if (j == 0);
        try
        {
          wait();
          boolean bool = this.isClosed;
          if (!bool)
            continue;
          j = -1;
          return j;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
          {
            Thread.currentThread().interrupt();
            j = -1;
          }
        }
      }
    }
    finally
    {
    }
  }

  public String toString()
  {
    try
    {
      String str = this.circularBuffer.toString();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean write(ByteBuffer paramByteBuffer)
    throws IOException
  {
    try
    {
      if (this.isClosed)
        throw new IOException("Writing to a closed BytePipe.");
    }
    finally
    {
    }
    boolean bool = this.circularBuffer.put(paramByteBuffer);
    if (this.circularBuffer.size() > 0)
      notify();
    return bool;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BytePipe
 * JD-Core Version:    0.6.2
 */