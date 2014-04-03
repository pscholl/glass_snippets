package com.google.android.speech.audio;

import android.media.audiofx.AudioEffect;
import android.media.audiofx.AudioEffect.Descriptor;
import com.google.common.collect.Lists;
import com.google.common.io.ByteStreams;
import com.google.common.io.Closeables;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Platform;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import javax.annotation.concurrent.GuardedBy;

public class AudioUtils
{
  private static final String AMR_AUDIO_FILE_HEADER = "#!AMR\n";
  private static final String AMR_INPUT_STREAM_CLASS = "android.media.AmrInputStream";
  private static final int BYTES_PER_SAMPLE = 2;
  private static final UUID EFFECT_TYPE_NOISE_SUPRRESSOR = UUID.fromString("58b4b260-8e06-11e0-aa8e-0002a5d5c51b");
  private static final int SAMPLING_RATE = 8000;
  private static final short WAV_FORMAT_MONO = 1;
  private static final short WAV_FORMAT_PCM = 1;
  private static final int WAV_HEADER_LENGTH = 44;

  @GuardedBy("Utils.class")
  private static Constructor<? extends InputStream> sAmrInputStreamConstructor;

  private static byte[] addWavHeaders(byte[] paramArrayOfByte)
    throws IOException
  {
    byte[] arrayOfByte = new byte[44];
    ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    localByteBuffer.put(new byte[] { 82, 73, 70, 70 });
    localByteBuffer.putInt(-8 + (44 + paramArrayOfByte.length));
    localByteBuffer.put(new byte[] { 87, 65, 86, 69 });
    localByteBuffer.put(new byte[] { 102, 109, 116, 32 });
    localByteBuffer.putInt(16);
    localByteBuffer.putShort((short)1);
    localByteBuffer.putShort((short)1);
    localByteBuffer.putInt(8000);
    localByteBuffer.putInt(16000);
    localByteBuffer.putShort((short)2);
    localByteBuffer.putShort((short)16);
    localByteBuffer.put(new byte[] { 100, 97, 116, 97 });
    localByteBuffer.putInt(paramArrayOfByte.length);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(44 + paramArrayOfByte.length);
    localByteArrayOutputStream.write(arrayOfByte);
    localByteArrayOutputStream.write(paramArrayOfByte);
    return localByteArrayOutputStream.toByteArray();
  }

  public static InputStream createAmrInputStream(InputStream paramInputStream)
  {
    try
    {
      try
      {
        if (sAmrInputStreamConstructor == null)
          sAmrInputStreamConstructor = Class.forName("android.media.AmrInputStream").getConstructor(new Class[] { InputStream.class });
        InputStream localInputStream = (InputStream)sAmrInputStreamConstructor.newInstance(new Object[] { paramInputStream });
        return localInputStream;
      }
      finally
      {
      }
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Exception while instantiating AmrInputStream", localException);
    }
  }

  public static byte[] encode(Encoding paramEncoding, byte[] paramArrayOfByte)
    throws IOException
  {
    switch (1.$SwitchMap$com$google$android$speech$audio$AudioUtils$Encoding[paramEncoding.ordinal()])
    {
    default:
      throw new IllegalArgumentException("Encoding not supported: " + paramEncoding);
    case 1:
      return addWavHeaders(paramArrayOfByte);
    case 2:
    }
    return encodeAmr(paramArrayOfByte);
  }

  private static byte[] encodeAmr(byte[] paramArrayOfByte)
    throws IOException
  {
    InputStream localInputStream = null;
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localInputStream = getEncodingInputStream(new ByteArrayInputStream(paramArrayOfByte), 3);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      localByteArrayOutputStream.write("#!AMR\n".getBytes());
      byte[] arrayOfByte1 = new byte[384];
      while (true)
      {
        int i = ByteStreams.read(localInputStream, arrayOfByte1, 0, arrayOfByte1.length);
        if (i <= 0)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    finally
    {
      Closeables.closeQuietly(localInputStream);
    }
    byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    Closeables.closeQuietly(localInputStream);
    return arrayOfByte2;
  }

  public static InputStream getEncodingInputStream(InputStream paramInputStream, int paramInt)
  {
    if (paramInt == 0)
      return paramInputStream;
    if (paramInt == 3)
      return createAmrInputStream(paramInputStream);
    throw new RuntimeException("unsupported encoding:" + paramInt);
  }

  public static List<String> getNoiseSuppressors(GstaticConfiguration.Platform paramPlatform)
  {
    Object localObject;
    if (paramPlatform == null)
      localObject = Lists.newArrayList();
    while (true)
    {
      return localObject;
      localObject = new LinkedList();
      List localList = paramPlatform.getEnabledNoiseSuppressorsList();
      for (AudioEffect.Descriptor localDescriptor : AudioEffect.queryEffects())
        if (EFFECT_TYPE_NOISE_SUPRRESSOR.equals(localDescriptor.type))
        {
          String str = localDescriptor.uuid.toString();
          if (!localList.contains(str))
            break label97;
          ((List)localObject).add(str);
        }
    }
    label97: ((List)localObject).clear();
    return localObject;
  }

  public static enum Encoding
  {
    private final int mCode;
    private final String mExt;
    private final String mMimeType;

    static
    {
      AMR = new Encoding("AMR", 1, "audio/AMR", "amr", 2);
      AMRNB = new Encoding("AMRNB", 2, "audio/3gpp", "amr", 3);
      Encoding[] arrayOfEncoding = new Encoding[3];
      arrayOfEncoding[0] = WAV;
      arrayOfEncoding[1] = AMR;
      arrayOfEncoding[2] = AMRNB;
    }

    private Encoding(String paramString1, String paramString2, int paramInt)
    {
      this.mMimeType = paramString1;
      this.mExt = paramString2;
      this.mCode = paramInt;
    }

    public static Encoding fromCode(int paramInt)
    {
      for (Encoding localEncoding : values())
        if (localEncoding.getCode() == paramInt)
          return localEncoding;
      throw new IllegalArgumentException("invalid code: " + paramInt);
    }

    public int getCode()
    {
      return this.mCode;
    }

    public String getExt()
    {
      return this.mExt;
    }

    public String getMimeType()
    {
      return this.mMimeType;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.audio.AudioUtils
 * JD-Core Version:    0.6.2
 */