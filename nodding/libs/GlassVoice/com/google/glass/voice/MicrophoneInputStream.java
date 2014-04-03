package com.google.glass.voice;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.IOException;
import java.io.InputStream;

public class MicrophoneInputStream extends InputStream
{
  public static final double MAX_AMPLITUDE = 32767.0D;
  private static final long MICROSECONDS_BETWEEN_AMPLITUDE = 50000L;
  public static final float MICROSECONDS_PER_SAMPLE_16_KHZ = 62.5F;
  public static final float MICROSECONDS_PER_SAMPLE_8_KHZ = 125.0F;
  private static final int READ_BUFFER_BYTES_PER_READ = 704;
  private static final int READ_BUFFER_LENGTH_SECONDS = 4;
  public static final int SAMPLE_RATE_16000_HZ = 16000;
  public static final int SAMPLE_RATE_8000_HZ = 8000;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ConcurrentAudioInterface audioInterface;
  private BufferingStreamRecorder bufferingRecorder;
  private InputStream delegateStream;
  private final MicrophoneInputStreamListener listener;
  protected boolean listening;
  private final float microsecondsPerSample;
  private long microsecondsSinceLastAmplitude = 50000L;
  private final int sampleRate;

  public MicrophoneInputStream(NativeAudioInterfaceWrapper paramNativeAudioInterfaceWrapper, MicrophoneInputStreamListener paramMicrophoneInputStreamListener, int paramInt)
  {
    this.listener = paramMicrophoneInputStreamListener;
    this.sampleRate = paramInt;
    this.audioInterface = new ConcurrentAudioInterface(paramNativeAudioInterfaceWrapper);
    this.microsecondsPerSample = determineMicrosecondsPerSample(paramInt);
  }

  private double calculateAmplitude(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    double d = 0.0D;
    for (int i = paramInt1; i < -2 + (paramInt1 + paramInt2); i += 2)
    {
      int j = paramArrayOfByte[(i + 1)] << 8 & paramArrayOfByte[i];
      d += j * j;
    }
    return Math.sqrt(d / (paramInt2 / 2)) / 32767.0D;
  }

  public static float determineMicrosecondsPerSample(int paramInt)
  {
    if (paramInt == 16000)
      return 62.5F;
    if (paramInt == 8000)
      return 125.0F;
    throw new RuntimeException("Unexpected sample rate: " + paramInt);
  }

  private void releaseMicrophone()
  {
    if (this.bufferingRecorder != null);
    try
    {
      this.bufferingRecorder.close();
      this.bufferingRecorder = null;
      this.audioInterface.close();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        logger.e(localIOException, "IOException while closing buffering recorder.", new Object[0]);
    }
  }

  protected InputStream createInputStream()
  {
    this.bufferingRecorder = new BufferingStreamRecorder(new NativeAudioInputStream(null), 4 * this.sampleRate, 704);
    return this.bufferingRecorder;
  }

  public int getSampleRate()
  {
    return this.sampleRate;
  }

  public boolean isListening()
  {
    try
    {
      boolean bool = this.listening;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void onRawBytesRead(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l = paramInt2 / 2 * ()this.microsecondsPerSample;
    this.microsecondsSinceLastAmplitude -= l;
    if (this.microsecondsSinceLastAmplitude <= 0L)
    {
      this.listener.onAmplitudeChanged(calculateAmplitude(paramArrayOfByte, paramInt1, paramInt2));
      this.microsecondsSinceLastAmplitude = 50000L;
    }
  }

  public int read()
    throws IOException
  {
    throw new IOException("Not implemented");
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      int i;
      if (this.listening)
      {
        i = this.delegateStream.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.sampleRate / 10));
        if (i > 0)
          onRawBytesRead(paramArrayOfByte, paramInt1, i);
      }
      while (true)
      {
        return i;
        logger.e("Error reading from delegate input stream. Stopped listening.", new Object[0]);
        stopListening();
        i = -1;
      }
    }
    finally
    {
    }
  }

  public void startListening()
  {
    try
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.sampleRate);
      localFormattingLogger.d("Starting listening on MicrophoneInputStream with sample rate %d", arrayOfObject);
      this.audioInterface.open();
      this.delegateStream = createInputStream();
      this.bufferingRecorder.startRecording();
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
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(this.listening);
      arrayOfObject[1] = this.listener;
      localFormattingLogger.d("Stopping listening: %s , listener: %s", arrayOfObject);
      this.listening = false;
      this.bufferingRecorder.stopRecording();
      releaseMicrophone();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static abstract interface MicrophoneInputStreamListener
  {
    public abstract void onAmplitudeChanged(double paramDouble);
  }

  private final class NativeAudioInputStream extends InputStream
  {
    private NativeAudioInputStream()
    {
    }

    public int read()
      throws IOException
    {
      throw new IOException("Not implemented");
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if ((paramInt1 == 0) && (paramInt2 == paramArrayOfByte.length))
      {
        int j = MicrophoneInputStream.this.audioInterface.read(paramArrayOfByte);
        if (j < paramInt2)
          j = -1;
        return j;
      }
      byte[] arrayOfByte = new byte[paramInt2];
      int i = MicrophoneInputStream.this.audioInterface.read(arrayOfByte);
      if (i < paramInt2)
        return -1;
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, paramInt2);
      return i;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MicrophoneInputStream
 * JD-Core Version:    0.6.2
 */