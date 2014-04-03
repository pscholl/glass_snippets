package com.google.glass.net;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class FileRangeInputStream extends InputStream
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private long bytesToRead;
  private final RandomAccessFile randomAccessFile;

  public FileRangeInputStream(File paramFile, long paramLong1, long paramLong2)
    throws IOException
  {
    this.bytesToRead = paramLong2;
    this.randomAccessFile = new RandomAccessFile(paramFile, "r");
    this.randomAccessFile.seek(paramLong1);
  }

  public void close()
    throws IOException
  {
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(this.bytesToRead);
    localFormattingLogger.d("Stream closed with %s bytes left unread", arrayOfObject);
    this.randomAccessFile.close();
  }

  public int read()
    throws IOException
  {
    if (this.bytesToRead > 0L)
    {
      int i = this.randomAccessFile.read();
      if (i != -1)
      {
        this.bytesToRead -= 1L;
        return i;
      }
    }
    return -1;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.bytesToRead > 0L)
    {
      int i = this.randomAccessFile.read(paramArrayOfByte, 0, (int)Math.min(paramInt2, this.bytesToRead));
      if (i > 0)
        this.bytesToRead -= i;
      return i;
    }
    return -1;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.FileRangeInputStream
 * JD-Core Version:    0.6.2
 */