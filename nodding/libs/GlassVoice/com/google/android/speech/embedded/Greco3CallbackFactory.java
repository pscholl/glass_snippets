package com.google.android.speech.embedded;

import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.RecognizeException;
import com.google.speech.s3.S3.S3Response;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.EndpointerParams;

public abstract interface Greco3CallbackFactory
{
  public abstract Greco3Callback create(Callback<S3.S3Response, RecognizeException> paramCallback, EndpointerListener paramEndpointerListener, Greco3Mode paramGreco3Mode, GstaticConfiguration.EndpointerParams paramEndpointerParams);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3CallbackFactory
 * JD-Core Version:    0.6.2
 */