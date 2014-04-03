package com.google.android.speech.network.producers;

import com.google.android.speech.params.SessionParams;
import java.io.InputStream;

public abstract interface RequestProducerFactory
{
  public abstract void init(SessionParams paramSessionParams);

  public abstract S3RequestProducer newRequestProducer(InputStream paramInputStream);

  public abstract void refresh();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.RequestProducerFactory
 * JD-Core Version:    0.6.2
 */