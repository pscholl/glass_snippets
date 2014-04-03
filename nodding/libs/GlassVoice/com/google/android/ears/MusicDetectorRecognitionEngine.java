package com.google.android.ears;

import android.util.Log;
import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.embedded.Greco3Recognizer;
import com.google.android.speech.engine.RecognitionEngine;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.params.SessionParams;
import com.google.android.speech.params.SessionParams.Mode;
import com.google.audio.ears.MusicDetector;
import com.google.common.io.ByteStreams;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.SoundSearch;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;

public class MusicDetectorRecognitionEngine
  implements RecognitionEngine
{
  private static final int BUFFER_SIZE_BYTES = 4000;
  private static final int HOTWORD_BUFFER_SIZE_BYTES = 8000;
  private static final int HOTWORD_MIN_CONSECUTIVE_DETECTIONS = 3;
  private static final String TAG = "MusicDetectorRecognitionEngine";

  @GuardedBy("this")
  private boolean mClosed = true;
  private final SpeechSettings mSpeechSettings;

  public MusicDetectorRecognitionEngine(SpeechSettings paramSpeechSettings)
  {
    this.mSpeechSettings = paramSpeechSettings;
  }

  private float getMusicDetectorThreshold()
  {
    if ((!this.mSpeechSettings.getConfiguration().hasSoundSearch()) || (!this.mSpeechSettings.getConfiguration().getSoundSearch().hasMusicDetectorThreshold()))
      return 1.0F;
    return this.mSpeechSettings.getConfiguration().getSoundSearch().getMusicDetectorThreshold();
  }

  private boolean initMusicDetector(int paramInt)
  {
    try
    {
      boolean bool1 = this.mClosed;
      boolean bool2 = false;
      if (bool1);
      while (true)
      {
        return bool2;
        try
        {
          MusicDetector.init(paramInt);
          bool2 = true;
        }
        catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
        {
          Log.w("MusicDetectorRecognitionEngine", "Exception on native init(): " + localUnsatisfiedLinkError);
          bool2 = false;
        }
      }
    }
    finally
    {
    }
  }

  private Float processAudio(byte[] paramArrayOfByte)
  {
    try
    {
      boolean bool = this.mClosed;
      if (bool);
      Float localFloat;
      for (Object localObject2 = null; ; localObject2 = localFloat)
      {
        return localObject2;
        localFloat = Float.valueOf(MusicDetector.process(paramArrayOfByte, paramArrayOfByte.length / 2));
      }
    }
    finally
    {
    }
  }

  private void processInputStream(InputStream paramInputStream, Callback<RecognitionResponse, RecognizeException> paramCallback, SessionParams paramSessionParams, EndpointerListener paramEndpointerListener)
  {
    float f = getMusicDetectorThreshold();
    int i;
    if (paramSessionParams.getMode() == SessionParams.Mode.HOTWORD)
      i = 8000;
    while (true)
    {
      byte[] arrayOfByte = new byte[i];
      int j = 0;
      try
      {
        while (true)
        {
          ByteStreams.readFully(paramInputStream, arrayOfByte);
          Float localFloat = processAudio(arrayOfByte);
          if (localFloat == null)
            return;
          if (localFloat.floatValue() < f)
            break label118;
          j++;
          if (paramSessionParams.getMode() != SessionParams.Mode.HOTWORD)
            break;
          if (j >= 3)
            paramEndpointerListener.onMusicDetected();
        }
        paramEndpointerListener.onMusicDetected();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          paramCallback.onError(new AudioRecognizeException("Error reading from input stream.", localIOException));
          return;
          label118: j = 0;
        }
        i = 4000;
      }
      catch (EOFException localEOFException)
      {
      }
    }
  }

  public void close()
  {
    try
    {
      boolean bool = this.mClosed;
      if (bool);
      while (true)
      {
        return;
        this.mClosed = true;
        Greco3Recognizer.maybeLoadSharedLibrary();
        try
        {
          MusicDetector.close();
        }
        catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
        {
          Log.w("MusicDetectorRecognitionEngine", "Exception on native close(): " + localUnsatisfiedLinkError);
        }
      }
    }
    finally
    {
    }
  }

  // ERROR //
  public void startRecognition(com.google.android.speech.audio.AudioInputStreamFactory paramAudioInputStreamFactory, Callback<RecognitionResponse, RecognizeException> paramCallback, SessionParams paramSessionParams, EndpointerListener paramEndpointerListener)
  {
    // Byte code:
    //   0: invokestatic 155	com/google/android/speech/embedded/Greco3Recognizer:maybeLoadSharedLibrary	()V
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: iconst_0
    //   7: putfield 31	com/google/android/ears/MusicDetectorRecognitionEngine:mClosed	Z
    //   10: aload_0
    //   11: monitorexit
    //   12: aload_1
    //   13: invokeinterface 167 1 0
    //   18: astore 7
    //   20: aload_0
    //   21: aload_3
    //   22: invokevirtual 171	com/google/android/speech/params/SessionParams:getAudioInputParams	()Lcom/google/android/speech/params/AudioInputParams;
    //   25: invokevirtual 177	com/google/android/speech/params/AudioInputParams:getSamplingRate	()I
    //   28: invokespecial 179	com/google/android/ears/MusicDetectorRecognitionEngine:initMusicDetector	(I)Z
    //   31: ifne +31 -> 62
    //   34: return
    //   35: astore 5
    //   37: aload_0
    //   38: monitorexit
    //   39: aload 5
    //   41: athrow
    //   42: astore 6
    //   44: aload_2
    //   45: new 138	com/google/android/speech/exception/AudioRecognizeException
    //   48: dup
    //   49: ldc 181
    //   51: aload 6
    //   53: invokespecial 143	com/google/android/speech/exception/AudioRecognizeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   56: invokeinterface 149 2 0
    //   61: return
    //   62: aload_0
    //   63: aload 7
    //   65: aload_2
    //   66: aload_3
    //   67: aload 4
    //   69: invokespecial 183	com/google/android/ears/MusicDetectorRecognitionEngine:processInputStream	(Ljava/io/InputStream;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V
    //   72: return
    //
    // Exception table:
    //   from	to	target	type
    //   5	12	35	finally
    //   37	39	35	finally
    //   12	20	42	java/io/IOException
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.ears.MusicDetectorRecognitionEngine
 * JD-Core Version:    0.6.2
 */