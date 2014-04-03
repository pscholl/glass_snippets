package com.x.google.common.graphics.android;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import com.x.google.common.graphics.GoogleFont;
import com.x.google.common.graphics.GoogleGraphics;
import com.x.google.common.graphics.GoogleImage;

public class AndroidGraphics
  implements GoogleGraphics
{
  private static final Rect clipRect = new Rect();
  private static final Rect destRect;
  private static final RectF oval = new RectF();
  private static final Rect sourceRect = new Rect();
  private Canvas canvas;
  private GoogleFont currentFont;
  private final Paint paint = new Paint();

  static
  {
    destRect = new Rect();
  }

  public AndroidGraphics(Canvas paramCanvas)
  {
    this.paint.setStrokeWidth(1.0F);
    this.canvas = paramCanvas;
  }

  public void clipRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.canvas.clipRect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }

  public void drawArc(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setAntiAliased(true);
    oval.set(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
    this.paint.setStyle(Paint.Style.STROKE);
    float f = this.paint.getStrokeWidth();
    this.paint.setStrokeWidth(2.0F);
    this.canvas.drawArc(oval, paramInt5 - 90 - paramInt6, paramInt6, false, this.paint);
    this.paint.setStrokeWidth(f);
    setAntiAliased(false);
  }

  public void drawChars(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.currentFont.drawChars(this, paramArrayOfChar, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void drawImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2)
  {
    if (paramGoogleImage != null)
      paramGoogleImage.drawImage(this, paramInt1, paramInt2);
  }

  public void drawLine(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 > paramInt3)
    {
      paramInt1++;
      if (paramInt2 <= paramInt4)
        break label44;
      paramInt2++;
    }
    while (true)
    {
      this.canvas.drawLine(paramInt1, paramInt2, paramInt3, paramInt4, this.paint);
      return;
      paramInt3++;
      break;
      label44: paramInt4++;
    }
  }

  public void drawRGB(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean)
  {
    this.canvas.drawBitmap(paramArrayOfInt, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramBoolean, this.paint);
  }

  public void drawRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.paint.setStyle(Paint.Style.STROKE);
    this.canvas.drawRect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4, this.paint);
  }

  public void drawRoundRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.paint.setStyle(Paint.Style.STROKE);
    this.canvas.drawRoundRect(new RectF(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4), paramInt5, paramInt6, this.paint);
  }

  public boolean drawScaledImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    if (paramGoogleImage == null);
    Bitmap localBitmap;
    do
    {
      return false;
      localBitmap = ((AndroidImage)paramGoogleImage).getBitmap();
    }
    while (localBitmap == null);
    sourceRect.set(paramInt5, paramInt6, paramInt5 + paramInt7, paramInt6 + paramInt8);
    destRect.set(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
    this.canvas.drawBitmap(localBitmap, sourceRect, destRect, null);
    return true;
  }

  public void drawString(String paramString, int paramInt1, int paramInt2)
  {
    this.currentFont.drawString(this, paramString, paramInt1, paramInt2);
  }

  public void drawSubstring(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.currentFont.drawSubstring(this, paramString, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void drawTriangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    Path localPath = new Path();
    localPath.moveTo(paramInt1, paramInt2);
    localPath.lineTo(paramInt3, paramInt4);
    localPath.lineTo(paramInt5, paramInt6);
    localPath.lineTo(paramInt1, paramInt2);
    this.paint.setStyle(Paint.Style.STROKE);
    this.canvas.drawPath(localPath, this.paint);
  }

  public void fillArc(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    RectF localRectF = new RectF(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
    this.paint.setStyle(Paint.Style.FILL);
    this.canvas.drawArc(localRectF, paramInt5 - 90 - paramInt6, paramInt6, false, this.paint);
  }

  public void fillRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.paint.setStyle(Paint.Style.FILL);
    this.canvas.drawRect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4, this.paint);
  }

  public void fillRoundRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.paint.setStyle(Paint.Style.FILL);
    this.canvas.drawRoundRect(new RectF(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4), paramInt5, paramInt6, this.paint);
  }

  public void fillTriangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    Path localPath = new Path();
    localPath.moveTo(paramInt1, paramInt2);
    localPath.lineTo(paramInt3, paramInt4);
    localPath.lineTo(paramInt5, paramInt6);
    localPath.lineTo(paramInt1, paramInt2);
    this.paint.setStyle(Paint.Style.FILL);
    this.canvas.drawPath(localPath, this.paint);
  }

  public Canvas getCanvas()
  {
    return this.canvas;
  }

  public int getClipHeight()
  {
    if (this.canvas.getClipBounds(clipRect))
      return clipRect.height();
    return 0;
  }

  public int getClipWidth()
  {
    if (this.canvas.getClipBounds(clipRect))
      return clipRect.width();
    return 0;
  }

  public int getClipX()
  {
    if (this.canvas.getClipBounds(clipRect))
      return clipRect.left;
    return 0;
  }

  public int getClipY()
  {
    if (this.canvas.getClipBounds(clipRect))
      return clipRect.top;
    return 0;
  }

  public int getColor()
  {
    return this.paint.getColor();
  }

  public GoogleFont getFont()
  {
    return this.currentFont;
  }

  public boolean setAntiAliased(boolean paramBoolean)
  {
    this.paint.setAntiAlias(paramBoolean);
    return true;
  }

  public void setCanvas(Canvas paramCanvas)
  {
    this.canvas = paramCanvas;
  }

  public void setClip(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.canvas.clipRect(new Rect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4), Region.Op.REPLACE);
  }

  public void setColor(int paramInt)
  {
    this.paint.setColor(0xFF000000 | paramInt);
  }

  public boolean setColorArgb(int paramInt)
  {
    this.paint.setColor(paramInt);
    return true;
  }

  public void setFont(GoogleFont paramGoogleFont)
  {
    this.currentFont = paramGoogleFont;
  }

  public void setStrokeSize(int paramInt)
  {
    this.paint.setStrokeWidth(paramInt);
  }

  public void translate(int paramInt1, int paramInt2)
  {
    this.canvas.translate(paramInt1, paramInt2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.AndroidGraphics
 * JD-Core Version:    0.6.2
 */