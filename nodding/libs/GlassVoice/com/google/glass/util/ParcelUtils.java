package com.google.glass.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.ByteArrayOutputStream;

public class ParcelUtils
{
  public static Bitmap readBitmapFromParcel(Parcel paramParcel)
  {
    byte[] arrayOfByte = readByteArrayFromParcel(paramParcel);
    if (arrayOfByte == null)
      return null;
    return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
  }

  public static byte[] readByteArrayFromParcel(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      paramParcel.readByteArray(arrayOfByte);
      return arrayOfByte;
    }
    return null;
  }

  public static <T extends Parcelable> T readParcelableFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    if (paramParcel.readInt() == 1)
      return paramParcel.readParcelable(paramClassLoader);
    return null;
  }

  public static String readStringFromParcel(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 1)
      return paramParcel.readString();
    return null;
  }

  public static void writeBitmapToParcel(Parcel paramParcel, Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    writeByteArrayToParcel(paramParcel, localByteArrayOutputStream.toByteArray());
  }

  public static void writeByteArrayToParcel(Parcel paramParcel, byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
    {
      paramParcel.writeInt(0);
      return;
    }
    paramParcel.writeInt(paramArrayOfByte.length);
    paramParcel.writeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static void writeParcelableToParcel(Parcel paramParcel, Parcelable paramParcelable, int paramInt)
  {
    if (paramParcelable == null)
    {
      paramParcel.writeInt(0);
      return;
    }
    paramParcel.writeInt(1);
    paramParcel.writeParcelable(paramParcelable, paramInt);
  }

  public static void writeStringToParcel(Parcel paramParcel, String paramString)
  {
    if (paramString == null)
    {
      paramParcel.writeInt(0);
      return;
    }
    paramParcel.writeInt(1);
    paramParcel.writeString(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ParcelUtils
 * JD-Core Version:    0.6.2
 */