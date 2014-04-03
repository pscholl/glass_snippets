package com.google.android.speech.embedded;

import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.RecognitionResponseWrapper;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.audio.AudioInputStreamFactory;
import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.engine.RecognitionEngine;
import com.google.android.speech.exception.AudioRecognizeException;
import com.google.android.speech.exception.EmbeddedRecognizeException;
import com.google.android.speech.exception.NoMatchRecognizeException;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.network.request.RecognizerSessionParamsBuilderTask;
import com.google.android.speech.params.SessionParams;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.io.Closeables;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class Greco3RecognitionEngine
  implements RecognitionEngine
{
  private static final boolean DBG = false;
  private static final String TAG = "VS.Greco3RecognitionEngine";
  private final int mBytesPerSample;

  @Nonnull
  private final Greco3CallbackFactory mCallbackFactory;
  private Greco3Recognizer mCurrentRecognition;
  private Greco3EngineManager.Resources mCurrentResources;

  @Nonnull
  private final Greco3EngineManager mGreco3EngineManager;

  @Nonnull
  private final GrecoEventLogger.Factory mGrecoEventLoggerFactory;
  private InputStream mInput;

  @Nonnull
  private final Greco3ModeSelector mModeSelector;
  private final int mSamplingRate;

  @Nonnull
  private final SpeechSettings mSpeechSettings;

  public Greco3RecognitionEngine(@Nonnull Greco3EngineManager paramGreco3EngineManager, int paramInt1, int paramInt2, @Nonnull SpeechSettings paramSpeechSettings, @Nonnull Greco3CallbackFactory paramGreco3CallbackFactory, @Nonnull Greco3ModeSelector paramGreco3ModeSelector, @Nonnull GrecoEventLogger.Factory paramFactory)
  {
    this.mGreco3EngineManager = paramGreco3EngineManager;
    this.mSamplingRate = paramInt1;
    this.mBytesPerSample = paramInt2;
    this.mSpeechSettings = paramSpeechSettings;
    this.mCallbackFactory = paramGreco3CallbackFactory;
    this.mModeSelector = paramGreco3ModeSelector;
    this.mGrecoEventLoggerFactory = paramFactory;
  }

  private void cleanupAndDispatchStartError(Greco3Callback paramGreco3Callback, RecognizeException paramRecognizeException)
  {
    this.mCurrentRecognition = null;
    this.mCurrentResources = null;
    paramGreco3Callback.handleError(paramRecognizeException);
  }

  private RecognizerSessionParamsProto.RecognizerSessionParams getEmbeddedRecognizerParams(SessionParams paramSessionParams)
  {
    return (RecognizerSessionParamsProto.RecognizerSessionParams)new RecognizerSessionParamsBuilderTask(this.mSpeechSettings, paramSessionParams.isPartialResultsEnabled(), paramSessionParams.isAlternatesEnabled()).call();
  }

  public void close()
  {
    if (this.mCurrentRecognition != null)
    {
      this.mGreco3EngineManager.release(this.mCurrentRecognition);
      this.mCurrentRecognition = null;
    }
    Closeables.closeQuietly(this.mInput);
    this.mInput = null;
  }

  @VisibleForTesting
  Greco3Recognizer createRecognizer(Greco3EngineManager.Resources paramResources)
  {
    return Greco3Recognizer.create(paramResources, this.mSamplingRate, this.mBytesPerSample);
  }

  @Nullable
  @VisibleForTesting
  Greco3Mode createRecognizerFor(String paramString, Greco3Mode paramGreco3Mode, Greco3Grammar paramGreco3Grammar)
  {
    this.mGreco3EngineManager.maybeInitialize();
    Greco3Mode localGreco3Mode1 = this.mModeSelector.getMode(paramGreco3Mode, paramGreco3Grammar);
    Greco3Mode localGreco3Mode2 = this.mModeSelector.getFallbackMode(paramGreco3Mode, paramGreco3Grammar);
    if (localGreco3Mode1 == null);
    Greco3EngineManager.Resources localResources;
    do
    {
      do
      {
        return null;
        localResources = this.mGreco3EngineManager.getResources(paramString, localGreco3Mode1, paramGreco3Grammar);
        if (localResources != null)
          break;
      }
      while (localGreco3Mode2 == null);
      localResources = this.mGreco3EngineManager.getResources(paramString, localGreco3Mode2, null);
    }
    while (localResources == null);
    for (Greco3Mode localGreco3Mode3 = localGreco3Mode2; ; localGreco3Mode3 = localGreco3Mode1)
    {
      this.mCurrentRecognition = createRecognizer(localResources);
      this.mCurrentResources = localResources;
      return localGreco3Mode3;
    }
  }

  public void startRecognition(AudioInputStreamFactory paramAudioInputStreamFactory, Callback<RecognitionResponse, RecognizeException> paramCallback, SessionParams paramSessionParams, EndpointerListener paramEndpointerListener)
  {
    Preconditions.checkNotNull(paramEndpointerListener);
    Preconditions.checkNotNull(paramCallback);
    this.mCurrentRecognition = null;
    this.mCurrentResources = null;
    Greco3Recognizer.maybeLoadSharedLibrary();
    Greco3Mode localGreco3Mode1 = paramSessionParams.getGreco3Mode();
    Greco3Mode localGreco3Mode2 = createRecognizerFor(paramSessionParams.getSpokenBcp47Locale(), localGreco3Mode1, paramSessionParams.getGreco3Grammar());
    RecognitionResponseWrapper localRecognitionResponseWrapper = new RecognitionResponseWrapper(paramCallback, 1);
    Greco3Callback localGreco3Callback = this.mCallbackFactory.create(localRecognitionResponseWrapper, paramEndpointerListener, localGreco3Mode2, paramSessionParams.getEndpointerParams(this.mSpeechSettings));
    if (localGreco3Mode2 == null)
      cleanupAndDispatchStartError(localGreco3Callback, new EmbeddedRecognizerUnavailableException());
    while (true)
    {
      return;
      try
      {
        this.mInput = paramAudioInputStreamFactory.createInputStream();
        this.mGreco3EngineManager.startRecognition(this.mCurrentRecognition, this.mInput, localGreco3Callback, getEmbeddedRecognizerParams(paramSessionParams), this.mGrecoEventLoggerFactory.getEventLoggerForMode(localGreco3Mode2), this.mCurrentResources.languagePack);
        if ((localGreco3Mode2.isEndpointerMode()) && (!localGreco3Mode1.isEndpointerMode()))
        {
          localGreco3Callback.handleError(new EmbeddedRecognizerUnavailableException());
          return;
        }
      }
      catch (IOException localIOException)
      {
        cleanupAndDispatchStartError(localGreco3Callback, new AudioRecognizeException("Unable to create stream", localIOException));
      }
    }
  }

  public static final class EmbeddedRecognizerUnavailableException extends EmbeddedRecognizeException
  {
    public EmbeddedRecognizerUnavailableException()
    {
      super();
    }
  }

  public static final class NoMatchesFromEmbeddedRecognizerException extends NoMatchRecognizeException
  {
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3RecognitionEngine
 * JD-Core Version:    0.6.2
 */