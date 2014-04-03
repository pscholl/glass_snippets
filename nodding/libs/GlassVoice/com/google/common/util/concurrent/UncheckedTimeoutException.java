package com.google.common.util.concurrent;

import javax.annotation.Nullable;

public class UncheckedTimeoutException extends RuntimeException
{
  private static final long serialVersionUID;

  public UncheckedTimeoutException()
  {
  }

  public UncheckedTimeoutException(@Nullable String paramString)
  {
    super(paramString);
  }

  public UncheckedTimeoutException(@Nullable String paramString, @Nullable Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public UncheckedTimeoutException(@Nullable Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.UncheckedTimeoutException
 * JD-Core Version:    0.6.2
 */