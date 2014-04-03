package com.x.google.debug;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

public class StackTraceUtil
{
  private static PrintStream err;

  public static String getCallStack(Throwable paramThrowable)
  {
    try
    {
      PrintStream localPrintStream = System.err;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      err = new PrintStream(localByteArrayOutputStream);
      paramThrowable.printStackTrace();
      String str = localByteArrayOutputStream.toString();
      err = localPrintStream;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.StackTraceUtil
 * JD-Core Version:    0.6.2
 */