package com.x.google.common.graphics.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.util.FloatMath;
import com.x.google.common.graphics.GoogleFont;
import com.x.google.common.graphics.GoogleGraphics;

public class AndroidFont
  implements GoogleFont
{
  private static final int FONT_SIZE_MULTIPLIER = 2;
  private static final boolean IS_HIGH_DPI = false;
  public static final int MAX_DPI_FOR_LOW_DENSITY = 200;
  private static final int MIN_FONT_SIZE = 12;
  private static final Paint paint = new Paint();
  private final boolean bold;
  private int color = 0;
  private final boolean colorHasAlpha;
  private final boolean explicitColor;
  private final int size;
  private final boolean underlined;

  static
  {
    IS_HIGH_DPI = false;
    paint.setAntiAlias(true);
  }

  public AndroidFont(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.size = paramInt1;
    this.bold = paramBoolean1;
    this.underlined = paramBoolean2;
    this.explicitColor = paramBoolean3;
    this.color = paramInt2;
    this.colorHasAlpha = paramBoolean4;
  }

  private static Canvas getCanvas(GoogleGraphics paramGoogleGraphics)
  {
    return ((AndroidGraphics)paramGoogleGraphics).getCanvas();
  }

  private Paint getPaint()
  {
    if (this.explicitColor)
    {
      if (!this.colorHasAlpha)
        break label59;
      paint.setColor(this.color);
    }
    while (true)
    {
      paint.setFakeBoldText(this.bold);
      paint.setUnderlineText(this.underlined);
      paint.setTextSize(getSize());
      return paint;
      label59: paint.setColor(0xFF000000 | this.color);
    }
  }

  public int charWidth(char paramChar)
  {
    float[] arrayOfFloat = new float[1];
    getPaint().getTextWidths(new char[] { paramChar }, 0, 1, arrayOfFloat);
    return (int)arrayOfFloat[0];
  }

  public int charsWidth(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    Rect localRect = new Rect();
    getPaint().getTextBounds(paramArrayOfChar, 0, paramArrayOfChar.length, localRect);
    return localRect.width();
  }

  public void drawChars(GoogleGraphics paramGoogleGraphics, char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    getCanvas(paramGoogleGraphics).drawText(paramArrayOfChar, paramInt1, paramInt2, paramInt3, paramInt4 - getPaint().getFontMetricsInt().ascent, getPaint());
  }

  public void drawString(GoogleGraphics paramGoogleGraphics, String paramString, int paramInt1, int paramInt2)
  {
    getCanvas(paramGoogleGraphics).drawText(paramString, paramInt1, paramInt2 - getPaint().getFontMetricsInt().ascent, getPaint());
  }

  public void drawSubstring(GoogleGraphics paramGoogleGraphics, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    getCanvas(paramGoogleGraphics).drawText(paramString, paramInt1, paramInt1 + paramInt2, paramInt3, paramInt4 - getPaint().getFontMetricsInt().ascent, getPaint());
  }

  public int getBaselinePosition()
  {
    return -getPaint().getFontMetricsInt().top;
  }

  public boolean getBold()
  {
    return this.bold;
  }

  public int getColor()
  {
    return this.color;
  }

  public int getHeight()
  {
    Paint.FontMetrics localFontMetrics = getPaint().getFontMetrics();
    return (int)FloatMath.ceil(localFontMetrics.bottom - localFontMetrics.top);
  }

  public int getSize()
  {
    int i = 12 + 2 * this.size;
    if (IS_HIGH_DPI)
      i = i * 3 / 2;
    return i;
  }

  public boolean getUnderlined()
  {
    return this.underlined;
  }

  public void setColor(int paramInt)
  {
    this.color = paramInt;
  }

  public int stringWidth(String paramString)
  {
    return substringWidth(paramString, 0, paramString.length());
  }

  public int substringWidth(String paramString, int paramInt1, int paramInt2)
  {
    return (int)getPaint().measureText(paramString, paramInt1, paramInt1 + paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.AndroidFont
 * JD-Core Version:    0.6.2
 */