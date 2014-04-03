package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableSet;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.Checksum;

@Beta
public final class Files
{
  private static final int TEMP_DIR_ATTEMPTS = 10000;

  public static void append(CharSequence paramCharSequence, File paramFile, Charset paramCharset)
    throws IOException
  {
    write(paramCharSequence, paramFile, paramCharset, true);
  }

  public static ByteSink asByteSink(File paramFile, FileWriteMode[] paramArrayOfFileWriteMode)
  {
    return new FileByteSink(paramFile, paramArrayOfFileWriteMode, null);
  }

  public static ByteSource asByteSource(File paramFile)
  {
    return new FileByteSource(paramFile, null);
  }

  public static CharSink asCharSink(File paramFile, Charset paramCharset, FileWriteMode[] paramArrayOfFileWriteMode)
  {
    return asByteSink(paramFile, paramArrayOfFileWriteMode).asCharSink(paramCharset);
  }

  public static CharSource asCharSource(File paramFile, Charset paramCharset)
  {
    return asByteSource(paramFile).asCharSource(paramCharset);
  }

  public static void copy(InputSupplier<? extends InputStream> paramInputSupplier, File paramFile)
    throws IOException
  {
    ByteStreams.asByteSource(paramInputSupplier).copyTo(asByteSink(paramFile, new FileWriteMode[0]));
  }

  public static <R extends Readable,  extends Closeable> void copy(InputSupplier<R> paramInputSupplier, File paramFile, Charset paramCharset)
    throws IOException
  {
    CharStreams.asCharSource(paramInputSupplier).copyTo(asCharSink(paramFile, paramCharset, new FileWriteMode[0]));
  }

  public static void copy(File paramFile, OutputSupplier<? extends OutputStream> paramOutputSupplier)
    throws IOException
  {
    asByteSource(paramFile).copyTo(ByteStreams.asByteSink(paramOutputSupplier));
  }

