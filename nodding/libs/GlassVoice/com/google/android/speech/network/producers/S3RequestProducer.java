package com.google.android.speech.network.producers;

import com.google.speech.s3.S3.S3Request;
import java.io.Closeable;
import java.io.IOException;
import javax.annotation.Nullable;

public abstract interface S3RequestProducer extends Closeable
{
  public abstract void close();

  @Nullable
  public abstract S3.S3Request next()
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.S3RequestProducer
 * JD-Core Version:    0.6.2
 */