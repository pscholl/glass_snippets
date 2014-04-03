package com.x.google.common.graphics;

public abstract interface FontFactory
{
  public static final int LARGE = 3;
  public static final int MEDIUM = 2;
  public static final int SMALL = 1;
  public static final int TINY;

  public abstract GoogleFont getFont(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, boolean paramBoolean3, boolean paramBoolean4);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.FontFactory
 * JD-Core Version:    0.6.2
 */