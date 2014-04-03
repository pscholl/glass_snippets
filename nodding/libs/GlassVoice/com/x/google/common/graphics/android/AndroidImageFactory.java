package com.x.google.common.graphics.android;

import android.content.Context;
import com.x.google.common.graphics.GoogleImage;
import com.x.google.common.graphics.ImageFactory;
import com.x.google.common.graphics.ImageUtil;
import java.io.IOException;
import java.util.Map;

public class AndroidImageFactory
  implements ImageFactory
{
  private final Context context;
  private Map<String, Integer> stringIdMap;

  public AndroidImageFactory(Context paramContext)
  {
    this.context = paramContext;
  }

  public GoogleImage createImage(int paramInt1, int paramInt2)
  {
    return new AndroidImage(paramInt1, paramInt2);
  }

  public GoogleImage createImage(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return new AndroidImage(paramInt1, paramInt2, paramBoolean);
  }

  public GoogleImage createImage(String paramString)
  {
    if (this.stringIdMap == null);
    return new AndroidImage(this.context, this.stringIdMap, paramString, AndroidImage.AutoScale.AUTO_SCALE_ENABLED);
  }

  public GoogleImage createImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new AndroidImage(paramArrayOfByte, paramInt1, paramInt2);
  }

  public GoogleImage createRGBImage(int[] paramArrayOfInt, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return new AndroidImage(paramArrayOfInt, paramInt1, paramInt2, paramBoolean);
  }

  public byte[] createScaledJpeg(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return null;
  }

  public GoogleImage createSquareImage(byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    return ImageUtil.createSquareImage(createImage(paramArrayOfByte, 0, paramArrayOfByte.length), paramInt);
  }

  public GoogleImage createUnscaledImage(String paramString)
  {
    if (this.stringIdMap == null);
    return new AndroidImage(this.context, this.stringIdMap, paramString, AndroidImage.AutoScale.AUTO_SCALE_DISABLED);
  }

  public void setStringIdMap(Map<String, Integer> paramMap)
  {
    this.stringIdMap = paramMap;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.AndroidImageFactory
 * JD-Core Version:    0.6.2
 */