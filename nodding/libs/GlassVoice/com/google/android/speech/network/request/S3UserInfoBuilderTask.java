package com.google.android.speech.network.request;

import android.location.Location;
import android.util.Log;
import com.google.android.searchcommon.google.XGeoEncoder;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.helper.AuthTokenHelper;
import com.google.android.speech.helper.SpeechLocationHelper;
import com.google.common.annotations.VisibleForTesting;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.speech.s3.S3.AuthToken;
import com.google.speech.s3.S3.Locale;
import com.google.speech.s3.S3.S3UserInfo;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class S3UserInfoBuilderTask extends BaseRequestBuilderTask<S3.S3UserInfo>
{
  private static final boolean DBG = false;
  private static final String TAG = "VS.S3UserInfoBuilderTask";
  private final AuthTokenHelper mAuthTokenHelper;
  private final SpeechLocationHelper mLocationHelper;
  private final Location mLocationOverride;
  private final S3.S3UserInfo mS3UserInfo;
  private final SpeechSettings mSpeechSettings;
  private final String mSpokenLocale;

  @VisibleForTesting
  S3UserInfoBuilderTask(AuthTokenHelper paramAuthTokenHelper, SpeechSettings paramSpeechSettings, SpeechLocationHelper paramSpeechLocationHelper, String paramString, Location paramLocation, S3.S3UserInfo paramS3UserInfo)
  {
    super("S3UserInfoBuilderTask");
    this.mAuthTokenHelper = paramAuthTokenHelper;
    this.mSpeechSettings = paramSpeechSettings;
    this.mLocationHelper = paramSpeechLocationHelper;
    this.mSpokenLocale = paramString;
    this.mLocationOverride = paramLocation;
    this.mS3UserInfo = paramS3UserInfo;
  }

  @Nullable
  private S3.S3UserInfo buildNewS3UserInfo()
  {
    S3.S3UserInfo localS3UserInfo = new S3.S3UserInfo().setInstallId(this.mSpeechSettings.getInstallId()).setUserLocale(new S3.Locale().setLocale(Locale.getDefault().toString()).setFormat(2));
    List localList = this.mAuthTokenHelper.blockingGetAuthTokens(1L, TimeUnit.SECONDS);
    if (localList == null)
    {
      Log.w("VS.S3UserInfoBuilderTask", "Error fetching auth.");
      return null;
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (str2 != null)
        localS3UserInfo.addAuthToken(new S3.AuthToken().setName(this.mAuthTokenHelper.getServiceName()).setToken(str2));
    }
    String str1;
    if (this.mLocationHelper.shouldSendLocation())
    {
      str1 = this.mLocationHelper.getXGeoLocation();
      if (this.mLocationOverride != null)
        localS3UserInfo.setXGeoLocation(XGeoEncoder.encodeLocation(this.mLocationOverride));
    }
    while (true)
    {
      localS3UserInfo.setSpokenLanguage(new S3.Locale().setLocale(this.mSpokenLocale).setFormat(1));
      return localS3UserInfo;
      if (str1 != null)
      {
        localS3UserInfo.setXGeoLocation(str1);
      }
      else
      {
        localS3UserInfo.setXGeoLocation("w ");
        continue;
        localS3UserInfo.setUsePreciseGeolocation(false);
      }
    }
  }

  public static Callable<S3.S3UserInfo> getAuthTokenRefreshingBuilder(@Nonnull AuthTokenHelper paramAuthTokenHelper, @Nonnull S3.S3UserInfo paramS3UserInfo)
  {
    return new S3UserInfoBuilderTask(paramAuthTokenHelper, null, null, null, null, paramS3UserInfo);
  }

  public static Callable<S3.S3UserInfo> getBuilder(@Nonnull AuthTokenHelper paramAuthTokenHelper, @Nonnull SpeechSettings paramSpeechSettings, @Nonnull SpeechLocationHelper paramSpeechLocationHelper, @Nonnull String paramString, @Nullable Location paramLocation)
  {
    return new S3UserInfoBuilderTask(paramAuthTokenHelper, paramSpeechSettings, paramSpeechLocationHelper, paramString, paramLocation, null);
  }

  @Nullable
  private S3.S3UserInfo refreshS3UserInfo()
  {
    this.mAuthTokenHelper.invalidateAuthTokens();
    List localList = this.mAuthTokenHelper.blockingGetAuthTokens(1L, TimeUnit.SECONDS);
    S3.S3UserInfo localS3UserInfo;
    if (localList == null)
    {
      Log.w("VS.S3UserInfoBuilderTask", "Error fetching auth.");
      localS3UserInfo = null;
    }
    while (true)
    {
      return localS3UserInfo;
      localS3UserInfo = new S3.S3UserInfo();
      try
      {
        localS3UserInfo.mergeFrom(this.mS3UserInfo.toByteArray());
        localS3UserInfo.clearAuthToken();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
            localS3UserInfo.addAuthToken(new S3.AuthToken().setName(this.mAuthTokenHelper.getServiceName()).setToken(str));
        }
      }
      catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
      {
        Log.e("VS.S3UserInfoBuilderTask", "Invalid s3UserInfo: " + localInvalidProtocolBufferMicroException.getMessage());
      }
    }
    return null;
  }

  @Nullable
  protected S3.S3UserInfo build()
  {
    if (this.mS3UserInfo == null)
      return buildNewS3UserInfo();
    return refreshS3UserInfo();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.S3UserInfoBuilderTask
 * JD-Core Version:    0.6.2
 */