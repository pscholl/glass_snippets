package com.google.common.hash;

import java.nio.CharBuffer;
import java.nio.charset.Charset;

abstract class AbstractHasher
  implements Hasher
{
  public final Hasher putBoolean(boolean paramBoolean)
  {
    if (paramBoolean);
    for (byte b = 1; ; b = 0)
      return putByte(b);
  }

  public final Hasher putDouble(double paramDouble)
  {
    return putLong(Double.doubleToRawLongBits(paramDouble));
  }

  public final Hasher putFloat(float paramFloat)
  {
    return putInt(Float.floatToRawIntBits(paramFloat));
  }

  public Hasher putString(CharSequence paramCharSequence)
  {
    int i = 0;
    int j = paramCharSequence.length();
    while (i < j)
    {
      putChar(paramCharSequence.charAt(i));
      i++;
    }
    return this;
  }

  public Hasher putString(CharSequence paramCharSequence, Charset paramCharset)
  {
    return putObject(paramCharset.encode(CharBuffer.wrap(paramCharSequence)), Funnels.byteBufferFunnel());
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.AbstractHasher
 * JD-Core Version:    0.6.2
 */