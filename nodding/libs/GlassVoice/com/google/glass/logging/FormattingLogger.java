package com.google.glass.logging;

public abstract interface FormattingLogger
{
  public abstract void d(String paramString, Object[] paramArrayOfObject);

  public abstract void d(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject);

  public abstract void e(String paramString, Object[] paramArrayOfObject);

  public abstract void e(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject);

  public abstract String getTag();

  public abstract void i(String paramString, Object[] paramArrayOfObject);

  public abstract void i(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject);

  public abstract void v(String paramString, Object[] paramArrayOfObject);

  public abstract void v(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject);

  public abstract void w(String paramString, Object[] paramArrayOfObject);

  public abstract void w(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.FormattingLogger
 * JD-Core Version:    0.6.2
 */