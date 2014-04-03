package com.x.google.common.graphics;

import com.x.google.common.util.MemUtil.MemoryUser;

public abstract interface IconProvider extends MemUtil.MemoryUser
{
  public static final int ALIGN_BASELINE = 3;
  public static final int ALIGN_BOTTOM = 1;
  public static final int ALIGN_CENTER = 2;
  public static final int ALIGN_TOP;

  public abstract boolean drawIcon(char paramChar, GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2);

  public abstract GoogleImage getIcon(char paramChar);

  public abstract int getIconAlignment(char paramChar);

  public abstract int getIconHeight(char paramChar);

  public abstract int getIconWidth(char paramChar);

  public abstract String getSupportedIconKeys();

  public abstract boolean hasIcon(char paramChar);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.IconProvider
 * JD-Core Version:    0.6.2
 */