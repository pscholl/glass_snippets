package com.google.android.speech.alternates;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.speech.common.Alternates.AlternateSpan;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

public class CorrectableString extends SpannableString
  implements Parcelable
{
  public static final Parcelable.Creator<CorrectableString> CREATOR = new Parcelable.Creator()
  {
    public CorrectableString createFromParcel(Parcel paramAnonymousParcel)
    {
      return CorrectableString.fromParcel(paramAnonymousParcel);
    }

    public CorrectableString[] newArray(int paramAnonymousInt)
    {
      return new CorrectableString[paramAnonymousInt];
    }
  };
  private static final String TAG = "CorrectableString";

  @Nullable
  private final byte[] mBytesUtf8;

  public CorrectableString(CharSequence paramCharSequence)
  {
    this(paramCharSequence, null);
  }

  public CorrectableString(CharSequence paramCharSequence, List<Alternates.AlternateSpan> paramList)
  {
    super(paramCharSequence);
    try
    {
      byte[] arrayOfByte2 = toString().getBytes("UTF-8");
      arrayOfByte1 = arrayOfByte2;
      this.mBytesUtf8 = arrayOfByte1;
      if ((paramList != null) && (!paramList.isEmpty()))
        addAlternateSpans(paramList);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        Log.e("CorrectableString", "Could not convert string to UTF-8 bytes.", localUnsupportedEncodingException);
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static boolean equals(SpannableString paramSpannableString1, SpannableString paramSpannableString2)
  {
    if (!TextUtils.equals(paramSpannableString1, paramSpannableString2));
    Object[] arrayOfObject1;
    Object[] arrayOfObject2;
    do
    {
      return false;
      if ((paramSpannableString1 == null) || (paramSpannableString2 == null))
        break;
      arrayOfObject1 = paramSpannableString1.getSpans(0, paramSpannableString1.length(), Object.class);
      arrayOfObject2 = paramSpannableString2.getSpans(0, paramSpannableString2.length(), Object.class);
    }
    while (arrayOfObject1.length != arrayOfObject2.length);
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfObject1.length)
        break label117;
      Object localObject1 = arrayOfObject1[i];
      Object localObject2 = arrayOfObject2[i];
      if ((!Objects.equal(localObject1, localObject2)) || (paramSpannableString1.getSpanStart(localObject1) != paramSpannableString2.getSpanStart(localObject2)) || (paramSpannableString1.getSpanEnd(localObject1) != paramSpannableString2.getSpanEnd(localObject2)))
        break;
    }
    label117: return true;
  }

  @VisibleForTesting
  static CorrectableString fromParcel(Parcel paramParcel)
  {
    CorrectableString localCorrectableString = new CorrectableString(paramParcel.readString());
    int i = paramParcel.readInt();
    int j = 0;
    while (true)
      if (j < i)
        try
        {
          localCorrectableString.addAlternateSpan(Alternates.AlternateSpan.parseFrom(paramParcel.createByteArray()));
          j++;
        }
        catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
        {
          while (true)
            Log.e("CorrectableString", "Could not parse AlternateSpan from parcel.", localInvalidProtocolBufferMicroException);
        }
    int k = paramParcel.readInt();
    for (int m = 0; m < k; m++)
      localCorrectableString.addFullLengthSpan(paramParcel.readParcelable(CorrectableString.class.getClassLoader()));
    return localCorrectableString;
  }

  @VisibleForTesting
  static int getOffsetUtf16(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = 0;
    while (true)
    {
      int k;
      if ((j < paramInt) && (j < paramArrayOfByte.length))
      {
        k = 0xFF & paramArrayOfByte[j];
        if (k >>> 7 == 0)
        {
          i++;
          j++;
        }
        else if (k >>> 5 == 6)
        {
          if (j + 1 < paramInt);
        }
      }
      else
      {
        label93: 
        do
        {
          do
          {
            return i;
            j += 2;
            i++;
            break;
            if (k >>> 4 != 14)
              break label93;
          }
          while (j + 2 >= paramInt);
          j += 3;
          i++;
          break;
          if (k >>> 3 != 30)
            break;
        }
        while (j + 3 >= paramInt);
        j += 4;
        i += 2;
      }
    }
  }

  private int getSpanCount()
  {
    return getSpans(0, length(), Object.class).length;
  }

  public void addAlternateSpan(Alternates.AlternateSpan paramAlternateSpan)
  {
    if (this.mBytesUtf8 == null)
      return;
    setSpan(paramAlternateSpan, getOffsetUtf16(this.mBytesUtf8, paramAlternateSpan.getStart()), getOffsetUtf16(this.mBytesUtf8, paramAlternateSpan.getStart() + paramAlternateSpan.getLength()));
  }

  public void addAlternateSpans(List<Alternates.AlternateSpan> paramList)
  {
    if (this.mBytesUtf8 == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        addAlternateSpan((Alternates.AlternateSpan)localIterator.next());
    }
  }

  public void addFullLengthSpan(Object paramObject)
  {
    setSpan(paramObject, 0, length());
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool2;
    if ((paramObject instanceof SpannableString))
      bool2 = equals(this, (SpannableString)paramObject);
    int i;
    do
    {
      boolean bool3;
      do
      {
        boolean bool1;
        do
        {
          return bool2;
          bool1 = paramObject instanceof CharSequence;
          bool2 = false;
        }
        while (!bool1);
        bool3 = TextUtils.equals(this, (CharSequence)paramObject);
        bool2 = false;
      }
      while (!bool3);
      i = getSpanCount();
      bool2 = false;
    }
    while (i != 0);
    return true;
  }

  public Alternates.AlternateSpan[] getAlternateSpans()
  {
    return (Alternates.AlternateSpan[])getSpans(0, length(), Alternates.AlternateSpan.class);
  }

  public CorrectableString[] getCorrectableStringSpans()
  {
    return (CorrectableString[])getSpans(0, length(), CorrectableString.class);
  }

  public void setSpan(Object paramObject, int paramInt1, int paramInt2)
  {
    super.setSpan(paramObject, paramInt1, paramInt2, 33);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(toString());
    Alternates.AlternateSpan[] arrayOfAlternateSpan = getAlternateSpans();
    paramParcel.writeInt(arrayOfAlternateSpan.length);
    int i = arrayOfAlternateSpan.length;
    for (int j = 0; j < i; j++)
      paramParcel.writeByteArray(arrayOfAlternateSpan[j].toByteArray());
    CorrectableString[] arrayOfCorrectableString = getCorrectableStringSpans();
    paramParcel.writeInt(arrayOfCorrectableString.length);
    int k = arrayOfCorrectableString.length;
    for (int m = 0; m < k; m++)
      paramParcel.writeParcelable(arrayOfCorrectableString[m], paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.alternates.CorrectableString
 * JD-Core Version:    0.6.2
 */