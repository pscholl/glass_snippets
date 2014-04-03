package com.google.glass.util;

import com.google.glass.logging.FormattingLogger;
import java.io.Closeable;
import java.io.IOException;

public final class CloseableUtil
{
  public static void tryClose(Closeable paramCloseable, FormattingLogger paramFormattingLogger)
  {
    if (paramCloseable == null)
      return;
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      paramFormattingLogger.e(localIOException, "Error closing: [%s]", new Object[] { paramCloseable });
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CloseableUtil
 * JD-Core Version:    0.6.2
 */