package com.google.glass.barcode;

import com.google.android.libraries.barhopper.Barcode;
import com.google.android.libraries.barhopper.Barhopper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;

public class BarhopperRecognizer
  implements BarcodeRecognizer
{
  private static final ThreadLocal<byte[]> barcodeYData = new ThreadLocal();

  public Barcode recognize(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 * paramInt2;
    int j;
    byte[] arrayOfByte;
    int k;
    int m;
    if ((Labs.isEnabled(Labs.Feature.GCAM)) && (paramArrayOfByte.length == i << 2))
    {
      j = 0;
      arrayOfByte = (byte[])barcodeYData.get();
      if ((arrayOfByte == null) || (arrayOfByte.length != i))
      {
        arrayOfByte = new byte[i];
        barcodeYData.set(arrayOfByte);
      }
      k = 0;
      m = 0;
    }
    while (k < i)
    {
      int n = 0xFF & paramArrayOfByte[j];
      int i1 = 0xFF & paramArrayOfByte[(j + 1)];
      int i2 = 0xFF & paramArrayOfByte[(j + 2)];
      int i3 = m + 1;
      arrayOfByte[m] = ((byte)(n * 54 + i1 * 183 + i2 * 19 >> 8));
      j += 4;
      k++;
      m = i3;
      continue;
      arrayOfByte = paramArrayOfByte;
    }
    Barcode localBarcode = new Barcode();
    if (!Barhopper.recognize2D(paramInt1, paramInt2, arrayOfByte, localBarcode))
      localBarcode = null;
    return localBarcode;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.BarhopperRecognizer
 * JD-Core Version:    0.6.2
 */