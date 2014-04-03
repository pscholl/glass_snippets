package com.x.google.common.graphics;

public class InterpolatedGoogleFont
  implements GoogleFont
{
  private static final int[] dimensions = new int[2];
  private final GoogleFont font;
  private final IconProvider iconProvider;

  public InterpolatedGoogleFont(GoogleFont paramGoogleFont, IconProvider paramIconProvider)
  {
    this.font = paramGoogleFont;
    this.iconProvider = paramIconProvider;
  }

  public int charWidth(char paramChar)
  {
    if (paramChar == '\001')
      return 0;
    return this.font.charWidth(paramChar);
  }

  public int charsWidth(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    return stringWidth(new String(paramArrayOfChar, paramInt1, paramInt2));
  }

  public void drawChars(GoogleGraphics paramGoogleGraphics, char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    drawString(paramGoogleGraphics, new String(paramArrayOfChar, paramInt1, paramInt2), paramInt3, paramInt4);
  }

  public void drawString(GoogleGraphics paramGoogleGraphics, String paramString, int paramInt1, int paramInt2)
  {
    GoogleFont localGoogleFont = paramGoogleGraphics.getFont();
    try
    {
      Utils.drawInterpolatedString(paramGoogleGraphics, this.font, paramString, paramInt1, paramInt2, null, this.iconProvider, Utils.NO_FONTS);
      return;
    }
    finally
    {
      paramGoogleGraphics.setFont(localGoogleFont);
    }
  }

  public void drawSubstring(GoogleGraphics paramGoogleGraphics, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    GoogleFont localGoogleFont = paramGoogleGraphics.getFont();
    try
    {
      Utils.drawInterpolatedSubstring(paramGoogleGraphics, this.font, paramString, paramInt1, paramInt2, paramInt3, paramInt4, null, this.iconProvider, Utils.NO_FONTS);
      return;
    }
    finally
    {
      paramGoogleGraphics.setFont(localGoogleFont);
    }
  }

  public GoogleFont getBaseGoogleFont()
  {
    for (GoogleFont localGoogleFont = getOriginalFont(); (localGoogleFont instanceof InterpolatedGoogleFont); localGoogleFont = ((InterpolatedGoogleFont)localGoogleFont).getOriginalFont());
    return localGoogleFont;
  }

  public int getBaselinePosition()
  {
    return this.font.getBaselinePosition();
  }

  public int getColor()
  {
    return this.font.getColor();
  }

  public int getHeight()
  {
    return this.font.getHeight();
  }

  public IconProvider getIconProvider()
  {
    return this.iconProvider;
  }

  public GoogleFont getOriginalFont()
  {
    return this.font;
  }

  public void setColor(int paramInt)
  {
    this.font.setColor(paramInt);
  }

  public int stringWidth(String paramString)
  {
    synchronized (dimensions)
    {
      Utils.drawInterpolatedString(null, this.font, paramString, 0, 0, dimensions, this.iconProvider, Utils.NO_FONTS);
      int i = dimensions[0];
      return i;
    }
  }

  public int substringWidth(String paramString, int paramInt1, int paramInt2)
  {
    synchronized (dimensions)
    {
      Utils.drawInterpolatedSubstring(null, this.font, paramString, paramInt1, paramInt2, 0, 0, dimensions, this.iconProvider, Utils.NO_FONTS);
      int i = dimensions[0];
      return i;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.InterpolatedGoogleFont
 * JD-Core Version:    0.6.2
 */