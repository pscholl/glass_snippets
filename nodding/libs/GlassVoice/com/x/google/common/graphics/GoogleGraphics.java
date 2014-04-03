package com.x.google.common.graphics;

public abstract interface GoogleGraphics
{
  public static final int BLACK = 0;
  public static final int BLUE = 255;
  public static final int GREEN = 65280;
  public static final int RED = 16711680;
  public static final int WHITE = 16777215;

  public abstract void clipRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void drawArc(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract void drawChars(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void drawImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2);

  public abstract void drawLine(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void drawRGB(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean);

  public abstract void drawRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void drawRoundRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract boolean drawScaledImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8);

  public abstract void drawString(String paramString, int paramInt1, int paramInt2);

  public abstract void drawSubstring(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void drawTriangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract void fillArc(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract void fillRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void fillRoundRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract void fillTriangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);

  public abstract int getClipHeight();

  public abstract int getClipWidth();

  public abstract int getClipX();

  public abstract int getClipY();

  public abstract int getColor();

  public abstract GoogleFont getFont();

  public abstract boolean setAntiAliased(boolean paramBoolean);

  public abstract void setClip(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void setColor(int paramInt);

  public abstract boolean setColorArgb(int paramInt);

  public abstract void setFont(GoogleFont paramGoogleFont);

  public abstract void translate(int paramInt1, int paramInt2);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.GoogleGraphics
 * JD-Core Version:    0.6.2
 */