package com.google.glass.voice.remote;

import android.os.RemoteException;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.remote.RemoteCallbackBroadcaster;
import com.google.glass.util.remote.RemoteCallbackOperation;
import com.google.glass.voice.VoiceEngine;
import com.google.glass.voice.network.ISpeechLevelSource.Stub;
import com.google.glass.voice.network.IVoiceInputCallback;
import com.google.glass.voice.network.SpeechException;
import com.google.glass.voice.network.SpeechLevelSource;
import com.google.glass.voice.network.VoiceInputCallback;

public class BroadcastingVoiceInputCallback extends RemoteCallbackBroadcaster<IVoiceInputCallback>
  implements VoiceInputCallback
{
  private static final String TAG = BroadcastingVoiceInputCallback.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private SpeechLevelSource speechLevelSource;
  private final VoiceEngine voiceEngine;

  public BroadcastingVoiceInputCallback(VoiceEngine paramVoiceEngine)
  {
    this.voiceEngine = paramVoiceEngine;
  }

  private String getCallbackTag(IVoiceInputCallback paramIVoiceInputCallback)
  {
    try
    {
      String str = paramIVoiceInputCallback.getTag();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      logger.w(localRemoteException, "Failed to get callback tag", new Object[0]);
    }
    return "(tag unavailable)";
  }

  private void maybeAttachCallbackToEngine()
  {
    try
    {
      int i = beginBroadcast();
      if (i == 1)
        this.voiceEngine.attachVoiceInputCallback(this);
      while (true)
      {
        finishBroadcast();
        return;
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i - 1);
        localFormattingLogger.w("Already have %d remote voice input callback(s) attached; not attaching to VoiceEngine.", arrayOfObject);
      }
    }
    finally
    {
    }
  }

  private void maybeDetachCallbackFromEngine()
  {
    try
    {
      int i = beginBroadcast();
      if (i == 0)
        this.voiceEngine.detachVoiceInputCallback();
      while (true)
      {
        finishBroadcast();
        return;
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        localFormattingLogger.w("Detaching remote voice input callback but still have another %d callback(s) attached; not detaching from VoiceEngine.", arrayOfObject);
      }
    }
    finally
    {
    }
  }

  public String getTag()
  {
    return TAG;
  }

  public void onActionResponse(final byte[] paramArrayOfByte)
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.onActionResponse(paramArrayOfByte);
      }
    });
  }

  public void onError(final SpeechException paramSpeechException)
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.onError(paramSpeechException);
      }
    });
  }

  public void onHtmlAnswerCardResult(final String paramString)
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.onHtmlAnswerCardResult(paramString);
      }
    });
  }

  public void onRecognitionResult(final CharSequence paramCharSequence, final float paramFloat)
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.onRecognitionResult(paramCharSequence, paramFloat);
      }
    });
  }

  public void onRegister(IVoiceInputCallback paramIVoiceInputCallback)
  {
    try
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = getCallbackTag(paramIVoiceInputCallback);
      localFormattingLogger.i("Registered %s", arrayOfObject);
      if (this.speechLevelSource != null)
        setSpeechLevelSource(this.speechLevelSource);
      maybeAttachCallbackToEngine();
      return;
    }
    finally
    {
    }
  }

  public void onSoundSearchResult(final EarsService.EarsResultsResponse paramEarsResultsResponse)
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.onSoundSearchResult(paramEarsResultsResponse.toByteArray());
      }
    });
  }

  public void onUnregister(IVoiceInputCallback paramIVoiceInputCallback)
  {
    try
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = getCallbackTag(paramIVoiceInputCallback);
      localFormattingLogger.i("Unregistered %s", arrayOfObject);
      if (beginBroadcast() == 0)
        this.voiceEngine.endpointNetworkRecognizer();
      finishBroadcast();
      maybeDetachCallbackFromEngine();
      return;
    }
    finally
    {
    }
  }

  public void setSpeechLevelSource(final SpeechLevelSource paramSpeechLevelSource)
  {
    this.speechLevelSource = paramSpeechLevelSource;
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.setSpeechLevelSource(new ISpeechLevelSource.Stub()
        {
          public int getSpeechLevel()
            throws RemoteException
          {
            return BroadcastingVoiceInputCallback.13.this.val$source.getSpeechLevel();
          }
        });
      }
    });
  }

  public void showDone()
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.showDone();
      }
    });
  }

  public void showListening()
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.showListening();
      }
    });
  }

  public void showMusicDetected()
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.showMusicDetected();
      }
    });
  }

  public void showNoSpeechDetected()
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.showNoSpeechDetected();
      }
    });
  }

  public void showRecognizing()
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.showRecognizing();
      }
    });
  }

  public void showRecording()
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.showRecording();
      }
    });
  }

  public void updateRecognizedText(final CharSequence paramCharSequence1, final CharSequence paramCharSequence2)
  {
    doOperation(new RemoteVoiceInputCallbackOperation()
    {
      public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
        throws RemoteException
      {
        paramAnonymousIVoiceInputCallback.updateRecognizedText(paramCharSequence1, paramCharSequence2);
      }
    });
  }

  static abstract interface RemoteVoiceInputCallbackOperation extends RemoteCallbackOperation<IVoiceInputCallback>
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.remote.BroadcastingVoiceInputCallback
 * JD-Core Version:    0.6.2
 */