package com.google.glass.voice;

import android.util.Log;
import com.google.glass.logging.audio.AudioSaver;
import com.google.glass.logging.audio.BufferedAudioSaver;
import java.io.IOException;
import java.nio.ByteBuffer;

public class AudioSavingHotwordRecognizerDecorator
  implements HotwordRecognizer
{
  private static final String TAG = AudioSavingHotwordRecognizerDecorator.class.getSimpleName();
  private AudioSaver audioSaver;
  private byte[] buf;
  private HotwordRecognizer delegate;
  private String name;
  private int phaseCount;

  private AudioSavingHotwordRecognizerDecorator(HotwordRecognizer paramHotwordRecognizer, String paramString)
  {
    this.delegate = paramHotwordRecognizer;
    this.name = paramString;
  }

  public static AudioSavingHotwordRecognizerDecorator create(HotwordRecognizer paramHotwordRecognizer, String paramString)
  {
    if (paramHotwordRecognizer == null)
      return null;
    return new AudioSavingHotwordRecognizerDecorator(paramHotwordRecognizer, paramString);
  }

  private byte[] getBuffer(int paramInt)
  {
    if ((this.buf == null) || (this.buf.length < paramInt))
      this.buf = new byte[paramInt];
    return this.buf;
  }

  public void activate()
  {
    this.delegate.activate();
  }

  public void deactivate()
  {
    this.delegate.deactivate();
    if (this.audioSaver != null)
    {
      this.audioSaver.finishSavingAudio();
      this.audioSaver = null;
    }
  }

  public void destroy()
  {
    this.delegate.destroy();
  }

  void saveAudio(ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.remaining();
    byte[] arrayOfByte = getBuffer(i);
    paramByteBuffer.get(arrayOfByte, 0, i);
    this.audioSaver.saveAudio(arrayOfByte, 0, i);
    paramByteBuffer.rewind();
  }

  public VoiceCommand stringToCommand(String paramString)
  {
    return this.delegate.stringToCommand(paramString);
  }

  public String toString()
  {
    return "AudioSavingHotwordRecognizerDecorator [delegate=" + this.delegate + ", name=" + this.name + ", phaseCount=" + this.phaseCount + "]";
  }

  public HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    if (this.audioSaver == null)
      this.audioSaver = new BufferedAudioSaver(paramLong);
    if (!this.audioSaver.isSavingAudio());
    try
    {
      Log.d(TAG, "Preparing audio saver");
      AudioSaver localAudioSaver = this.audioSaver;
      StringBuilder localStringBuilder = new StringBuilder().append(this.name).append("-");
      int i = this.phaseCount;
      this.phaseCount = (i + 1);
      localAudioSaver.prepareToSaveAudio(i);
      saveAudio(paramByteBuffer.asReadOnlyBuffer());
      return this.delegate.writeAudio(paramByteBuffer, paramLong);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.AudioSavingHotwordRecognizerDecorator
 * JD-Core Version:    0.6.2
 */