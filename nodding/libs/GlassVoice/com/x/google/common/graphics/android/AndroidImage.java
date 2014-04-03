package com.x.google.common.graphics.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import com.x.google.common.Config;
import com.x.google.common.graphics.GoogleGraphics;
import com.x.google.common.graphics.GoogleImage;
import java.util.Map;

public class AndroidImage
  implements GoogleImage
{
  private volatile Bitmap bitmap;
  protected int referenceCount = 0;

  public AndroidImage(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, true);
  }

  public AndroidImage(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888; ; localConfig = Bitmap.Config.RGB_565)
    {
      this.bitmap = Bitmap.createBitmap(paramInt1, paramInt2, localConfig);
      if (this.bitmap != null)
        break;
      throw new IllegalStateException("Null Bitmap!");
    }
  }

  public AndroidImage(Context paramContext, Map<String, Integer> paramMap, String paramString, AutoScale paramAutoScale)
  {
    String str = cleanName(paramString);
    if (paramMap != null)
    {
      Integer localInteger = (Integer)paramMap.get(str);
      if (localInteger != null)
      {
        AutoScale localAutoScale = AutoScale.AUTO_SCALE_DISABLED;
        BitmapFactory.Options localOptions = null;
        if (paramAutoScale == localAutoScale)
        {
          localOptions = new BitmapFactory.Options();
          localOptions.inScaled = false;
        }
        this.bitmap = BitmapFactory.decodeResource(paramContext.getResources(), localInteger.intValue(), localOptions);
        if ((paramAutoScale == AutoScale.AUTO_SCALE_DISABLED) && (this.bitmap != null))
          this.bitmap.setDensity(Config.getInstance().getPixelsPerInch());
      }
    }
    if (this.bitmap == null)
      this.bitmap = BitmapFactory.decodeFile(paramString);
    if (this.bitmap == null)
      throw new IllegalStateException("Null Bitmap! \"" + paramString + "\"; if seen during a test, " + "this usually means that the image file needs to be added to the test.config file");
  }

  public AndroidImage(Bitmap paramBitmap)
  {
    this.bitmap = paramBitmap;
  }

  public AndroidImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.bitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, paramInt1, paramInt2);
    if (this.bitmap == null)
      throw new IllegalStateException("Null Bitmap!");
  }

  public AndroidImage(int[] paramArrayOfInt, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888; ; localConfig = Bitmap.Config.RGB_565)
    {
      this.bitmap = Bitmap.createBitmap(paramArrayOfInt, paramInt1, paramInt2, localConfig);
      return;
    }
  }

  private static String cleanName(String paramString)
  {
    if (paramString.indexOf("/") == 0)
      paramString = paramString.substring(1);
    int i = paramString.indexOf(".");
    if (i > 0)
      paramString = paramString.substring(0, i);
    return paramString;
  }

  // ERROR //
  public android.net.Uri addImage(android.content.ContentResolver paramContentResolver, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 105	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   7: aload_3
    //   8: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   11: ldc 132
    //   13: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload 4
    //   18: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: astore 5
    //   26: new 157	java/io/File
    //   29: dup
    //   30: aload_3
    //   31: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: astore 6
    //   36: aload 6
    //   38: invokevirtual 162	java/io/File:exists	()Z
    //   41: ifne +9 -> 50
    //   44: aload 6
    //   46: invokevirtual 165	java/io/File:mkdirs	()Z
    //   49: pop
    //   50: new 167	java/io/FileOutputStream
    //   53: dup
    //   54: new 157	java/io/File
    //   57: dup
    //   58: aload_3
    //   59: aload 4
    //   61: invokespecial 170	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: invokespecial 173	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   67: astore 8
    //   69: aload_0
    //   70: getfield 34	com/x/google/common/graphics/android/AndroidImage:bitmap	Landroid/graphics/Bitmap;
    //   73: getstatic 179	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   76: bipush 75
    //   78: aload 8
    //   80: invokevirtual 183	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   83: pop
    //   84: aload 8
    //   86: invokevirtual 188	java/io/OutputStream:close	()V
    //   89: new 190	android/content/ContentValues
    //   92: dup
    //   93: iconst_5
    //   94: invokespecial 192	android/content/ContentValues:<init>	(I)V
    //   97: astore 19
    //   99: aload 19
    //   101: ldc 194
    //   103: aload_2
    //   104: invokevirtual 197	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   107: aload 19
    //   109: ldc 199
    //   111: aload 4
    //   113: invokevirtual 197	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: aload 19
    //   118: ldc 201
    //   120: ldc 203
    //   122: invokevirtual 197	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload 19
    //   127: ldc 205
    //   129: iconst_0
    //   130: invokestatic 209	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   133: invokevirtual 212	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   136: aload 19
    //   138: ldc 214
    //   140: aload 5
    //   142: invokevirtual 197	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   145: aload_1
    //   146: getstatic 220	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   149: aload 19
    //   151: invokevirtual 226	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   154: areturn
    //   155: astore 13
    //   157: aconst_null
    //   158: astore 8
    //   160: aload 8
    //   162: invokevirtual 188	java/io/OutputStream:close	()V
    //   165: aconst_null
    //   166: areturn
    //   167: astore 14
    //   169: aconst_null
    //   170: areturn
    //   171: astore 11
    //   173: aconst_null
    //   174: astore 8
    //   176: aload 8
    //   178: invokevirtual 188	java/io/OutputStream:close	()V
    //   181: aconst_null
    //   182: areturn
    //   183: astore 12
    //   185: aconst_null
    //   186: areturn
    //   187: astore 7
    //   189: aconst_null
    //   190: astore 8
    //   192: aload 7
    //   194: astore 9
    //   196: aload 8
    //   198: invokevirtual 188	java/io/OutputStream:close	()V
    //   201: aload 9
    //   203: athrow
    //   204: astore 18
    //   206: goto -117 -> 89
    //   209: astore 10
    //   211: goto -10 -> 201
    //   214: astore 9
    //   216: goto -20 -> 196
    //   219: astore 16
    //   221: goto -45 -> 176
    //   224: astore 15
    //   226: goto -66 -> 160
    //
    // Exception table:
    //   from	to	target	type
    //   26	50	155	java/io/FileNotFoundException
    //   50	69	155	java/io/FileNotFoundException
    //   160	165	167	java/lang/Exception
    //   26	50	171	java/io/IOException
    //   50	69	171	java/io/IOException
    //   176	181	183	java/lang/Exception
    //   26	50	187	finally
    //   50	69	187	finally
    //   84	89	204	java/lang/Exception
    //   196	201	209	java/lang/Exception
    //   69	84	214	finally
    //   69	84	219	java/io/IOException
    //   69	84	224	java/io/FileNotFoundException
  }

  public GoogleImage addReference()
  {
    this.referenceCount = (1 + this.referenceCount);
    return this;
  }

  public GoogleImage createScaledImage(int paramInt1, int paramInt2)
  {
    return createScaledImage(0, 0, getWidth(), getHeight(), paramInt1, paramInt2);
  }

  public GoogleImage createScaledImage(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    ScaledAndroidImage localScaledAndroidImage = new ScaledAndroidImage(this, paramInt5, paramInt6, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt5 * paramInt6 < 4096)
      localScaledAndroidImage.getGraphics();
    return localScaledAndroidImage;
  }

  public void drawImage(GoogleGraphics paramGoogleGraphics, int paramInt1, int paramInt2)
  {
    ((AndroidGraphics)paramGoogleGraphics).getCanvas().drawBitmap(this.bitmap, paramInt1, paramInt2, null);
  }

  protected void finalize()
    throws Throwable
  {
    if (this.referenceCount != 0);
    super.finalize();
  }

  public Bitmap getBitmap()
  {
    return this.bitmap;
  }

  public GoogleGraphics getGraphics()
  {
    return new AndroidGraphics(new Canvas(this.bitmap));
  }

  public int getHeight()
  {
    return this.bitmap.getHeight();
  }

  public int getNumBytesUsed()
  {
    if (this.bitmap == null)
      return 0;
    return this.bitmap.getHeight() * this.bitmap.getRowBytes();
  }

  public void getRGB(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.bitmap.getPixels(paramArrayOfInt, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }

  public int getWidth()
  {
    return this.bitmap.getWidth();
  }

  public void recycle()
  {
    if ((this.referenceCount <= 0) && (this.bitmap != null))
    {
      this.bitmap.recycle();
      this.bitmap = null;
    }
  }

  public void removeReference()
  {
    this.referenceCount = (-1 + this.referenceCount);
    if (this.referenceCount < 0)
      throw new IllegalStateException("Negative reference count " + this.referenceCount);
  }

  public GoogleImage rotate(int paramInt)
  {
    if (paramInt == 0)
      return this;
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(paramInt);
    return new AndroidImage(Bitmap.createBitmap(this.bitmap, 0, 0, this.bitmap.getWidth(), this.bitmap.getHeight(), localMatrix, true));
  }

  public static enum AutoScale
  {
    static
    {
      AUTO_SCALE_DISABLED = new AutoScale("AUTO_SCALE_DISABLED", 1);
      AutoScale[] arrayOfAutoScale = new AutoScale[2];
      arrayOfAutoScale[0] = AUTO_SCALE_ENABLED;
      arrayOfAutoScale[1] = AUTO_SCALE_DISABLED;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.graphics.android.AndroidImage
 * JD-Core Version:    0.6.2
 */