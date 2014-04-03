package com.google.glass.net;

import com.google.common.io.ByteStreams;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;

class FileRangeEntity extends AbstractHttpEntity
{
  private final long begin;
  private final long end;
  private final File file;

  public FileRangeEntity(File paramFile, String paramString, long paramLong1, long paramLong2)
  {
    this.file = paramFile;
    this.begin = paramLong1;
    this.end = paramLong2;
    setContentType(paramString);
  }

  public InputStream getContent()
    throws IllegalStateException, IOException
  {
    return new FileRangeInputStream(this.file, this.begin, 1L + (this.end - this.begin));
  }

  public long getContentLength()
  {
    return 1L + (this.end - this.begin);
  }

  public boolean isRepeatable()
  {
    return true;
  }

  public boolean isStreaming()
  {
    return false;
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    InputStream localInputStream = getContent();
    try
    {
      ByteStreams.copy(localInputStream, paramOutputStream);
      return;
    }
    finally
    {
      localInputStream.close();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.FileRangeEntity
 * JD-Core Version:    0.6.2
 */