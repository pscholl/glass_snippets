package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
final class ParseRequest
{
  final int radix;
  final String rawValue;

  private ParseRequest(String paramString, int paramInt)
  {
    this.rawValue = paramString;
    this.radix = paramInt;
  }

  static ParseRequest fromString(String paramString)
  {
    if (paramString.length() == 0)
      throw new NumberFormatException("empty string");
    int i = paramString.charAt(0);
    String str;
    int j;
    if ((paramString.startsWith("0x")) || (paramString.startsWith("0X")))
    {
      str = paramString.substring(2);
      j = 16;
    }
    while (true)
    {
      return new ParseRequest(str, j);
      if (i == 35)
      {
        str = paramString.substring(1);
        j = 16;
      }
      else if ((i == 48) && (paramString.length() > 1))
      {
        str = paramString.substring(1);
        j = 8;
      }
      else
      {
        str = paramString;
        j = 10;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.ParseRequest
 * JD-Core Version:    0.6.2
 */