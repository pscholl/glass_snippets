package com.google.common.io;

import com.google.common.annotations.Beta;
import java.io.Flushable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
public final class Flushables
{
  private static final Logger logger = Logger.getLogger(Flushables.class.getName());

  public static void flush(Flushable paramFlushable, boolean paramBoolean)
    throws IOException
  {
    try
    {
      paramFlushable.flush();
      return;
    }
    catch (IOException localIOException)
    {
      if (paramBoolean)
      {
        logger.log(Level.WARNING, "IOException thrown while flushing Flushable.", localIOException);
        return;
      }
      throw localIOException;
    }
  }

  public static void flushQuietly(Flushable paramFlushable)
  {
    try
    {
      flush(paramFlushable, true);
      return;
    }
    catch (IOException localIOException)
    {
      logger.log(Level.SEVERE, "IOException should not have been thrown.", localIOException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.Flushables
 * JD-Core Version:    0.6.2
 */