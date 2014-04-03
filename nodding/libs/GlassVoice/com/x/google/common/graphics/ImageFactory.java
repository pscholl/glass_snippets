package com.x.google.common.graphics;

import java.io.IOException;

public abstract interface ImageFactory
{
  public abstract GoogleImage createImage(int paramInt1, int paramInt2);

  public abstract GoogleImage createImage(int paramInt1, int paramInt2, boolean paramBoolean);

  public abstract GoogleImage createImage(String paramString)
    throws IOException;

  public abstract GoogleImage createImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract GoogleImage createRGBImage(int[] paramArrayOfInt, int paramInt1, int paramInt2, boolean paramBoolean);

  public abstract byte[] createScaledJpeg(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract GoogleImage createSquareImage(byte[] paramArrayOfByte, int paramInt)
    throws IOException;

  public abstract GoogleImage createUnscaledImage(String paramString)
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.ImageFactory
 * JD-Core Version:    0.6.2
 */