package com.google.android.speech.network;

import android.net.TrafficStats;
import android.util.Log;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.HttpServerInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.zip.GZIPInputStream;

public class IoUtils
{
  private static final String TAG = "IoUtils";

  public static void addHttpHeaders(HttpURLConnection paramHttpURLConnection, GstaticConfiguration.HttpServerInfo paramHttpServerInfo)
  {
    for (int i = 0; i < paramHttpServerInfo.getHttpHeaderKeyCount(); i++)
      paramHttpURLConnection.addRequestProperty(paramHttpServerInfo.getHttpHeaderKey(i), paramHttpServerInfo.getHttpHeaderValue(i));
  }

  public static void closeQuietly(Socket paramSocket)
  {
    if (paramSocket != null);
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void tagSocket(Socket paramSocket)
  {
    try
    {
      TrafficStats.tagSocket(paramSocket);
      return;
    }
    catch (SocketException localSocketException)
    {
      Log.w("IoUtils", "Unable to untag socket", localSocketException);
    }
  }

  public static byte[] uncompress(byte[] paramArrayOfByte)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramArrayOfByte.length);
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(paramArrayOfByte));
      int i = 0;
      byte[] arrayOfByte1 = new byte[1024];
      while (true)
      {
        int j = localGZIPInputStream.read(arrayOfByte1);
        if (j == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, j);
        i += j;
      }
      Object localObject = null;
      if (i > 0)
      {
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        localObject = arrayOfByte2;
      }
      return localObject;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public static void untagSocket(Socket paramSocket)
  {
    if (paramSocket != null);
    try
    {
      TrafficStats.untagSocket(paramSocket);
      return;
    }
    catch (SocketException localSocketException)
    {
      Log.w("IoUtils", "Unable to untag socket", localSocketException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.IoUtils
 * JD-Core Version:    0.6.2
 */