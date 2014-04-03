package com.google.android.speech.network.producers;

import android.util.Log;
import com.google.android.speech.network.request.MobileUserInfoBuilderTask;
import com.google.android.speech.network.request.S3ClientInfoBuilderTask;
import com.google.android.speech.network.request.S3UserInfoBuilderTask;
import com.google.android.speech.network.request.SoundSearchInfoBuilderTask;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.speech.params.NetworkRequestProducerParams;
import com.google.android.speech.params.SessionParams;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.SoundSearch.SoundSearchInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.annotation.Nonnull;

public class SoundSearchRequestProducerFactory
  implements RequestProducerFactory
{
  private static final String TAG = "SoundSearchRequestProducerFactory";
  private final ExecutorService mExecutor;
  private Future<MobileUser.MobileUserInfo> mMobileUserInfoFuture;
  private final NetworkRequestProducerParams mNrpp;
  private Supplier<String> mRequestIdSupplier;
  private Audio.S3AudioInfo mS3AudioInfo;
  private Future<S3.S3ClientInfo> mS3ClientInfoFuture;
  private Future<S3.S3UserInfo> mS3UserInfoFuture;
  private String mService;
  private SessionParams mSessionParams;
  private Future<SoundSearch.SoundSearchInfo> mSoundSearchInfoFuture;
  private final TimeoutEnforcer mTimeoutEnforcer;

  public SoundSearchRequestProducerFactory(ExecutorService paramExecutorService, NetworkRequestProducerParams paramNetworkRequestProducerParams)
  {
    this.mExecutor = paramExecutorService;
    this.mNrpp = paramNetworkRequestProducerParams;
    this.mTimeoutEnforcer = new TimeoutEnforcer(1000L);
  }

  private Future<MobileUser.MobileUserInfo> createMobileUserInfoFuture()
  {
    return this.mExecutor.submit(new MobileUserInfoBuilderTask(this.mNrpp.getNetworkInformation()));
  }

  private Audio.S3AudioInfo createS3AudioInfo()
  {
    AudioInputParams localAudioInputParams = this.mSessionParams.getAudioInputParams();
    return new Audio.S3AudioInfo().setEncoding(localAudioInputParams.getEncoding()).setSampleRateHz(localAudioInputParams.getSamplingRate());
  }

  private Future<S3.S3ClientInfo> createS3ClientInfoFuture()
  {
    return this.mExecutor.submit(new S3ClientInfoBuilderTask(this.mNrpp.getSpeechSettings(), this.mSessionParams.getApplicationId(), this.mNrpp.getDeviceParams(), this.mSessionParams.getTriggerApplication(), this.mNrpp.getWindowManager()));
  }

  private Future<S3.S3UserInfo> createS3UserInfoFuture()
  {
    return this.mExecutor.submit(S3UserInfoBuilderTask.getBuilder(this.mNrpp.getAuthTokenHelper(), this.mNrpp.getSpeechSettings(), this.mNrpp.getLocationHelper(), this.mSessionParams.getSpokenBcp47Locale(), this.mSessionParams.getLocationOverride()));
  }

  private Future<SoundSearch.SoundSearchInfo> createSoundSearchInfoFuture()
  {
    return this.mExecutor.submit(new SoundSearchInfoBuilderTask(this.mSessionParams.isSoundSearchTtsEnabled(), this.mNrpp.getNetworkInformation(), this.mNrpp.getDeviceParams()));
  }

  public void init(@Nonnull SessionParams paramSessionParams)
  {
    this.mSessionParams = paramSessionParams;
    this.mService = paramSessionParams.getService();
    this.mRequestIdSupplier = this.mSessionParams.getRequestIdSupplier();
    this.mMobileUserInfoFuture = createMobileUserInfoFuture();
    this.mS3AudioInfo = createS3AudioInfo();
    this.mS3ClientInfoFuture = createS3ClientInfoFuture();
    this.mS3UserInfoFuture = createS3UserInfoFuture();
    this.mSoundSearchInfoFuture = createSoundSearchInfoFuture();
  }

  public S3RequestProducer newRequestProducer(InputStream paramInputStream)
  {
    Preconditions.checkNotNull(this.mSessionParams);
    return new Producers.CompositeProducer(new SoundSearchHeaderProducer(this.mMobileUserInfoFuture, this.mS3ClientInfoFuture, this.mS3UserInfoFuture, this.mSoundSearchInfoFuture, this.mS3AudioInfo, this.mRequestIdSupplier, this.mService), new AacStreamProducer(paramInputStream, "audio/mp4a-latm", this.mSessionParams.getAudioInputParams().getSamplingRate(), 1, 2048, 2048, 40000, 15));
  }

  public void refresh()
  {
    if (this.mSessionParams == null)
    {
      Log.w("SoundSearchRequestProducerFactory", "Trying to refresh before init.");
      return;
    }
    try
    {
      localS3UserInfo = (S3.S3UserInfo)this.mTimeoutEnforcer.waitForFuture(this.mS3UserInfoFuture);
      if (localS3UserInfo == null)
      {
        this.mS3UserInfoFuture = createS3UserInfoFuture();
        return;
      }
    }
    catch (IOException localIOException)
    {
      S3.S3UserInfo localS3UserInfo;
      while (true)
      {
        Log.w("SoundSearchRequestProducerFactory", "Could not get S3UserInfo for refresh.");
        localS3UserInfo = null;
      }
      this.mS3UserInfoFuture = this.mExecutor.submit(S3UserInfoBuilderTask.getAuthTokenRefreshingBuilder(this.mNrpp.getAuthTokenHelper(), localS3UserInfo));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.producers.SoundSearchRequestProducerFactory
 * JD-Core Version:    0.6.2
 */