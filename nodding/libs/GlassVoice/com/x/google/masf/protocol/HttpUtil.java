package com.x.google.masf.protocol;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

public class HttpUtil
{
  public static final String CONTENT_TYPE = "Content-Type";
  public static final int[] mimeTypeEncodings = { 24929, 24930, 26986, 26992, 28001, 28013, 28018, 29808, 29816 };
  public static final String[] mimeTypeStrings = { "application/atom+xml", "application/binary", "image/jpg", "image/png", "multipart/alternative", "multipart/mixed", "multipart/related", "text/plain", "text/xml" };

  public static String getLongMimeType(int paramInt)
  {
    for (int i = 0; i < mimeTypeEncodings.length; i++)
      if (mimeTypeEncodings[i] == paramInt)
        return mimeTypeStrings[i];
    return null;
  }

  public static int getShortMimeType(String paramString)
  {
    for (int i = 0; ; i++)
    {
      int j = mimeTypeStrings.length;
      int k = 0;
      if (i < j)
      {
        if (paramString.equals(mimeTypeStrings[i]))
          k = mimeTypeEncodings[i];
      }
      else
        return k;
    }
  }

  public static Hashtable readProperties(DataInputStream paramDataInputStream)
    throws IOException
  {
    Hashtable localHashtable = new Hashtable();
    int i = 0xFF & paramDataInputStream.readByte();
    for (int j = 0; j < i; j++)
      localHashtable.put(paramDataInputStream.readUTF(), paramDataInputStream.readUTF());
    return localHashtable;
  }

  public static void writeContentType(DataOutputStream paramDataOutputStream, String paramString)
    throws IOException
  {
    int i = paramString.indexOf(';');
    String str2;
    String str1;
    if (i >= 0)
    {
      str2 = paramString.substring(0, i);
      str1 = paramString.substring(i + 1);
    }
    while (true)
    {
      int j = getShortMimeType(str2);
      if (j <= 0)
        break;
      paramDataOutputStream.writeShort(j);
      paramDataOutputStream.writeUTF(str1);
      return;
      str1 = "";
      str2 = paramString;
    }
    paramDataOutputStream.writeShort(0);
    paramDataOutputStream.writeUTF(paramString);
  }

  public static void writeProperties(DataOutputStream paramDataOutputStream, Hashtable paramHashtable, String paramString)
    throws IOException
  {
    if (paramHashtable != null);
    for (int i = paramHashtable.size(); ; i = 0)
    {
      int j = 0;
      if (paramString != null)
        j = 1;
      paramDataOutputStream.writeByte(j + i);
      if (paramString != null)
      {
        paramDataOutputStream.writeUTF("Content-Type");
        paramDataOutputStream.writeUTF(paramString);
      }
      if (paramHashtable != null)
      {
        Enumeration localEnumeration = paramHashtable.keys();
        while (localEnumeration.hasMoreElements())
        {
          String str1 = (String)localEnumeration.nextElement();
          String str2 = (String)paramHashtable.get(str1);
          paramDataOutputStream.writeUTF(str1);
          paramDataOutputStream.writeUTF(str2);
        }
      }
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.protocol.HttpUtil
 * JD-Core Version:    0.6.2
 */