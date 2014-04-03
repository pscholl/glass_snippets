package com.google.android.speech.message;

import android.app.ActivityManager;
import com.google.protobuf.micro.ByteStringMicro;
import com.google.speech.s3.Audio.S3AudioData;
import com.google.speech.s3.S3.S3Request;

public class S3RequestUtils
{
  public static S3.S3Request createAudioDataRequest(byte[] paramArrayOfByte, int paramInt)
  {
    return createBaseS3Request().setS3AudioDataExtension(createS3AudioData(paramArrayOfByte, paramInt));
  }

  public static S3.S3Request createBaseS3Request()
  {
    if ((ActivityManager.isUserAMonkey()) || (ActivityManager.isRunningInTestHarness()))
      return new S3.S3Request().setLoggingEnabled(false);
    return new S3.S3Request().setLoggingEnabled(true);
  }

  public static S3.S3Request createEndOfData()
  {
    return createBaseS3Request().setEndOfData(true);
  }

  private static Audio.S3AudioData createS3AudioData(byte[] paramArrayOfByte, int paramInt)
  {
    return new Audio.S3AudioData().setAudio(ByteStringMicro.copyFrom(paramArrayOfByte, 0, paramInt));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.message.S3RequestUtils
 * JD-Core Version:    0.6.2
 */