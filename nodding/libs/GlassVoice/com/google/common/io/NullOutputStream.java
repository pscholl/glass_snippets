package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.OutputStream;

@Deprecated
@Beta
public final class NullOutputStream extends OutputStream
{
  public void write(int paramInt)
  {
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Preconditions.checkNotNull(paramArrayOfByte);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.io.NullOutputStream
 * JD-Core Version:    0.6.2
 */