package com.google.android.speech.network;

import com.google.android.speech.callback.Callback;
import com.google.android.speech.exception.RecognizeException;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3Response;
import java.io.Closeable;
import java.io.IOException;
import javax.annotation.Nonnull;

public abstract interface S3Connection extends Closeable
{
  public abstract void close();

  public abstract void connect(@Nonnull Callback<S3.S3Response, RecognizeException> paramCallback, @Nonnull S3.S3Request paramS3Request)
    throws IOException;

  public abstract void send(@Nonnull S3.S3Request paramS3Request);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.S3Connection
 * JD-Core Version:    0.6.2
 */