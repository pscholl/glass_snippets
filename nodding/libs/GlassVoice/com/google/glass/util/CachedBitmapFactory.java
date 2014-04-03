package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.glass.app.GlassApplication;
import com.google.glass.fs.DirectoryTracker;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.timeline.AttachmentHelper;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

public class CachedBitmapFactory
{
  private static final byte[] FILE_READ_BUFFER = new byte[2097152];
  private static final int MAX_IMAGE_SIZE = 1024;
  private static final int TEMP_STORAGE_BUFFER_SIZE_BYTES = 16384;
  private static final int TEMP_STORAGE_NUM_BUFFERS = 4;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static LinkedBlockingQueue<byte[]> tempStoragePool = new LinkedBlockingQueue(4);
  private final AttachmentHelper attachmentHelper;
  protected final Context context;
  private DirectoryTracker dcimTracker;
  protected final int minHeight;
  protected final int minWidth;

  static
  {
    for (int i = 0; i < 4; i++)
      tempStoragePool.offer(new byte[16384]);
  }

  public CachedBitmapFactory(Context paramContext, int paramInt1, int paramInt2)
  {
    this.context = paramContext;
    this.minWidth = paramInt1;
    this.minHeight = paramInt2;
    this.attachmentHelper = new AttachmentHelper(paramContext);
    try
    {
      this.dcimTracker = new DirectoryTracker(GlassApplication.DCIM_DIRECTORY);
      return;
    }
    catch (IOException localIOException)
    {
      this.dcimTracker = null;
      logger.e(localIOException, "DirectoryTracker threw IOException during construction.", new Object[0]);
    }
  }

  private static boolean isCancelled(Condition paramCondition)
  {
    return (paramCondition != null) && (paramCondition.get());
  }

