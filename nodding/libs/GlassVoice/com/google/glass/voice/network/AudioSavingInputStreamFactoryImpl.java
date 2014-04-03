package com.google.glass.voice.network;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.audio.BufferedAudioSaver;
import com.google.glass.logging.audio.FileAudioSaver;
import java.io.IOException;
import java.io.InputStream;

public class AudioSavingInputStreamFactoryImpl extends AudioInputStreamFactoryImpl
{
  private static final int BUFFER_SIZE_BYTES = 2048;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  static int sessionCount = 0;
  private AudioSavingInputStream audioSavingWrapper;

  public InputStream createInputStream()
  {
    if (this.inputStream == null)
      throw new IllegalStateException("InputStream not set.");
    this.audioSavingWrapper = new AudioSavingInputStream(this.inputStream);
    return this.audioSavingWrapper;
  }

  public void finishRecording()
  {
    if (this.audioSavingWrapper != null)
      this.audioSavingWrapper.finishRecording();
  }

  static class AudioSavingInputStream extends InputStream
  {
    private FileAudioSaver audioSaver = new BufferedAudioSaver(8000L, 2048);
    private InputStream delegate;

    public AudioSavingInputStream(InputStream paramInputStream)
    {
      this.delegate = paramInputStream;
    }

    private int wrappedRead(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      int i = this.delegate.read(paramArrayOfByte, paramInt1, paramInt2);
      if (i > 0)
      {
        if (!this.audioSaver.isSavingAudio())
        {
          StringBuilder localStringBuilder = new StringBuilder().append("GRECO-");
          int j = 1 + AudioSavingInputStreamFactoryImpl.sessionCount;
          AudioSavingInputStreamFactoryImpl.sessionCount = j;
          String str = j;
          AudioSavingInputStreamFactoryImpl.logger.d("Saving greco audio to %s", new Object[] { str });
          this.audioSaver.prepareToSaveAudio(str);
        }
        this.audioSaver.saveAudio(paramArrayOfByte, paramInt1, i);
      }
      return i;
    }

    public void finishRecording()
    {
      this.audioSaver.finishSavingAudio();
    }

    public int read()
      throws IOException
    {
      throw new UnsupportedOperationException();
    }

    public int read(byte[] paramArrayOfByte)
      throws IOException
    {
      return wrappedRead(paramArrayOfByte, 0, paramArrayOfByte.length);
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      return wrappedRead(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.AudioSavingInputStreamFactoryImpl
 * JD-Core Version:    0.6.2
 */