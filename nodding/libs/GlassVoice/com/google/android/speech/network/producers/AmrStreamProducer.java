package com.google.android.speech.network.producers;

import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.audio.AudioUtils;
import com.google.android.speech.message.S3RequestUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.io.ByteStreams;
import com.google.common.io.Closeables;
import com.google.speech.s3.S3.S3Request;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nonnull;

@VisibleForTesting
public class AmrStreamProducer
  implements S3RequestProducer
{
  private final InputStream mAmrStream;
  private final byte[] mBuffer;
  private boolean mComplete;
  private final ExtraPreconditions.ThreadCheck mThreadCheck;

  public AmrStreamProducer(@Nonnull InputStream paramInputStream, int paramInt)
  {
    this(AudioUtils.getEncodingInputStream(paramInputStream, 3), new byte[paramInt]);
  }

  @VisibleForTesting
  AmrStreamProducer(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    this.mAmrStream = paramInputStream;
    this.mBuffer = paramArrayOfByte;
    this.mThreadCheck = ExtraPreconditions.createSameThreadCheck();
  }

  private void closeAndMarkComplete()
  {
    if (!this.mComplete)
    {
      this.mComplete = true;
      Closeables.closeQuietly(this.mAmrStream);
    }
  }

  public void close()
  {
    this.mThreadCheck.check();
    closeAndMarkComplete();
  }

  public S3.S3Request next()
    throws IOException
  {
    this.mThreadCheck.check();
    try
    {
      if (this.mComplete)
        return null;
      int i = ByteStreams.read(this.mAmrStream, this.mBuffer, 0, this.mBuffer.length);
      if (i > 0)
        return S3RequestUtils.createAudioDataRequest(this.mBuffer, i);
      closeAndMarkComplete();
      S3.S3Request localS3Request = S3RequestUtils.createEndOfData();
      return localS3Request;
    }
    catch (IOException localIOException)
    {
      closeAndMarkComplete();
      throw localIOException;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.AmrStreamProducer
 * JD-Core Version:    0.6.2
 */