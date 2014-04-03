package com.google.glass.widget;

import android.content.Context;
import android.util.Pair;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.glass.common.R.id;
import com.google.glass.util.BitmapDecodingTask;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import java.util.List;

public class ByteImageLoader extends BaseImageLoader<byte[]>
{
  private int defaultImageResource;

  public ByteImageLoader(List<byte[]> paramList, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramList, paramInt2, paramInt3);
    this.defaultImageResource = paramInt1;
    Pair localPair = ImageLoaderUtils.getDrawingImages(paramList, paramInt2, paramInt3);
    setDrawImageSources((List)localPair.first);
    setGroupCountType((MosaicView.GroupCountType)localPair.second);
  }

  public DeferredContentLoader.LoadingTask<?> createLoadingTask(Context paramContext, FrameLayout paramFrameLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    ImageView localImageView = (ImageView)paramFrameLayout.findViewById(R.id.image);
    return new BitmapDecodingTask(paramContext, (byte[])get(paramInt1), localImageView, this.defaultImageResource, paramInt2, paramInt3);
  }

  protected String getImageSourceKey(byte[] paramArrayOfByte)
  {
    throw new UnsupportedOperationException("Cannot cache ByteImageLoader.");
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ByteImageLoader
 * JD-Core Version:    0.6.2
 */