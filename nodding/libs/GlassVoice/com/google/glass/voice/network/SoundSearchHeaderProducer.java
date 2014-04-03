package com.google.glass.voice.network;

import com.google.android.speech.message.S3RequestUtils;
import com.google.android.speech.network.producers.Producers.SingleRequestProducer;
import com.google.android.speech.network.producers.TimeoutEnforcer;
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
  private static final int TIMEOUT_MSEC = 5000;
  private final Future<MobileUser.MobileUserInfo> mobileUserInfoFuture;
  private final Supplier<String> requestIdSupplier;
  private final Audio.S3AudioInfo s3AudioInfo;
  private final Future<S3.S3ClientInfo> s3ClientInfoFuture;
  private final Future<S3.S3UserInfo> s3UserInfoFuture;
  private final String service;
  private final SoundSearch.SoundSearchInfo soundSearchInfo;
  private final TimeoutEnforcer timeoutEnforcer;

  public SoundSearchHeaderProducer(Future<MobileUser.MobileUserInfo> paramFuture, Future<S3.S3ClientInfo> paramFuture1, Future<S3.S3UserInfo> paramFuture2, SoundSearch.SoundSearchInfo paramSoundSearchInfo, Audio.S3AudioInfo paramS3AudioInfo, Supplier<String> paramSupplier, String paramString)
  {
    this.mobileUserInfoFuture = paramFuture;
    this.s3ClientInfoFuture = paramFuture1;
    this.s3UserInfoFuture = paramFuture2;
    this.soundSearchInfo = paramSoundSearchInfo;
    this.s3AudioInfo = paramS3AudioInfo;
    this.requestIdSupplier = paramSupplier;
    this.service = paramString;
    this.timeoutEnforcer = new TimeoutEnforcer(5000L);
  }

  @VisibleForTesting
  public S3.S3Request produceRequest()
    throws IOException
  {
    S3.S3Request localS3Request = S3RequestUtils.createBaseS3Request().setService(this.service);
    localS3Request.setS3AudioInfoExtension(this.s3AudioInfo);
    localS3Request.setS3SessionInfoExtension(new S3.S3SessionInfo().setSessionId((String)this.requestIdSupplier.get()));
    localS3Request.setS3ClientInfoExtension((S3.S3ClientInfo)this.timeoutEnforcer.waitForFuture(this.s3ClientInfoFuture));
    localS3Request.setS3UserInfoExtension((S3.S3UserInfo)this.timeoutEnforcer.waitForFuture(this.s3UserInfoFuture));
    localS3Request.setMobileUserInfoExtension((MobileUser.MobileUserInfo)this.timeoutEnforcer.waitForFuture(this.mobileUserInfoFuture));
    localS3Request.setSoundSearchInfoExtension(this.soundSearchInfo);
    return localS3Request;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.SoundSearchHeaderProducer
 * JD-Core Version:    0.6.2
 */