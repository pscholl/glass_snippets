package com.google.android.speech.helper;

import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public abstract interface AuthTokenHelper
{
  @Nullable
  public abstract List<String> blockingGetAuthTokens(long paramLong, TimeUnit paramTimeUnit);

  public abstract String getServiceName();

  public abstract void invalidateAuthTokens();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.helper.AuthTokenHelper
 * JD-Core Version:    0.6.2
 */