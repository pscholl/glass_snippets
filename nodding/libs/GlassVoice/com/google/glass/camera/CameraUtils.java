package com.google.glass.camera;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver.Saver;
import java.io.OutputStream;

public class CameraUtils
{
  private static final int THUMBNAIL_JPEG_QUALITY = 90;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  static
  {
    System.loadLibrary("glasscamera");
  }

  public static Bitmap buildBitmapFromYuv420Sp(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    if (!populateBitmapFromYuv420Sp(paramArrayOfByte, localBitmap))
      logger.e("buildBitmapFromYuv420Sp failed! Result may be corrupted.", new Object[0]);
    return localBitmap;
  }

  public static native boolean populateBitmapFromYuv420Sp(byte[] paramArrayOfByte, Bitmap paramBitmap);

  public String saveThumbnailToCachedFiles(CachedFilesManager paramCachedFilesManager, final Bitmap paramBitmap, String paramString)
  {
    Assert.assertNotUiThread();
    if (paramCachedFilesManager == null)
    {
      logger.e("Failed to save thumbnail as CachedFilesManager is null.", new Object[0]);
      return null;
    }
    if (paramBitmap == null)
    {
      logger.e("Failed to save thumbnail as no thumbnail is present.", new Object[0]);
      return null;
    }
    if (!paramCachedFilesManager.save(CachedFilesManager.Type.THUMBNAIL, paramString, new FileSaver.Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return paramBitmap.getByteCount();
      }

      public void save(OutputStream paramAnonymousOutputStream)
      {
        paramBitmap.compress(Bitmap.CompressFormat.JPEG, 90, paramAnonymousOutputStream);
      }
    }))
    {
      logger.e("Failed to save file.", new Object[0]);
      return null;
    }
    return paramCachedFilesManager.getPath(CachedFilesManager.Type.THUMBNAIL, paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.CameraUtils
 * JD-Core Version:    0.6.2
 */