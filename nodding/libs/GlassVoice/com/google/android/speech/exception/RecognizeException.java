package com.google.android.speech.exception;

public class RecognizeException extends Exception
{
  private static final long serialVersionUID = 5895569179330549571L;
  private int mEngine;

  protected RecognizeException()
  {
    this.mEngine = 0;
  }

  protected RecognizeException(String paramString)
  {
    super(paramString);
  }

  protected RecognizeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public int getEngine()
  {
    return this.mEngine;
  }

  public void setEngine(int paramInt)
  {
    this.mEngine = paramInt;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.exception.RecognizeException
 * JD-Core Version:    0.6.2
 */