  public static Bitmap loadBitmapFile(String paramString, int paramInt1, int paramInt2, Condition paramCondition)
  {
    Assert.assertNotUiThread();
    File localFile = new File(paramString);
    Bitmap localBitmap;
    if (!localFile.exists())
    {
      logger.v("The file \"" + paramString + "\" does not exist. Not decoding it as an image.", new Object[0]);
      localBitmap = null;
      return localBitmap;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inPurgeable = true;
    byte[] arrayOfByte1 = (byte[])tempStoragePool.poll();
    if (arrayOfByte1 != null)
      localOptions.inTempStorage = arrayOfByte1;
    while (true)
    {
      int n;
      try
      {
        synchronized (FILE_READ_BUFFER)
        {
          l1 = SystemClock.uptimeMillis();
          if (isCancelled(paramCondition))
          {
            logger.d("Request for bitmap has been cancelled. Will not read file.", new Object[0]);
            localBitmap = null;
            return null;
          }
          if (localFile.length() > FILE_READ_BUFFER.length)
          {
            FormattingLogger localFormattingLogger2 = logger;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Long.valueOf(localFile.length());
            localFormattingLogger2.w("Shared file read buffer is too small to hold: %s bytes", arrayOfObject2);
            arrayOfByte3 = new byte[(int)localFile.length()];
            i = FileHelper.read(localFile, arrayOfByte3, paramCondition);
            localOptions.inInputShareable = true;
            if (isCancelled(paramCondition))
            {
              logger.d("Request for bitmap has been cancelled. Will not decode dimensions.", new Object[0]);
              localBitmap = null;
              return null;
            }
          }
          else
          {
            arrayOfByte3 = FILE_READ_BUFFER;
            i = FileHelper.read(localFile, arrayOfByte3, paramCondition);
            localOptions.inInputShareable = false;
          }
        }
      }
      catch (IOException localIOException)
      {
        long l1;
        byte[] arrayOfByte3;
        int i;
        logger.w(localIOException, "The file \"%s\" could not be read. Not decoding it as an image.", new Object[] { paramString });
        localBitmap = null;
        return null;
        localOptions.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(arrayOfByte3, 0, i, localOptions);
        int j = localOptions.outWidth;
        int k = localOptions.outHeight;
        if (paramInt1 <= 0)
          paramInt1 = 1;
        int m = Math.max(1, j / paramInt1);
        if (paramInt2 <= 0)
          paramInt2 = 1;
        n = Integer.highestOneBit(Math.min(m, Math.max(1, k / paramInt2)));
        if ((j / n <= 1024) && (k / n <= 1024))
        {
          localOptions.inSampleSize = n;
          if (paramCondition != null)
          {
            Runnable local2 = new Runnable()
            {
              public void run()
              {
                this.val$options.requestCancelDecode();
              }
            };
            if (paramCondition.addCallback(local2));
          }
          else
          {
            localOptions.inJustDecodeBounds = false;
            localBitmap = BitmapFactory.decodeByteArray(arrayOfByte3, 0, i, localOptions);
            long l2 = SystemClock.uptimeMillis();
            int i1 = localOptions.outWidth;
            int i2 = localOptions.outHeight;
            FormattingLogger localFormattingLogger1 = logger;
            Object[] arrayOfObject1 = new Object[6];
            arrayOfObject1[0] = Integer.valueOf(j);
            arrayOfObject1[1] = Integer.valueOf(k);
            arrayOfObject1[2] = paramString;
            arrayOfObject1[3] = Integer.valueOf(i1);
            arrayOfObject1[4] = Integer.valueOf(i2);
            arrayOfObject1[5] = Long.valueOf(l2 - l1);
            localFormattingLogger1.v("Decoded a %sx%s image (%s) into a %sx%s bitmap, took %sms", arrayOfObject1);
            return localBitmap;
          }
          logger.d("Request for bitmap has been cancelled. Will not decode image.", new Object[0]);
          localBitmap = null;
          return null;
        }
      }
      finally
      {
        if (arrayOfByte1 != null)
          tempStoragePool.offer(arrayOfByte1);
      }
      n *= 2;
    }
  }

  public final boolean cacheContainsAttachment(TimelineNano.Attachment paramAttachment)
  {
    Assert.assertNotUiThread();
    if (!TextUtils.isEmpty(paramAttachment.clientCachePath))
      return true;
    return CachedFilesManager.getSharedInstance().contains(CachedFilesManager.Type.ATTACHMENT, paramAttachment.id);
  }

  public Bitmap decodeAttachment(TimelineNano.Attachment paramAttachment, boolean paramBoolean, Condition paramCondition)
  {
    if (!paramBoolean)
      Assert.assertNotUiThread();
    String str = getCachedAttachmentPath(paramAttachment, paramBoolean);
    if (TextUtils.isEmpty(str))
      return null;
    return decodeFile(str, paramBoolean, paramCondition);
  }

  public Bitmap decodeFile(String paramString, boolean paramBoolean, Condition paramCondition)
  {
    if (paramBoolean)
      return null;
    Assert.assertNotUiThread();
    return loadBitmap(paramString, this.minWidth, this.minHeight, paramCondition);
  }

  public final String getCachedAttachmentPath(TimelineNano.Attachment paramAttachment, boolean paramBoolean)
  {
    if (!paramBoolean)
      Assert.assertNotUiThread();
    if (!TextUtils.isEmpty(paramAttachment.clientCachePath))
    {
      String str = paramAttachment.clientCachePath;
      if (!str.contains(GlassApplication.DCIM_DIRECTORY));
      do
      {
        return str;
        if (this.dcimTracker == null)
        {
          logger.e("DirectoryTracker is not available for queries! Falling back to old behavior and blindly returning client_cache_path!", new Object[0]);
          return str;
        }
        if (!this.dcimTracker.isTracking())
        {
          logger.w("DirectoryTracker is not ready for queries! Falling back to old behavior and blindly returning client_cache_path!", new Object[0]);
          return str;
        }
      }
      while (this.dcimTracker.contains(str));
    }
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    if ((!paramBoolean) && (!localCachedFilesManager.contains(CachedFilesManager.Type.ATTACHMENT, paramAttachment.id)));
    try
    {
      byte[] arrayOfByte2 = this.attachmentHelper.getAttachmentFromServer(paramAttachment.id);
      arrayOfByte1 = arrayOfByte2;
      if ((arrayOfByte1 != null) && (arrayOfByte1.length > 0))
      {
        localCachedFilesManager.save(CachedFilesManager.Type.ATTACHMENT, paramAttachment.id, FileSaver.newSaver(arrayOfByte1));
        return localCachedFilesManager.getPath(CachedFilesManager.Type.ATTACHMENT, paramAttachment.id);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        FormattingLogger localFormattingLogger1 = logger;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = paramAttachment.id;
        localFormattingLogger1.e(localInterruptedException, "Interrupted while fetching attachment from server: %s", arrayOfObject1);
        byte[] arrayOfByte1 = null;
        continue;
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = paramAttachment.id;
        localFormattingLogger2.e("Failed to get attachment from server: %s", arrayOfObject2);
      }
    }
  }

  protected final Bitmap loadBitmap(String paramString, final int paramInt1, final int paramInt2, final Condition paramCondition)
  {
    Assert.assertNotUiThread();
    if (CachedFilesManager.getSharedInstance().getType(paramString) != CachedFilesManager.Type.NONE)
      return (Bitmap)CachedFilesManager.getSharedInstance().load(paramString, new CachedFilesManager.Loader()
      {
        public Bitmap load(String paramAnonymousString)
        {
          return CachedBitmapFactory.loadBitmapFile(paramAnonymousString, paramInt1, paramInt2, paramCondition);
        }
      });
    return loadBitmapFile(paramString, paramInt1, paramInt2, paramCondition);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CachedBitmapFactory
 * JD-Core Version:    0.6.2
 */