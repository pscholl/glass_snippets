package com.google.android.speech.network.request;

import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.params.DeviceParams;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class S3ClientInfoBuilderTask extends BaseRequestBuilderTask<S3.S3ClientInfo>
{
  private static final String ANDROID_PLATFORM = "Android";
  private final String mAppId;
  private final DeviceParams mDeviceParams;
  private final SpeechSettings mSpeechSettings;

  @Nullable
  private final String mTriggerApplicationId;

  @Nullable
  private final WindowManager mWindowManager;

  public S3ClientInfoBuilderTask(@Nonnull SpeechSettings paramSpeechSettings, @Nonnull String paramString1, @Nonnull DeviceParams paramDeviceParams, @Nullable String paramString2, @Nullable WindowManager paramWindowManager)
  {
    super("S3ClientInfoBuilderTask");
    this.mSpeechSettings = paramSpeechSettings;
    this.mAppId = paramString1;
    this.mDeviceParams = paramDeviceParams;
    this.mTriggerApplicationId = paramString2;
    this.mWindowManager = paramWindowManager;
  }

  protected S3.S3ClientInfo build()
  {
    S3.S3ClientInfo localS3ClientInfo = new S3.S3ClientInfo().setClientId("").addExperimentId(this.mSpeechSettings.getConfiguration().getId()).setPlatformId("Android").setPlatformVersion(Build.DISPLAY).setApplicationId(this.mAppId).setApplicationVersion(this.mDeviceParams.getApplicationVersion()).setUserAgent(this.mDeviceParams.getUserAgent()).setDeviceModel(Build.MODEL);
    if (this.mWindowManager != null)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      this.mWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
      localS3ClientInfo.setDeviceDisplayWidthPixels(localDisplayMetrics.widthPixels).setDeviceDisplayHeightPixels(localDisplayMetrics.heightPixels).setDeviceDisplayDensityDpi(localDisplayMetrics.densityDpi);
    }
    if (this.mTriggerApplicationId != null)
      localS3ClientInfo.setTriggerApplicationId(this.mTriggerApplicationId);
    return localS3ClientInfo;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.S3ClientInfoBuilderTask
 * JD-Core Version:    0.6.2
 */