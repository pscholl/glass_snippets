package com.x.google.common.io;

import java.io.IOException;
import java.io.InputStream;

public class SequenceInputStream extends InputStream
{
  InputStream[] streamArray = null;
  int streamIndex = 0;

  SequenceInputStream(InputStream paramInputStream)
  {
    this(new InputStream[] { paramInputStream });
  }

  public SequenceInputStream(InputStream paramInputStream1, InputStream paramInputStream2)
  {
    this(new InputStream[] { paramInputStream1, paramInputStream2 });
  }

  public SequenceInputStream(InputStream paramInputStream1, InputStream paramInputStream2, InputStream paramInputStream3)
  {
    this(new InputStream[] { paramInputStream1, paramInputStream2, paramInputStream3 });
  }

  public SequenceInputStream(InputStream[] paramArrayOfInputStream)
  {
    this.streamArray = paramArrayOfInputStream;
  }

  private InputStream getStream()
  {
    if ((this.streamArray != null) && (this.streamIndex < this.streamArray.length))
      return this.streamArray[this.streamIndex];
    return null;
  }

  private void nextStream()
  {
    if ((this.streamArray != null) && (this.streamIndex < this.streamArray.length));
    try
    {
      this.streamArray[this.streamIndex].close();
      label31: InputStream[] arrayOfInputStream = this.streamArray;
      int i = this.streamIndex;
      this.streamIndex = (i + 1);
      arrayOfInputStream[i] = null;
      if (this.streamIndex >= this.streamArray.length)
        this.streamArray = null;
      return;
    }
    catch (IOException localIOException)
    {
      break label31;
    }
  }

  private static boolean validateStreamArray(InputStream[] paramArrayOfInputStream)
  {
    for (int i = 0; i < paramArrayOfInputStream.length; i++);
    return true;
  }

  public int available()
    throws IOException
  {
    try
    {
      InputStream localInputStream = getStream();
      int i;
      if (localInputStream != null)
        i = localInputStream.available();
      for (int j = i; ; j = 0)
        return j;
    }
    finally
    {
    }
  }

  // ERROR //
  public void close()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 20	com/x/google/common/io/SequenceInputStream:streamArray	[Ljava/io/InputStream;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: iconst_0
    //   15: istore_3
    //   16: aload_0
    //   17: getfield 22	com/x/google/common/io/SequenceInputStream:streamIndex	I
    //   20: istore 4
    //   22: aload_0
    //   23: getfield 20	com/x/google/common/io/SequenceInputStream:streamArray	[Ljava/io/InputStream;
    //   26: arraylength
    //   27: istore 5
    //   29: iload 4
    //   31: iload 5
    //   33: if_icmpge +40 -> 73
    //   36: aload_0
    //   37: getfield 20	com/x/google/common/io/SequenceInputStream:streamArray	[Ljava/io/InputStream;
    //   40: aload_0
    //   41: getfield 22	com/x/google/common/io/SequenceInputStream:streamIndex	I
    //   44: aaload
    //   45: invokevirtual 30	java/io/InputStream:close	()V
    //   48: aload_0
    //   49: iconst_1
    //   50: aload_0
    //   51: getfield 22	com/x/google/common/io/SequenceInputStream:streamIndex	I
    //   54: iadd
    //   55: putfield 22	com/x/google/common/io/SequenceInputStream:streamIndex	I
    //   58: goto -42 -> 16
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    //   66: astore 6
    //   68: iconst_1
    //   69: istore_3
    //   70: goto -22 -> 48
    //   73: aload_0
    //   74: aconst_null
    //   75: putfield 20	com/x/google/common/io/SequenceInputStream:streamArray	[Ljava/io/InputStream;
    //   78: iload_3
    //   79: iconst_1
    //   80: if_icmpne -69 -> 11
    //   83: new 27	java/io/IOException
    //   86: dup
    //   87: invokespecial 39	java/io/IOException:<init>	()V
    //   90: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	7	61	finally
    //   16	29	61	finally
    //   36	48	61	finally
    //   48	58	61	finally
    //   73	78	61	finally
    //   83	91	61	finally
    //   36	48	66	java/io/IOException
  }

  public int read()
    throws IOException
  {
    int i = -1;
    try
    {
      while (true)
      {
        InputStream localInputStream = getStream();
        if (localInputStream == null);
        while (true)
        {
          return i;
          int j = localInputStream.read();
          if (j == i)
            break;
          i = j;
        }
        nextStream();
      }
    }
    finally
    {
    }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramArrayOfByte == null)
      try
      {
        throw new NullPointerException();
      }
      finally
      {
      }
    int i = 0;
    if (paramInt2 == 0);
    while (true)
    {
      return i;
      if ((paramInt1 >= 0) && (paramInt2 >= 0))
      {
        int j = paramInt1 + paramInt2;
        if (j <= paramArrayOfByte.length);
      }
      else
      {
        throw new ArrayIndexOutOfBoundsException();
      }
      label157: if (this.streamArray != null)
        if (this.streamIndex < this.streamArray.length)
          break label157;
      while (true)
      {
        int k;
        if (k <= 0)
          break label176;
        InputStream localInputStream = getStream();
        if (localInputStream == null)
          break label176;
        int m;
        int n = localInputStream.read(paramArrayOfByte, m, k);
        if (n != -1)
        {
          m += n;
          k -= n;
          i += n;
        }
        else
        {
          nextStream();
          continue;
          i = -1;
          break;
          i = 0;
          if (paramInt2 == 0)
            break;
          k = paramInt2;
          m = paramInt1;
          i = 0;
        }
      }
      label176: if (i == 0)
        i = -1;
    }
  }

  public long skip(long paramLong)
    throws IOException
  {
    while (true)
    {
      try
      {
        if (this.streamArray != null)
        {
          int i = this.streamIndex;
          int j = this.streamArray.length;
          if (i < j);
        }
        else
        {
          l1 = 0L;
          return l1;
        }
        if (paramLong <= 0L)
        {
          l1 = 0L;
          continue;
          InputStream localInputStream;
          Object localObject2;
          long l3 = localInputStream.skip(localObject2);
          if (l3 == 0L)
          {
            if (localInputStream.read() == -1)
            {
              nextStream();
              if (localObject2 <= 0L)
                continue;
              localInputStream = getStream();
              if (localInputStream != null)
                continue;
              continue;
            }
            localObject2 -= 1L;
            l1 += 1L;
            continue;
          }
          l2 -= l3;
          l1 += l3;
          continue;
          continue;
        }
      }
      finally
      {
      }
      long l1 = 0L;
      long l2 = paramLong;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.SequenceInputStream
 * JD-Core Version:    0.6.2
 */