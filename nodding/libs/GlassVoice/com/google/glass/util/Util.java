package com.google.glass.util;

import com.google.glass.logging.Log;
import java.io.Closeable;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public final class Util
{
  public static void close(Closeable paramCloseable, String paramString1, String paramString2)
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
      Log.e(paramString1, localIOException, paramString2, new Object[0]);
    }
  }

  public static void close(ServerSocket paramServerSocket, String paramString1, String paramString2)
  {
    if (paramServerSocket == null)
      return;
    try
    {
      paramServerSocket.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(paramString1, localIOException, paramString2, new Object[0]);
    }
  }

  public static void close(Socket paramSocket, String paramString1, String paramString2)
  {
    if (paramSocket == null)
      return;
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(paramString1, localIOException, paramString2, new Object[0]);
    }
  }

  public static void join(Thread paramThread, String paramString1, String paramString2)
  {
    if (paramThread == null)
      return;
    try
    {
      paramThread.join();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.e(paramString1, localInterruptedException, paramString2, new Object[0]);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Util
 * JD-Core Version:    0.6.2
 */