package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;

public abstract class PersonImageDownloadTask extends ImageProxyBitmapLoadingTask
{
  public static final int CROP_TYPE = 1;
  private static final int NO_IMAGE_ID = -1;
  private int defaultImage = -1;
  private LabelVisibility labelVisibility = LabelVisibility.DEFAULT;
  private final TextView nameView;
  private final ImageView pictureView;
  private final LruCache<String, String> profileImageUrlCache;

  public PersonImageDownloadTask(Context paramContext, String paramString, ImageView paramImageView, TextView paramTextView, int paramInt1, int paramInt2)
  {
    super(paramContext, paramString, paramInt1, paramInt2, 1);
    this.pictureView = paramImageView;
    this.nameView = paramTextView;
    this.profileImageUrlCache = GlassApplication.from(paramContext).getProfileImageUrlCache();
  }

  protected void bindContent(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.pictureView.setImageBitmap(paramBitmap);
      if (paramBitmap == null)
        break label47;
    }
    label47: for (boolean bool = true; ; bool = false)
    {
      setViewVisibilities(bool, true);
      return;
      if (this.defaultImage == -1)
        break;
      this.pictureView.setImageResource(this.defaultImage);
      break;
    }
  }

  protected abstract String getCacheId();

  protected abstract String getDisplayText();

  protected Bitmap loadContent(Condition paramCondition)
  {
    onPreLoad();
    String str1 = getImageUrl();
    Bitmap localBitmap = super.loadContent(paramCondition);
    String str2 = getCacheId();
    if ((str1 != null) && (localBitmap != null) && (str2 != null))
      this.profileImageUrlCache.put(str2, str1);
    return localBitmap;
  }

  protected void onPreLoad()
  {
  }

  protected void prepareContent()
  {
    String str = getCacheId();
    if ((getImageUrl() == null) && (str != null))
      setImageUrl((String)this.profileImageUrlCache.get(str));
    if (this.nameView != null)
      this.nameView.setText(getDisplayText());
    Bitmap localBitmap = loadContentFromCache();
    boolean bool;
    if (localBitmap != null)
    {
      bool = true;
      if (!bool)
        break label90;
      this.pictureView.setImageBitmap(localBitmap);
      cancel(false);
    }
    while (true)
    {
      setViewVisibilities(bool, false);
      return;
      bool = false;
      break;
      label90: if (this.defaultImage != -1)
        this.pictureView.setImageResource(this.defaultImage);
    }
  }

  public void setDefaultImageResId(int paramInt)
  {
    this.defaultImage = paramInt;
  }

  public void setLabelVisibility(LabelVisibility paramLabelVisibility)
  {
    if ((isRunning()) || (isFinished()))
      throw new IllegalStateException("Must call setLabelVisibility before the task is run");
    this.labelVisibility = paramLabelVisibility;
  }

  @VisibleForTesting
  void setViewVisibilities(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) || (this.defaultImage != -1))
      showView(this.pictureView, paramBoolean2);
    while (true)
      switch (1.$SwitchMap$com$google$glass$util$PersonImageDownloadTask$LabelVisibility[this.labelVisibility.ordinal()])
      {
      default:
        return;
        hideView(this.pictureView, paramBoolean2, true);
      case 1:
      case 2:
      case 3:
      }
    hideView(this.nameView, paramBoolean2, true);
    return;
    showView(this.nameView, paramBoolean2);
    return;
    if (paramBoolean1)
    {
      hideView(this.nameView, paramBoolean2, true);
      return;
    }
    showView(this.nameView, paramBoolean2);
  }

  public static enum LabelVisibility
  {
    static
    {
      ALWAYS_VISIBLE = new LabelVisibility("ALWAYS_VISIBLE", 1);
      ALWAYS_HIDDEN = new LabelVisibility("ALWAYS_HIDDEN", 2);
      LabelVisibility[] arrayOfLabelVisibility = new LabelVisibility[3];
      arrayOfLabelVisibility[0] = DEFAULT;
      arrayOfLabelVisibility[1] = ALWAYS_VISIBLE;
      arrayOfLabelVisibility[2] = ALWAYS_HIDDEN;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.PersonImageDownloadTask
 * JD-Core Version:    0.6.2
 */