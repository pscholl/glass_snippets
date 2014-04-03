package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(emulated=true)
final class Platform
{
  private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal()
  {
    protected char[] initialValue()
    {
      return new char[1024];
    }
  };

  static char[] charBufferFromThreadLocal()
  {
    return (char[])DEST_TL.get();
  }

  static CharMatcher precomputeCharMatcher(CharMatcher paramCharMatcher)
  {
    return paramCharMatcher.precomputedInternal();
  }

  static long systemNanoTime()
  {
    return System.nanoTime();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Platform
 * JD-Core Version:    0.6.2
 */