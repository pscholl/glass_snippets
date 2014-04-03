package com.x.google.common.graphics;

public abstract interface GoogleImage
{
  public abstract GoogleImage addReference();

  public abstract GoogleImage createScaledImage(int paramInt1, int paramInt2);

  public abstract GoogleImage createScaledImage(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract void drawImage(GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2);

  public abstract GoogleGraphics getGraphics();

  public abstract int getHeight();

  public abstract int getNumBytesUsed();

  public abstract void getRGB(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract int getWidth();

  public abstract void recycle();

  public abstract void removeReference();

  public abstract GoogleImage rotate(int paramInt);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.GoogleImage
 * JD-Core Version:    0.6.2
 */