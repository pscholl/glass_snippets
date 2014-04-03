package com.google.glass.voice;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class InterleavingInputStream extends InputStream
{
  private final InputStream delegate;
  private ByteBuffer leaf;

  public InterleavingInputStream(InputStream paramInputStream)
  {
    this.delegate = paramInputStream;
  }

  public void close()
    throws IOException
  {
    this.delegate.close();
    super.close();
  }

  public void dropInterleavingBuffer()
  {
    try
    {
      this.leaf = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void interleave(ByteBuffer paramByteBuffer)
  {
    try
    {
      this.leaf = paramByteBuffer;
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
    throw new IOException("Not implemented");
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      ByteBuffer localByteBuffer = this.leaf;
      int i = 0;
      if (localByteBuffer != null)
        if (this.leaf.remaining() >= paramInt2)
          this.leaf.get(paramArrayOfByte, paramInt1, paramInt2);
      while (true)
      {
        return paramInt2;
        int j = this.leaf.remaining();
        this.leaf.get(paramArrayOfByte, paramInt1, j);
        this.leaf = null;
        i = j;
        int k = this.delegate.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
        if (k <= 0)
        {
          if (i > 0)
            paramInt2 = i;
          else
            paramInt2 = -1;
        }
        else
          paramInt2 = i + k;
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.InterleavingInputStream
 * JD-Core Version:    0.6.2
 */