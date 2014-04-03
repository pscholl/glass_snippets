package com.google.glass.util;

import java.nio.Buffer;
import java.nio.ByteBuffer;

public class CircularByteBuffer
{
  private final ByteBuffer buffer;
  private int byteCount = 0;
  private int startIndex = 0;

  public CircularByteBuffer(ByteBuffer paramByteBuffer)
  {
    this.buffer = paramByteBuffer;
    paramByteBuffer.clear();
  }

  // ERROR //
  private void peekFromIndex(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_2
    //   3: iflt +17 -> 20
    //   6: iload_2
    //   7: iload_3
    //   8: iadd
    //   9: istore 5
    //   11: iload 5
    //   13: aload_0
    //   14: invokevirtual 32	com/google/glass/util/CircularByteBuffer:size	()I
    //   17: if_icmple +60 -> 77
    //   20: new 34	java/lang/IndexOutOfBoundsException
    //   23: dup
    //   24: new 36	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   31: ldc 39
    //   33: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: iload_2
    //   37: invokevirtual 46	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   40: ldc 48
    //   42: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: iload_2
    //   46: iload_3
    //   47: iadd
    //   48: invokevirtual 46	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   51: ldc 50
    //   53: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_0
    //   57: invokevirtual 32	com/google/glass/util/CircularByteBuffer:size	()I
    //   60: invokevirtual 46	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   63: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokespecial 57	java/lang/IndexOutOfBoundsException:<init>	(Ljava/lang/String;)V
    //   69: athrow
    //   70: astore 4
    //   72: aload_0
    //   73: monitorexit
    //   74: aload 4
    //   76: athrow
    //   77: aload_1
    //   78: invokevirtual 60	java/nio/ByteBuffer:remaining	()I
    //   81: iload_3
    //   82: if_icmpge +47 -> 129
    //   85: new 34	java/lang/IndexOutOfBoundsException
    //   88: dup
    //   89: new 36	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   96: ldc 62
    //   98: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_1
    //   102: invokevirtual 60	java/nio/ByteBuffer:remaining	()I
    //   105: invokevirtual 46	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   108: ldc 64
    //   110: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: iload_3
    //   114: invokevirtual 46	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   117: ldc 66
    //   119: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokespecial 57	java/lang/IndexOutOfBoundsException:<init>	(Ljava/lang/String;)V
    //   128: athrow
    //   129: iload_2
    //   130: aload_0
    //   131: getfield 16	com/google/glass/util/CircularByteBuffer:startIndex	I
    //   134: iadd
    //   135: aload_0
    //   136: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   139: invokevirtual 69	java/nio/ByteBuffer:capacity	()I
    //   142: irem
    //   143: istore 6
    //   145: aload_0
    //   146: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   149: iload 6
    //   151: invokevirtual 73	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   154: pop
    //   155: iload 6
    //   157: iload_3
    //   158: iadd
    //   159: aload_0
    //   160: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   163: invokevirtual 69	java/nio/ByteBuffer:capacity	()I
    //   166: invokestatic 79	java/lang/Math:min	(II)I
    //   169: istore 8
    //   171: iload 6
    //   173: iload_3
    //   174: iadd
    //   175: aload_0
    //   176: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   179: invokevirtual 69	java/nio/ByteBuffer:capacity	()I
    //   182: isub
    //   183: istore 9
    //   185: aload_0
    //   186: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   189: iload 6
    //   191: invokevirtual 73	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   194: pop
    //   195: aload_0
    //   196: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   199: iload 8
    //   201: invokevirtual 82	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   204: pop
    //   205: aload_1
    //   206: aload_0
    //   207: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   210: invokevirtual 86	java/nio/ByteBuffer:put	(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    //   213: pop
    //   214: iload 9
    //   216: ifle +31 -> 247
    //   219: aload_0
    //   220: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   223: iconst_0
    //   224: invokevirtual 73	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   227: pop
    //   228: aload_0
    //   229: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   232: iload 9
    //   234: invokevirtual 82	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   237: pop
    //   238: aload_1
    //   239: aload_0
    //   240: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   243: invokevirtual 86	java/nio/ByteBuffer:put	(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    //   246: pop
    //   247: aload_0
    //   248: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   251: aload_0
    //   252: getfield 20	com/google/glass/util/CircularByteBuffer:buffer	Ljava/nio/ByteBuffer;
    //   255: invokevirtual 69	java/nio/ByteBuffer:capacity	()I
    //   258: invokevirtual 82	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   261: pop
    //   262: aload_0
    //   263: monitorexit
    //   264: return
    //
    // Exception table:
    //   from	to	target	type
    //   11	20	70	finally
    //   20	70	70	finally
    //   77	129	70	finally
    //   129	214	70	finally
    //   219	247	70	finally
    //   247	262	70	finally
  }

