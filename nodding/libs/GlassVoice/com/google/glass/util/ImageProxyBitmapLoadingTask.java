package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.google.glass.app.GlassApplication;

public abstract class ImageProxyBitmapLoadingTask extends DeferredContentLoader.LoadingTask<Bitmap>
{
  private final CachedBitmapFactory bitmapFactory;
  private final ImageProxyDownloadTask downloadTask;

  public ImageProxyBitmapLoadingTask(Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext);
    this.bitmapFactory = GlassApplication.from(paramContext).getBitmapFactory();
    this.downloadTask = new ImageProxyDownloadTask(paramContext, paramString, paramInt1, paramInt2, paramInt3)
    {
      protected void bindContent(String paramAnonymousString)
      {
      }

      protected void prepareContent()
      {
      }
    };
  }

  public String getImageUrl()
  {
    return this.downloadTask.getImageUrl();
  }

  protected String getUserEventTag()
  {
    return "ipb";
  }

  public boolean hasImageUrl()
  {
    return !TextUtils.isEmpty(getImageUrl());
  }

  protected Bitmap loadContent(Condition paramCondition)
  {
    String str = this.downloadTask.loadContent(paramCondition);
    if (str == null)
      return null;
    return this.bitmapFactory.decodeFile(str, false, paramCondition);
  }

  public Bitmap loadContentFromCache()
  {
    String str = this.downloadTask.loadContentFromCache();
    if (str == null)
      return null;
    return this.bitmapFactory.decodeFile(str, true, null);
  }

  public void setImageDimensions(int paramInt1, int paramInt2)
  {
    this.downloadTask.setImageDimensions(paramInt1, paramInt2);
  }

  public String setImageUrl(String paramString)
  {
    return this.downloadTask.setImageUrl(paramString);
  }

  public static class SimpleImageProxyBitmapLoadingTask extends ImageProxyBitmapLoadingTask
  {
    private final ImageView imageView;

    public SimpleImageProxyBitmapLoadingTask(ImageView paramImageView, Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
    {
      super(paramString, paramInt1, paramInt2, paramInt3);
      this.imageView = paramImageView;
    }

    protected void bindContent(Bitmap paramBitmap)
    {
      if (paramBitmap != null)
      {
        this.imageView.setImageBitmap(paramBitmap);
        showView(this.imageView, true);
      }
    }

    protected void prepareContent()
    {
      hideView(this.imageView, false, true);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ImageProxyBitmapLoadingTask
 * JD-Core Version:    0.6.2
 */