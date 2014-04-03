package com.google.glass.util;

import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.text.TextUtils;
import com.google.glass.camera.CameraUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.timeline.TimelineHelper;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;

public class VideoThumbnailHelper
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private CachedBitmapFactory cachedBitmapFactory;
  private CachedFilesManager cachedFilesManager;
  private final CameraUtils cameraUtils = new CameraUtils();

  public VideoThumbnailHelper()
  {
  }

  public VideoThumbnailHelper(CachedBitmapFactory paramCachedBitmapFactory, CachedFilesManager paramCachedFilesManager)
  {
    this();
    this.cachedBitmapFactory = paramCachedBitmapFactory;
    this.cachedFilesManager = paramCachedFilesManager;
  }

  private String getVideoFilePath(TimelineNano.Attachment paramAttachment)
  {
    if (!TextUtils.isEmpty(paramAttachment.clientCachePath))
      return paramAttachment.clientCachePath;
    if (!TextUtils.isEmpty(paramAttachment.id))
      return this.cachedFilesManager.getPath(CachedFilesManager.Type.ATTACHMENT, paramAttachment.id);
    return null;
  }

  public Bitmap createThumbnail(String paramString)
  {
    Assert.assertNotUiThread();
    return ThumbnailUtils.createVideoThumbnail(paramString, 1);
  }

  public Bitmap getCachedThumbnail(TimelineNano.Attachment paramAttachment)
    throws IllegalArgumentException
  {
    Assert.assertUiThread();
    if ((this.cachedBitmapFactory == null) || (this.cachedFilesManager == null))
      throw new IllegalArgumentException("Cache not initialized.");
    if (!TextUtils.isEmpty(paramAttachment.thumbnailUrl));
    for (String str = paramAttachment.thumbnailUrl; TextUtils.isEmpty(str); str = TimelineHelper.getThumbnailFilename(paramAttachment))
    {
      logger.e("Failed to find thumbnail filename in attachment: %s", new Object[] { paramAttachment });
      return null;
    }
    return this.cachedBitmapFactory.decodeFile(this.cachedFilesManager.getPath(CachedFilesManager.Type.THUMBNAIL, str), true, null);
  }

  public Bitmap loadThumbnail(TimelineNano.Attachment paramAttachment, Condition paramCondition)
    throws IllegalArgumentException
  {
    Assert.assertNotUiThread();
    if ((this.cachedBitmapFactory == null) || (this.cachedFilesManager == null))
      throw new IllegalArgumentException("Cache not initialized.");
    String str1 = TimelineHelper.getThumbnailFilename(paramAttachment);
    Bitmap localBitmap;
    if (TextUtils.isEmpty(str1))
    {
      logger.e("Failed to find thumbnail filename in attachment: %s", new Object[] { paramAttachment });
      localBitmap = null;
    }
    do
    {
      return localBitmap;
      if (this.cachedFilesManager.contains(CachedFilesManager.Type.THUMBNAIL, str1))
        break;
      String str2 = getVideoFilePath(paramAttachment);
      if (str2 == null)
      {
        logger.e("Failed to find video file path in attachment: %s", new Object[] { paramAttachment });
        return null;
      }
      localBitmap = createThumbnail(str2);
      if (localBitmap == null)
      {
        logger.e("Failed to create thumbnail for video: %s", new Object[] { str2 });
        return null;
      }
    }
    while (!TextUtils.isEmpty(this.cameraUtils.saveThumbnailToCachedFiles(this.cachedFilesManager, localBitmap, str1)));
    logger.e("Failed to save thumbnail to: %s", new Object[] { str1 });
    return localBitmap;
    return this.cachedBitmapFactory.decodeFile(this.cachedFilesManager.getPath(CachedFilesManager.Type.THUMBNAIL, str1), false, paramCondition);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.VideoThumbnailHelper
 * JD-Core Version:    0.6.2
 */