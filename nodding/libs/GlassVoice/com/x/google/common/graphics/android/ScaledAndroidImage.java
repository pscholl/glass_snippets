package com.x.google.common.graphics.android;

import android.graphics.Bitmap;
import com.x.google.common.graphics.GoogleGraphics;
import com.x.google.common.graphics.GoogleImage;

class ScaledAndroidImage extends AndroidImage
{
  private AndroidImage cache = null;
  private final int dh;
  private final int dw;
  private GoogleImage parent;
  private final int sh;
  private final int sw;
  private final int sx;
  private final int sy;

  public ScaledAndroidImage(AndroidImage paramAndroidImage, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(null);
    this.parent = paramAndroidImage.addReference();
    this.dw = paramInt1;
    this.dh = paramInt2;
    this.sx = paramInt3;
    this.sy = paramInt4;
    this.sw = paramInt5;
    this.sh = paramInt6;
  }

  private AndroidImage getCache()
  {
    if (this.cache == null)
    {
      this.cache = new AndroidImage(this.dw, this.dh);
      if (!this.cache.getGraphics().drawScaledImage(this.parent, 0, 0, this.dw, this.dh, this.sx, this.sy, this.sw, this.sh))
        throw new UnsupportedOperationException("Graphics cannot scale image: " + this.cache.getGraphics());
    }
    return this.cache;
  }

  private void removeParentReference()
  {
    try
    {
      GoogleImage localGoogleImage = this.parent;
      this.parent = null;
      if (localGoogleImage != null)
        localGoogleImage.removeReference();
      return;
    }
    finally
    {
    }
  }

  public GoogleImage createScaledImage(int paramInt1, int paramInt2)
  {
    return getCache().createScaledImage(paramInt1, paramInt2);
  }

  public GoogleImage createScaledImage(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return getCache().createScaledImage(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }

  public void drawImage(GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2)
  {
    if (this.cache == null)
    {
      paramGoogleGraphics.drawScaledImage(this.parent, paramInt1, paramInt2, this.dw, this.dh, this.sx, this.sy, this.sw, this.sh);
      return;
    }
    this.cache.drawImage(paramGoogleGraphics, paramInt1, paramInt2);
  }

  protected void finalize()
    throws Throwable
  {
    removeParentReference();
    super.finalize();
  }

  public Bitmap getBitmap()
  {
    return getCache().getBitmap();
  }

  public GoogleGraphics getGraphics()
  {
    return getCache().getGraphics();
  }

  public int getHeight()
  {
    return this.dh;
  }

  public int getNumBytesUsed()
  {
    int i = 32;
    if (this.cache != null)
      i += this.cache.getNumBytesUsed();
    return i;
  }

  public void getRGB(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    getCache().getRGB(paramArrayOfInt, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }

  public int getWidth()
  {
    return this.dw;
  }

  public void recycle()
  {
    if (this.referenceCount <= 0)
      removeParentReference();
    super.recycle();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.ScaledAndroidImage
 * JD-Core Version:    0.6.2
 */