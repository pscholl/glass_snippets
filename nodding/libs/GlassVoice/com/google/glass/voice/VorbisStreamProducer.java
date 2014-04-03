package com.google.glass.voice;

import com.google.android.ears.VorbisEncoder;
import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.searchcommon.util.ExtraPreconditions.ThreadCheck;
import com.google.android.speech.message.S3RequestUtils;
import com.google.android.speech.network.producers.S3RequestProducer;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.io.ByteStreams;
import com.google.common.io.Closeables;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.speech.s3.S3.S3Request;
import java.io.IOException;
import java.io.InputStream;

public class VorbisStreamProducer
  implements S3RequestProducer
{
  private static final float VORBIS_QUALITY = 0.5F;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private InputStream audio;
  private final byte[] buffer;
  private final int bytesPerSample;
  private final VorbisEncoder encoder;
  private final int maxCaptureBytes;
  private final int maxCaptureSeconds;
  private int numBytesCaptured;
  private final int numChannels;
  private final ExtraPreconditions.ThreadCheck sameThread;
  private final int sampleRateHz;
  private VorbisStreamState state;

  public VorbisStreamProducer(InputStream paramInputStream, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    Preconditions.checkNotNull(paramInputStream);
    this.encoder = new VorbisEncoder();
    this.audio = paramInputStream;
    this.sampleRateHz = paramInt1;
    this.numChannels = paramInt2;
    this.maxCaptureSeconds = paramInt4;
    this.bytesPerSample = paramInt5;
    this.maxCaptureBytes = (paramInt5 * (paramInt4 * (paramInt1 * paramInt2)));
    this.buffer = new byte[paramInt3];
    this.sameThread = ExtraPreconditions.createSameThreadCheck();
    this.state = VorbisStreamState.UNINITIALIZED;
  }

  private void transitionTo(VorbisStreamState paramVorbisStreamState)
  {
    this.state = paramVorbisStreamState;
  }

  public void close()
  {
    this.sameThread.check();
    if (this.state == VorbisStreamState.ENCODER_INITIALIZED)
    {
      logger.v("VorbisEncoder.close()", new Object[0]);
      this.encoder.close();
    }
    if (this.audio != null)
    {
      Closeables.closeQuietly(this.audio);
      this.audio = null;
    }
    transitionTo(VorbisStreamState.DONE);
  }

  @VisibleForTesting
  VorbisStreamState getState()
  {
    return this.state;
  }

  public S3.S3Request next()
    throws IOException
  {
    this.sameThread.check();
    try
    {
      if (this.state == VorbisStreamState.UNINITIALIZED)
      {
        logger.v("VorbisEncoder.init()", new Object[0]);
        byte[] arrayOfByte4 = this.encoder.init(this.numChannels, this.sampleRateHz, 0.5F);
        transitionTo(VorbisStreamState.ENCODER_INITIALIZED);
        return S3RequestUtils.createAudioDataRequest(arrayOfByte4, arrayOfByte4.length);
      }
      if (this.state == VorbisStreamState.ENCODER_CLOSED)
      {
        transitionTo(VorbisStreamState.DONE);
        return S3RequestUtils.createEndOfData();
      }
      if (this.state == VorbisStreamState.DONE)
        return null;
      if ((this.maxCaptureSeconds > 0) && (this.numBytesCaptured > this.maxCaptureBytes))
      {
        logger.v("VorbisEncoder.close()", new Object[0]);
        byte[] arrayOfByte3 = this.encoder.close();
        transitionTo(VorbisStreamState.ENCODER_CLOSED);
        return S3RequestUtils.createAudioDataRequest(arrayOfByte3, arrayOfByte3.length);
      }
      int i = ByteStreams.read(this.audio, this.buffer, 0, this.buffer.length);
      this.numBytesCaptured = (i + this.numBytesCaptured);
      if (i > 0)
      {
        byte[] arrayOfByte1 = this.encoder.encodeData(this.buffer, i / this.bytesPerSample);
        return S3RequestUtils.createAudioDataRequest(arrayOfByte1, arrayOfByte1.length);
      }
      logger.v("VorbisEncoder.close()", new Object[0]);
      byte[] arrayOfByte2 = this.encoder.close();
      transitionTo(VorbisStreamState.ENCODER_CLOSED);
      S3.S3Request localS3Request = S3RequestUtils.createAudioDataRequest(arrayOfByte2, arrayOfByte2.length);
      return localS3Request;
    }
    catch (IOException localIOException)
    {
      close();
      throw new IOException("Error encoding audio.", localIOException);
    }
  }

  @VisibleForTesting
  static enum VorbisStreamState
  {
    static
    {
      ENCODER_INITIALIZED = new VorbisStreamState("ENCODER_INITIALIZED", 1);
      ENCODER_CLOSED = new VorbisStreamState("ENCODER_CLOSED", 2);
      DONE = new VorbisStreamState("DONE", 3);
      VorbisStreamState[] arrayOfVorbisStreamState = new VorbisStreamState[4];
      arrayOfVorbisStreamState[0] = UNINITIALIZED;
      arrayOfVorbisStreamState[1] = ENCODER_INITIALIZED;
      arrayOfVorbisStreamState[2] = ENCODER_CLOSED;
      arrayOfVorbisStreamState[3] = DONE;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VorbisStreamProducer
 * JD-Core Version:    0.6.2
 */