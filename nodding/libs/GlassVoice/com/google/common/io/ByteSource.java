package com.google.common.io;

import com.google.common.base.Preconditions;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;

public abstract class ByteSource
{
  private static final int BUF_SIZE = 4096;
  private static final byte[] countBuffer = new byte[4096];

  private long countByReading(InputStream paramInputStream)
    throws IOException
  {
    long l2;
    for (long l1 = 0L; ; l1 += l2)
    {
      l2 = paramInputStream.read(countBuffer);
      if (l2 == -1L)
        break;
    }
    return l1;
  }

  private long countBySkipping(InputStream paramInputStream)
    throws IOException
  {
    long l1 = 0L;
    while (true)
    {
      long l2 = paramInputStream.skip(Math.min(paramInputStream.available(), 2147483647));
      if (l2 <= 0L)
      {
        if (paramInputStream.read() == -1)
          return l1;
        l1 += 1L;
      }
      else
      {
        l1 += l2;
      }
    }
  }

  public CharSource asCharSource(Charset paramCharset)
  {
    return new AsCharSource(paramCharset, null);
  }

  public boolean contentEquals(ByteSource paramByteSource)
    throws IOException
  {
    Preconditions.checkNotNull(paramByteSource);
    byte[] arrayOfByte1 = new byte[4096];
    byte[] arrayOfByte2 = new byte[4096];
    Closer localCloser = Closer.create();
    try
    {
      InputStream localInputStream1 = (InputStream)localCloser.register(openStream());
      InputStream localInputStream2 = (InputStream)localCloser.register(paramByteSource.openStream());
      int i;
      do
      {
        i = ByteStreams.read(localInputStream1, arrayOfByte1, 0, 4096);
        if (i == ByteStreams.read(localInputStream2, arrayOfByte2, 0, 4096))
        {
          boolean bool = Arrays.equals(arrayOfByte1, arrayOfByte2);
          if (bool);
        }
        else
        {
          return false;
        }
      }
      while (i == 4096);
      return true;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  public long copyTo(ByteSink paramByteSink)
    throws IOException
  {
    Preconditions.checkNotNull(paramByteSink);
    Closer localCloser = Closer.create();
    try
    {
      long l = ByteStreams.copy((InputStream)localCloser.register(openStream()), (OutputStream)localCloser.register(paramByteSink.openStream()));
      return l;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  public long copyTo(OutputStream paramOutputStream)
    throws IOException
  {
    Preconditions.checkNotNull(paramOutputStream);
    Closer localCloser = Closer.create();
    try
    {
      long l = ByteStreams.copy((InputStream)localCloser.register(openStream()), paramOutputStream);
      return l;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  public HashCode hash(HashFunction paramHashFunction)
    throws IOException
  {
    Hasher localHasher = paramHashFunction.newHasher();
    copyTo(Funnels.asOutputStream(localHasher));
    return localHasher.hash();
  }

  public BufferedInputStream openBufferedStream()
    throws IOException
  {
    InputStream localInputStream = openStream();
    if ((localInputStream instanceof BufferedInputStream))
      return (BufferedInputStream)localInputStream;
    return new BufferedInputStream(localInputStream);
  }

  public abstract InputStream openStream()
    throws IOException;

  public byte[] read()
    throws IOException
  {
    Closer localCloser = Closer.create();
    try
    {
      byte[] arrayOfByte = ByteStreams.toByteArray((InputStream)localCloser.register(openStream()));
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      throw localCloser.rethrow(localThrowable);
    }
    finally
    {
      localCloser.close();
    }
  }

  // ERROR //
  public long size()
    throws IOException
  {
    // Byte code:
    //   0: invokestatic 69	com/google/common/io/Closer:create	()Lcom/google/common/io/Closer;
    //   3: astore_1
    //   4: aload_0
    //   5: aload_1
    //   6: aload_0
    //   7: invokevirtual 73	com/google/common/io/ByteSource:openStream	()Ljava/io/InputStream;
    //   10: invokevirtual 77	com/google/common/io/Closer:register	(Ljava/io/Closeable;)Ljava/io/Closeable;
    //   13: checkcast 22	java/io/InputStream
    //   16: invokespecial 146	com/google/common/io/ByteSource:countBySkipping	(Ljava/io/InputStream;)J
    //   19: lstore 9
    //   21: aload_1
    //   22: invokevirtual 91	com/google/common/io/Closer:close	()V
    //   25: lload 9
    //   27: lreturn
    //   28: astore_3
    //   29: aload_1
    //   30: invokevirtual 91	com/google/common/io/Closer:close	()V
    //   33: invokestatic 69	com/google/common/io/Closer:create	()Lcom/google/common/io/Closer;
    //   36: astore 4
    //   38: aload_0
    //   39: aload 4
    //   41: aload_0
    //   42: invokevirtual 73	com/google/common/io/ByteSource:openStream	()Ljava/io/InputStream;
    //   45: invokevirtual 77	com/google/common/io/Closer:register	(Ljava/io/Closeable;)Ljava/io/Closeable;
    //   48: checkcast 22	java/io/InputStream
    //   51: invokespecial 148	com/google/common/io/ByteSource:countByReading	(Ljava/io/InputStream;)J
    //   54: lstore 7
    //   56: aload 4
    //   58: invokevirtual 91	com/google/common/io/Closer:close	()V
    //   61: lload 7
    //   63: lreturn
    //   64: astore_2
    //   65: aload_1
    //   66: invokevirtual 91	com/google/common/io/Closer:close	()V
    //   69: aload_2
    //   70: athrow
    //   71: astore 6
    //   73: aload 4
    //   75: aload 6
    //   77: invokevirtual 95	com/google/common/io/Closer:rethrow	(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   80: athrow
    //   81: astore 5
    //   83: aload 4
    //   85: invokevirtual 91	com/google/common/io/Closer:close	()V
    //   88: aload 5
    //   90: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   4	21	28	java/io/IOException
    //   4	21	64	finally
    //   38	56	71	java/lang/Throwable
    //   38	56	81	finally
    //   73	81	81	finally
  }

  public ByteSource slice(long paramLong1, long paramLong2)
  {
    return new SlicedByteSource(paramLong1, paramLong2, null);
  }

  private final class AsCharSource extends CharSource
  {
    private final Charset charset;

    private AsCharSource(Charset arg2)
    {
      Object localObject;
      this.charset = ((Charset)Preconditions.checkNotNull(localObject));
    }

    public Reader openStream()
      throws IOException
    {
      return new InputStreamReader(ByteSource.this.openStream(), this.charset);
    }

    public String toString()
    {
      return ByteSource.this.toString() + ".asCharSource(" + this.charset + ")";
    }
  }

  private final class SlicedByteSource extends ByteSource
  {
    private final long length;
    private final long offset;

    private SlicedByteSource(long arg2, long arg4)
    {
      boolean bool1;
      Object localObject;
      if (??? >= 0L)
      {
        bool1 = true;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(???);
        Preconditions.checkArgument(bool1, "offset (%s) may not be negative", arrayOfObject1);
        if (localObject < 0L)
          break label93;
      }
      label93: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(localObject);
        Preconditions.checkArgument(bool2, "length (%s) may not be negative", arrayOfObject2);
        this.offset = ???;
        this.length = localObject;
        return;
        bool1 = false;
        break;
      }
    }

    public InputStream openStream()
      throws IOException
    {
      InputStream localInputStream = ByteSource.this.openStream();
      if (this.offset > 0L);
      try
      {
        ByteStreams.skipFully(localInputStream, this.offset);
        return ByteStreams.limit(localInputStream, this.length);
      }
      catch (Throwable localThrowable)
      {
        Closer localCloser = Closer.create();
        localCloser.register(localInputStream);
        try
        {
          throw localCloser.rethrow(localThrowable);
        }
        finally
        {
          localCloser.close();
        }
      }
    }

    public ByteSource slice(long paramLong1, long paramLong2)
    {
      boolean bool1;
      if (paramLong1 >= 0L)
      {
        bool1 = true;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(paramLong1);
        Preconditions.checkArgument(bool1, "offset (%s) may not be negative", arrayOfObject1);
        if (paramLong2 < 0L)
          break label98;
      }
      label98: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(paramLong2);
        Preconditions.checkArgument(bool2, "length (%s) may not be negative", arrayOfObject2);
        long l = this.length - paramLong1;
        return ByteSource.this.slice(paramLong1 + this.offset, Math.min(paramLong2, l));
        bool1 = false;
        break;
      }
    }

    public String toString()
    {
      return ByteSource.this.toString() + ".slice(" + this.offset + ", " + this.length + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.ByteSource
 * JD-Core Version:    0.6.2
 */