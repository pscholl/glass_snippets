package com.google.speech.grammar;

import java.nio.charset.Charset;
import java.util.logging.Logger;

public abstract class AbstractGrammarCompiler
{
  private static final Logger logger = Logger.getLogger(AbstractGrammarCompiler.class.getName());
  private long nativeObj = nativeConstruct();

  private void assertValidState()
  {
    if (this.nativeObj == 0L)
      throw new IllegalStateException("Recognizer not initialized");
  }

  private static native boolean nativeCompile(long paramLong, byte[] paramArrayOfByte);

  private static native long nativeConstruct();

  private static native boolean nativeDelete(long paramLong);

  private static native boolean nativeInitFromFile(long paramLong, String paramString, String[] paramArrayOfString);

  private static native boolean nativeInitFromProto(long paramLong, byte[] paramArrayOfByte, String[] paramArrayOfString);

  private static native boolean nativeWriteClgFst(long paramLong, String paramString1, String paramString2);

  private static native boolean nativeWriteSemanticFst(long paramLong, String paramString1, String paramString2);

  public boolean compileAbnf(String paramString)
  {
    try
    {
      assertValidState();
      boolean bool = nativeCompile(this.nativeObj, paramString.getBytes(Charset.forName("UTF-8")));
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

  public boolean writeClgFst(String paramString1, String paramString2)
  {
    try
    {
      assertValidState();
      boolean bool = nativeWriteClgFst(this.nativeObj, paramString1, paramString2);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean writeSemanticFst(String paramString1, String paramString2)
  {
    try
    {
      assertValidState();
      boolean bool = nativeWriteSemanticFst(this.nativeObj, paramString1, paramString2);
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
 * Qualified Name:     com.google.speech.grammar.AbstractGrammarCompiler
 * JD-Core Version:    0.6.2
 */