package com.google.glass.entity;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.TextView;
import com.google.glass.app.GlassApplication;
import com.google.glass.common.R.id;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.PersonImageDownloadTask.LabelVisibility;
import com.google.glass.widget.ImageLoaders;
import com.google.glass.widget.MosaicView;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.horizontalscroll.FrameLayoutCard;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.Arrays;

public abstract class EntityItemView extends FrameLayoutCard
{
  private String displayName;
  private TimelineNano.Entity entity;
  private MosaicView image;
  private final int imageHeight;
  private final int imageWidth;
  private TextView label;
  private boolean prependEntity;
  private byte[] protobuf;

  public EntityItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    this.imageWidth = localDisplayMetrics.widthPixels;
    this.imageHeight = localDisplayMetrics.heightPixels;
  }

  private AdapterView getParentAdapterView()
  {
    for (ViewParent localViewParent = getParent(); (localViewParent != null) && (!(localViewParent instanceof AdapterView)); localViewParent = localViewParent.getParent());
    return (AdapterView)localViewParent;
  }

  private void logUserEvent(UserEventAction paramUserEventAction, String paramString)
  {
    GlassApplication.from(getContext()).getUserEventHelper().log(paramUserEventAction, paramString);
  }

  public void bind(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
  {
    this.entity = null;
    this.protobuf = paramArrayOfByte;
    this.displayName = paramString2;
    if (!ArrayUtils.isEmpty(getEntity().imageUrl))
      this.image.loadImages(ImageLoaders.forImageUrls(Arrays.asList(getEntity().imageUrl), PersonImageDownloadTask.LabelVisibility.ALWAYS_HIDDEN, this.imageWidth, this.imageHeight));
    this.label.setText(paramString2);
  }

  public TimelineItemId getBundleEntryPoint()
  {
    return null;
  }

  protected String getDisplayName()
  {
    return this.displayName;
  }

  protected TimelineNano.Entity getEntity()
  {
    if (this.entity == null)
      this.entity = EntityHelper.fromProtoByteArray(this.protobuf);
    return this.entity;
  }

  public boolean onConfirm()
  {
    AdapterView localAdapterView = getParentAdapterView();
    Integer localInteger;
    Object[] arrayOfObject;
    if (localAdapterView != null)
    {
      localInteger = Integer.valueOf(localAdapterView.getSelectedItemPosition());
      arrayOfObject = new Object[2];
      arrayOfObject[0] = "pre";
      if (!this.prependEntity)
        break label72;
    }
    label72: for (String str = "1"; ; str = "0")
    {
      arrayOfObject[1] = str;
      StringBuilder localStringBuilder = UserEventHelper.createEventTupleBuilder("pos", localInteger, arrayOfObject);
      onConfirmLogData(localStringBuilder);
      logUserEvent(UserEventAction.TOUCH_MENU_ENTITY_SELECTED, localStringBuilder.toString());
      return false;
    }
  }

  protected void onConfirmLogData(StringBuilder paramStringBuilder)
  {
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.image = ((MosaicView)findViewById(R.id.image));
    this.label = ((TextView)findViewById(R.id.label));
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onSettled()
  {
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
  }

  public void onUnsettled()
  {
  }

  public void setIsPrepend(boolean paramBoolean)
  {
    this.prependEntity = paramBoolean;
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return true;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityItemView
 * JD-Core Version:    0.6.2
 */