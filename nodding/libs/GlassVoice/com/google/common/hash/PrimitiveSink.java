package com.google.common.hash;

import com.google.common.annotations.Beta;
import java.nio.charset.Charset;

@Beta
public abstract interface PrimitiveSink
{
  public abstract PrimitiveSink putBoolean(boolean paramBoolean);

  public abstract PrimitiveSink putByte(byte paramByte);

  public abstract PrimitiveSink putBytes(byte[] paramArrayOfByte);

  public abstract PrimitiveSink putBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract PrimitiveSink putChar(char paramChar);

  public abstract PrimitiveSink putDouble(double paramDouble);

  public abstract PrimitiveSink putFloat(float paramFloat);

  public abstract PrimitiveSink putInt(int paramInt);

  public abstract PrimitiveSink putLong(long paramLong);

  public abstract PrimitiveSink putShort(short paramShort);

  public abstract PrimitiveSink putString(CharSequence paramCharSequence);

  public abstract PrimitiveSink putString(CharSequence paramCharSequence, Charset paramCharset);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.PrimitiveSink
 * JD-Core Version:    0.6.2
 */