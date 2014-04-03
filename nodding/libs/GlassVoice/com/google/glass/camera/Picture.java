package com.google.glass.camera;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Picture
  implements Parcelable
{
  public static final Parcelable.Creator<Picture> CREATOR = new Parcelable.Creator()
  {
    public Picture createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Picture(paramAnonymousParcel);
    }

    public Picture[] newArray(int paramAnonymousInt)
    {
      return new Picture[paramAnonymousInt];
    }
  };
  private static final int PARCEL_FALSE = 0;
  private static final int PARCEL_TRUE = 1;
  protected long captureTimeMillis;
  protected String filePath;
  protected boolean isFinalPictureSaved;
  protected boolean isGcam;
  protected boolean isGcamHqFallback;
  protected long jpegTimeMillis;
  protected Location location;
  protected long prepareCameraSavingsMillis;
  protected long requestTimeMillis;
  protected long shutterTimeMillis;
  protected Bitmap thumbnail;
  protected long thumbnailTimeMillis;

  public Picture()
  {
  }

  public Picture(Parcel paramParcel)
  {
    this.captureTimeMillis = paramParcel.readLong();
    this.requestTimeMillis = paramParcel.readLong();
    this.shutterTimeMillis = paramParcel.readLong();
    this.thumbnailTimeMillis = paramParcel.readLong();
    this.jpegTimeMillis = paramParcel.readLong();
    this.prepareCameraSavingsMillis = paramParcel.readLong();
    int j;
    if (paramParcel.readInt() == i)
    {
      j = i;
      this.isGcam = j;
      if (paramParcel.readInt() != i)
        break label112;
    }
    while (true)
    {
      this.isGcamHqFallback = i;
      this.thumbnail = ((Bitmap)paramParcel.readParcelable(Picture.class.getClassLoader()));
      this.filePath = paramParcel.readString();
      return;
      j = 0;
      break;
      label112: i = 0;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public long getCaptureTime()
  {
    return this.captureTimeMillis;
  }

  public String getFilePath()
  {
    return this.filePath;
  }

  public long getJpegTime()
  {
    return this.jpegTimeMillis;
  }

  public Location getLocation()
  {
    return this.location;
  }

  public long getPrepareCameraSavings()
  {
    return this.prepareCameraSavingsMillis;
  }

  public long getRequestTime()
  {
    return this.requestTimeMillis;
  }

  public long getShutterTime()
  {
    return this.shutterTimeMillis;
  }

  public Bitmap getThumbnail()
  {
    return this.thumbnail;
  }

  public long getThumbnailTime()
  {
    return this.thumbnailTimeMillis;
  }

  public boolean isFinalPictureSaved()
  {
    return this.isFinalPictureSaved;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.captureTimeMillis);
    paramParcel.writeLong(this.requestTimeMillis);
    paramParcel.writeLong(this.shutterTimeMillis);
    paramParcel.writeLong(this.thumbnailTimeMillis);
    paramParcel.writeLong(this.jpegTimeMillis);
    paramParcel.writeLong(this.prepareCameraSavingsMillis);
    int j;
    if (this.isGcam)
    {
      j = i;
      paramParcel.writeInt(j);
      if (!this.isGcamHqFallback)
        break label111;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      paramParcel.writeParcelable(this.thumbnail, 0);
      paramParcel.writeString(this.filePath);
      paramParcel.writeParcelable(this.location, 0);
      return;
      j = 0;
      break;
      label111: i = 0;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.Picture
 * JD-Core Version:    0.6.2
 */