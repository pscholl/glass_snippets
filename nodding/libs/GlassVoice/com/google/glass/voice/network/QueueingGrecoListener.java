package com.google.glass.voice.network;

import android.os.Message;
import android.util.Log;
import com.google.android.speech.exception.RecognizeException;
import com.google.android.speech.listeners.RecognitionEventListenerAdapter;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.common.collect.Lists;
import com.google.glass.predicates.Assert;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.s3.PinholeStream.PinholeOutput;
import java.util.Queue;

public class QueueingGrecoListener extends RecognitionEventListenerAdapter
{
  private static final int ON_BEGINNING_OF_SPEECH = 1;
  private static final int ON_DONE = 10;
  private static final int ON_END_OF_SPEECH = 2;
  private static final int ON_ERROR = 11;
  private static final int ON_MEDIA_DATA_RESULT = 7;
  private static final int ON_MUSIC_DETECTED = 5;
  private static final int ON_NO_SPEECH_DETECTED = 3;
  private static final int ON_PINHOLE_RESULT = 6;
  private static final int ON_READY_FOR_SPEECH = 0;
  private static final int ON_RECOGNITION_CANCELLED = 4;
  private static final int ON_RECOGNITION_RESULT = 8;
  private static final int ON_SOUND_SEARCH_RESULT = 9;
  private static final String TAG = QueueingGrecoListener.class.getSimpleName();
  private boolean isCanceled = false;
  private RecognitionEventListenerAdapter listener;
  private Queue<Message> queue = Lists.newLinkedList();

