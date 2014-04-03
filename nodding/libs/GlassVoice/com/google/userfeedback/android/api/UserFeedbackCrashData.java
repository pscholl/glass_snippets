package com.google.userfeedback.android.api;

public class UserFeedbackCrashData
{
  public String exceptionClassName;
  public String exceptionMessage;
  public String stackTrace;
  public String throwClassName;
  public String throwFileName;
  public int throwLineNumber;
  public String throwMethodName;

  UserFeedbackCrashData(UserFeedbackCrashData paramUserFeedbackCrashData)
  {
    this(paramUserFeedbackCrashData.exceptionClassName, paramUserFeedbackCrashData.throwFileName, paramUserFeedbackCrashData.throwLineNumber, paramUserFeedbackCrashData.throwClassName, paramUserFeedbackCrashData.throwMethodName, paramUserFeedbackCrashData.stackTrace, paramUserFeedbackCrashData.exceptionMessage);
  }

  UserFeedbackCrashData(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.exceptionClassName = paramString1;
    this.throwFileName = paramString2;
    this.throwLineNumber = paramInt;
    this.throwClassName = paramString3;
    this.throwMethodName = paramString4;
    this.stackTrace = paramString5;
    this.exceptionMessage = paramString6;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackCrashData
 * JD-Core Version:    0.6.2
 */