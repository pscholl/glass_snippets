package com.google.glass.util.remote;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.PrintStream;
import java.io.PrintWriter;

public class ParcelableException extends Exception
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableException> CREATOR = new Parcelable.Creator()
  {
    public ParcelableException createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ParcelableException(paramAnonymousParcel, null);
    }

    public ParcelableException[] newArray(int paramAnonymousInt)
    {
      return new ParcelableException[paramAnonymousInt];
    }
  };
  private final Exception exception;

  private ParcelableException(Parcel paramParcel)
  {
    this((Exception)paramParcel.readSerializable());
  }

  public ParcelableException(Exception paramException)
  {
    if (paramException == null)
      throw new IllegalArgumentException("Exception cannot be null.");
    this.exception = paramException;
  }

  public int describeContents()
  {
    return 0;
  }

  public Throwable getCause()
  {
    return this.exception.getCause();
  }

  public String getLocalizedMessage()
  {
    return this.exception.getLocalizedMessage();
  }

  public String getMessage()
  {
    return this.exception.getMessage();
  }

  public StackTraceElement[] getStackTrace()
  {
    return this.exception.getStackTrace();
  }

  public Throwable initCause(Throwable paramThrowable)
  {
    return this.exception.initCause(paramThrowable);
  }

  public void printStackTrace()
  {
    this.exception.printStackTrace();
  }

  public void printStackTrace(PrintStream paramPrintStream)
  {
    this.exception.printStackTrace(paramPrintStream);
  }

  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    this.exception.printStackTrace(paramPrintWriter);
  }

  public void setStackTrace(StackTraceElement[] paramArrayOfStackTraceElement)
  {
    this.exception.setStackTrace(paramArrayOfStackTraceElement);
  }

  public String toString()
  {
    return this.exception.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeSerializable(this.exception);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.remote.ParcelableException
 * JD-Core Version:    0.6.2
 */