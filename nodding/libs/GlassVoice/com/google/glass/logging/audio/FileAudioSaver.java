package com.google.glass.logging.audio;

import android.content.Context;
import com.google.common.collect.Lists;
import com.google.glass.logging.Log;
import com.google.glass.voice.HotwordResult;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

public abstract class FileAudioSaver
  implements AudioSaver
{
  public static final String SAVE_TO_DISK_BASE_PATH = "/data/data/com.google.glass.voice/recorded_audio/";
  private static final String TAG = FileAudioSaver.class.getSimpleName();
  private String destinationPath;
  private final List<HotwordResult> hotwordResults = Lists.newArrayList();
  private final long sampleRate;
  private FileOutputStream saveToDiskOutputStream;
  private boolean savingAudio;

  public FileAudioSaver(long paramLong)
  {
    this.sampleRate = paramLong;
  }

  public final void finishSavingAudio()
  {
    if (!this.savingAudio)
    {
      Log.w(TAG, "finishSavingAudio() called before preparing or after finishing.", new Object[0]);
      return;
    }
    Log.d(TAG, "Closing out writing audio to disk", new Object[0]);
    onFinishSavingAudio();
    try
    {
      if (this.saveToDiskOutputStream != null)
        this.saveToDiskOutputStream.close();
      while (true)
      {
        return;
        Log.w(TAG, "Output stream was not initialized before finishing.", new Object[0]);
      }
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Error closing output stream for saved audio", new Object[] { localIOException });
      return;
    }
    finally
    {
      this.saveToDiskOutputStream = null;
      this.savingAudio = false;
    }
  }

  public final String getDestinationPath()
  {
    return this.destinationPath;
  }

  protected FileOutputStream getFileOutputStream()
  {
    return this.saveToDiskOutputStream;
  }

  public final boolean isSavingAudio()
  {
    return this.savingAudio;
  }

  protected void onFinishSavingAudio()
  {
  }

  protected void onPrepareToSaveAudio()
  {
  }

  public final void onResult(HotwordResult paramHotwordResult)
  {
    this.hotwordResults.add(paramHotwordResult);
  }

  abstract void onSaveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public final void prepareToSaveAudio(String paramString)
    throws IOException
  {
    if (this.savingAudio)
    {
      Log.w(TAG, "prepareToSaveAudio() called more than once.", new Object[0]);
      return;
    }
    this.hotwordResults.clear();
    this.savingAudio = true;
    this.destinationPath = ("/data/data/com.google.glass.voice/recorded_audio/" + paramString + ".pcm");
    Log.d(TAG, "Setting up to save audio to: " + this.destinationPath, new Object[0]);
    this.saveToDiskOutputStream = new FileOutputStream(this.destinationPath);
    onPrepareToSaveAudio();
  }

  public final void registerWithStorage(Context paramContext, SavedAudioStorage paramSavedAudioStorage)
  {
    paramSavedAudioStorage.storeAudio(paramContext, getDestinationPath(), this.hotwordResults, this.sampleRate, SavedAudioStorage.getEnabledStorageLabs());
  }

  public final void saveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.savingAudio)
    {
      Log.w(TAG, "saveAudio() called before preparing or after finishing.", new Object[0]);
      return;
    }
    onSaveAudio(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.FileAudioSaver
 * JD-Core Version:    0.6.2
 */