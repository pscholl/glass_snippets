package com.x.google.common.graphics.android;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.x.google.common.graphics.GoogleImage;

public class AndroidAshmemImageFactory extends AndroidImageFactory
{
  public AndroidAshmemImageFactory(Context paramContext)
  {
    super(paramContext);
  }

  public GoogleImage createImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new AndroidAshmemImage(paramArrayOfByte, paramInt1, paramInt2);
  }

  private static class AndroidAshmemImage extends AndroidImage
  {
    private static final BitmapFactory.Options options = new BitmapFactory.Options();

    static
    {
      options.inPurgeable = true;
      options.inPreferredConfig = Bitmap.Config.RGB_565;
    }

    public AndroidAshmemImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      super();
    }

    public int getNumBytesUsed()
    {
      return 0;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.AndroidAshmemImageFactory
 * JD-Core Version:    0.6.2
 */