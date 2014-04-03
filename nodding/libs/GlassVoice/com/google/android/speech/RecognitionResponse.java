package com.google.android.speech;

import com.google.speech.s3.S3.S3Response;
import javax.annotation.Nullable;

public class RecognitionResponse
{
  private static final boolean DBG = false;
  public static final int ENGINE_EMBEDDED = 1;
  public static final int ENGINE_NETWORK = 2;
  public static final int ENGINE_SOUND_SEARCH = 3;
  public static final int ENGINE_UNKNOWN;

  @Nullable
  private final S3.S3Response mEmbeddedResponse;
  private final int mEngine;

  @Nullable
  private final S3.S3Response mNetworkResponse;

  @Nullable
  private final S3.S3Response mSoundSearchResponse;

  private RecognitionResponse(int paramInt, S3.S3Response paramS3Response1, S3.S3Response paramS3Response2, S3.S3Response paramS3Response3)
  {
    this.mEngine = paramInt;
    this.mEmbeddedResponse = paramS3Response1;
    this.mNetworkResponse = paramS3Response2;
    this.mSoundSearchResponse = paramS3Response3;
  }

  public static RecognitionResponse createEmbeddedResponse(S3.S3Response paramS3Response)
  {
    return new RecognitionResponse(1, paramS3Response, null, null);
  }

  public static RecognitionResponse createNetworkResponse(S3.S3Response paramS3Response)
  {
    return new RecognitionResponse(2, null, paramS3Response, null);
  }

  @Nullable
  public static RecognitionResponse createRecognitionResponse(S3.S3Response paramS3Response, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
      return createEmbeddedResponse(paramS3Response);
    case 2:
      return createNetworkResponse(paramS3Response);
    case 3:
    }
    return createSoundSearchResponse(paramS3Response);
  }

  public static RecognitionResponse createSoundSearchResponse(S3.S3Response paramS3Response)
  {
    return new RecognitionResponse(3, null, null, paramS3Response);
  }

  @Nullable
  public S3.S3Response getEmbeddedResponse()
  {
    return this.mEmbeddedResponse;
  }

  public int getEngine()
  {
    return this.mEngine;
  }

  @Nullable
  public S3.S3Response getNetworkResponse()
  {
    return this.mNetworkResponse;
  }

  @Nullable
  public S3.S3Response getS3Response()
  {
    switch (this.mEngine)
    {
    default:
      return null;
    case 1:
      return this.mEmbeddedResponse;
    case 2:
      return this.mNetworkResponse;
    case 3:
    }
    return this.mSoundSearchResponse;
  }

  @Nullable
  public S3.S3Response getSoundSearchResponse()
  {
    return this.mSoundSearchResponse;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("RecognitionResponse[");
    switch (this.mEngine)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localStringBuilder.append("EMBEDDED");
      continue;
      localStringBuilder.append("NETWORK");
      continue;
      localStringBuilder.append("SOUND_SEARCH");
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.RecognitionResponse
 * JD-Core Version:    0.6.2
 */