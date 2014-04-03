package com.google.glass.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.util.LruCache;
import com.google.common.io.ByteStreams;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class IconProvider
{
  private static final int MAX_MEMORY_CACHE_ENTRIES = 16;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final int height;
  private final HashMap<String, Loader> loaders = new HashMap();
  private final LruCache<String, Drawable> memoryCache = new LruCache(16);
  private final int width;

  public IconProvider(Context paramContext)
  {
    this(paramContext, paramContext.getResources().getDisplayMetrics().widthPixels, paramContext.getResources().getDisplayMetrics().heightPixels);
  }

  public IconProvider(Context paramContext, int paramInt1, int paramInt2)
  {
    this.context = paramContext;
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public static String buildDrawableUri(Context paramContext, int paramInt)
  {
    String str = GlassApplication.from(paramContext).getPackageName();
    return "android.resource://" + str + "/" + paramInt;
  }

  private byte[] download(String paramString)
  {
    logger.d("Downloading: %s", new Object[] { paramString });
    HttpURLConnection localHttpURLConnection = null;
    try
    {
      localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
      if ((localHttpURLConnection != null) && (localHttpURLConnection.getResponseCode() == 200))
      {
        byte[] arrayOfByte = ByteStreams.toByteArray(localHttpURLConnection.getInputStream());
        return arrayOfByte;
      }
      return null;
    }
    catch (IOException localIOException)
    {
      logger.w(localIOException, "IOException downloading: %s", new Object[] { paramString });
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
      logger.w(localNullPointerException, "URI was invalid: %s", new Object[] { paramString });
      return null;
    }
    finally
    {
      if (localHttpURLConnection != null)
        localHttpURLConnection.disconnect();
    }
  }

  private String getFileName(String paramString)
  {
    long l = 0L;
    for (int i = 0; i < paramString.length(); i++)
      l = 31L * l + paramString.charAt(i);
    return Long.toHexString(l);
  }

  private Drawable loadFromDiskCache(String paramString)
  {
    Assert.assertNotUiThread();
    Bitmap localBitmap = (Bitmap)CachedFilesManager.getSharedInstance().load(CachedFilesManager.Type.ICON, getFileName(paramString), new CachedFilesManager.Loader()
    {
      public Bitmap load(String paramAnonymousString)
      {
        return CachedBitmapFactory.loadBitmapFile(paramAnonymousString, IconProvider.this.width, IconProvider.this.height, null);
      }
    });
    if (localBitmap != null)
    {
      logger.d("Loaded from disk cache: %s", new Object[] { paramString });
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(localBitmap);
      localBitmapDrawable.setTargetDensity(this.context.getResources().getDisplayMetrics());
      return localBitmapDrawable;
    }
    logger.w("Unable to load from cached files manager: %s", new Object[] { paramString });
    return null;
  }

  private Drawable loadFromNetwork(String paramString)
  {
    Assert.assertNotUiThread();
    byte[] arrayOfByte = download(paramString);
    if ((arrayOfByte == null) || (arrayOfByte.length == 0))
      return null;
    writeToDiskCache(paramString, arrayOfByte);
    return loadFromDiskCache(paramString);
  }

  private void onLoaderDone(Loader paramLoader)
  {
    Assert.assertUiThread();
    this.loaders.remove(paramLoader.uri);
  }

  private void writeToDiskCache(String paramString, byte[] paramArrayOfByte)
  {
    Assert.assertNotUiThread();
    if (!CachedFilesManager.getSharedInstance().save(CachedFilesManager.Type.ICON, getFileName(paramString), FileSaver.newSaver(paramArrayOfByte)))
      logger.w("Unable to write to cached files manager: %s", new Object[] { paramString });
  }

  public Drawable getIcon(String paramString)
  {
    Assert.assertUiThread();
    Drawable localDrawable;
    if ((paramString == null) || (paramString.length() == 0))
      localDrawable = null;
    do
    {
      return localDrawable;
      localDrawable = (Drawable)this.memoryCache.get(paramString);
    }
    while (localDrawable != null);
    BackgroundLoadDrawable localBackgroundLoadDrawable = new BackgroundLoadDrawable(this.width, this.height);
    Loader localLoader1 = (Loader)this.loaders.get(paramString);
    if (localLoader1 == null)
    {
      Loader localLoader2 = new Loader(paramString);
      this.loaders.put(paramString, localLoader2);
      localLoader2.addListener(localBackgroundLoadDrawable);
      localLoader2.startLoad();
    }
    while (true)
    {
      return localBackgroundLoadDrawable;
      localLoader1.addListener(localBackgroundLoadDrawable);
    }
  }

  private static class BackgroundLoadDrawable extends Drawable
  {
    int alpha = -1;
    ColorFilter colorFilter;
    final int height;
    volatile Drawable icon;
    final int width;

    BackgroundLoadDrawable(int paramInt1, int paramInt2)
    {
      this.width = paramInt1;
      this.height = paramInt2;
    }

    public void draw(Canvas paramCanvas)
    {
      if (this.icon != null)
      {
        this.icon.setBounds(getBounds());
        this.icon.draw(paramCanvas);
      }
    }

    public int getIntrinsicHeight()
    {
      return this.height;
    }

    public int getIntrinsicWidth()
    {
      return this.width;
    }

    public int getOpacity()
    {
      return -3;
    }

    public void setAlpha(int paramInt)
    {
      this.alpha = paramInt;
      if (this.icon != null)
        this.icon.setAlpha(paramInt);
    }

    public void setColorFilter(ColorFilter paramColorFilter)
    {
      this.colorFilter = paramColorFilter;
      if (this.icon != null)
        this.icon.setColorFilter(paramColorFilter);
    }

    void setIcon(Drawable paramDrawable)
    {
      if (paramDrawable != null)
      {
        this.icon = paramDrawable;
        if (this.colorFilter != null)
          paramDrawable.setColorFilter(this.colorFilter);
        if (this.alpha >= 0)
          paramDrawable.setAlpha(this.alpha);
        invalidateSelf();
      }
    }
  }

  private class Loader
  {
    final List<IconProvider.BackgroundLoadDrawable> listeners = new ArrayList();
    final String uri;

    Loader(String arg2)
    {
      Object localObject;
      this.uri = localObject;
    }

    void addListener(IconProvider.BackgroundLoadDrawable paramBackgroundLoadDrawable)
    {
      Assert.assertUiThread();
      this.listeners.add(paramBackgroundLoadDrawable);
    }

    Drawable load()
    {
      if (this.uri.startsWith("android.resource"));
      Drawable localDrawable1;
      do
      {
        try
        {
          Uri localUri = Uri.parse(this.uri);
          Drawable localDrawable2 = Drawable.createFromStream(IconProvider.this.context.getContentResolver().openInputStream(localUri), this.uri);
          localDrawable1 = localDrawable2;
          return localDrawable1;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          FormattingLogger localFormattingLogger2 = IconProvider.logger;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.uri;
          localFormattingLogger2.e(localFileNotFoundException, "Failed to load local resource: %s", arrayOfObject2);
          return null;
        }
        catch (NullPointerException localNullPointerException)
        {
          FormattingLogger localFormattingLogger1 = IconProvider.logger;
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = this.uri;
          localFormattingLogger1.e(localNullPointerException, "Invalid URI: %s", arrayOfObject1);
          return null;
        }
        localDrawable1 = IconProvider.this.loadFromDiskCache(this.uri);
      }
      while (localDrawable1 != null);
      return IconProvider.this.loadFromNetwork(this.uri);
    }

    void notifyListeners(Drawable paramDrawable)
    {
      Assert.assertUiThread();
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext())
        ((IconProvider.BackgroundLoadDrawable)localIterator.next()).setIcon(paramDrawable);
    }

    void startLoad()
    {
      new AsyncTask()
      {
        protected Drawable doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          return IconProvider.Loader.this.load();
        }

        protected void onPostExecute(Drawable paramAnonymousDrawable)
        {
          if (paramAnonymousDrawable != null)
            IconProvider.this.memoryCache.put(IconProvider.Loader.this.uri, paramAnonymousDrawable);
          IconProvider.Loader.this.notifyListeners(paramAnonymousDrawable);
          IconProvider.this.onLoaderDone(IconProvider.Loader.this);
        }
      }
      .execute(new Void[0]);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.IconProvider
 * JD-Core Version:    0.6.2
 */