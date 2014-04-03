package com.google.android.feedback.proto;

public abstract interface CrashData
{
  public static final int EXCEPTION_CLASS_NAME = 1;
  public static final int EXCEPTION_MESSAGE = 2;
  public static final int SIGNAL = 8;
  public static final int STACK_TRACE = 7;
  public static final int THROW_CLASS_NAME = 5;
  public static final int THROW_FILE_NAME = 3;
  public static final int THROW_LINE_NUMBER = 4;
  public static final int THROW_METHOD_NAME = 6;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.feedback.proto.CrashData
 * JD-Core Version:    0.6.2
 */