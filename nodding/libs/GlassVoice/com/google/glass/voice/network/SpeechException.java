package com.google.glass.voice.network;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class SpeechException
  implements Parcelable
{
  public static final Parcelable.Creator<SpeechException> CREATOR = new Parcelable.Creator()
  {
    public SpeechException createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SpeechException(paramAnonymousParcel);
    }

    public SpeechException[] newArray(int paramAnonymousInt)
    {
      return new SpeechException[paramAnonymousInt];
    }
  };
  private final String detail;
  private final String simpleName;
  private final Type type;

  public SpeechException(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    if (i == -1);
    for (Type localType = null; ; localType = Type.values()[i])
    {
      this.type = localType;
      this.simpleName = paramParcel.readString();
      this.detail = paramParcel.readString();
      return;
    }
  }

  public SpeechException(Type paramType, String paramString1, String paramString2)
  {
    this.type = paramType;
    this.simpleName = paramString1;
    this.detail = paramString2;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    SpeechException localSpeechException;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localSpeechException = (SpeechException)paramObject;
      if (this.detail == null)
      {
        if (localSpeechException.detail != null)
          return false;
      }
      else if (!this.detail.equals(localSpeechException.detail))
        return false;
      if (this.simpleName == null)
      {
        if (localSpeechException.simpleName != null)
          return false;
      }
      else if (!this.simpleName.equals(localSpeechException.simpleName))
        return false;
    }
    while (this.type == localSpeechException.type);
    return false;
  }

  public String getDetail()
  {
    return this.detail;
  }

  public String getSimpleName()
  {
    return this.simpleName;
  }

  public Type getType()
  {
    return this.type;
  }

  public int hashCode()
  {
    int i;
    int k;
    label26: int m;
    int n;
    if (this.detail == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (this.simpleName != null)
        break label65;
      k = 0;
      m = 31 * (j + k);
      Type localType = this.type;
      n = 0;
      if (localType != null)
        break label76;
    }
    while (true)
    {
      return m + n;
      i = this.detail.hashCode();
      break;
      label65: k = this.simpleName.hashCode();
      break label26;
      label76: n = this.type.hashCode();
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.type == null);
    for (int i = -1; ; i = this.type.ordinal())
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(this.simpleName);
      paramParcel.writeString(this.detail);
      return;
    }
  }

  public static enum Type
  {
    static
    {
      Type[] arrayOfType = new Type[4];
      arrayOfType[0] = AUDIO_RECOGNIZE;
      arrayOfType[1] = NETWORK_RECOGNIZE;
      arrayOfType[2] = NO_MATCH;
      arrayOfType[3] = SERVER;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.SpeechException
 * JD-Core Version:    0.6.2
 */