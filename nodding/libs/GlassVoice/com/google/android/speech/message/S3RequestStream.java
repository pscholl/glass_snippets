package com.google.android.speech.message;

import com.google.android.speech.utils.HexUtils;
import com.google.common.base.Preconditions;
import com.google.speech.s3.S3.S3Request;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class S3RequestStream
  implements Closeable
{
  private static final boolean DEBUG = false;
  private static final byte[] S3_STREAM_PREFIX = { 0, 0 };
  private static final String TAG = "S3RequestStream";
  private final boolean mChunked;
  private final String mHeader;
  private boolean mHeaderWritten;
  private final OutputStream mOut;
  private final ByteBuffer mScratch = ByteBuffer.wrap(new byte[1024]);

  public S3RequestStream(OutputStream paramOutputStream, String paramString, boolean paramBoolean)
  {
    this.mOut = paramOutputStream;
    this.mHeader = paramString;
    this.mChunked = paramBoolean;
  }

  private void internalWrite(S3.S3Request paramS3Request)
    throws IOException
  {
    maybeChunkAndSendBytes(paramS3Request.toByteArray());
  }

  private void maybeChunkAndSendBytes(byte[] paramArrayOfByte)
    throws IOException
  {
    int i = paramArrayOfByte.length;
    this.mScratch.putInt(i);
    try
    {
      if (!this.mChunked)
      {
        this.mOut.write(this.mScratch.array(), 0, this.mScratch.position());
        this.mOut.write(paramArrayOfByte);
        this.mScratch.clear();
      }
      while (true)
      {
        return;
        while (i > 0)
        {
          int j = Math.min(this.mScratch.remaining(), i);
          this.mScratch.put(paramArrayOfByte, paramArrayOfByte.length - i, j);
          i -= j;
          if ((this.mScratch.remaining() == 0) || (i == 0))
          {
            this.mOut.write(this.mScratch.array(), 0, this.mScratch.position());
            this.mScratch.clear();
          }
        }
      }
    }
    finally
    {
      this.mScratch.clear();
    }
  }

  public void close()
    throws IOException
  {
    this.mOut.close();
  }

  public void flush()
    throws IOException
  {
    this.mOut.flush();
  }

  public void write(S3.S3Request paramS3Request)
    throws IOException
  {
    Preconditions.checkState(this.mHeaderWritten);
    if (this.mScratch.position() == 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      internalWrite(paramS3Request);
      return;
    }
  }

  public void writeHeader(S3.S3Request paramS3Request)
    throws IOException
  {
    if (!this.mHeaderWritten);
    for (boolean bool1 = true; ; bool1 = false)
    {
      Preconditions.checkState(bool1);
      int i = this.mScratch.position();
      boolean bool2 = false;
      if (i == 0)
        bool2 = true;
      Preconditions.checkState(bool2);
      this.mScratch.put(S3_STREAM_PREFIX);
      this.mScratch.put(HexUtils.hexToBytes(this.mHeader.replace("_", "")));
      internalWrite(paramS3Request);
      this.mHeaderWritten = true;
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3RequestStream
 * JD-Core Version:    0.6.2
 */