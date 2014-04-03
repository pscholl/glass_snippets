package com.google.android.speech.embedded;

import android.util.Log;
import com.google.common.io.Files;
import com.google.speech.recognizer.ResourceManager;
import java.io.File;
import java.io.IOException;

public class Greco3ResourceManager extends ResourceManager
{
  private static final String TAG = "VS.G3ResourceManager";

  public static Greco3ResourceManager create(String paramString, String[] paramArrayOfString)
  {
    Greco3ResourceManager localGreco3ResourceManager = new Greco3ResourceManager();
    File localFile = new File(paramString);
    if (Greco3Mode.isAsciiConfiguration(localFile));
    byte[] arrayOfByte;
    for (int i = localGreco3ResourceManager.initFromFile(paramString, paramArrayOfString); i == 0; i = localGreco3ResourceManager.initFromProto(arrayOfByte, paramArrayOfString))
    {
      return localGreco3ResourceManager;
      arrayOfByte = getFileBytes(localFile);
      if (arrayOfByte == null)
      {
        Log.e("VS.G3ResourceManager", "Error reading g3 config file: " + paramString);
        return null;
      }
    }
    Log.e("VS.G3ResourceManager", "Failed to bring up g3, Status code: " + i);
    return null;
  }

  private static byte[] getFileBytes(File paramFile)
  {
    try
    {
      byte[] arrayOfByte = Files.toByteArray(paramFile);
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3ResourceManager
 * JD-Core Version:    0.6.2
 */