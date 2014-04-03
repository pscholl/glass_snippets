package com.google.glass.logging.audio;

import android.content.Context;
import com.google.glass.voice.HotwordResult;
import java.io.IOException;

public abstract interface AudioSaver
{
  public abstract void finishSavingAudio();

  public abstract boolean isSavingAudio();

  public abstract void onResult(HotwordResult paramHotwordResult);

  public abstract void prepareToSaveAudio(String paramString)
    throws IOException;

  public abstract void registerWithStorage(Context paramContext, SavedAudioStorage paramSavedAudioStorage);

  public abstract void saveAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.AudioSaver
 * JD-Core Version:    0.6.2
 */