package com.google.glass.voice;

import android.os.SystemClock;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReference;

public class MockMicrophoneInputStream extends MicrophoneInputStream
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final AtomicReference<InputStream> cannedAudioInputStreamRef = new AtomicReference();
  private boolean feedingCannedAudio = false;
  private boolean sleepPerRead = true;

  public MockMicrophoneInputStream(NativeAudioInterfaceWrapper paramNativeAudioInterfaceWrapper, MicrophoneInputStream.MicrophoneInputStreamListener paramMicrophoneInputStreamListener, int paramInt)
  {
    super(paramNativeAudioInterfaceWrapper, paramMicrophoneInputStreamListener, paramInt);
  }

  public void feedCannedAudio(InputStream paramInputStream)
  {
    if (paramInputStream == null)
      try
      {
        throw new IllegalArgumentException("Canned audio input stream cannot be null");
      }
      finally
      {
      }
    logger.d("received canned audio input stream", new Object[0]);
    this.cannedAudioInputStreamRef.set(paramInputStream);
    this.feedingCannedAudio = true;
  }

  public boolean isFeedingCannedAudio()
  {
    try
    {
      boolean bool = this.feedingCannedAudio;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (true)
    {
      try
      {
        if (this.sleepPerRead)
          SystemClock.sleep(10L);
        InputStream localInputStream = (InputStream)this.cannedAudioInputStreamRef.get();
        if (localInputStream != null);
        try
        {
          j = localInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
          if (j != -1)
          {
            onRawBytesRead(paramArrayOfByte, paramInt1, j);
            return j;
          }
          logger.i("finished reading from canned audio, passing zeros", new Object[0]);
          localInputStream.close();
          this.cannedAudioInputStreamRef.compareAndSet(localInputStream, null);
          this.feedingCannedAudio = false;
          int i = paramInt1;
          if (i < paramInt1 + paramInt2)
          {
            paramArrayOfByte[i] = 0;
            i++;
            continue;
          }
        }
        catch (IOException localIOException)
        {
          logger.e(localIOException, "Error reading canned audio, passing zeros instead", new Object[0]);
          this.cannedAudioInputStreamRef.compareAndSet(localInputStream, null);
          this.feedingCannedAudio = false;
          continue;
        }
      }
      finally
      {
      }
      onRawBytesRead(paramArrayOfByte, paramInt1, paramInt2);
      int j = paramInt2;
    }
  }

  public void setSleepPerRead(boolean paramBoolean)
  {
    this.sleepPerRead = paramBoolean;
  }

  public void startListening()
  {
    try
    {
      logger.i("starting listening", new Object[0]);
      this.listening = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void stopListening()
  {
    try
    {
      logger.d("stopping listening", new Object[0]);
      this.listening = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MockMicrophoneInputStream
 * JD-Core Version:    0.6.2
 */