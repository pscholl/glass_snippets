package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible
public class UncheckedExecutionException extends RuntimeException
{
  private static final long serialVersionUID;

  protected UncheckedExecutionException()
  {
  }

  protected UncheckedExecutionException(@Nullable String paramString)
  {
    super(paramString);
  }

  public UncheckedExecutionException(@Nullable String paramString, @Nullable Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public UncheckedExecutionException(@Nullable Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.UncheckedExecutionException
 * JD-Core Version:    0.6.2
 */