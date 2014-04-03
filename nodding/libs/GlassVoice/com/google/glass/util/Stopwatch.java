package com.google.glass.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;

public class Stopwatch
  implements Parcelable
{
  public static final Parcelable.Creator<Stopwatch> CREATOR = new Parcelable.Creator()
  {
    public Stopwatch createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Stopwatch(paramAnonymousParcel, null);
    }

    public Stopwatch[] newArray(int paramAnonymousInt)
    {
      return new Stopwatch[paramAnonymousInt];
    }
  };
  private boolean isRunning;
  private final String name;
  private long startTime;
  private long totalTime;

  public Stopwatch()
  {
    this.name = null;
  }

  private Stopwatch(Parcel paramParcel)
  {
    if (paramParcel.readByte() != 0)
    {
      this.name = paramParcel.readString();
      this.startTime = paramParcel.readLong();
      this.totalTime = paramParcel.readLong();
      if (paramParcel.readByte() == 0)
        break label58;
    }
    label58: for (boolean bool = true; ; bool = false)
    {
      this.isRunning = bool;
      return;
      this.name = null;
      break;
    }
  }

  public Stopwatch(String paramString)
  {
    this.name = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public long getTotalElapsedMilliseconds()
  {
    if (this.isRunning)
    {
      long l = SystemClock.elapsedRealtime();
      this.totalTime += l - this.startTime;
      this.startTime = l;
    }
    return this.totalTime;
  }

  public boolean isRunning()
  {
    return this.isRunning;
  }

  public Stopwatch reset()
  {
    this.startTime = SystemClock.elapsedRealtime();
    this.totalTime = 0L;
    return this;
  }

  public Stopwatch start()
  {
    if (!this.isRunning)
    {
      this.startTime = SystemClock.elapsedRealtime();
      this.isRunning = true;
    }
    return this;
  }

  public Stopwatch stop()
  {
    if (this.isRunning)
    {
      long l = SystemClock.elapsedRealtime();
      this.totalTime += l - this.startTime;
      this.isRunning = false;
    }
    return this;
  }

  public String toString()
  {
    long l = getTotalElapsedMilliseconds();
    if (this.name != null)
      return "[" + this.name + ": " + l + "ms]";
    return l + "ms";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b = 1;
    if (this.name != null)
    {
      paramParcel.writeByte(b);
      paramParcel.writeString(this.name);
      paramParcel.writeLong(this.startTime);
      paramParcel.writeLong(this.totalTime);
      if (!this.isRunning)
        break label60;
    }
    while (true)
    {
      paramParcel.writeByte((byte)b);
      return;
      paramParcel.writeByte((byte)0);
      break;
      label60: b = 0;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Stopwatch
 * JD-Core Version:    0.6.2
 */