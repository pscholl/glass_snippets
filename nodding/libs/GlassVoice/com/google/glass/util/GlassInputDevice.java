package com.google.glass.util;

public class GlassInputDevice
{
  public static final String VIRTUAL_DEVICE_NAME = "virtual_touchpad";
  private final int devicePointer = create(paramString);

  static
  {
    System.loadLibrary("glassinputdevice");
  }

  public GlassInputDevice(String paramString)
  {
  }

  private native int create(String paramString);

  private native void destroy(int paramInt);

  private native void finishTouchInternal(int paramInt);

  private native void injectTouchInternal(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[] paramArrayOfInt4, int[] paramArrayOfInt5);

  public void close()
  {
    destroy(this.devicePointer);
  }

  public void finishTouch()
  {
    try
    {
      finishTouchInternal(this.devicePointer);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void injectTouch(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[] paramArrayOfInt4, int[] paramArrayOfInt5)
  {
    try
    {
      injectTouchInternal(this.devicePointer, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3, paramArrayOfInt4, paramArrayOfInt5);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.GlassInputDevice
 * JD-Core Version:    0.6.2
 */