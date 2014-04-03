package com.google.glass.html;

import com.google.common.annotations.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;

public class ContentTypes
{
  private static final byte[] GIF_PREFIX = { 71, 73, 70, 56 };
  private static final byte[] JPEG_PREFIX = { -1, -40 };
  private static final int MAX_PREFIX_LENGTH = 12;
  private static final byte[] PNG_PREFIX = { -119, 80, 78, 71, 13, 10, 26, 10 };
  private static final byte[] WEBP_PREFIX_0 = { 82, 73, 70, 70 };
  private static final byte[] WEBP_PREFIX_8 = { 87, 69, 66, 80 };

  @VisibleForTesting
  static boolean arrayContainsAtOffset(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    if (paramArrayOfByte1.length < paramInt + paramArrayOfByte2.length)
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte2.length)
        break label36;
      if (paramArrayOfByte1[(i + paramInt)] != paramArrayOfByte2[i])
        break;
    }
    label36: return true;
  }

  private static String getContentType(byte[] paramArrayOfByte)
    throws IOException
  {
    if (arrayContainsAtOffset(paramArrayOfByte, JPEG_PREFIX, 0))
      return "image/jpeg";
    if (arrayContainsAtOffset(paramArrayOfByte, PNG_PREFIX, 0))
      return "image/png";
    if (arrayContainsAtOffset(paramArrayOfByte, GIF_PREFIX, 0))
      return "image/gif";
    if ((arrayContainsAtOffset(paramArrayOfByte, WEBP_PREFIX_0, 0)) && (arrayContainsAtOffset(paramArrayOfByte, WEBP_PREFIX_8, 8)))
      return "image/webp";
    throw new IOException("Unrecognized content type");
  }

  private static byte[] readPrefix(InputStream paramInputStream)
    throws IOException
  {
    if (!paramInputStream.markSupported())
      throw new IOException("InputStream must support mark()");
    paramInputStream.mark(12);
    byte[] arrayOfByte = new byte[12];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      int j = paramInputStream.read(arrayOfByte, i, arrayOfByte.length - i);
      if (j <= 0)
        throw new IOException("Insufficient data");
      i += j;
    }
    paramInputStream.reset();
    return arrayOfByte;
  }

  public static String sniff(InputStream paramInputStream)
    throws IOException
  {
    return getContentType(readPrefix(paramInputStream));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.ContentTypes
 * JD-Core Version:    0.6.2
 */