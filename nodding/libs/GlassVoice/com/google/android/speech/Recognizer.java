package com.google.android.speech;

import com.google.android.searchcommon.util.SingleThreadedOnly;
import com.google.android.speech.listeners.RecognitionEventListener;
import com.google.android.speech.params.SessionParams;
import com.google.common.util.concurrent.SettableFuture;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

@SingleThreadedOnly(nameOfThread="main")
public abstract interface Recognizer
{
  public static final String LOCALE_EN_US_BCP47 = "en-US";

  public abstract void cancel();

  public abstract void startListening(SessionParams paramSessionParams, RecognitionEventListener paramRecognitionEventListener, Executor paramExecutor, @Nullable SettableFuture<byte[]> paramSettableFuture);

  public abstract void startRecordedAudioRecognition(SessionParams paramSessionParams, byte[] paramArrayOfByte, RecognitionEventListener paramRecognitionEventListener, Executor paramExecutor);

  public abstract void stopListening();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.Recognizer
 * JD-Core Version:    0.6.2
 */