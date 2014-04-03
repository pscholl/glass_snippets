package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible
public class ComputationException extends RuntimeException
{
  private static final long serialVersionUID;

  public ComputationException(@Nullable Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ComputationException
 * JD-Core Version:    0.6.2
 */