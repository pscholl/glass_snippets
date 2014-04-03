package com.google.android.speech.callback;

import com.google.android.speech.RecognitionResponse;
import com.google.android.speech.audio.EndpointerListener;
import com.google.android.speech.exception.RecognizeException;

public abstract interface RecognitionEngineCallback extends EndpointerListener, Callback<RecognitionResponse, RecognizeException>
{
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.callback.RecognitionEngineCallback
 * JD-Core Version:    0.6.2
 */