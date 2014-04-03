package com.google.android.speech.message;

import com.google.speech.s3.S3.S3Response;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class S3ResponseStream
  implements Closeable
{
  private static final boolean DEBUG = false;
  private static final boolean DEBUG_FAKE_BROKEN = false;
  private static final int MAX_PACKET_LEN = 4194304;
  private static final String TAG = "S3ResponseStream";
  private final DataInputStream mDis;
  private final FakeBrokenNetwork mFakeBrokenNetwork;

  public S3ResponseStream(InputStream paramInputStream)
  {
    this.mDis = new DataInputStream(paramInputStream);
    this.mFakeBrokenNetwork = null;
  }

  public void close()
    throws IOException
  {
    this.mDis.close();
  }

  public S3.S3Response read()
    throws IOException
  {
    int i;
    do
      i = this.mDis.readInt();
    while (i == 0);
    if ((i <= 0) || (i > 4194304))
      throw new IOException("Wrong len " + i);
    byte[] arrayOfByte = new byte[i];
    this.mDis.readFully(arrayOfByte);
    S3.S3Response localS3Response = new S3.S3Response();
    localS3Response.mergeFrom(arrayOfByte);
    return localS3Response;
  }

  private class FakeBrokenNetwork
  {
    private int mCounter = 2;
    private int mWaitTime = 5000;

    public FakeBrokenNetwork()
    {
    }

    public void ping()
      throws IOException
    {
      this.mCounter = (-1 + this.mCounter);
      if (this.mCounter == 0)
        try
        {
          Thread.sleep(this.mWaitTime);
          throw new IOException();
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            Thread.currentThread().interrupt();
        }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3ResponseStream
 * JD-Core Version:    0.6.2
 */