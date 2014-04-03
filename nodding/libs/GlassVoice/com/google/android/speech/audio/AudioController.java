package com.google.android.speech.audio;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaSyncEvent;
import android.os.Environment;
import android.util.Log;
import com.google.android.speech.SpeechLevelSource;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.listeners.RecognitionEventListener;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.logger.SpeechLibLogger.LogData;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.voicesearch.AudioRouter;
import com.google.android.voicesearch.LogExtras;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.annotation.Nullable;

public class AudioController
{
  private static final boolean DBG = false;
  private static final String TAG = "AudioController";
  public static final int TEE_BUFFER_SIZE = 1000;
  public static final int TEE_KEEP_SIZE = 500;
  private final AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener()
  {
    public void onAudioFocusChange(int paramAnonymousInt)
    {
      Log.i("AudioController", "Audio focus change " + paramAnonymousInt);
    }
  };
  private final AudioManager mAudioManager;
  private final AudioRouter mAudioRouter;
  private final Supplier<Integer> mAudioRoutingSupplier;
  private AudioSource mAudioSource;
  private final Context mContext;
  private boolean mListening;
  private final LogExtras mLogExtras;
  private final SpeechLibLogger mLogger;
  private List<String> mNoiseSuppressors;

  @Nullable
  private AudioInputStreamFactory mRawInputStreamFactory = null;
  private final SpeechSettings mSettings;
  private final SpeechSoundManager mSoundManager;
  private final SpeechLevelSource mSpeechLevelSource;

  public AudioController(Context paramContext, SpeechSettings paramSpeechSettings, SpeechLevelSource paramSpeechLevelSource, SpeechSoundManager paramSpeechSoundManager, Supplier<Integer> paramSupplier, AudioRouter paramAudioRouter, AudioManager paramAudioManager, SpeechLibLogger paramSpeechLibLogger, LogExtras paramLogExtras)
  {
    this.mContext = paramContext;
    this.mSettings = paramSpeechSettings;
    this.mSoundManager = paramSpeechSoundManager;
    this.mSpeechLevelSource = paramSpeechLevelSource;
    this.mAudioRoutingSupplier = paramSupplier;
    this.mAudioRouter = paramAudioRouter;
    this.mAudioManager = paramAudioManager;
    this.mLogger = paramSpeechLibLogger;
    this.mLogExtras = paramLogExtras;
  }

  private AudioSource createAudioSource(AudioInputStreamFactory paramAudioInputStreamFactory)
  {
    return new AudioSource(320, 500, 1000, paramAudioInputStreamFactory, this.mSpeechLevelSource);
  }

  private AudioInputStreamFactory createDefaultRawInputStreamFactoryLocked(AudioInputParams paramAudioInputParams)
  {
    boolean bool = paramAudioInputParams.isPlayBeepEnabled();
    Supplier local3 = null;
    if (bool)
      local3 = new Supplier()
      {
        public MediaSyncEvent get()
        {
          int i = AudioController.this.mSoundManager.playSpeakNowSound();
          if (i > 0)
          {
            MediaSyncEvent localMediaSyncEvent = MediaSyncEvent.createEvent(1);
            localMediaSyncEvent.setAudioSessionId(i);
            return localMediaSyncEvent;
          }
          return null;
        }
      };
    return new VoiceAudioInputStreamFactory(new MicrophoneInputStreamFactory(paramAudioInputParams.getSamplingRate(), isNoiseSuppressionEnabled(paramAudioInputParams), local3), this.mSettings, this.mContext);
  }

  private AudioInputStreamFactory getRawInputStreamFactoryLocked(AudioInputParams paramAudioInputParams)
  {
    if (this.mRawInputStreamFactory != null)
      return this.mRawInputStreamFactory;
    return createDefaultRawInputStreamFactoryLocked(paramAudioInputParams);
  }

  private boolean isNoiseSuppressionEnabled(AudioInputParams paramAudioInputParams)
  {
    if (!paramAudioInputParams.isNoiseSuppressionEnabled());
    do
    {
      return false;
      if (this.mNoiseSuppressors == null)
        this.mNoiseSuppressors = AudioUtils.getNoiseSuppressors(this.mSettings.getConfiguration().getPlatform());
    }
    while (this.mNoiseSuppressors.size() == 0);
    return true;
  }

  public AudioInputStreamFactory createInputStreamFactory(AudioInputParams paramAudioInputParams)
  {
    try
    {
      this.mAudioSource = createAudioSource(getRawInputStreamFactoryLocked(paramAudioInputParams));
      AudioSource localAudioSource = this.mAudioSource;
      return localAudioSource;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public AudioInputStreamFactory rewindInputStreamFactory(long paramLong)
  {
    try
    {
      Preconditions.checkNotNull(this.mAudioSource);
      Preconditions.checkState(this.mListening);
      this.mAudioSource = new AudioSource(this.mAudioSource);
      this.mAudioSource.setStartTime(paramLong);
      AudioSource localAudioSource = this.mAudioSource;
      return localAudioSource;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setCannedAudio(final String paramString)
  {
    try
    {
      setRawInputStreamFactory(new AudioInputStreamFactory()
      {
        public InputStream createInputStream()
          throws IOException
        {
          AudioController.this.setRawInputStreamFactory(null);
          return new BufferedInputStream(new FileInputStream(new File(Environment.getExternalStorageDirectory(), paramString)));
        }
      });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setHeadsetEnabled(boolean paramBoolean)
  {
    this.mAudioRouter.setHeadsetEnabled(paramBoolean);
  }

  public void setRawInputStreamFactory(@Nullable AudioInputStreamFactory paramAudioInputStreamFactory)
  {
    try
    {
      this.mRawInputStreamFactory = paramAudioInputStreamFactory;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void shutdown()
  {
    try
    {
      stopListening();
      if (this.mAudioSource != null)
      {
        this.mAudioSource.shutdown();
        this.mAudioSource = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void startListening(RecognitionEventListener paramRecognitionEventListener)
  {
    try
    {
      SpeechLibLogger localSpeechLibLogger;
      int i;
      int j;
      if (!this.mListening)
      {
        this.mSpeechLevelSource.reset();
        this.mAudioManager.requestAudioFocus(this.mAudioFocusChangeListener, 1, 2);
        localSpeechLibLogger = this.mLogger;
        i = ((Integer)this.mAudioRoutingSupplier.get()).intValue();
        j = this.mLogExtras.getNetworkType();
        if (this.mAudioRouter.shouldUseScoForAllAudio())
          break label130;
      }
      label130: for (boolean bool = true; ; bool = false)
      {
        localSpeechLibLogger.logAudioPathEstablished(new SpeechLibLogger.LogData(i, j, bool));
        if (this.mAudioSource != null)
          this.mAudioSource.start(paramRecognitionEventListener);
        this.mAudioRouter.startListening();
        this.mListening = true;
        return;
      }
    }
    finally
    {
    }
  }

  public void stopListening()
  {
    try
    {
      if (this.mListening)
      {
        if (this.mAudioSource != null)
          this.mAudioSource.stopListening();
        this.mAudioRouter.stopListening();
        this.mAudioManager.abandonAudioFocus(this.mAudioFocusChangeListener);
        this.mSpeechLevelSource.reset();
        this.mListening = false;
      }
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.AudioController
 * JD-Core Version:    0.6.2
 */