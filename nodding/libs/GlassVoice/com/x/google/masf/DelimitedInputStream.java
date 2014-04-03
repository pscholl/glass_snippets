package com.x.google.masf;

import java.io.IOException;
import java.io.InputStream;

public class DelimitedInputStream extends InputStream
{
  private static final int MAX_BUFFER_SIZE = 65536;
  private static final int READ_BUFFER_SIZE = 1024;
  protected BlockingByteQueue buffer;
  protected volatile boolean complete;
  protected InputStream inputStream;
  protected int length;
  protected Object lockObject = new Object();

  public DelimitedInputStream(InputStream paramInputStream, int paramInt)
  {
    this.inputStream = paramInputStream;
    this.length = paramInt;
  }

  private int readFromUnderlyingStream()
    throws IOException
  {
    int i = -1;
    if (this.length > 0);
    try
    {
      i = this.inputStream.read();
      if (i >= 0)
      {
        int j = -1 + this.length;
        this.length = j;
        if (j != 0);
      }
      else
      {
        signalCompletion();
      }
      return i;
    }
    catch (IOException localIOException)
    {
      signalCompletion();
      throw localIOException;
    }
  }

  private int readFromUnderlyingStream(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = -1;
    if (this.length > 0);
    try
    {
      i = this.inputStream.read(paramArrayOfByte, paramInt1, Math.min(this.length, paramInt2));
      if (i > 0)
        this.length -= i;
      if ((i <= 0) || (this.length == 0))
        signalCompletion();
      return i;
    }
    catch (IOException localIOException)
    {
      signalCompletion();
      throw localIOException;
    }
  }

  private void signalCompletion()
  {
    synchronized (this.lockObject)
    {
      if (!this.complete)
      {
        this.complete = true;
        this.lockObject.notifyAll();
      }
      return;
    }
  }

  // ERROR //
  public void bufferAndDetach()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 32	com/x/google/masf/DelimitedInputStream:length	I
    //   6: ifeq +10 -> 16
    //   9: aload_0
    //   10: getfield 59	com/x/google/masf/DelimitedInputStream:buffer	Lcom/x/google/masf/BlockingByteQueue;
    //   13: ifnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: new 61	com/x/google/masf/BlockingByteQueue
    //   23: dup
    //   24: ldc 7
    //   26: aload_0
    //   27: getfield 32	com/x/google/masf/DelimitedInputStream:length	I
    //   30: invokestatic 49	java/lang/Math:min	(II)I
    //   33: invokespecial 64	com/x/google/masf/BlockingByteQueue:<init>	(I)V
    //   36: putfield 59	com/x/google/masf/DelimitedInputStream:buffer	Lcom/x/google/masf/BlockingByteQueue;
    //   39: aload_0
    //   40: monitorexit
    //   41: sipush 1024
    //   44: newarray byte
    //   46: astore_2
    //   47: aload_0
    //   48: getfield 32	com/x/google/masf/DelimitedInputStream:length	I
    //   51: ifle +73 -> 124
    //   54: aload_0
    //   55: aload_2
    //   56: iconst_0
    //   57: aload_2
    //   58: arraylength
    //   59: invokespecial 66	com/x/google/masf/DelimitedInputStream:readFromUnderlyingStream	([BII)I
    //   62: istore 5
    //   64: iload 5
    //   66: ifle +38 -> 104
    //   69: aload_0
    //   70: getfield 59	com/x/google/masf/DelimitedInputStream:buffer	Lcom/x/google/masf/BlockingByteQueue;
    //   73: aload_2
    //   74: iload 5
    //   76: invokevirtual 70	com/x/google/masf/BlockingByteQueue:write	([BI)V
    //   79: goto -32 -> 47
    //   82: astore 4
    //   84: ldc 72
    //   86: aload 4
    //   88: invokestatic 78	com/x/google/common/Log:logQuietThrowable	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   91: aload_0
    //   92: getfield 59	com/x/google/masf/DelimitedInputStream:buffer	Lcom/x/google/masf/BlockingByteQueue;
    //   95: invokevirtual 81	com/x/google/masf/BlockingByteQueue:close	()V
    //   98: return
    //   99: astore_1
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_1
    //   103: athrow
    //   104: new 36	java/io/IOException
    //   107: dup
    //   108: ldc 83
    //   110: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   113: athrow
    //   114: astore_3
    //   115: aload_0
    //   116: getfield 59	com/x/google/masf/DelimitedInputStream:buffer	Lcom/x/google/masf/BlockingByteQueue;
    //   119: invokevirtual 81	com/x/google/masf/BlockingByteQueue:close	()V
    //   122: aload_3
    //   123: athrow
    //   124: aload_0
    //   125: getfield 59	com/x/google/masf/DelimitedInputStream:buffer	Lcom/x/google/masf/BlockingByteQueue;
    //   128: invokevirtual 81	com/x/google/masf/BlockingByteQueue:close	()V
    //   131: return
    //
    // Exception table:
    //   from	to	target	type
    //   47	64	82	java/io/IOException
    //   69	79	82	java/io/IOException
    //   104	114	82	java/io/IOException
    //   2	16	99	finally
    //   16	18	99	finally
    //   19	41	99	finally
    //   100	102	99	finally
    //   47	64	114	finally
    //   69	79	114	finally
    //   84	91	114	finally
    //   104	114	114	finally
  }

  public void close()
    throws IOException
  {
    try
    {
      super.close();
      int i;
      do
        i = read();
      while (i >= 0);
      return;
    }
    finally
    {
    }
  }

  public int getRemaining()
  {
    return this.length;
  }

  public int read()
    throws IOException
  {
    try
    {
      int k;
      if (this.buffer != null)
        k = this.buffer.read();
      int i;
      for (int j = k; ; j = i)
      {
        return j;
        i = readFromUnderlyingStream();
      }
    }
    finally
    {
    }
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      int k;
      if (this.buffer != null)
        k = this.buffer.read(paramArrayOfByte, paramInt1, paramInt2);
      int i;
      for (int j = k; ; j = i)
      {
        return j;
        i = readFromUnderlyingStream(paramArrayOfByte, paramInt1, paramInt2);
      }
    }
    finally
    {
    }
  }

  public void waitForCompletion()
  {
    synchronized (this.lockObject)
    {
      while (true)
      {
        boolean bool = this.complete;
        if (bool)
          break;
        try
        {
          this.lockObject.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.DelimitedInputStream
 * JD-Core Version:    0.6.2
 */