package com.google.glass.voice.network;

import android.os.Environment;
import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class PinholePageDebug
{
  private static final String HTML_EXTENSION = "._h";
  private static final String PROTO_EXTENSION = ".pb";
  private static int htmlCount = 0;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static int protoCount = 0;

  private static File getResponseFile(String paramString)
  {
    File localFile = new File(Environment.getExternalStorageDirectory() + "/s3/");
    if (!localFile.exists())
      localFile.mkdir();
    return new File(localFile, paramString);
  }

  private static String htmlFileName(String paramString)
  {
    String str = paramString.toLowerCase().replace(" ", "_");
    if (!str.endsWith("." + htmlCount + "._h"))
      str = str + "." + htmlCount + "._h";
    return str;
  }

  private static String protoFileName(String paramString)
  {
    String str = paramString.toLowerCase().replace(" ", "_");
    if (!str.endsWith("." + protoCount + ".pb"))
      str = str + "." + protoCount + ".pb";
    return str;
  }

  public static void resetCounts()
  {
    protoCount = 0;
    htmlCount = 0;
  }

  public static void saveHtmlResponseProto(String paramString1, String paramString2)
  {
    String str = htmlFileName(paramString2);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(getResponseFile(str));
      localFileOutputStream.write(paramString1.getBytes());
      localFileOutputStream.close();
      htmlCount = 1 + htmlCount;
      return;
    }
    catch (IOException localIOException)
    {
      logger.e(localIOException, "Unable to save %s", new Object[] { str });
    }
  }

  public static void saveS3ResponseProto(byte[] paramArrayOfByte, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = "empty";
    String str = protoFileName(paramString);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(getResponseFile(str));
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      protoCount = 1 + protoCount;
      return;
    }
    catch (IOException localIOException)
    {
      logger.e(localIOException, "Unable to save %s", new Object[] { str });
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.PinholePageDebug
 * JD-Core Version:    0.6.2
 */