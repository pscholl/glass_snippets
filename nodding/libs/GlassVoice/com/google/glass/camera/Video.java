package com.google.glass.camera;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Video
  implements Parcelable
{
  public static final Parcelable.Creator<Video> CREATOR = new Parcelable.Creator()
  {
    public Video createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Video(paramAnonymousParcel);
    }

    public Video[] newArray(int paramAnonymousInt)
    {
      return new Video[paramAnonymousInt];
    }
  };
  protected long endTimeMillis;
  protected String filePath;
  protected long startTimeMillis;

  public Video()
  {
  }

  public Video(Parcel paramParcel)
  {
    this.startTimeMillis = paramParcel.readLong();
    this.endTimeMillis = paramParcel.readLong();
    this.filePath = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public long getEndTime()
  {
    return this.endTimeMillis;
  }

  public String getFilePath()
  {
    return this.filePath;
  }

  public long getStartTime()
  {
    return this.startTimeMillis;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.startTimeMillis);
    paramParcel.writeLong(this.endTimeMillis);
    paramParcel.writeString(this.filePath);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.Video
 * JD-Core Version:    0.6.2
 */