package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.common.collect.Maps;
import java.util.Map;

public class PreloadCachedBitmapFactory extends CachedBitmapFactory
{
  private Map<String, Bitmap> cache = Maps.newTreeMap();

  public PreloadCachedBitmapFactory(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext, paramInt1, paramInt2);
  }

  public void addItem(String paramString, Bitmap paramBitmap)
  {
    this.cache.put(paramString, paramBitmap);
  }

  public void clearCache()
  {
    this.cache.clear();
  }

  public Bitmap decodeFile(String paramString, boolean paramBoolean, Condition paramCondition)
  {
    Bitmap localBitmap;
    if (paramString == null)
      localBitmap = null;
    do
    {
      return localBitmap;
      if (this.cache == null)
        break;
      localBitmap = (Bitmap)this.cache.get(paramString);
    }
    while (localBitmap != null);
    return super.decodeFile(paramString, paramBoolean, paramCondition);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.PreloadCachedBitmapFactory
 * JD-Core Version:    0.6.2
 */