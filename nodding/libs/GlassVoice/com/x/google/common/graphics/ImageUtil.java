package com.x.google.common.graphics;

import com.x.google.common.Config;
import java.io.IOException;

public class ImageUtil
{
  public static final int DEFAULT = 0;
  public static final int HIGH_QUALITY = 1;
  public static final int PROCESS_ALPHA = 2;

  public static GoogleImage copyImage(GoogleImage paramGoogleImage)
  {
    GoogleImage localGoogleImage = Config.getInstance().getImageFactory().createImage(paramGoogleImage.getWidth(), paramGoogleImage.getHeight());
    localGoogleImage.getGraphics().drawImage(paramGoogleImage, 0, 0);
    return localGoogleImage;
  }

  public static GoogleImage copyImage(String paramString)
    throws IOException
  {
    return copyImage(Config.getInstance().getImageFactory().createImage(paramString));
  }

  public static GoogleImage createPartialImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    GoogleImage localGoogleImage = Config.getInstance().getImageFactory().createImage(paramInt3, paramInt4);
    localGoogleImage.getGraphics().drawImage(paramGoogleImage, -paramInt1, -paramInt2);
    return localGoogleImage;
  }

  public static GoogleImage createScaledImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0) && (paramInt4 == paramGoogleImage.getHeight()) && (paramInt3 == paramGoogleImage.getWidth()))
    {
      if ((paramInt3 == paramInt5 * 2) && (paramInt4 == paramInt5 * 2) && (paramInt7 == 1))
        return quarterImage(paramGoogleImage);
      if ((paramInt3 * 2 == paramInt5) && (paramInt4 * 2 == paramInt6) && (paramInt7 == 0))
        return quadrupleImage(paramGoogleImage);
    }
    int[] arrayOfInt1 = new int[paramInt5 * paramInt6];
    int[] arrayOfInt2 = new int[paramInt3 * paramInt4];
    paramGoogleImage.getRGB(arrayOfInt2, 0, paramInt3, paramInt1, paramInt2, paramInt3, paramInt4);
    int i = 0;
    int j = (paramInt3 << 16) / paramInt5;
    int k = (paramInt4 << 16) / paramInt6;
    for (int m = 0; m < paramInt6; m++)
    {
      transformScanline(arrayOfInt2, paramInt3, paramInt4, 0, i, j, 0, arrayOfInt1, m * paramInt5, paramInt5, paramInt7);
      i += k;
    }
    ImageFactory localImageFactory = Config.getInstance().getImageFactory();
    if ((paramInt7 & 0x2) != 0);
    for (boolean bool = true; ; bool = false)
      return localImageFactory.createRGBImage(arrayOfInt1, paramInt5, paramInt6, bool);
  }

  public static GoogleImage createSquareImage(GoogleImage paramGoogleImage, int paramInt)
  {
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    if ((i == paramInt) && (j == paramInt))
      return paramGoogleImage;
    if (i == j)
      return paramGoogleImage.createScaledImage(paramInt, paramInt);
    int m;
    int k;
    if (i > j)
    {
      m = (int)(j * (paramInt / i));
      k = paramInt;
    }
    while (true)
    {
      return padImageToSquare(paramGoogleImage.createScaledImage(k, m), paramInt);
      k = (int)(i * (paramInt / j));
      m = paramInt;
    }
  }

  public static boolean drawScaledByTwoImage(GoogleImage paramGoogleImage, GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    if ((paramInt3 != paramInt7 * 2) && (paramInt4 != paramInt8 * 2))
      return false;
    int[] arrayOfInt1 = new int[paramInt7 * paramInt8];
    int[] arrayOfInt2 = new int[paramInt3 * paramInt4];
    paramGoogleImage.getRGB(arrayOfInt1, 0, paramInt7, paramInt5, paramInt6, paramInt7, paramInt8);
    for (int i = 0; i < paramInt8; i++)
    {
      int j = i * paramInt7;
      int k = 2 * (i * paramInt3);
      int m = arrayOfInt1[j];
      int n = 0;
      while (n < paramInt7)
      {
        int i1 = j + 1;
        int i2 = arrayOfInt1[j];
        int i3 = ((0xFFFEFEFE & (i2 ^ m)) >> 1) + (m & i2);
        int i4 = k + n * 2;
        arrayOfInt2[i4] = i3;
        arrayOfInt2[(i4 + 1)] = i2;
        int i5 = i4 + paramInt3;
        arrayOfInt2[i5] = i3;
        arrayOfInt2[(i5 + 1)] = i2;
        n++;
        m = i2;
        j = i1;
      }
    }
    paramGoogleGraphics.drawImage(Config.getInstance().getImageFactory().createRGBImage(arrayOfInt2, paramInt3, paramInt4, false), paramInt1, paramInt2);
    return true;
  }

  static int getColor(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt3 < 0)
    {
      paramInt3 = 0;
      if (paramInt4 >= 0)
        break label35;
      paramInt4 = 0;
    }
    while (true)
    {
      return paramArrayOfInt[(paramInt3 + paramInt4 * paramInt1)];
      if (paramInt3 < paramInt1)
        break;
      paramInt3 = paramInt1 - 1;
      break;
      label35: if (paramInt4 >= paramInt2)
        paramInt4 = paramInt2 - 1;
    }
  }

  public static int mixColors(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 256 - paramInt3;
    return (0xFF00FF00 & i * (paramInt1 & 0xFF00FF) + paramInt3 * (0xFF00FF & paramInt2) | 0xFF0000 & i * (paramInt1 & 0xFF00) + paramInt3 * (paramInt2 & 0xFF00)) >>> 8;
  }

  public static GoogleImage padImageToSquare(GoogleImage paramGoogleImage, int paramInt)
  {
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    if ((paramInt == i) && (paramInt == j))
      return paramGoogleImage;
    int m;
    int k;
    if (i > j)
    {
      m = (paramInt - j) / 2;
      k = 0;
    }
    while (true)
    {
      GoogleImage localGoogleImage = Config.getInstance().getImageFactory().createImage(paramInt, paramInt);
      GoogleGraphics localGoogleGraphics = localGoogleImage.getGraphics();
      localGoogleGraphics.setColor(-1);
      localGoogleGraphics.fillRect(0, 0, paramInt, paramInt);
      localGoogleGraphics.drawImage(paramGoogleImage, k, m);
      return localGoogleImage;
      k = (paramInt - i) / 2;
      m = 0;
    }
  }

  public static GoogleImage quadrupleImage(GoogleImage paramGoogleImage)
  {
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    int[] arrayOfInt = new int[(i << 1) * (j << 1)];
    paramGoogleImage.getRGB(arrayOfInt, 0, i << 2, 0, 0, i, j);
    int k = i << 1;
    int m = j << 1;
    int n = 0;
    int i1 = 0;
    while (n < m)
    {
      for (int i2 = k - 1; i2 >= 0; i2 -= 2)
      {
        int i3 = i1 + i2;
        int i4 = arrayOfInt[(i1 + (i2 >> 1))];
        int i5 = i3 - 1;
        arrayOfInt[i3] = i4;
        arrayOfInt[i5] = i4;
      }
      System.arraycopy(arrayOfInt, i1, arrayOfInt, i1 + k, k);
      i1 += (k << 1);
      n += 2;
    }
    return Config.getInstance().getImageFactory().createRGBImage(arrayOfInt, k, m, false);
  }

  public static GoogleImage quarterImage(GoogleImage paramGoogleImage)
  {
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    int[] arrayOfInt1 = new int[i * j];
    paramGoogleImage.getRGB(arrayOfInt1, 0, i, 0, 0, i, j);
    int k = i >> 1;
    int m = j >> 1;
    int[] arrayOfInt2 = new int[k * m];
    int n = 0;
    int i1 = 0;
    for (int i2 = 0; i2 < m; i2++)
    {
      for (int i3 = 0; i3 < k; i3++)
      {
        int i4 = i1 + i3;
        int i5 = arrayOfInt1[i4];
        int i6 = arrayOfInt1[(i4 + 1)];
        int i7 = arrayOfInt1[(i4 + i)];
        int i8 = arrayOfInt1[(1 + (i4 + i))];
        int i9 = (0xFF0000 & i5) + (0xFF0000 & i6) + (0xFF0000 & i7) + (0xFF0000 & i8) >> 2;
        int i10 = (0xFF00 & i5) + (0xFF00 & i6) + (0xFF00 & i7) + (0xFF00 & i8) >> 2;
        int i11 = (i5 & 0xFF) + (i6 & 0xFF) + (i7 & 0xFF) + (i8 & 0xFF) >> 2;
        arrayOfInt2[(n + i3)] = (i11 | (0xFF0000 & i9 | 0xFF00 & i10));
      }
      n += k;
      i1 += (i << 1);
    }
    return Config.getInstance().getImageFactory().createRGBImage(arrayOfInt2, k, m, false);
  }

  public static GoogleImage resizeImage(GoogleImage paramGoogleImage, int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      throw new IllegalArgumentException("Illegal target width or height");
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    if ((paramInt1 == i) && (paramInt2 == j));
    GoogleImage localGoogleImage;
    while (true)
    {
      return paramGoogleImage;
      ImageFactory localImageFactory = Config.getInstance().getImageFactory();
      if (paramInt1 != i)
      {
        localGoogleImage = localImageFactory.createImage(paramInt1, j);
        GoogleGraphics localGoogleGraphics2 = localGoogleImage.getGraphics();
        int i1 = (i << 16) / paramInt1;
        int i2 = i1 / 2;
        for (int i3 = 0; i3 < paramInt1; i3++)
        {
          localGoogleGraphics2.setClip(i3, 0, 1, j);
          localGoogleGraphics2.drawImage(paramGoogleImage, i3 - (i2 >> 16), 0);
          i2 += i1;
        }
      }
      localGoogleImage = paramGoogleImage;
      if (paramInt2 == j)
        break;
      paramGoogleImage = localImageFactory.createImage(paramInt1, paramInt2);
      GoogleGraphics localGoogleGraphics1 = paramGoogleImage.getGraphics();
      int k = (j << 16) / paramInt2;
      int m = k / 2;
      for (int n = 0; n < paramInt2; n++)
      {
        localGoogleGraphics1.setClip(0, n, paramInt1, 1);
        localGoogleGraphics1.drawImage(localGoogleImage, 0, n - (m >> 16));
        m += k;
      }
    }
    return localGoogleImage;
  }

  public static GoogleImage rotate90(GoogleImage paramGoogleImage)
  {
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    int[] arrayOfInt1 = new int[i * j];
    paramGoogleImage.getRGB(arrayOfInt1, 0, i, 0, 0, i, j);
    int[] arrayOfInt2 = new int[arrayOfInt1.length];
    for (int k = 0; k < j; k++)
      for (int m = 0; m < i; m++)
      {
        int n = m + k * i;
        arrayOfInt2[(m * j + (-1 + (j - k)))] = arrayOfInt1[n];
      }
    return Config.getInstance().getImageFactory().createRGBImage(arrayOfInt2, j, i, false);
  }

  public static byte[] toBmp(GoogleImage paramGoogleImage)
  {
    int i = paramGoogleImage.getWidth();
    int j = paramGoogleImage.getHeight();
    int[] arrayOfInt1 = new int[i * j];
    paramGoogleImage.getRGB(arrayOfInt1, 0, i, 0, 0, i, j);
    int[] arrayOfInt2 = new int[i * j];
    for (int k = 0; k < j; k++)
      for (int i13 = 0; i13 < i; i13++)
      {
        int i14 = i13 + k * i;
        arrayOfInt2[(i13 + i * (j - 1 - k))] = arrayOfInt1[i14];
      }
    byte[] arrayOfByte1 = { 66, 77, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    arrayOfByte1[21] = ((byte)(0xFF & i >> 24));
    arrayOfByte1[20] = ((byte)(0xFF & i >> 16));
    arrayOfByte1[19] = ((byte)(0xFF & i >> 8));
    arrayOfByte1[18] = ((byte)(i & 0xFF));
    arrayOfByte1[25] = ((byte)(0xFF & j >> 24));
    arrayOfByte1[24] = ((byte)(0xFF & j >> 16));
    arrayOfByte1[23] = ((byte)(0xFF & j >> 8));
    arrayOfByte1[22] = ((byte)(j & 0xFF));
    int m = i * 3;
    int n;
    byte[] arrayOfByte2;
    int i3;
    int i4;
    if (m % 4 == 0)
    {
      n = 0;
      int i1 = arrayOfByte1.length + j * (i * 3) + n * j;
      arrayOfByte1[5] = ((byte)(0xFF & i1 >> 24));
      arrayOfByte1[4] = ((byte)(0xFF & i1 >> 16));
      arrayOfByte1[3] = ((byte)(0xFF & i1 >> 8));
      arrayOfByte1[2] = ((byte)(i1 & 0xFF));
      arrayOfByte2 = new byte[i1];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte1.length);
      int i2 = arrayOfByte1.length;
      i3 = 0;
      i4 = i2;
    }
    for (int i5 = 0; ; i5++)
    {
      if (i5 >= arrayOfInt2.length)
        break label799;
      int i6 = (byte)(0xFF & arrayOfInt2[i5] >> 16);
      int i7 = (byte)(0xFF & arrayOfInt2[i5] >> 8);
      int i8 = (byte)(0xFF & arrayOfInt2[i5]);
      int i9 = i4 + 1;
      arrayOfByte2[i4] = i8;
      int i10 = i9 + 1;
      arrayOfByte2[i9] = i7;
      i4 = i10 + 1;
      arrayOfByte2[i10] = i6;
      i3++;
      if ((i3 == i) && (n != 0))
      {
        int i11 = 0;
        while (true)
          if (i11 < n)
          {
            int i12 = i4 + 1;
            arrayOfByte2[i4] = 0;
            i11++;
            i4 = i12;
            continue;
            n = 4 - m % 4;
            break;
          }
        i3 = 0;
      }
    }
    label799: return arrayOfByte2;
  }

  public static void transformScanline(int[] paramArrayOfInt1, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int[] paramArrayOfInt2, int paramInt7, int paramInt8, int paramInt9)
  {
    int i;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    int i10;
    int i11;
    int i12;
    int i13;
    int i14;
    int i15;
    if ((paramInt9 & 0x2) != 0)
    {
      i = 1;
      if ((paramInt9 & 0x1) == 0)
        break label796;
      i2 = 1 + (paramInt5 >> 16);
      i3 = 1 + (paramInt6 >> 16);
      i4 = paramInt5 / i2;
      i5 = paramInt6 / i3;
      i6 = i2 * i3;
      i7 = paramInt4;
      i8 = paramInt3;
      i9 = paramInt8 - 1;
      if (paramInt8 > 0)
      {
        i10 = 0;
        i11 = 0;
        i12 = 0;
        i13 = 0;
        i14 = 0;
        i15 = i7;
      }
    }
    else
    {
      while (true)
      {
        if (i14 >= i3)
          break label598;
        int i19 = i8;
        int i20 = i13;
        int i21 = 0;
        int i22 = i10;
        int i23 = i11;
        int i24 = i12;
        int i25 = i20;
        while (true)
          if (i21 < i2)
          {
            int i27 = i19 >> 16;
            int i28 = i15 >> 16;
            int i29 = getColor(paramArrayOfInt1, paramInt1, paramInt2, i27, i28);
            int i30 = getColor(paramArrayOfInt1, paramInt1, paramInt2, i27 + 1, i28);
            int i31 = getColor(paramArrayOfInt1, paramInt1, paramInt2, i27, i28 + 1);
            int i32 = getColor(paramArrayOfInt1, paramInt1, paramInt2, i27 + 1, i28 + 1);
            int i33 = (0xFFFF & i19) >> 8;
            int i34 = (0xFFFF & i15) >> 8;
            int i35 = (256 - i33) * (256 - i34);
            int i36 = i33 * (256 - i34);
            int i37 = i34 * (256 - i33);
            int i38 = i33 * i34;
            int i39 = 0xFF & i29 >> 16;
            int i40 = 0xFF & i29 >> 8;
            int i41 = i29 & 0xFF;
            int i42 = 0xFF & i30 >> 16;
            int i43 = 0xFF & i30 >> 8;
            int i44 = i30 & 0xFF;
            int i45 = 0xFF & i31 >> 16;
            int i46 = 0xFF & i31 >> 8;
            int i47 = i31 & 0xFF;
            int i48 = 0xFF & i32 >> 16;
            int i49 = 0xFF & i32 >> 8;
            int i50 = i32 & 0xFF;
            i23 += i39 * i35 + i45 * i37 + i42 * i36 + i48 * i38;
            i24 += i40 * i35 + i46 * i37 + i43 * i36 + i49 * i38;
            i25 += i41 * i35 + i47 * i37 + i44 * i36 + i50 * i38;
            if (i != 0)
            {
              int i51 = 0xFF & i29 >> 24;
              int i52 = 0xFF & i30 >> 24;
              int i53 = 0xFF & i31 >> 24;
              int i54 = 0xFF & i32 >> 24;
              i22 = i51 * i35 + i53 * i37 + i52 * i36 + i54 * i38;
            }
            i19 += i4;
            i21++;
            continue;
            i = 0;
            break;
          }
        int i26 = i15 + i5;
        i14++;
        i15 = i26;
        i13 = i25;
        i12 = i24;
        i11 = i23;
        i10 = i22;
      }
      label598: int i16 = 0xFF0000 & i11 / i6 | 0xFF00 & i12 / i6 >> 8 | 0xFF & i13 / i6 >> 16;
      int i17 = paramInt7 + 1;
      if (i != 0);
      for (int i18 = 0xFF000000 & i10 / i6 << 8; ; i18 = -16777216)
      {
        paramArrayOfInt2[paramInt7] = (i18 | i16);
        i8 += paramInt5;
        i7 += paramInt6;
        paramInt8 = i9;
        paramInt7 = i17;
        break;
      }
    }
    while (true)
    {
      int k = paramInt8 - 1;
      int i1;
      if (paramInt8 > 0)
      {
        int m = paramInt3 >> 16;
        int n = paramInt4 >> 16;
        if ((m < 0) || (n < 0) || (m >= paramInt1) || (n >= paramInt2))
          break label789;
        i1 = j + 1;
        paramArrayOfInt2[j] = paramArrayOfInt1[(m + n * paramInt1)];
      }
      while (true)
      {
        paramInt3 += paramInt5;
        paramInt4 += paramInt6;
        paramInt8 = k;
        j = i1;
        break;
        return;
        label789: i1 = j;
      }
      label796: int j = paramInt7;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.ImageUtil
 * JD-Core Version:    0.6.2
 */