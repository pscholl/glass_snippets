package com.google.common.util.concurrent;

import com.google.common.annotations.VisibleForTesting;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class UncaughtExceptionHandlers
{
  public static Thread.UncaughtExceptionHandler systemExit()
  {
    return new Exiter(Runtime.getRuntime());
  }

  @VisibleForTesting
  static final class Exiter
    implements Thread.UncaughtExceptionHandler
  {
    private static final Logger logger = Logger.getLogger(Exiter.class.getName());
    private final Runtime runtime;

    Exiter(Runtime paramRuntime)
    {
      this.runtime = paramRuntime;
    }

    public void uncaughtException(Thread paramThread, Throwable paramThrowable)
    {
      logger.log(Level.SEVERE, String.format("Caught an exception in %s.  Shutting down.", new Object[] { paramThread }), paramThrowable);
      this.runtime.exit(1);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.UncaughtExceptionHandlers
 * JD-Core Version:    0.6.2
 */