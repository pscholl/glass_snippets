package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.nio.charset.Charset;

abstract class AbstractCompositeHashFunction extends AbstractStreamingHashFunction
{
  private static final long serialVersionUID;
  final HashFunction[] functions;

  AbstractCompositeHashFunction(HashFunction[] paramArrayOfHashFunction)
  {
    int i = paramArrayOfHashFunction.length;
    for (int j = 0; j < i; j++)
      Preconditions.checkNotNull(paramArrayOfHashFunction[j]);
    this.functions = paramArrayOfHashFunction;
  }

  abstract HashCode makeHash(Hasher[] paramArrayOfHasher);

  public Hasher newHasher()
  {
    final Hasher[] arrayOfHasher = new Hasher[this.functions.length];
    for (int i = 0; i < arrayOfHasher.length; i++)
      arrayOfHasher[i] = this.functions[i].newHasher();
    return new Hasher()
    {
      public HashCode hash()
      {
        return AbstractCompositeHashFunction.this.makeHash(arrayOfHasher);
      }

      public Hasher putBoolean(boolean paramAnonymousBoolean)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putBoolean(paramAnonymousBoolean);
        return this;
      }

      public Hasher putByte(byte paramAnonymousByte)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putByte(paramAnonymousByte);
        return this;
      }

      public Hasher putBytes(byte[] paramAnonymousArrayOfByte)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putBytes(paramAnonymousArrayOfByte);
        return this;
      }

      public Hasher putBytes(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putBytes(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        return this;
      }

      public Hasher putChar(char paramAnonymousChar)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putChar(paramAnonymousChar);
        return this;
      }

      public Hasher putDouble(double paramAnonymousDouble)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putDouble(paramAnonymousDouble);
        return this;
      }

      public Hasher putFloat(float paramAnonymousFloat)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putFloat(paramAnonymousFloat);
        return this;
      }

      public Hasher putInt(int paramAnonymousInt)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putInt(paramAnonymousInt);
        return this;
      }

      public Hasher putLong(long paramAnonymousLong)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putLong(paramAnonymousLong);
        return this;
      }

      public <T> Hasher putObject(T paramAnonymousT, Funnel<? super T> paramAnonymousFunnel)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putObject(paramAnonymousT, paramAnonymousFunnel);
        return this;
      }

      public Hasher putShort(short paramAnonymousShort)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putShort(paramAnonymousShort);
        return this;
      }

      public Hasher putString(CharSequence paramAnonymousCharSequence)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putString(paramAnonymousCharSequence);
        return this;
      }

      public Hasher putString(CharSequence paramAnonymousCharSequence, Charset paramAnonymousCharset)
      {
        Hasher[] arrayOfHasher = arrayOfHasher;
        int i = arrayOfHasher.length;
        for (int j = 0; j < i; j++)
          arrayOfHasher[j].putString(paramAnonymousCharSequence, paramAnonymousCharset);
        return this;
      }
    };
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.AbstractCompositeHashFunction
 * JD-Core Version:    0.6.2
 */