package com.google.glass.voice;

import android.util.Log;
import com.google.glass.util.CircularByteBuffer;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;

public final class AudioByteUtils
{
  private static final float BYTES_PER_SAMPLE = 2.0F;
  private static final int HOTWORD_START_BOUND_FUZZ_FACTOR_MS = 100;
  public static final long MILLIS_PER_SECOND = TimeUnit.SECONDS.toMillis(1L);
  private static final String TAG = AudioByteUtils.class.getSimpleName();

  public static int getByteLength(long paramLong)
  {
    return getByteLength(paramLong, 16000L);
  }

  public static int getByteLength(long paramLong1, long paramLong2)
  {
    return (int)(2.0F * (float)paramLong2 * (float)paramLong1 / (float)MILLIS_PER_SECOND);
  }

  static ByteBuffer getLastCommandAudio(HotwordResult paramHotwordResult, CircularByteBuffer paramCircularByteBuffer)
  {
    long l = 100L + paramHotwordResult.getPhraseDurationMillis();
    int i = getByteLength(VoiceEngine.HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS);
    int j = getByteLength(l);
    if (j > i)
    {
      Log.w(TAG, "Cannot access last command, audio refeed buffer too small.");
      return ByteBuffer.allocate(0);
    }
    Log.d(TAG, "Ready to copy out " + j + " bytes to refeed.");
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(j);
    paramCircularByteBuffer.peekLast(localByteBuffer);
    localByteBuffer.flip();
    return localByteBuffer;
  }

  public static long getMillis(long paramLong)
  {
    return getMillis(paramLong, 16000L);
  }

  public static long getMillis(long paramLong1, long paramLong2)
  {
    return ()((float)(paramLong1 * MILLIS_PER_SECOND) / (2.0F * (float)paramLong2));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.AudioByteUtils
 * JD-Core Version:    0.6.2
 */