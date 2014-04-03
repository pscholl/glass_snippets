package com.google.android.speech.params;

import java.util.UUID;

public class RequestIdGenerator
{
  public static final RequestIdGenerator INSTANCE = new RequestIdGenerator();

  public String newRequestId()
  {
    return UUID.randomUUID().toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.params.RequestIdGenerator
 * JD-Core Version:    0.6.2
 */