package com.google.android.speech.audio;

import android.media.MediaSyncEvent;
import com.google.common.base.Supplier;
import java.io.InputStream;
import javax.annotation.Nullable;

public class MicrophoneInputStreamFactory
  implements AudioInputStreamFactory
{
  private static final int AUDIO_RECORD_BUFFER_SIZE_BYTES = 128000;
  private static final int AUDIO_RECORD_BUFFER_SIZE_SECONDS = 8;
  public static final int BYTES_PER_MSEC = 16;
  public static final int BYTES_PER_SAMPLE = 2;
  public static final int MICROPHONE_READ_SIZE = 320;
  public static final int SAMPLING_RATE = 8000;
  private final boolean mNoiseSuppression;
  private final int mSampleRateHz;

  @Nullable
  private final Supplier<MediaSyncEvent> mStartEventSupplier;

  public MicrophoneInputStreamFactory(int paramInt, boolean paramBoolean, @Nullable Supplier<MediaSyncEvent> paramSupplier)
  {
    this.mSampleRateHz = paramInt;
    this.mNoiseSuppression = paramBoolean;
    this.mStartEventSupplier = paramSupplier;
  }

  public InputStream createInputStream()
  {
    return new MicrophoneInputStream(this.mSampleRateHz, 128000, this.mNoiseSuppression, this.mStartEventSupplier);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.MicrophoneInputStreamFactory
 * JD-Core Version:    0.6.2
 */