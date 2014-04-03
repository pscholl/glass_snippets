package com.google.glass.maps;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SchematicSegment
  implements Parcelable
{
  public static final Parcelable.Creator<SchematicSegment> CREATOR = new Parcelable.Creator()
  {
    public SchematicSegment createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SchematicSegment(paramAnonymousParcel);
    }

    public SchematicSegment[] newArray(int paramAnonymousInt)
    {
      return new SchematicSegment[paramAnonymousInt];
    }
  };
  public final int color;
  public final boolean isDotted;
  public final Type type;
  public final long weight;

  public SchematicSegment(Parcel paramParcel)
  {
    this.type = Type.valueOf(paramParcel.readString());
    this.color = paramParcel.readInt();
    if (paramParcel.readInt() == i);
    while (true)
    {
      this.isDotted = i;
      if (paramParcel.dataAvail() <= 0)
        break;
      this.weight = paramParcel.readLong();
      return;
      i = 0;
    }
    this.weight = 1L;
  }

  public SchematicSegment(Type paramType, int paramInt, boolean paramBoolean, long paramLong)
  {
    this.type = paramType;
    this.color = paramInt;
    this.isDotted = paramBoolean;
    this.weight = paramLong;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.type.name());
    paramParcel.writeInt(this.color);
    if (this.isDotted);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeLong(this.weight);
      return;
    }
  }

  public static enum Type
  {
    static
    {
      CONTINUE = new Type("CONTINUE", 2);
      END = new Type("END", 3);
      Type[] arrayOfType = new Type[4];
      arrayOfType[0] = START;
      arrayOfType[1] = TRANSFER;
      arrayOfType[2] = CONTINUE;
      arrayOfType[3] = END;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.SchematicSegment
 * JD-Core Version:    0.6.2
 */