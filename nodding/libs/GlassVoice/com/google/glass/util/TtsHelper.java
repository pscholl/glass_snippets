package com.google.glass.util;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnInitListener;
import android.speech.tts.UtteranceProgressListener;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.voice.network.translate.NetworkTts;
import java.util.HashMap;
import java.util.concurrent.Executor;

public class TtsHelper
{
  private static final String TAG = TtsHelper.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final AudioManager.OnAudioFocusChangeListener audioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener()
  {
    public void onAudioFocusChange(int paramAnonymousInt)
    {
      switch (paramAnonymousInt)
      {
      case -2:
      case 0:
      case 1:
      case 2:
      default:
        return;
      case -1:
      }
      TtsHelper.this.stopSpeaking();
      TtsHelper.this.audioManager.abandonAudioFocus(this);
    }
  };
  private final UtteranceProgressListener audioFocusUtteranceProgressListener = new UtteranceProgressListener()
  {
    public void onDone(String paramAnonymousString)
    {
      if (TtsHelper.this.currentTtsListener != null)
        TtsHelper.this.currentTtsListener.onDone(paramAnonymousString);
      TtsHelper.this.audioManager.abandonAudioFocus(TtsHelper.this.audioFocusChangeListener);
    }

    public void onError(String paramAnonymousString)
    {
      if (TtsHelper.this.currentTtsListener != null)
        TtsHelper.this.currentTtsListener.onError(paramAnonymousString);
      TtsHelper.this.audioManager.abandonAudioFocus(TtsHelper.this.audioFocusChangeListener);
    }

    public void onStart(String paramAnonymousString)
    {
      if (TtsHelper.this.currentTtsListener != null)
        TtsHelper.this.currentTtsListener.onStart(paramAnonymousString);
      if (TtsHelper.this.audioManager.requestAudioFocus(TtsHelper.this.audioFocusChangeListener, -2147483648, 2) != 1)
      {
        TtsHelper.logger.w("Failed to acquire audio focus. Stopping speaking.", new Object[0]);
        TtsHelper.this.stopSpeaking();
      }
    }
  };
  private final AudioManager audioManager;
  private UtteranceProgressListener currentTtsListener;
  private String lastTextSynthesized;
  private Runnable onInitRunnable;
  private final TextToSpeech textToSpeech;
  private boolean textToSpeechInitialized;
  private final HashMap<String, String> ttsParams;

  public TtsHelper(Context paramContext)
  {
    this.audioManager = ((AudioManager)paramContext.getSystemService("audio"));
    this.ttsParams = new HashMap();
    this.ttsParams.put("utteranceId", "");
    logger.d("Initializing TextToSpeech", new Object[0]);
    this.textToSpeech = new TextToSpeech(paramContext, new TextToSpeech.OnInitListener()
    {
      public void onInit(int paramAnonymousInt)
      {
        FormattingLogger localFormattingLogger = TtsHelper.logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramAnonymousInt);
        localFormattingLogger.d("TextToSpeech initialization status: %s", arrayOfObject);
        if (paramAnonymousInt == 0)
        {
          TtsHelper.access$402(TtsHelper.this, true);
          if (TtsHelper.this.onInitRunnable != null)
          {
            TtsHelper.this.onInitRunnable.run();
            TtsHelper.access$502(TtsHelper.this, null);
          }
          return;
        }
        TtsHelper.logger.e("Failed to initialize TextToSpeech.", new Object[0]);
      }
    });
    this.textToSpeech.setOnUtteranceProgressListener(this.audioFocusUtteranceProgressListener);
  }

  @VisibleForTesting
  public void clearLastTextSynthesized()
  {
    this.lastTextSynthesized = null;
  }

  @VisibleForTesting
  public String getLastTextSynthesized()
  {
    return this.lastTextSynthesized;
  }

  public boolean isSpeaking()
  {
    return this.textToSpeech.isSpeaking();
  }

  public void speakText(String paramString)
  {
    speakText(paramString, null);
  }

  public void speakText(final String paramString, final UtteranceProgressListener paramUtteranceProgressListener)
  {
    this.lastTextSynthesized = paramString;
    if (!this.textToSpeechInitialized)
    {
      logger.d("TTS not yet initialized, queuing up text", new Object[0]);
      Log.logPii(3, TAG, "Queued up text: " + paramString);
      this.onInitRunnable = new Runnable()
      {
        public void run()
        {
          TtsHelper.this.speakText(paramString, paramUtteranceProgressListener);
        }
      };
      return;
    }
    stopSpeaking();
    logger.d("TTS is ready, speaking text", new Object[0]);
    Log.logPii(3, TAG, "Speaking text: " + paramString);
    this.currentTtsListener = paramUtteranceProgressListener;
    this.textToSpeech.speak(paramString, 0, this.ttsParams);
  }

  public void stopSpeaking()
  {
    if (!this.textToSpeechInitialized)
    {
      logger.d("TTS not yet initialized, not calling stop", new Object[0]);
      this.onInitRunnable = null;
    }
    while (true)
    {
      if (NetworkTts.isTtsPlaying())
        AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
        {
          public void run()
          {
            NetworkTts.getSharedInstance().stopSpeaking();
          }
        });
      return;
      if (isSpeaking())
      {
        logger.d("Stopping speaking", new Object[0]);
        this.textToSpeech.stop();
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.TtsHelper
 * JD-Core Version:    0.6.2
 */