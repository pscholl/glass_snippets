package com.google.android.speech.exception;

public class ServerRecognizeException extends RecognizeException
{
  private static final long serialVersionUID = 5707964384032481802L;
  private final int mErrorCode;

  public ServerRecognizeException(int paramInt)
  {
    this.mErrorCode = paramInt;
  }

  public String toString()
  {
    return super.toString() + " ErrorCode:" + this.mErrorCode;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.exception.ServerRecognizeException
 * JD-Core Version:    0.6.2
 */