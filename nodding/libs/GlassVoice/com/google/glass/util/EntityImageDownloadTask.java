package com.google.glass.util;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.entity.EntityHelper;
import com.google.glass.predicates.Assert;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;

public class EntityImageDownloadTask extends PersonImageDownloadTask
{
  private final TimelineNano.Entity entity;

  public EntityImageDownloadTask(Context paramContext, TimelineNano.Entity paramEntity, ImageView paramImageView, TextView paramTextView, int paramInt1, int paramInt2)
  {
    super(paramContext, EntityHelper.getFirstImageUrl(paramEntity), paramImageView, paramTextView, paramInt1, paramInt2);
    if (paramEntity == null)
      throw new IllegalArgumentException("Entity cannot be null.");
    this.entity = paramEntity;
  }

  private void setImageUrlByEmail(ContentResolver paramContentResolver, String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = this.entity.id;
    arrayOfString[1] = this.entity.email;
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
      if (j < i)
      {
        String str = EntityHelper.getFirstImageUrl(EntityHelper.queryByEmail(paramContentResolver, arrayOfString[j]));
        if (!TextUtils.isEmpty(str))
          setImageUrl(str);
      }
      else
      {
        return;
      }
  }

  protected String getCacheId()
  {
    if (!TextUtils.isEmpty(this.entity.id))
      return this.entity.id;
    return null;
  }

  protected String getDisplayText()
  {
    return EntityHelper.getDisplayName(this.entity);
  }

  protected String getUserEventTag()
  {
    return "ei";
  }

  protected void onPreLoad()
  {
    Assert.assertNotUiThread();
    ContentResolver localContentResolver = getContext().getContentResolver();
    if ((!hasImageUrl()) && (!TextUtils.isEmpty(this.entity.phoneNumber)))
    {
      setImageUrl(EntityHelper.getFirstImageUrl(EntityHelper.queryByPhoneNumber(localContentResolver, this.entity.phoneNumber)));
      if (!hasImageUrl())
        setImageUrl(EntityHelper.getFirstImageUrl(EntityHelper.queryBySecondaryPhoneNumber(localContentResolver, this.entity.phoneNumber)));
    }
    if (TextUtils.isEmpty(getImageUrl()))
    {
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.entity.id;
      arrayOfString[1] = this.entity.email;
      setImageUrlByEmail(localContentResolver, arrayOfString);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.EntityImageDownloadTask
 * JD-Core Version:    0.6.2
 */