  private void addToQueue(int paramInt, Object paramObject)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = paramInt;
      if (paramObject != null)
        localMessage.obj = paramObject;
      Log.d(TAG, "Adding message to queue: " + paramInt);
      this.queue.offer(localMessage);
      return;
    }
    finally
    {
    }
  }

  private void dispatchOnBeginningOfSpeech()
  {
    this.listener.onBeginningOfSpeech();
  }

  private void dispatchOnDone()
  {
    this.listener.onDone();
    this.isCanceled = true;
  }

  private void dispatchOnEndOfSpeech()
  {
    this.listener.onEndOfSpeech();
  }

  private void dispatchOnError(RecognizeException paramRecognizeException)
  {
    this.listener.onError(paramRecognizeException);
    this.isCanceled = true;
  }

  private void dispatchOnMediaDataResult(byte[] paramArrayOfByte)
  {
    this.listener.onMediaDataResult(paramArrayOfByte);
  }

  private void dispatchOnMusicDetected()
  {
    this.listener.onMusicDetected();
  }

  private void dispatchOnNoSpeechDetected()
  {
    this.listener.onNoSpeechDetected();
    this.isCanceled = true;
  }

  private void dispatchOnPinholeResult(PinholeStream.PinholeOutput paramPinholeOutput)
  {
    this.listener.onPinholeResult(paramPinholeOutput);
  }

  private void dispatchOnReadyForSpeech(float paramFloat1, float paramFloat2)
  {
    this.listener.onReadyForSpeech(paramFloat1, paramFloat2);
  }

  private void dispatchOnRecognitionCancelled()
  {
    this.listener.onRecognitionCancelled();
  }

  private void dispatchOnRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    this.listener.onRecognitionResult(paramRecognitionEvent);
  }

  private void dispatchOnSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse)
  {
    this.listener.onSoundSearchResult(paramEarsResultsResponse);
  }

  private void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      dispatchOnBeginningOfSpeech();
      return;
    case 10:
      dispatchOnDone();
      return;
    case 2:
      dispatchOnEndOfSpeech();
      return;
    case 5:
      dispatchOnMusicDetected();
      return;
    case 11:
      dispatchOnError((RecognizeException)paramMessage.obj);
      return;
    case 6:
      dispatchOnPinholeResult((PinholeStream.PinholeOutput)paramMessage.obj);
      return;
    case 7:
      dispatchOnMediaDataResult((byte[])paramMessage.obj);
      return;
    case 9:
      dispatchOnSoundSearchResult((EarsService.EarsResultsResponse)paramMessage.obj);
      return;
    case 3:
      dispatchOnNoSpeechDetected();
      return;
    case 0:
      float[] arrayOfFloat = (float[])paramMessage.obj;
      dispatchOnReadyForSpeech(arrayOfFloat[0], arrayOfFloat[1]);
      return;
    case 4:
      dispatchOnRecognitionCancelled();
      return;
    case 8:
    }
    dispatchOnRecognitionResult((RecognizerProtos.RecognitionEvent)paramMessage.obj);
  }

  Queue<Message> getQueueForTest()
  {
    Assert.isTest();
    return this.queue;
  }

  public void onBeginningOfSpeech()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(1, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnBeginningOfSpeech();
      }
    }
    finally
    {
    }
  }

  public void onDone()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(10, null);
      }
      while (true)
      {
        return;
        label26: dispatchOnDone();
      }
    }
    finally
    {
    }
  }

  public void onEndOfSpeech()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(2, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnEndOfSpeech();
      }
    }
    finally
    {
    }
  }

  public void onError(RecognizeException paramRecognizeException)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(11, paramRecognizeException);
      }
      while (true)
      {
        return;
        label26: dispatchOnError(paramRecognizeException);
      }
    }
    finally
    {
    }
  }

  public void onMediaDataResult(byte[] paramArrayOfByte)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(7, paramArrayOfByte);
      }
      while (true)
      {
        return;
        label26: dispatchOnMediaDataResult(paramArrayOfByte);
      }
    }
    finally
    {
    }
  }

  public void onMusicDetected()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(5, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnMusicDetected();
      }
    }
    finally
    {
    }
  }

  public void onNoSpeechDetected()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(3, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnNoSpeechDetected();
      }
    }
    finally
    {
    }
  }

  public void onPinholeResult(PinholeStream.PinholeOutput paramPinholeOutput)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(6, paramPinholeOutput);
      }
      while (true)
      {
        return;
        label26: dispatchOnPinholeResult(paramPinholeOutput);
      }
    }
    finally
    {
    }
  }

  public void onReadyForSpeech(float paramFloat1, float paramFloat2)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label35;
        addToQueue(0, new float[] { paramFloat1, paramFloat2 });
      }
      while (true)
      {
        return;
        label35: dispatchOnReadyForSpeech(paramFloat1, paramFloat2);
      }
    }
    finally
    {
    }
  }

  public void onRecognitionCancelled()
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label25;
        addToQueue(4, null);
      }
      while (true)
      {
        return;
        label25: dispatchOnRecognitionCancelled();
      }
    }
    finally
    {
    }
  }

  public void onRecognitionResult(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(8, paramRecognitionEvent);
      }
      while (true)
      {
        return;
        label26: dispatchOnRecognitionResult(paramRecognitionEvent);
      }
    }
    finally
    {
    }
  }

  public void onSoundSearchResult(EarsService.EarsResultsResponse paramEarsResultsResponse)
  {
    try
    {
      if (!this.isCanceled)
      {
        if (this.listener != null)
          break label26;
        addToQueue(9, paramEarsResultsResponse);
      }
      while (true)
      {
        return;
        label26: dispatchOnSoundSearchResult(paramEarsResultsResponse);
      }
    }
    finally
    {
    }
  }

  public void resetCanceledForTest()
  {
    try
    {
      Assert.isTest();
      this.isCanceled = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setCanceled()
  {
    try
    {
      this.isCanceled = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setListener(RecognitionEventListenerAdapter paramRecognitionEventListenerAdapter)
  {
    try
    {
      if (this.listener != null)
        Log.w(TAG, "Listener was already set - current: " + this.listener + " new: " + paramRecognitionEventListenerAdapter);
      this.listener = paramRecognitionEventListenerAdapter;
      if (this.queue == null)
        break label100;
      while (!this.queue.isEmpty())
        handleMessage((Message)this.queue.poll());
    }
    finally
    {
    }
    this.queue = null;
    label100:
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.QueueingGrecoListener
 * JD-Core Version:    0.6.2
 */