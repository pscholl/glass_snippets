package com.google.android.speech.params;

import android.view.WindowManager;
import com.google.android.speech.SpeechSettings;
import com.google.android.speech.helper.AuthTokenHelper;
import com.google.android.speech.helper.SpeechLocationHelper;
import com.google.android.speech.utils.NetworkInformation;
import com.google.android.voicesearch.speechservice.s3.PinholeParamsBuilder;

public class NetworkRequestProducerParams
{
  private final AuthTokenHelper mAuthTokenHelper;
  private final DeviceParams mDeviceParams;
  private final SpeechLocationHelper mLocationHelper;
  private final NetworkInformation mNetworkInformation;
  private final PinholeParamsBuilder mPinholeParamsBuilder;
  private final SpeechSettings mSpeechSettings;
  private final WindowManager mWindowManager;

  public NetworkRequestProducerParams(AuthTokenHelper paramAuthTokenHelper, WindowManager paramWindowManager, NetworkInformation paramNetworkInformation, PinholeParamsBuilder paramPinholeParamsBuilder, SpeechLocationHelper paramSpeechLocationHelper, SpeechSettings paramSpeechSettings, DeviceParams paramDeviceParams)
  {
    this.mAuthTokenHelper = paramAuthTokenHelper;
    this.mWindowManager = paramWindowManager;
    this.mNetworkInformation = paramNetworkInformation;
    this.mPinholeParamsBuilder = paramPinholeParamsBuilder;
    this.mLocationHelper = paramSpeechLocationHelper;
    this.mSpeechSettings = paramSpeechSettings;
    this.mDeviceParams = paramDeviceParams;
  }

  public AuthTokenHelper getAuthTokenHelper()
  {
    return this.mAuthTokenHelper;
  }

  public DeviceParams getDeviceParams()
  {
    return this.mDeviceParams;
  }

  public SpeechLocationHelper getLocationHelper()
  {
    return this.mLocationHelper;
  }

  public NetworkInformation getNetworkInformation()
  {
    return this.mNetworkInformation;
  }

  public PinholeParamsBuilder getPinholeParamsBuilder()
  {
    return this.mPinholeParamsBuilder;
  }

  public SpeechSettings getSpeechSettings()
  {
    return this.mSpeechSettings;
  }

  public WindowManager getWindowManager()
  {
    return this.mWindowManager;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.params.NetworkRequestProducerParams
 * JD-Core Version:    0.6.2
 */