package com.google.glass.logging.audio;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.BufferedOutputStream;
import java.io.IOException;

public class BufferedAudioSaver extends FileAudioSaver
{
  public static final int BYTES_PER_MICROPHONE_READ = 160;
  public static final int SAVE_TO_DISK_BUFFER_CAPACITY = 8000;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final int bufferSize;
  private BufferedOutputStream bufferedStream;

  public BufferedAudioSaver(long paramLong)
  {
    this(paramLong, 8000);
  }

  public BufferedAudioSaver(long paramLong, int paramInt)
  {
    super(paramLong);
    this.bufferSize = paramInt;
  }

  protected void onFinishSavingAudio()
  {
    if (this.bufferedStream == null)
      return;
    try
    {
      this.bufferedStream.flush();
      return;
    }
    catch (IOException localIOException)
    {
      logger.e(localIOException, "Failed to flush buffered stream!", new Object[0]);
    }
  }

  public void onPrepareToSaveAudio()
  {
    this.bufferedStream = new BufferedOutputStream(getFileOutputStream(), this.bufferSize);
  }

  void onSaveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.bufferedStream.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException localIOException)
    {
      logger.e(localIOException, "Failed to write to buffered stream!", new Object[0]);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.BufferedAudioSaver
 * JD-Core Version:    0.6.2
 */