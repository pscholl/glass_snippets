package com.x.google.common.async;

public abstract interface LoginRequest extends AsyncRequest
{
  public static final Object ACCOUNT_TYPE_GOOGLE = "ACCOUNT_TYPE_GOOGLE";
  public static final Object ACCOUNT_TYPE_HOSTED = "HOSTED";
  public static final Object ACCOUNT_TYPE_HOSTED_OR_GOOGLE = "HOSTED_OR_GOOGLE";

  public abstract Object getAccountType();

  public abstract String getAuthToken();

  public abstract String getCaptchaImageUrl();

  public abstract String getCaptchaToken();

  public abstract String getPassword();

  public abstract int getResponseCode();

  public abstract String getService();

  public abstract String getUserName();

  public abstract void setAccountType(Object paramObject);

  public abstract void setCaptchaResponse(String paramString);

  public abstract void setCaptchaToken(String paramString);

  public abstract void setPassword(String paramString);

  public abstract void setService(String paramString);

  public abstract void setUserName(String paramString);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.async.LoginRequest
 * JD-Core Version:    0.6.2
 */