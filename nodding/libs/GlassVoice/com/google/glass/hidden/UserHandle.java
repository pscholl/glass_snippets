package com.google.glass.hidden;

import android.annotation.SuppressLint;
import android.os.Parcel;
import com.google.glass.build.BuildHelper;
import junit.framework.Assert;

public final class UserHandle
{
  private static final int CURRENT_ID = -2;

  @SuppressLint({"NewApi"})
  private static android.os.UserHandle createUserHandleWithId(int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInt(paramInt);
      android.os.UserHandle localUserHandle = android.os.UserHandle.readFromParcel(localParcel);
      return localUserHandle;
    }
    finally
    {
      localParcel.recycle();
    }
  }

  public android.os.UserHandle getCurrent()
  {
    Assert.assertTrue(BuildHelper.isJellyBean());
    return createUserHandleWithId(-2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.hidden.UserHandle
 * JD-Core Version:    0.6.2
 */