package com.google.speech.recognizer;

import java.util.logging.Logger;

public abstract class HotwordGraphCompiler
{
  private static final Logger logger = Logger.getLogger(HotwordGraphCompiler.class.getName());
  private long nativeObj = nativeConstruct();

  private void assertValidState()
  {
    if (this.nativeObj == 0L)
      throw new IllegalStateException("HotwordGraphCompiler not initialized");
  }

  private static native boolean nativeCompile(long paramLong, byte[] paramArrayOfByte, String paramString);

  private static native long nativeConstruct();

  private static native boolean nativeDelete(long paramLong);

  private static native boolean nativeInitFromFile(long paramLong, String paramString, String[] paramArrayOfString);

  private static native boolean nativeInitFromProto(long paramLong, byte[] paramArrayOfByte, String[] paramArrayOfString);

  public boolean compile(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      assertValidState();
      boolean bool = nativeCompile(this.nativeObj, paramArrayOfByte, paramString);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void delete()
  {
    try
    {
      if (this.nativeObj != 0L)
      {
        nativeDelete(this.nativeObj);
        this.nativeObj = 0L;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void finalize()
  {
    delete();
  }

  public boolean initFromFile(String paramString, String[] paramArrayOfString)
  {
    try
    {
      assertValidState();
      boolean bool = nativeInitFromFile(this.nativeObj, paramString, paramArrayOfString);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean initFromProto(byte[] paramArrayOfByte, String[] paramArrayOfString)
  {
    try
    {
      assertValidState();
      boolean bool = nativeInitFromProto(this.nativeObj, paramArrayOfByte, paramArrayOfString);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.HotwordGraphCompiler
 * JD-Core Version:    0.6.2
 */