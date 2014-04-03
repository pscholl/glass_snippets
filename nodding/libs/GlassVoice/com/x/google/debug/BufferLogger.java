package com.x.google.debug;

public class BufferLogger extends SimpleLogger
{
  private static final int DEFAULT_MAX_BUFFER_SIZE = 131072;
  private static final int REMOVE_FRACTION_WHEN_FULL = 4;
  protected final StringBuffer buffer;
  private final int maxBufferSize;

  public BufferLogger()
  {
    this(131072);
  }

  public BufferLogger(int paramInt)
  {
    this.maxBufferSize = paramInt;
    this.buffer = new StringBuffer();
  }

  public void clear()
  {
    try
    {
      this.buffer.setLength(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public byte[] getLogs()
  {
    try
    {
      byte[] arrayOfByte = this.buffer.toString().getBytes();
      this.buffer.setLength(0);
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void log(String paramString)
  {
    try
    {
      if (this.buffer.length() >= this.maxBufferSize)
      {
        int i = this.maxBufferSize - this.maxBufferSize / 4;
        this.buffer.delete(0, this.buffer.length() - i);
      }
      this.buffer.append('[');
      this.buffer.append(Thread.currentThread());
      this.buffer.append(']');
      this.buffer.append(paramString);
      this.buffer.append('\n');
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.BufferLogger
 * JD-Core Version:    0.6.2
 */