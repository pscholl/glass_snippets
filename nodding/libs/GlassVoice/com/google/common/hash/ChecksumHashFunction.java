package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.zip.Checksum;

final class ChecksumHashFunction extends AbstractStreamingHashFunction
  implements Serializable
{
  private static final long serialVersionUID;
  private final int bits;
  private final Supplier<? extends Checksum> checksumSupplier;
  private final String toString;

  ChecksumHashFunction(Supplier<? extends Checksum> paramSupplier, int paramInt, String paramString)
  {
    this.checksumSupplier = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    if ((paramInt == 32) || (paramInt == 64));
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "bits (%s) must be either 32 or 64", arrayOfObject);
      this.bits = paramInt;
      this.toString = ((String)Preconditions.checkNotNull(paramString));
      return;
    }
  }

  public int bits()
  {
    return this.bits;
  }

  public Hasher newHasher()
  {
    return new ChecksumHasher((Checksum)this.checksumSupplier.get(), null);
  }

  public String toString()
  {
    return this.toString;
  }

  private final class ChecksumHasher extends AbstractByteHasher
  {
    private final Checksum checksum;

    private ChecksumHasher(Checksum arg2)
    {
      Object localObject;
      this.checksum = ((Checksum)Preconditions.checkNotNull(localObject));
    }

    public HashCode hash()
    {
      long l = this.checksum.getValue();
      if (ChecksumHashFunction.this.bits == 32)
        return HashCodes.fromInt((int)l);
      return HashCodes.fromLong(l);
    }

    protected void update(byte paramByte)
    {
      this.checksum.update(paramByte);
    }

    protected void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.checksum.update(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.hash.ChecksumHashFunction
 * JD-Core Version:    0.6.2
 */