package com.google.glass.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.util.DisplayMetrics;
import com.google.android.glass.hidden.HiddenSurface;
import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.OutputStream;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ScreenshotUtil
{
  private static final String TAG = ScreenshotUtil.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static final ExecutorService saveExecutor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(1, TAG + "/saveExecutor"));

  public static String captureAndSaveScreenshot(Context paramContext)
  {
    return captureAndSaveScreenshot(paramContext, String.valueOf(System.currentTimeMillis()));
  }

  public static String captureAndSaveScreenshot(Context paramContext, String paramString)
  {
    final Bitmap localBitmap = captureScreenshot(paramContext);
    final String str = paramString + ".png";
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    saveExecutor.execute(new Runnable()
    {
      public void run()
      {
        this.val$cachedFilesManager.save(CachedFilesManager.Type.SCREENSHOT, str, new FileSaver.Saver()
        {
          public long getEstimatedSizeBytes()
          {
            return ScreenshotUtil.1.this.val$screenshot.getByteCount();
          }

          public void save(OutputStream paramAnonymous2OutputStream)
          {
            if (!ScreenshotUtil.1.this.val$screenshot.compress(Bitmap.CompressFormat.PNG, 0, paramAnonymous2OutputStream))
              ScreenshotUtil.logger.e("Failed to compress screenshot.", new Object[0]);
          }
        });
      }
    });
    return localCachedFilesManager.getPath(CachedFilesManager.Type.SCREENSHOT, str);
  }

  public static Bitmap captureScreenshot(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    return HiddenSurface.screenshot(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
  }

  public static Executor getSaveExecutor()
  {
    return saveExecutor;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ScreenshotUtil
 * JD-Core Version:    0.6.2
 */