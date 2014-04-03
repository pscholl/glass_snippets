package com.google.android.speech.network.producers;

import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.audio.AudioEncoderInputStream;
import com.google.android.speech.message.S3RequestUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.io.ByteStreams;
import com.google.common.io.Closeables;
import com.google.speech.s3.S3.S3Request;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nonnull;

@VisibleForTesting
public class AacStreamProducer
  implements S3RequestProducer
{
  private final InputStream mAudio;
  private final byte[] mBuffer;
  private boolean mComplete;
  protected AudioEncoderInputStream mEncoderInputStream;
  private final String mEncoderMimeType;
  private final int mInputReadSize;
  private final int mMaxRecordingLengthSeconds;
  private final int mNumChannels;
  private final int mOutputBitRate;
  private final int mRequestSize;
  private final ExtraPreconditions.ThreadCheck mSameThread;
  private final int mSampleRateHz;

  public AacStreamProducer(@Nonnull InputStream paramInputStream, @Nonnull String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.mAudio = paramInputStream;
    this.mEncoderMimeType = paramString;
    this.mSampleRateHz = paramInt1;
    this.mNumChannels = paramInt2;
    this.mInputReadSize = paramInt3;
    this.mRequestSize = paramInt4;
    this.mOutputBitRate = paramInt5;
    this.mMaxRecordingLengthSeconds = paramInt6;
    this.mBuffer = new byte[this.mRequestSize];
    this.mSameThread = ExtraPreconditions.createSameThreadCheck();
  }

  private void closeAndMarkComplete()
  {
    if (!this.mComplete)
    {
      this.mComplete = true;
      Closeables.closeQuietly(this.mEncoderInputStream);
    }
  }

  public void close()
  {
    this.mSameThread.check();
    closeAndMarkComplete();
  }

  @VisibleForTesting
  protected void maybeInitEncoderStream()
    throws Exception
  {
    if (this.mEncoderInputStream == null)
      this.mEncoderInputStream = new AudioEncoderInputStream(this.mAudio, this.mEncoderMimeType, this.mSampleRateHz, this.mInputReadSize, this.mOutputBitRate, this.mNumChannels);
  }

  public S3.S3Request next()
    throws IOException
  {
    this.mSameThread.check();
    try
    {
      if (this.mComplete)
        return null;
      maybeInitEncoderStream();
      if ((this.mMaxRecordingLengthSeconds > 0) && (this.mEncoderInputStream.getTotalRead() > 2 * this.mSampleRateHz * this.mMaxRecordingLengthSeconds))
      {
        closeAndMarkComplete();
        return S3RequestUtils.createEndOfData();
      }
      int i = ByteStreams.read(this.mEncoderInputStream, this.mBuffer, 0, this.mBuffer.length);
      if (i > 0)
        return S3RequestUtils.createAudioDataRequest(this.mBuffer, i);
      closeAndMarkComplete();
      S3.S3Request localS3Request = S3RequestUtils.createEndOfData();
      return localS3Request;
    }
    catch (Exception localException)
    {
      closeAndMarkComplete();
      throw new IOException("Error encoding audio.", localException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.AacStreamProducer
 * JD-Core Version:    0.6.2
 */