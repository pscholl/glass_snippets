package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class ParcelableImageSpannable
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableImageSpannable> CREATOR = new Parcelable.Creator()
  {
    public ParcelableImageSpannable createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ParcelableImageSpannable(paramAnonymousParcel, null);
    }

    public ParcelableImageSpannable[] newArray(int paramAnonymousInt)
    {
      return new ParcelableImageSpannable[paramAnonymousInt];
    }
  };
  private final LinkedHashMap<Bitmap, Integer> bitmaps = new LinkedHashMap();
  private final ArrayList<ImageSpanData> imageSpans = new ArrayList();
  private SpannableStringBuilder sb;

  public ParcelableImageSpannable()
  {
  }

  private ParcelableImageSpannable(Parcel paramParcel)
  {
    this.sb = new SpannableStringBuilder((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    int i = paramParcel.readInt();
    for (int j = 0; j < i; j++)
      this.bitmaps.put(ParcelUtils.readBitmapFromParcel(paramParcel), Integer.valueOf(j));
    int k = paramParcel.readInt();
    this.imageSpans.ensureCapacity(k);
    int n;
    for (int m = k; ; m = n)
    {
      n = m - 1;
      if (m <= 0)
        break;
      this.imageSpans.add(new ImageSpanData(paramParcel));
    }
  }

  public ParcelableImageSpannable append(CharSequence paramCharSequence)
  {
    if (this.sb == null)
      this.sb = new SpannableStringBuilder();
    this.sb.append(paramCharSequence);
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public int length()
  {
    if (this.sb == null)
      return 0;
    return this.sb.length();
  }

  public void setImageSpan(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Integer localInteger = (Integer)this.bitmaps.get(paramBitmap);
    if (localInteger == null)
    {
      localInteger = Integer.valueOf(this.bitmaps.size());
      this.bitmaps.put(paramBitmap, localInteger);
    }
    this.imageSpans.add(new ImageSpanData(localInteger.intValue(), paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public Spanned toSpanned(Context paramContext)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.sb);
    Bitmap[] arrayOfBitmap = (Bitmap[])this.bitmaps.keySet().toArray(new Bitmap[this.bitmaps.size()]);
    Iterator localIterator = this.imageSpans.iterator();
    while (localIterator.hasNext())
    {
      ImageSpanData localImageSpanData = (ImageSpanData)localIterator.next();
      localSpannableStringBuilder.setSpan(new ImageSpan(paramContext, arrayOfBitmap[localImageSpanData.bitmapIndex], localImageSpanData.verticalAlignment), localImageSpanData.start, localImageSpanData.end, localImageSpanData.spanFlags);
    }
    return localSpannableStringBuilder;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    TextUtils.writeToParcel(this.sb, paramParcel, paramInt);
    paramParcel.writeInt(this.bitmaps.size());
    Iterator localIterator1 = this.bitmaps.keySet().iterator();
    while (localIterator1.hasNext())
      ParcelUtils.writeBitmapToParcel(paramParcel, (Bitmap)localIterator1.next());
    paramParcel.writeInt(this.imageSpans.size());
    Iterator localIterator2 = this.imageSpans.iterator();
    while (localIterator2.hasNext())
      ((ImageSpanData)localIterator2.next()).writeToParcel(paramParcel);
  }

  private static class ImageSpanData
  {
    int bitmapIndex;
    int end;
    int spanFlags;
    int start;
    int verticalAlignment;

    public ImageSpanData(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      this.bitmapIndex = paramInt1;
      this.start = paramInt2;
      this.end = paramInt3;
      this.verticalAlignment = paramInt4;
      this.spanFlags = paramInt5;
    }

    public ImageSpanData(Parcel paramParcel)
    {
      this.bitmapIndex = paramParcel.readInt();
      this.start = paramParcel.readInt();
      this.end = paramParcel.readInt();
      this.verticalAlignment = paramParcel.readInt();
      this.spanFlags = paramParcel.readInt();
    }

    public void writeToParcel(Parcel paramParcel)
    {
      paramParcel.writeInt(this.bitmapIndex);
      paramParcel.writeInt(this.start);
      paramParcel.writeInt(this.end);
      paramParcel.writeInt(this.verticalAlignment);
      paramParcel.writeInt(this.spanFlags);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ParcelableImageSpannable
 * JD-Core Version:    0.6.2
 */