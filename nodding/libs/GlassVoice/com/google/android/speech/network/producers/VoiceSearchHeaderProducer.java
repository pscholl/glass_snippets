package com.google.android.speech.network.producers;

import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.message.S3RequestUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import com.google.speech.s3.PinholeStream.PinholeParams;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3SessionInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import java.io.IOException;
import java.util.concurrent.Future;
import javax.annotation.Nullable;

public class VoiceSearchHeaderProducer extends Producers.SingleRequestProducer
{
  private final Future<MobileUser.MobileUserInfo> mMobileUserInfoFuture;

  @Nullable
  private final Future<PinholeStream.PinholeParams> mPinholeParamsFuture;
  private final Supplier<String> mRequestIdSupplier;
  private final Audio.S3AudioInfo mS3AudioInfo;
  private final Future<S3.S3ClientInfo> mS3ClientInfoFuture;
  private final Recognizer.S3RecognizerInfo mS3RecognizerInfo;
  private final Future<S3.S3UserInfo> mS3UserInfoFuture;
  private final String mService;
  private final SpeechLibLogger mSpeechLibLogger;
  private final TimeoutEnforcer mTimeoutEnforcer;

  public VoiceSearchHeaderProducer(Future<PinholeStream.PinholeParams> paramFuture, Future<MobileUser.MobileUserInfo> paramFuture1, Future<S3.S3ClientInfo> paramFuture2, Future<S3.S3UserInfo> paramFuture3, Audio.S3AudioInfo paramS3AudioInfo, Recognizer.S3RecognizerInfo paramS3RecognizerInfo, Supplier<String> paramSupplier, String paramString, SpeechLibLogger paramSpeechLibLogger)
  {
    this.mPinholeParamsFuture = paramFuture;
    this.mMobileUserInfoFuture = paramFuture1;
    this.mS3ClientInfoFuture = paramFuture2;
    this.mS3UserInfoFuture = paramFuture3;
    this.mS3AudioInfo = paramS3AudioInfo;
    this.mS3RecognizerInfo = paramS3RecognizerInfo;
    this.mRequestIdSupplier = paramSupplier;
    this.mService = paramString;
    this.mSpeechLibLogger = paramSpeechLibLogger;
    this.mTimeoutEnforcer = new TimeoutEnforcer(1000L);
  }

  @VisibleForTesting
  public S3.S3Request produceRequest()
    throws IOException
  {
    this.mSpeechLibLogger.recordSpeechEvent(6);
    S3.S3Request localS3Request = S3RequestUtils.createBaseS3Request().setService(this.mService);
    if (this.mPinholeParamsFuture != null)
      localS3Request.setPinholeParamsExtension((PinholeStream.PinholeParams)this.mTimeoutEnforcer.waitForFuture(this.mPinholeParamsFuture));
    localS3Request.setS3ClientInfoExtension((S3.S3ClientInfo)this.mTimeoutEnforcer.waitForFuture(this.mS3ClientInfoFuture));
    localS3Request.setS3SessionInfoExtension(new S3.S3SessionInfo().setSessionId((String)this.mRequestIdSupplier.get()));
    localS3Request.setS3UserInfoExtension((S3.S3UserInfo)this.mTimeoutEnforcer.waitForFuture(this.mS3UserInfoFuture));
    localS3Request.setMobileUserInfoExtension((MobileUser.MobileUserInfo)this.mTimeoutEnforcer.waitForFuture(this.mMobileUserInfoFuture));
    localS3Request.setS3AudioInfoExtension(this.mS3AudioInfo);
    if (this.mS3RecognizerInfo != null)
      localS3Request.setS3RecognizerInfoExtension(this.mS3RecognizerInfo);
    this.mSpeechLibLogger.recordSpeechEvent(7);
    return localS3Request;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.VoiceSearchHeaderProducer
 * JD-Core Version:    0.6.2
 */