  public int capacity()
  {
    return this.buffer.capacity();
  }

  public void clear()
  {
    try
    {
      this.buffer.clear();
      this.startIndex = 0;
      this.byteCount = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void peek(ByteBuffer paramByteBuffer)
  {
    try
    {
      peekFromIndex(paramByteBuffer, 0, size());
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int peekFirst(ByteBuffer paramByteBuffer)
  {
    try
    {
      int i = paramByteBuffer.remaining();
      if (paramByteBuffer.remaining() > size())
        i = size();
      peekFromIndex(paramByteBuffer, 0, i);
      return i;
    }
    finally
    {
    }
  }

  public int peekLast(ByteBuffer paramByteBuffer)
  {
    try
    {
      int i = size();
      int j = size();
      int k = paramByteBuffer.remaining();
      int m = 0;
      if (j > k)
      {
        m = size() - paramByteBuffer.remaining();
        i = paramByteBuffer.remaining();
      }
      peekFromIndex(paramByteBuffer, m, i);
      return i;
    }
    finally
    {
    }
  }

  public boolean put(ByteBuffer paramByteBuffer)
  {
    try
    {
      int i = paramByteBuffer.remaining();
      int j = this.buffer.capacity() - size();
      boolean bool = false;
      if (i > j)
        bool = true;
      int k = paramByteBuffer.limit();
      paramByteBuffer.position(Math.max(paramByteBuffer.position(), paramByteBuffer.limit() - this.buffer.capacity()));
      int m = paramByteBuffer.remaining();
      int n = (this.startIndex + this.byteCount) % this.buffer.capacity();
      this.buffer.position(n).limit(this.buffer.capacity());
      paramByteBuffer.limit(paramByteBuffer.position() + Math.min(this.buffer.remaining(), paramByteBuffer.remaining()));
      this.buffer.put(paramByteBuffer);
      paramByteBuffer.limit(k);
      if (paramByteBuffer.hasRemaining())
      {
        this.buffer.position(0);
        this.buffer.put(paramByteBuffer);
      }
      this.byteCount = Math.min(m + this.byteCount, this.buffer.capacity());
      if (bool)
        this.startIndex = this.buffer.position();
      return bool;
    }
    finally
    {
    }
  }

  public int read(ByteBuffer paramByteBuffer)
  {
    try
    {
      int i = size();
      if (size() > paramByteBuffer.remaining())
        i = paramByteBuffer.remaining();
      peekFromIndex(paramByteBuffer, 0, i);
      this.startIndex = ((i + this.startIndex) % this.buffer.capacity());
      this.byteCount -= i;
      return i;
    }
    finally
    {
    }
  }

  public int size()
  {
    try
    {
      int i = this.byteCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String toString()
  {
    try
    {
      String str1 = "start(" + this.startIndex + ") size(" + size() + ") ";
      String str2 = str1 + "position(" + this.buffer.position() + ") limit(" + this.buffer.limit() + "):";
      int i = this.buffer.limit();
      this.buffer.limit(this.buffer.capacity());
      for (int j = 0; j < this.buffer.capacity(); j++)
        str2 = str2 + " " + this.buffer.get(j);
      this.buffer.limit(i);
      return str2;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CircularByteBuffer
 * JD-Core Version:    0.6.2
 */