package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;

public class MemoryCachedBitmapFactory extends CachedBitmapFactory
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Object bitmapLoadLock = new Object();
  private final BitmapCache decodeCache;

  public MemoryCachedBitmapFactory(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext, paramInt1, paramInt2);
    this.decodeCache = new BitmapCache(paramInt3);
  }

  public void clearCache()
  {
    this.decodeCache.evictAll();
  }

  public Bitmap decodeFile(String paramString, boolean paramBoolean, Condition paramCondition)
  {
    if (!paramBoolean)
      Assert.assertNotUiThread();
    Bitmap localBitmap1;
    if (paramString == null)
      localBitmap1 = null;
    do
    {
      return localBitmap1;
      localBitmap1 = (Bitmap)this.decodeCache.get(paramString);
    }
    while ((localBitmap1 != null) || (paramBoolean));
    while (true)
    {
      synchronized (this.bitmapLoadLock)
      {
        Bitmap localBitmap2 = (Bitmap)this.decodeCache.get(paramString);
        if (localBitmap2 == null)
        {
          localBitmap2 = loadBitmap(paramString, this.minWidth, this.minHeight, paramCondition);
          if (localBitmap2 != null)
            this.decodeCache.put(paramString, localBitmap2);
        }
        else
        {
          return localBitmap2;
        }
      }
      logger.e("Image loading error, bitmap==null, path:%s", new Object[] { paramString });
    }
  }

  public void invalidatePath(String paramString)
  {
    this.decodeCache.remove(paramString);
  }

  private class BitmapCache extends LruCache<String, Bitmap>
  {
    public BitmapCache(int arg2)
    {
      super();
    }

    protected void entryRemoved(boolean paramBoolean, String paramString, Bitmap paramBitmap1, Bitmap paramBitmap2)
    {
      paramBitmap1.recycle();
    }

    protected int sizeOf(String paramString, Bitmap paramBitmap)
    {
      return 1 + paramBitmap.getByteCount() / 1024;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.MemoryCachedBitmapFactory
 * JD-Core Version:    0.6.2
 */