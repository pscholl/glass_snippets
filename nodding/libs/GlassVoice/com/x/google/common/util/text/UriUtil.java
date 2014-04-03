package com.x.google.common.util.text;

import com.x.google.common.io.IoUtil;
import com.x.google.common.util.LinkedMultiHashtable;
import com.x.google.common.util.LinkedMultiHashtable.Entry;
import java.io.IOException;
import java.util.Enumeration;

public class UriUtil
{
  private static void appendEntryToStringBuffer(StringBuffer paramStringBuffer, LinkedMultiHashtable.Entry paramEntry)
  {
    paramStringBuffer.append(IoUtil.encodeURL(paramEntry.getKey().toString()));
    if (paramEntry.getValue() != null)
    {
      paramStringBuffer.append("=");
      paramStringBuffer.append(IoUtil.encodeURL(paramEntry.getValue().toString()));
    }
  }

  public static boolean isHttps(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("https://"));
  }

  public static String joinHttpHeader(LinkedMultiHashtable paramLinkedMultiHashtable)
  {
    return paramLinkedMultiHashtable.join("; ", "=");
  }

  public static LinkedMultiHashtable splitHttpHeaderParams(String paramString)
  {
    return LinkedMultiHashtable.fromString(paramString, ";", "=");
  }

  public static LinkedMultiHashtable splitUrlParams(String paramString)
    throws IOException
  {
    if (paramString == null)
      return null;
    String[] arrayOfString = TextUtil.splitAndTrim(paramString, "&");
    LinkedMultiHashtable localLinkedMultiHashtable = new LinkedMultiHashtable();
    int i = 0;
    if (i < arrayOfString.length)
    {
      int j = arrayOfString[i].indexOf("=", 0);
      String str1;
      if (j > -1)
        str1 = arrayOfString[i].substring(0, j).trim();
      for (String str2 = IoUtil.decodeUrl(arrayOfString[i].substring(j + "=".length()).trim()); ; str2 = null)
      {
        localLinkedMultiHashtable.put(IoUtil.decodeUrl(str1), str2);
        i++;
        break;
        str1 = arrayOfString[i].trim();
      }
    }
    return localLinkedMultiHashtable;
  }

  public static String urlJoin(LinkedMultiHashtable paramLinkedMultiHashtable)
  {
    String.valueOf('=');
    Enumeration localEnumeration = paramLinkedMultiHashtable.elements();
    if (!localEnumeration.hasMoreElements())
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    appendEntryToStringBuffer(localStringBuffer, (LinkedMultiHashtable.Entry)localEnumeration.nextElement());
    while (localEnumeration.hasMoreElements())
    {
      localStringBuffer.append("&");
      appendEntryToStringBuffer(localStringBuffer, (LinkedMultiHashtable.Entry)localEnumeration.nextElement());
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.text.UriUtil
 * JD-Core Version:    0.6.2
 */