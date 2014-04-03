package com.google.android.speech;

import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.RecognizeException;
import com.google.speech.s3.S3.S3Response;

public class RecognitionResponseWrapper
  implements Callback<S3.S3Response, RecognizeException>
{
  final Callback<RecognitionResponse, RecognizeException> mCallback;
  final int mEngine;

  public RecognitionResponseWrapper(Callback<RecognitionResponse, RecognizeException> paramCallback, int paramInt)
  {
    this.mCallback = paramCallback;
    this.mEngine = paramInt;
  }

  public void onError(RecognizeException paramRecognizeException)
  {
    paramRecognizeException.setEngine(this.mEngine);
    this.mCallback.onError(paramRecognizeException);
  }

  public void onResult(S3.S3Response paramS3Response)
  {
    this.mCallback.onResult(RecognitionResponse.createRecognitionResponse(paramS3Response, this.mEngine));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.RecognitionResponseWrapper
 * JD-Core Version:    0.6.2
 */