package com.google.glass.timeline;

import java.io.IOException;

public class UploadException extends IOException
{
  private int errorCode;
  private String mimeType;

  public UploadException(int paramInt, String paramString1, String paramString2)
  {
    super(paramString2 + " [errorCode=" + paramInt + ", mimeType=" + paramString1 + "].");
    this.mimeType = paramString1;
    this.errorCode = paramInt;
  }

  public UploadException(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    super(paramString2 + " [errorCode=" + paramInt + ", mimeType=" + paramString1 + "].", paramThrowable);
    this.mimeType = paramString1;
    this.errorCode = paramInt;
  }

  public int getErrorCode()
  {
    return this.errorCode;
  }

  public String getMimeType()
  {
    return this.mimeType;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.UploadException
 * JD-Core Version:    0.6.2
 */