  public static void copy(File paramFile1, File paramFile2)
    throws IOException
  {
    if (!paramFile1.equals(paramFile2));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Source %s and destination %s must be different", new Object[] { paramFile1, paramFile2 });
      asByteSource(paramFile1).copyTo(asByteSink(paramFile2, new FileWriteMode[0]));
      return;
    }
  }

  public static void copy(File paramFile, OutputStream paramOutputStream)
    throws IOException
  {
    asByteSource(paramFile).copyTo(paramOutputStream);
  }

  public static <W extends Appendable,  extends Closeable> void copy(File paramFile, Charset paramCharset, OutputSupplier<W> paramOutputSupplier)
    throws IOException
  {
    asCharSource(paramFile, paramCharset).copyTo(CharStreams.asCharSink(paramOutputSupplier));
  }

  public static void copy(File paramFile, Charset paramCharset, Appendable paramAppendable)
    throws IOException
  {
    asCharSource(paramFile, paramCharset).copyTo(paramAppendable);
  }

  public static void createParentDirs(File paramFile)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile);
    File localFile = paramFile.getCanonicalFile().getParentFile();
    if (localFile == null);
    do
    {
      return;
      localFile.mkdirs();
    }
    while (localFile.isDirectory());
    throw new IOException("Unable to create parent directories of " + paramFile);
  }

  public static File createTempDir()
  {
    File localFile1 = new File(System.getProperty("java.io.tmpdir"));
    String str = System.currentTimeMillis() + "-";
    for (int i = 0; i < 10000; i++)
    {
      File localFile2 = new File(localFile1, str + i);
      if (localFile2.mkdir())
        return localFile2;
    }
    throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + 9999 + ')');
  }

  public static boolean equal(File paramFile1, File paramFile2)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile1);
    Preconditions.checkNotNull(paramFile2);
    if ((paramFile1 == paramFile2) || (paramFile1.equals(paramFile2)))
      return true;
    long l1 = paramFile1.length();
    long l2 = paramFile2.length();
    if ((l1 != 0L) && (l2 != 0L) && (l1 != l2))
      return false;
    return asByteSource(paramFile1).contentEquals(asByteSource(paramFile2));
  }

  @Deprecated
  public static long getChecksum(File paramFile, Checksum paramChecksum)
    throws IOException
  {
    return ByteStreams.getChecksum(newInputStreamSupplier(paramFile), paramChecksum);
  }

  public static String getFileExtension(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str = new File(paramString).getName();
    int i = str.lastIndexOf('.');
    if (i == -1)
      return "";
    return str.substring(i + 1);
  }

  public static String getNameWithoutExtension(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str = new File(paramString).getName();
    int i = str.lastIndexOf('.');
    if (i == -1)
      return str;
    return str.substring(0, i);
  }

  public static HashCode hash(File paramFile, HashFunction paramHashFunction)
    throws IOException
  {
    return asByteSource(paramFile).hash(paramHashFunction);
  }

  public static MappedByteBuffer map(File paramFile)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile);
    return map(paramFile, FileChannel.MapMode.READ_ONLY);
  }

  public static MappedByteBuffer map(File paramFile, FileChannel.MapMode paramMapMode)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile);
    Preconditions.checkNotNull(paramMapMode);
    if (!paramFile.exists())
      throw new FileNotFoundException(paramFile.toString());
    return map(paramFile, paramMapMode, paramFile.length());
  }

  public static MappedByteBuffer map(File paramFile, FileChannel.MapMode paramMapMode, long paramLong)
    throws FileNotFoundException, IOException
  {
    Preconditions.checkNotNull(paramFile);
    Preconditions.checkNotNull(paramMapMode);
    Closer localCloser = Closer.create();
    try
    {
      if (paramMapMode == FileChannel.MapMode.READ_ONLY);
      for (String str = "r"; ; str = "rw")
      {
        MappedByteBuffer localMappedByteBuffer = map((RandomAccessFile)localCloser.register(new RandomAccessFile(paramFile, str)), paramMapMode, paramLong);
        return localMappedByteBuffer;
      }
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

  private static MappedByteBuffer map(RandomAccessFile paramRandomAccessFile, FileChannel.MapMode paramMapMode, long paramLong)
    throws IOException
  {
    Closer localCloser = Closer.create();
    try
    {
      MappedByteBuffer localMappedByteBuffer = ((FileChannel)localCloser.register(paramRandomAccessFile.getChannel())).map(paramMapMode, 0L, paramLong);
      return localMappedByteBuffer;
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

  private static FileWriteMode[] modes(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      FileWriteMode[] arrayOfFileWriteMode = new FileWriteMode[1];
      arrayOfFileWriteMode[0] = FileWriteMode.APPEND;
      return arrayOfFileWriteMode;
    }
    return new FileWriteMode[0];
  }

  public static void move(File paramFile1, File paramFile2)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile1);
    Preconditions.checkNotNull(paramFile2);
    if (!paramFile1.equals(paramFile2));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Source %s and destination %s must be different", new Object[] { paramFile1, paramFile2 });
      if (paramFile1.renameTo(paramFile2))
        return;
      copy(paramFile1, paramFile2);
      if (paramFile1.delete())
        return;
      if (paramFile2.delete())
        break;
      throw new IOException("Unable to delete " + paramFile2);
    }
    throw new IOException("Unable to delete " + paramFile1);
  }

  public static InputSupplier<FileInputStream> newInputStreamSupplier(File paramFile)
  {
    return ByteStreams.asInputSupplier(asByteSource(paramFile));
  }

  public static OutputSupplier<FileOutputStream> newOutputStreamSupplier(File paramFile)
  {
    return newOutputStreamSupplier(paramFile, false);
  }

  public static OutputSupplier<FileOutputStream> newOutputStreamSupplier(File paramFile, boolean paramBoolean)
  {
    return ByteStreams.asOutputSupplier(asByteSink(paramFile, modes(paramBoolean)));
  }

  public static BufferedReader newReader(File paramFile, Charset paramCharset)
    throws FileNotFoundException
  {
    Preconditions.checkNotNull(paramFile);
    Preconditions.checkNotNull(paramCharset);
    return new BufferedReader(new InputStreamReader(new FileInputStream(paramFile), paramCharset));
  }

  public static InputSupplier<InputStreamReader> newReaderSupplier(File paramFile, Charset paramCharset)
  {
    return CharStreams.asInputSupplier(asCharSource(paramFile, paramCharset));
  }

  public static BufferedWriter newWriter(File paramFile, Charset paramCharset)
    throws FileNotFoundException
  {
    Preconditions.checkNotNull(paramFile);
    Preconditions.checkNotNull(paramCharset);
    return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(paramFile), paramCharset));
  }

  public static OutputSupplier<OutputStreamWriter> newWriterSupplier(File paramFile, Charset paramCharset)
  {
    return newWriterSupplier(paramFile, paramCharset, false);
  }

  public static OutputSupplier<OutputStreamWriter> newWriterSupplier(File paramFile, Charset paramCharset, boolean paramBoolean)
  {
    return CharStreams.asOutputSupplier(asCharSink(paramFile, paramCharset, modes(paramBoolean)));
  }

  public static <T> T readBytes(File paramFile, ByteProcessor<T> paramByteProcessor)
    throws IOException
  {
    return ByteStreams.readBytes(newInputStreamSupplier(paramFile), paramByteProcessor);
  }

  public static String readFirstLine(File paramFile, Charset paramCharset)
    throws IOException
  {
    return asCharSource(paramFile, paramCharset).readFirstLine();
  }

  public static <T> T readLines(File paramFile, Charset paramCharset, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramFile, paramCharset), paramLineProcessor);
  }

  public static List<String> readLines(File paramFile, Charset paramCharset)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramFile, paramCharset));
  }

  public static String simplifyPath(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str1;
    if (paramString.length() == 0)
      str1 = ".";
    do
    {
      return str1;
      Iterable localIterable = Splitter.on('/').omitEmptyStrings().split(paramString);
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localIterable.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        if (!str2.equals("."))
          if (str2.equals(".."))
          {
            if ((localArrayList.size() > 0) && (!((String)localArrayList.get(-1 + localArrayList.size())).equals("..")))
              localArrayList.remove(-1 + localArrayList.size());
            else
              localArrayList.add("..");
          }
          else
            localArrayList.add(str2);
      }
      str1 = Joiner.on('/').join(localArrayList);
      if (paramString.charAt(0) == '/');
      for (str1 = "/" + str1; str1.startsWith("/../"); str1 = str1.substring(3));
      if (str1.equals("/.."))
        return "/";
    }
    while (!"".equals(str1));
    return ".";
  }

  public static byte[] toByteArray(File paramFile)
    throws IOException
  {
    return asByteSource(paramFile).read();
  }

  public static String toString(File paramFile, Charset paramCharset)
    throws IOException
  {
    return asCharSource(paramFile, paramCharset).read();
  }

  public static void touch(File paramFile)
    throws IOException
  {
    Preconditions.checkNotNull(paramFile);
    if ((!paramFile.createNewFile()) && (!paramFile.setLastModified(System.currentTimeMillis())))
      throw new IOException("Unable to update modification time of " + paramFile);
  }

  public static void write(CharSequence paramCharSequence, File paramFile, Charset paramCharset)
    throws IOException
  {
    asCharSink(paramFile, paramCharset, new FileWriteMode[0]).write(paramCharSequence);
  }

  private static void write(CharSequence paramCharSequence, File paramFile, Charset paramCharset, boolean paramBoolean)
    throws IOException
  {
    asCharSink(paramFile, paramCharset, modes(paramBoolean)).write(paramCharSequence);
  }

  public static void write(byte[] paramArrayOfByte, File paramFile)
    throws IOException
  {
    asByteSink(paramFile, new FileWriteMode[0]).write(paramArrayOfByte);
  }

  private static final class FileByteSink extends ByteSink
  {
    private final File file;
    private final ImmutableSet<FileWriteMode> modes;

    private FileByteSink(File paramFile, FileWriteMode[] paramArrayOfFileWriteMode)
    {
      this.file = ((File)Preconditions.checkNotNull(paramFile));
      this.modes = ImmutableSet.copyOf(paramArrayOfFileWriteMode);
    }

    public FileOutputStream openStream()
      throws IOException
    {
      return new FileOutputStream(this.file, this.modes.contains(FileWriteMode.APPEND));
    }

    public String toString()
    {
      return "Files.asByteSink(" + this.file + ", " + this.modes + ")";
    }
  }

  private static final class FileByteSource extends ByteSource
  {
    private final File file;

    private FileByteSource(File paramFile)
    {
      this.file = ((File)Preconditions.checkNotNull(paramFile));
    }

    public FileInputStream openStream()
      throws IOException
    {
      return new FileInputStream(this.file);
    }

    public byte[] read()
      throws IOException
    {
      long l = this.file.length();
      if (l == 0L)
        return super.read();
      if (l > 2147483647L)
        throw new OutOfMemoryError("file is too large to fit in a byte array: " + l + " bytes");
      byte[] arrayOfByte1 = new byte[(int)l];
      Closer localCloser = Closer.create();
      try
      {
        InputStream localInputStream = (InputStream)localCloser.register(openStream());
        int i = 0;
        int j = 0;
        while (i < l)
        {
          j = localInputStream.read(arrayOfByte1, i, (int)l - i);
          if (j == -1)
            break;
          i += j;
        }
        byte[] arrayOfByte2 = arrayOfByte1;
        if (i < l)
        {
          arrayOfByte2 = new byte[i];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
        }
        while (true)
        {
          return arrayOfByte2;
          if (j != -1)
          {
            ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
            ByteStreams.copy(localInputStream, localByteArrayOutputStream);
            byte[] arrayOfByte3 = localByteArrayOutputStream.toByteArray();
            arrayOfByte2 = new byte[arrayOfByte1.length + arrayOfByte3.length];
            System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte1.length);
            System.arraycopy(arrayOfByte3, 0, arrayOfByte2, arrayOfByte1.length, arrayOfByte3.length);
          }
        }
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

    public long size()
      throws IOException
    {
      if (!this.file.isFile())
        throw new FileNotFoundException(this.file.toString());
      return this.file.length();
    }

    public String toString()
    {
      return "Files.asByteSource(" + this.file + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.Files
 * JD-Core Version:    0.6.2
 */