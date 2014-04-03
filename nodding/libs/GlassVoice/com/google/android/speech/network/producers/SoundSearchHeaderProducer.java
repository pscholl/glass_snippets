package com.google.android.speech.network.producers;

import com.google.android.speech.message.S3RequestUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3SessionInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.SoundSearch.SoundSearchInfo;
import java.io.IOException;
import java.util.concurrent.Future;

public class SoundSearchHeaderProducer extends Producers.SingleRequestProducer
{
  private final Future<MobileUser.MobileUserInfo> mMobileUserInfoFuture;
  private final Supplier<String> mRequestIdSupplier;
  private final Audio.S3AudioInfo mS3AudioInfo;
  private final Future<S3.S3ClientInfo> mS3ClientInfoFuture;
  private final Future<S3.S3UserInfo> mS3UserInfoFuture;
  private final String mService;
  private final Future<SoundSearch.SoundSearchInfo> mSoundSearchInfoFuture;
  private final TimeoutEnforcer mTimeoutEnforcer;

  public SoundSearchHeaderProducer(Future<MobileUser.MobileUserInfo> paramFuture, Future<S3.S3ClientInfo> paramFuture1, Future<S3.S3UserInfo> paramFuture2, Future<SoundSearch.SoundSearchInfo> paramFuture3, Audio.S3AudioInfo paramS3AudioInfo, Supplier<String> paramSupplier, String paramString)
  {
    this.mMobileUserInfoFuture = paramFuture;
    this.mS3ClientInfoFuture = paramFuture1;
    this.mS3UserInfoFuture = paramFuture2;
    this.mSoundSearchInfoFuture = paramFuture3;
    this.mS3AudioInfo = paramS3AudioInfo;
    this.mRequestIdSupplier = paramSupplier;
    this.mService = paramString;
    this.mTimeoutEnforcer = new TimeoutEnforcer(1000L);
  }

  @VisibleForTesting
  public S3.S3Request produceRequest()
    throws IOException
  {
    S3.S3Request localS3Request = S3RequestUtils.createBaseS3Request().setService(this.mService);
    localS3Request.setS3AudioInfoExtension(this.mS3AudioInfo);
    localS3Request.setS3SessionInfoExtension(new S3.S3SessionInfo().setSessionId((String)this.mRequestIdSupplier.get()));
    localS3Request.setS3ClientInfoExtension((S3.S3ClientInfo)this.mTimeoutEnforcer.waitForFuture(this.mS3ClientInfoFuture));
    localS3Request.setS3UserInfoExtension((S3.S3UserInfo)this.mTimeoutEnforcer.waitForFuture(this.mS3UserInfoFuture));
    localS3Request.setMobileUserInfoExtension((MobileUser.MobileUserInfo)this.mTimeoutEnforcer.waitForFuture(this.mMobileUserInfoFuture));
    localS3Request.setSoundSearchInfoExtension((SoundSearch.SoundSearchInfo)this.mTimeoutEnforcer.waitForFuture(this.mSoundSearchInfoFuture));
    return localS3Request;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.SoundSearchHeaderProducer
 * JD-Core Version:    0.6.2
 */