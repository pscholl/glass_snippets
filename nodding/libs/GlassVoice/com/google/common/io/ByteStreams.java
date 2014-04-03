package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;
import java.util.zip.Checksum;

@Beta
public final class ByteStreams
{
  private static final int BUF_SIZE = 4096;
  private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream()
  {
    public String toString()
    {
      return "ByteStreams.nullOutputStream()";
    }

    public void write(int paramAnonymousInt)
    {
    }

    public void write(byte[] paramAnonymousArrayOfByte)
    {
      Preconditions.checkNotNull(paramAnonymousArrayOfByte);
    }

    public void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Preconditions.checkNotNull(paramAnonymousArrayOfByte);
    }
  };

  static ByteSink asByteSink(OutputSupplier<? extends OutputStream> paramOutputSupplier)
  {
    Preconditions.checkNotNull(paramOutputSupplier);
    return new ByteSink()
    {
      public OutputStream openStream()
        throws IOException
      {
        return (OutputStream)this.val$supplier.getOutput();
      }
    };
  }

  static ByteSource asByteSource(InputSupplier<? extends InputStream> paramInputSupplier)
  {
    Preconditions.checkNotNull(paramInputSupplier);
    return new ByteSource()
    {
      public InputStream openStream()
        throws IOException
      {
        return (InputStream)this.val$supplier.getInput();
      }
    };
  }

  public static ByteSource asByteSource(byte[] paramArrayOfByte)
  {
    return new ByteArrayByteSource(paramArrayOfByte, null);
  }

  static <S extends InputStream> InputSupplier<S> asInputSupplier(ByteSource paramByteSource)
  {
    Preconditions.checkNotNull(paramByteSource);
    return new InputSupplier()
    {
      public S getInput()
        throws IOException
      {
        return this.val$source.openStream();
      }
    };
  }

  static <S extends OutputStream> OutputSupplier<S> asOutputSupplier(ByteSink paramByteSink)
  {
    Preconditions.checkNotNull(paramByteSink);
    return new OutputSupplier()
    {
      public S getOutput()
        throws IOException
      {
        return this.val$sink.openStream();
      }
    };
  }

  public static long copy(InputSupplier<? extends InputStream> paramInputSupplier, OutputSupplier<? extends OutputStream> paramOutputSupplier)
    throws IOException
  {
    return asByteSource(paramInputSupplier).copyTo(asByteSink(paramOutputSupplier));
  }

  public static long copy(InputSupplier<? extends InputStream> paramInputSupplier, OutputStream paramOutputStream)
    throws IOException
  {
    return asByteSource(paramInputSupplier).copyTo(paramOutputStream);
  }

  public static long copy(InputStream paramInputStream, OutputSupplier<? extends OutputStream> paramOutputSupplier)
    throws IOException
  {
    return asByteSink(paramOutputSupplier).writeFrom(paramInputStream);
  }

  public static long copy(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    Preconditions.checkNotNull(paramInputStream);
    Preconditions.checkNotNull(paramOutputStream);
    byte[] arrayOfByte = new byte[4096];
    int i;
    for (long l = 0L; ; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        return l;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static long copy(ReadableByteChannel paramReadableByteChannel, WritableByteChannel paramWritableByteChannel)
    throws IOException
  {
    Preconditions.checkNotNull(paramReadableByteChannel);
    Preconditions.checkNotNull(paramWritableByteChannel);
    ByteBuffer localByteBuffer = ByteBuffer.allocate(4096);
    long l = 0L;
    while (paramReadableByteChannel.read(localByteBuffer) != -1)
    {
      localByteBuffer.flip();
      while (localByteBuffer.hasRemaining())
        l += paramWritableByteChannel.write(localByteBuffer);
      localByteBuffer.clear();
    }
    return l;
  }

  public static boolean equal(InputSupplier<? extends InputStream> paramInputSupplier1, InputSupplier<? extends InputStream> paramInputSupplier2)
    throws IOException
  {
    return asByteSource(paramInputSupplier1).contentEquals(asByteSource(paramInputSupplier2));
  }

  @Deprecated
  public static long getChecksum(InputSupplier<? extends InputStream> paramInputSupplier, Checksum paramChecksum)
    throws IOException
  {
    Preconditions.checkNotNull(paramChecksum);
    return ((Long)readBytes(paramInputSupplier, new ByteProcessor()
    {
      public Long getResult()
      {
        long l = this.val$checksum.getValue();
        this.val$checksum.reset();
        return Long.valueOf(l);
      }

      public boolean processBytes(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        this.val$checksum.update(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        return true;
      }
    })).longValue();
  }

  public static HashCode hash(InputSupplier<? extends InputStream> paramInputSupplier, HashFunction paramHashFunction)
    throws IOException
  {
    return asByteSource(paramInputSupplier).hash(paramHashFunction);
  }

  public static InputSupplier<InputStream> join(Iterable<? extends InputSupplier<? extends InputStream>> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    return new InputSupplier()
    {
      public InputStream getInput()
        throws IOException
      {
        return new MultiInputStream(this.val$suppliers.iterator());
      }
    };
  }

  public static InputSupplier<InputStream> join(InputSupplier<? extends InputStream>[] paramArrayOfInputSupplier)
  {
    return join(Arrays.asList(paramArrayOfInputSupplier));
  }

  public static long length(InputSupplier<? extends InputStream> paramInputSupplier)
    throws IOException
  {
    return asByteSource(paramInputSupplier).size();
  }

  public static InputStream limit(InputStream paramInputStream, long paramLong)
  {
    return new LimitedInputStream(paramInputStream, paramLong);
  }

  public static ByteArrayDataInput newDataInput(byte[] paramArrayOfByte)
  {
    return new ByteArrayDataInputStream(paramArrayOfByte);
  }

  public static ByteArrayDataInput newDataInput(byte[] paramArrayOfByte, int paramInt)
  {
    Preconditions.checkPositionIndex(paramInt, paramArrayOfByte.length);
    return new ByteArrayDataInputStream(paramArrayOfByte, paramInt);
  }

  public static ByteArrayDataOutput newDataOutput()
  {
    return new ByteArrayDataOutputStream();
  }

  public static ByteArrayDataOutput newDataOutput(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "Invalid size: %s", arrayOfObject);
      return new ByteArrayDataOutputStream(paramInt);
    }
  }

  public static InputSupplier<ByteArrayInputStream> newInputStreamSupplier(byte[] paramArrayOfByte)
  {
    return asInputSupplier(asByteSource(paramArrayOfByte));
  }

  public static InputSupplier<ByteArrayInputStream> newInputStreamSupplier(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return asInputSupplier(asByteSource(paramArrayOfByte).slice(paramInt1, paramInt2));
  }

  public static OutputStream nullOutputStream()
  {
    return NULL_OUTPUT_STREAM;
  }

  public static int read(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    Preconditions.checkNotNull(paramInputStream);
    Preconditions.checkNotNull(paramArrayOfByte);
    if (paramInt2 < 0)
      throw new IndexOutOfBoundsException("len is negative");
    int i = 0;
    while (true)
    {
      int j;
      if (i < paramInt2)
      {
        j = paramInputStream.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
        if (j != -1);
      }
      else
      {
        return i;
      }
      i += j;
    }
  }

  public static <T> T readBytes(InputSupplier<? extends InputStream> paramInputSupplier, ByteProcessor<T> paramByteProcessor)
    throws IOException
  {
    Preconditions.checkNotNull(paramInputSupplier);
    Preconditions.checkNotNull(paramByteProcessor);
    Closer localCloser = Closer.create();
    try
    {
      Object localObject2 = readBytes((InputStream)localCloser.register((Closeable)paramInputSupplier.getInput()), paramByteProcessor);
      return localObject2;
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

  public static <T> T readBytes(InputStream paramInputStream, ByteProcessor<T> paramByteProcessor)
    throws IOException
  {
    Preconditions.checkNotNull(paramInputStream);
    Preconditions.checkNotNull(paramByteProcessor);
    byte[] arrayOfByte = new byte[4096];
    int i;
    do
      i = paramInputStream.read(arrayOfByte);
    while ((i != -1) && (paramByteProcessor.processBytes(arrayOfByte, 0, i)));
    return paramByteProcessor.getResult();
  }

  public static void readFully(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    readFully(paramInputStream, paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static void readFully(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = read(paramInputStream, paramArrayOfByte, paramInt1, paramInt2);
    if (i != paramInt2)
      throw new EOFException("reached end of stream after reading " + i + " bytes; " + paramInt2 + " bytes expected");
  }

  public static void skipFully(InputStream paramInputStream, long paramLong)
    throws IOException
  {
    long l1 = paramLong;
    while (paramLong > 0L)
    {
      long l2 = paramInputStream.skip(paramLong);
      if (l2 == 0L)
      {
        if (paramInputStream.read() == -1)
        {
          long l3 = l1 - paramLong;
          throw new EOFException("reached end of stream after skipping " + l3 + " bytes; " + l1 + " bytes expected");
        }
        paramLong -= 1L;
      }
      else
      {
        paramLong -= l2;
      }
    }
  }

  public static InputSupplier<InputStream> slice(InputSupplier<? extends InputStream> paramInputSupplier, long paramLong1, long paramLong2)
  {
    return asInputSupplier(asByteSource(paramInputSupplier).slice(paramLong1, paramLong2));
  }

  public static byte[] toByteArray(InputSupplier<? extends InputStream> paramInputSupplier)
    throws IOException
  {
    return asByteSource(paramInputSupplier).read();
  }

  public static byte[] toByteArray(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    copy(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  public static void write(byte[] paramArrayOfByte, OutputSupplier<? extends OutputStream> paramOutputSupplier)
    throws IOException
  {
    asByteSink(paramOutputSupplier).write(paramArrayOfByte);
  }

  private static final class ByteArrayByteSource extends ByteSource
  {
    private final byte[] bytes;

    private ByteArrayByteSource(byte[] paramArrayOfByte)
    {
      this.bytes = ((byte[])Preconditions.checkNotNull(paramArrayOfByte));
    }

    public long copyTo(OutputStream paramOutputStream)
      throws IOException
    {
      paramOutputStream.write(this.bytes);
      return this.bytes.length;
    }

    public HashCode hash(HashFunction paramHashFunction)
      throws IOException
    {
      return paramHashFunction.hashBytes(this.bytes);
    }

    public InputStream openStream()
      throws IOException
    {
      return new ByteArrayInputStream(this.bytes);
    }

    public byte[] read()
      throws IOException
    {
      return (byte[])this.bytes.clone();
    }

    public long size()
      throws IOException
    {
      return this.bytes.length;
    }

    public String toString()
    {
      return "ByteStreams.asByteSource(" + BaseEncoding.base16().encode(this.bytes) + ")";
    }
  }

  private static class ByteArrayDataInputStream
    implements ByteArrayDataInput
  {
    final DataInput input;

    ByteArrayDataInputStream(byte[] paramArrayOfByte)
    {
      this.input = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    }

    ByteArrayDataInputStream(byte[] paramArrayOfByte, int paramInt)
    {
      this.input = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte, paramInt, paramArrayOfByte.length - paramInt));
    }

    public boolean readBoolean()
    {
      try
      {
        boolean bool = this.input.readBoolean();
        return bool;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public byte readByte()
    {
      try
      {
        byte b = this.input.readByte();
        return b;
      }
      catch (EOFException localEOFException)
      {
        throw new IllegalStateException(localEOFException);
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public char readChar()
    {
      try
      {
        char c = this.input.readChar();
        return c;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public double readDouble()
    {
      try
      {
        double d = this.input.readDouble();
        return d;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public float readFloat()
    {
      try
      {
        float f = this.input.readFloat();
        return f;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public void readFully(byte[] paramArrayOfByte)
    {
      try
      {
        this.input.readFully(paramArrayOfByte);
        return;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      try
      {
        this.input.readFully(paramArrayOfByte, paramInt1, paramInt2);
        return;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public int readInt()
    {
      try
      {
        int i = this.input.readInt();
        return i;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public String readLine()
    {
      try
      {
        String str = this.input.readLine();
        return str;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public long readLong()
    {
      try
      {
        long l = this.input.readLong();
        return l;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public short readShort()
    {
      try
      {
        short s = this.input.readShort();
        return s;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public String readUTF()
    {
      try
      {
        String str = this.input.readUTF();
        return str;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public int readUnsignedByte()
    {
      try
      {
        int i = this.input.readUnsignedByte();
        return i;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public int readUnsignedShort()
    {
      try
      {
        int i = this.input.readUnsignedShort();
        return i;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }

    public int skipBytes(int paramInt)
    {
      try
      {
        int i = this.input.skipBytes(paramInt);
        return i;
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException(localIOException);
      }
    }
  }

  private static class ByteArrayDataOutputStream
    implements ByteArrayDataOutput
  {
    final ByteArrayOutputStream byteArrayOutputSteam;
    final DataOutput output;

    ByteArrayDataOutputStream()
    {
      this(new ByteArrayOutputStream());
    }

    ByteArrayDataOutputStream(int paramInt)
    {
      this(new ByteArrayOutputStream(paramInt));
    }

    ByteArrayDataOutputStream(ByteArrayOutputStream paramByteArrayOutputStream)
    {
      this.byteArrayOutputSteam = paramByteArrayOutputStream;
      this.output = new DataOutputStream(paramByteArrayOutputStream);
    }

    public byte[] toByteArray()
    {
      return this.byteArrayOutputSteam.toByteArray();
    }

    public void write(int paramInt)
    {
      try
      {
        this.output.write(paramInt);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void write(byte[] paramArrayOfByte)
    {
      try
      {
        this.output.write(paramArrayOfByte);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      try
      {
        this.output.write(paramArrayOfByte, paramInt1, paramInt2);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeBoolean(boolean paramBoolean)
    {
      try
      {
        this.output.writeBoolean(paramBoolean);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeByte(int paramInt)
    {
      try
      {
        this.output.writeByte(paramInt);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeBytes(String paramString)
    {
      try
      {
        this.output.writeBytes(paramString);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeChar(int paramInt)
    {
      try
      {
        this.output.writeChar(paramInt);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeChars(String paramString)
    {
      try
      {
        this.output.writeChars(paramString);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeDouble(double paramDouble)
    {
      try
      {
        this.output.writeDouble(paramDouble);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeFloat(float paramFloat)
    {
      try
      {
        this.output.writeFloat(paramFloat);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeInt(int paramInt)
    {
      try
      {
        this.output.writeInt(paramInt);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeLong(long paramLong)
    {
      try
      {
        this.output.writeLong(paramLong);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeShort(int paramInt)
    {
      try
      {
        this.output.writeShort(paramInt);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public void writeUTF(String paramString)
    {
      try
      {
        this.output.writeUTF(paramString);
        return;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }
  }

  private static final class LimitedInputStream extends FilterInputStream
  {
    private long left;
    private long mark = -1L;

    LimitedInputStream(InputStream paramInputStream, long paramLong)
    {
      super();
      Preconditions.checkNotNull(paramInputStream);
      if (paramLong >= 0L);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "limit must be non-negative");
        this.left = paramLong;
        return;
      }
    }

    public int available()
      throws IOException
    {
      return (int)Math.min(this.in.available(), this.left);
    }

    public void mark(int paramInt)
    {
      try
      {
        this.in.mark(paramInt);
        this.mark = this.left;
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
      int i;
      if (this.left == 0L)
        i = -1;
      do
      {
        return i;
        i = this.in.read();
      }
      while (i == -1);
      this.left -= 1L;
      return i;
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      int j;
      if (this.left == 0L)
        j = -1;
      do
      {
        return j;
        int i = (int)Math.min(paramInt2, this.left);
        j = this.in.read(paramArrayOfByte, paramInt1, i);
      }
      while (j == -1);
      this.left -= j;
      return j;
    }

    public void reset()
      throws IOException
    {
      try
      {
        if (!this.in.markSupported())
          throw new IOException("Mark not supported");
      }
      finally
      {
      }
      if (this.mark == -1L)
        throw new IOException("Mark not set");
      this.in.reset();
      this.left = this.mark;
    }

    public long skip(long paramLong)
      throws IOException
    {
      long l1 = Math.min(paramLong, this.left);
      long l2 = this.in.skip(l1);
      this.left -= l2;
      return l2;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.ByteStreams
 * JD-Core Version:    0.6.2
 */