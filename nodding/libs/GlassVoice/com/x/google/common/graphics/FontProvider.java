package com.x.google.common.graphics;

public abstract interface FontProvider
{
  public abstract GoogleFont getFont(char paramChar);

  public abstract String getSupportedFontKeys();

  public abstract boolean hasFont(char paramChar);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.FontProvider
 * JD-Core Version:    0.6.2
 */