package com.google.android.feedback.proto;

public abstract interface MobileBugReport
{
  public static final int COMMON_DATA = 1;
  public static final int MOBILE_DATA = 2;
  public static final int OS_TYPE = 4;
  public static final int OS_TYPE_ANDROID = 0;
  public static final int OS_TYPE_IOS = 1;
  public static final int REPORT_TYPE = 3;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.feedback.proto.MobileBugReport
 * JD-Core Version:    0.6.2
 */