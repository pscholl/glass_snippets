package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

@Beta
public final class Closeables
{

  @VisibleForTesting
  static final Logger logger = Logger.getLogger(Closeables.class.getName());

  public static void close(@Nullable Closeable paramCloseable, boolean paramBoolean)
    throws IOException
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
      if (paramBoolean)
      {
        logger.log(Level.WARNING, "IOException thrown while closing Closeable.", localIOException);
        return;
      }
      throw localIOException;
    }
  }

  @Deprecated
  public static void closeQuietly(@Nullable Closeable paramCloseable)
  {
    try
    {
      close(paramCloseable, true);
      return;
    }
    catch (IOException localIOException)
    {
      logger.log(Level.SEVERE, "IOException should not have been thrown.", localIOException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.Closeables
 * JD-Core Version:    0.6.2
 */