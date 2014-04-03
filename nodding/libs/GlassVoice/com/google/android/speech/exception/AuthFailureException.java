package com.google.android.speech.exception;

import com.google.common.base.Preconditions;

public class AuthFailureException extends ServerRecognizeException
{
  public static final int ERROR_CODE_1 = -74001;
  public static final int ERROR_CODE_2 = -74002;
  private static final long serialVersionUID = 7895571707039123098L;

  public AuthFailureException(int paramInt)
  {
    super(paramInt);
    Preconditions.checkArgument(isAuthErrorCode(paramInt));
  }

  public static boolean isAuthErrorCode(int paramInt)
  {
    return (paramInt == -74001) || (paramInt == -74002);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.exception.AuthFailureException
 * JD-Core Version:    0.6.2
 */