package com.x.google.common.graphics;

public abstract interface GoogleFont
{
  public abstract int charWidth(char paramChar);

  public abstract int charsWidth(char[] paramArrayOfChar, int paramInt1, int paramInt2);

  public abstract void drawChars(GoogleGraphics paramGoogleGraphics, char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void drawString(GoogleGraphics paramGoogleGraphics, String paramString, int paramInt1, int paramInt2);

  public abstract void drawSubstring(GoogleGraphics paramGoogleGraphics, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract int getBaselinePosition();

  public abstract int getColor();

  public abstract int getHeight();

  public abstract void setColor(int paramInt);

  public abstract int stringWidth(String paramString);

  public abstract int substringWidth(String paramString, int paramInt1, int paramInt2);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.GoogleFont
 * JD-Core Version:    0.6.2
 */