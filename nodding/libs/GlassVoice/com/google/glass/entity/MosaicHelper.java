package com.google.glass.entity;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.LruCache;
import android.view.View.MeasureSpec;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.widget.ImageLoader;
import com.google.glass.widget.MosaicView;
import com.google.glass.widget.MosaicView.CellsLoadedListener;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.Executor;

public class MosaicHelper
{
  private static final String AUTHORITY = "mosaic";
  private static final int MOSAIC_CACHE_MAX_BYTES = 4194304;
  private static final String SCHEME = "glass";
  private static MosaicHelper instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final LruCache<String, byte[]> mosaicCache = new LruCache(4194304)
  {
    protected int sizeOf(String paramAnonymousString, byte[] paramAnonymousArrayOfByte)
    {
      return paramAnonymousArrayOfByte.length;
    }
  };

  private MosaicHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  public static MosaicHelper getInstance(Context paramContext)
  {
    return instance;
  }

  public static void initialize(Context paramContext)
  {
    Assert.assertUiThread();
    if (instance == null)
      instance = new MosaicHelper(paramContext.getApplicationContext());
  }

  public static boolean isGlassMosaicUri(Uri paramUri)
  {
    return (paramUri.isHierarchical()) && ("glass".equals(paramUri.getScheme())) && ("mosaic".equals(paramUri.getAuthority()));
  }

  private byte[] mosaicViewToPng(MosaicView paramMosaicView)
  {
    Assert.assertNotUiThread();
    paramMosaicView.setDrawingCacheEnabled(true);
    paramMosaicView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    paramMosaicView.layout(0, 0, paramMosaicView.getMeasuredWidth(), paramMosaicView.getMeasuredHeight());
    paramMosaicView.buildDrawingCache(true);
    Bitmap localBitmap = paramMosaicView.getDrawingCache();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    paramMosaicView.setDrawingCacheEnabled(false);
    return localByteArrayOutputStream.toByteArray();
  }

  public byte[] getCachedMosaicPng(ImageLoader paramImageLoader)
  {
    synchronized (this.mosaicCache)
    {
      byte[] arrayOfByte = (byte[])this.mosaicCache.get(paramImageLoader.getKey());
      return arrayOfByte;
    }
  }

  public ListenableFuture<byte[]> renderMosaicToPng(final ImageLoader paramImageLoader)
  {
    final String str = paramImageLoader.getKey();
    synchronized (this.mosaicCache)
    {
      byte[] arrayOfByte = (byte[])this.mosaicCache.get(str);
      if (arrayOfByte != null)
      {
        logger.d("Returning mosaic from cache", new Object[0]);
        return Futures.immediateFuture(arrayOfByte);
      }
    }
    final SettableFuture localSettableFuture = SettableFuture.create();
    final MosaicView localMosaicView = new MosaicView(this.context);
    localMosaicView.setCellsLoadedListener(new MosaicView.CellsLoadedListener()
    {
      public void onCellsLoaded()
      {
        new AsyncTask()
        {
          protected Void doInBackground(Void[] paramAnonymous2ArrayOfVoid)
          {
            byte[] arrayOfByte = MosaicHelper.this.mosaicViewToPng(MosaicHelper.2.this.val$view);
            FormattingLogger localFormattingLogger = MosaicHelper.logger;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Integer.valueOf(arrayOfByte.length);
            localFormattingLogger.d("Rendering succeeded: %d bytes", arrayOfObject);
            synchronized (MosaicHelper.this.mosaicCache)
            {
              MosaicHelper.this.mosaicCache.put(MosaicHelper.2.this.val$key, arrayOfByte);
              MosaicHelper.2.this.val$resultFuture.set(arrayOfByte);
              return null;
            }
          }
        }
        .execute(new Void[0]);
      }
    });
    MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
    {
      public void run()
      {
        localMosaicView.loadImages(paramImageLoader);
      }
    });
    return localSettableFuture;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.MosaicHelper
 * JD-Core Version:    0.6.2
 */