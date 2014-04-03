package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.widget.ImageView;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class BitmapDecodingTask extends DeferredContentLoader.LoadingTask<Bitmap>
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final int defaultImageResource;
  private final int height;
  private final byte[] imageData;
  private final ImageView pictureView;
  private final int width;

  public BitmapDecodingTask(Context paramContext, byte[] paramArrayOfByte, ImageView paramImageView, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext);
    this.imageData = paramArrayOfByte;
    this.pictureView = paramImageView;
    this.defaultImageResource = paramInt1;
    this.width = paramInt2;
    this.height = paramInt3;
  }

  protected void bindContent(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return;
    this.pictureView.setImageBitmap(paramBitmap);
    showView(this.pictureView, true);
  }

  protected String getUserEventTag()
  {
    return "ei";
  }

  protected Bitmap loadContent(Condition paramCondition)
  {
    if (this.imageData == null)
      return null;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.outWidth = this.width;
    localOptions.outHeight = this.height;
    return BitmapFactory.decodeByteArray(this.imageData, 0, this.imageData.length, localOptions);
  }

  protected void prepareContent()
  {
    this.pictureView.setImageResource(this.defaultImageResource);
    showView(this.pictureView, false);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.BitmapDecodingTask
 * JD-Core Version:    0.6.2
 */