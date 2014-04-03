package com.google.glass.html;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.ThumbnailUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import java.io.ByteArrayOutputStream;
import java.io.File;

public class Thumbnailer
{
  private static final int JPEG_COMPRESSION_QUALITY = 95;
  private static final int PNG_COMPRESSION_QUALITY = 100;
  private static final String TAG = Thumbnailer.class.getSimpleName();
  private static final int THUMBNAIL_SIZE = 640;
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final CachedFilesManager cachedFilesManager = CachedFilesManager.getSharedInstance();

  private static int computeSampleSize(int paramInt1, int paramInt2)
  {
    int i = 1;
    while ((paramInt1 / i >= 1280) || (paramInt2 / i >= 1280))
      i *= 2;
    return i;
  }

  private static boolean isSupportedImageContentType(String paramString)
  {
    String[] arrayOfString = TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      if (arrayOfString[j].equals(paramString))
        return true;
    return false;
  }

  public ThumbnailerResult createThumbnail(TimelineNano.Attachment paramAttachment, String paramString, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    Timer localTimer = new Timer();
    if (!isSupportedImageContentType(paramAttachment.contentType))
      return ThumbnailerResult.THUMBNAIL_NOT_REQUIRED;
    File localFile = getThumbnailFile(paramAttachment);
    if (localFile == null)
    {
      logger.w("Unable to determine filename for thumbnail", new Object[0]);
      return ThumbnailerResult.THUMBNAIL_NOT_REQUIRED;
    }
    if (localFile.exists())
      return ThumbnailerResult.THUMBNAIL_READY;
    if (Thread.currentThread().isInterrupted())
    {
      logger.v("Interrupted!", new Object[0]);
      return ThumbnailerResult.FAILURE;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inSampleSize = 1;
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    if ((localOptions.outWidth <= 0) || (localOptions.outHeight <= 0))
    {
      logger.w("Unable to decode file: %s", new Object[] { paramString });
      return ThumbnailerResult.FAILURE;
    }
    int i = localOptions.outWidth;
    int j = localOptions.outHeight;
    if ((i <= 640) && (j <= 640))
      return ThumbnailerResult.THUMBNAIL_NOT_REQUIRED;
    if (paramBoolean)
      return ThumbnailerResult.THUMBNAIL_SKIPPED;
    if (Thread.currentThread().isInterrupted())
    {
      logger.v("Interrupted!", new Object[0]);
      return ThumbnailerResult.FAILURE;
    }
    localOptions.inSampleSize = computeSampleSize(i, j);
    localOptions.inJustDecodeBounds = false;
    localOptions.inDither = false;
    localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
    if (localBitmap == null)
    {
      logger.w("Unable to decode file: %s", new Object[] { paramString });
      return ThumbnailerResult.FAILURE;
    }
    int k;
    int m;
    int i1;
    int n;
    if (Math.max(localBitmap.getWidth(), localBitmap.getHeight()) != 640)
    {
      k = localBitmap.getWidth();
      m = localBitmap.getHeight();
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(k);
      arrayOfObject[1] = Integer.valueOf(m);
      localFormattingLogger.v("Resampling thumbnail: %sx%s", arrayOfObject);
      if (k <= m)
        break label431;
      i1 = m * 640 / k;
      n = 640;
    }
    while (true)
    {
      localBitmap = ThumbnailUtils.extractThumbnail(localBitmap, n, i1);
      if (!Thread.currentThread().isInterrupted())
        break;
      logger.v("Interrupted!", new Object[0]);
      return ThumbnailerResult.FAILURE;
      label431: n = k * 640 / m;
      i1 = 640;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if ("image/jpeg".equals(paramAttachment.contentType))
      localBitmap.compress(Bitmap.CompressFormat.JPEG, 95, localByteArrayOutputStream);
    while (true)
    {
      String str = TimelineHelper.getThumbnailFilename(paramAttachment);
      this.cachedFilesManager.save(CachedFilesManager.Type.THUMBNAIL, str, FileSaver.newSaver(localByteArrayOutputStream.toByteArray()));
      localTimer.log(TAG, "Generated thumbnail: " + localFile + ", " + localBitmap.getWidth() + "x" + localBitmap.getHeight());
      return ThumbnailerResult.THUMBNAIL_READY;
      localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    }
  }

  public File getThumbnailFile(TimelineNano.Attachment paramAttachment)
  {
    String str = TimelineHelper.getThumbnailFilename(paramAttachment);
    if (str == null)
      return null;
    return new File(this.cachedFilesManager.getPath(CachedFilesManager.Type.THUMBNAIL, str));
  }

  static enum ThumbnailerResult
  {
    static
    {
      THUMBNAIL_NOT_REQUIRED = new ThumbnailerResult("THUMBNAIL_NOT_REQUIRED", 1);
      THUMBNAIL_SKIPPED = new ThumbnailerResult("THUMBNAIL_SKIPPED", 2);
      FAILURE = new ThumbnailerResult("FAILURE", 3);
      ThumbnailerResult[] arrayOfThumbnailerResult = new ThumbnailerResult[4];
      arrayOfThumbnailerResult[0] = THUMBNAIL_READY;
      arrayOfThumbnailerResult[1] = THUMBNAIL_NOT_REQUIRED;
      arrayOfThumbnailerResult[2] = THUMBNAIL_SKIPPED;
      arrayOfThumbnailerResult[3] = FAILURE;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.Thumbnailer
 * JD-Core Version:    0.6.2
 */