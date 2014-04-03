package com.google.common.util;

@GwtCompatible
public class IdException extends RuntimeException
{
  private static final long serialVersionUID;

  public IdException()
  {
  }

  public IdException(String paramString)
  {
    super(paramString);
  }

  public IdException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public IdException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.IdException
 * JD-Core Version:    0.6.2
 */