package com.google.android.libraries.barhopper;

public class Barhopper
{
  static
  {
    System.loadLibrary("barhopper");
  }

  public static boolean recognize(int paramInt1, int paramInt2, byte[] paramArrayOfByte, Barcode paramBarcode)
  {
    return recognizeNative(paramInt1, paramInt2, paramArrayOfByte, true, true, paramBarcode);
  }

  public static boolean recognize1D(int paramInt1, int paramInt2, byte[] paramArrayOfByte, Barcode paramBarcode)
  {
    return recognizeNative(paramInt1, paramInt2, paramArrayOfByte, true, false, paramBarcode);
  }

  public static boolean recognize2D(int paramInt1, int paramInt2, byte[] paramArrayOfByte, Barcode paramBarcode)
  {
    return recognizeNative(paramInt1, paramInt2, paramArrayOfByte, false, true, paramBarcode);
  }

  public static native boolean recognizeNative(int paramInt1, int paramInt2, byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, Barcode paramBarcode);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.libraries.barhopper.Barhopper
 * JD-Core Version:    0.6.2
 */