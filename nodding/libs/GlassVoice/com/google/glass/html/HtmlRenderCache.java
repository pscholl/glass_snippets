package com.google.glass.html;

import android.graphics.Bitmap;
import android.util.LruCache;
import java.util.HashSet;
import java.util.Set;

public class HtmlRenderCache extends LruCache<String, Bitmap>
{
  private Set<String> multipageItems = new HashSet();

  public HtmlRenderCache(int paramInt)
  {
    super(paramInt);
  }

  protected void entryRemoved(boolean paramBoolean, String paramString, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    paramBitmap1.recycle();
    this.multipageItems.remove(paramString);
  }

  public boolean isMultipageItem(String paramString)
  {
    return this.multipageItems.contains(paramString);
  }

  public void setMultipageItem(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.multipageItems.add(paramString);
      return;
    }
    this.multipageItems.remove(paramString);
  }

  protected int sizeOf(String paramString, Bitmap paramBitmap)
  {
    return 1 + paramBitmap.getByteCount() / 1024;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.HtmlRenderCache
 * JD-Core Version:    0.6.2
 */