package com.google.android.speech.network.request;

import java.util.concurrent.Callable;
import javax.annotation.Nullable;

public abstract class BaseRequestBuilderTask<T>
  implements Callable<T>
{
  private static final boolean DBG;
  private final String mTag;

  protected BaseRequestBuilderTask(String paramString)
  {
    this.mTag = paramString;
  }

  @Nullable
  protected abstract T build();

  @Nullable
  public T call()
  {
    return build();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.BaseRequestBuilderTask
 * JD-Core Version:    0.6.2
 */