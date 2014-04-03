package com.google.android.speech.network.request;

import android.text.TextUtils;
import com.google.android.speech.params.DeviceParams;
import com.google.android.speech.utils.NetworkInformation;
import com.google.audio.ears.proto.EarsService.EarsLookupRequest;
import com.google.audio.ears.proto.EarsService.EarsStreamRequest;
import com.google.speech.speech.s3.SoundSearch.SoundSearchInfo;
import javax.annotation.Nonnull;

public class SoundSearchInfoBuilderTask extends BaseRequestBuilderTask<SoundSearch.SoundSearchInfo>
{
  private final DeviceParams mDeviceParams;
  private final NetworkInformation mNetworkInformation;
  private final boolean mTtsEnabled;

  public SoundSearchInfoBuilderTask(boolean paramBoolean, NetworkInformation paramNetworkInformation, @Nonnull DeviceParams paramDeviceParams)
  {
    super("SoundSearchInfoBuilderTask");
    this.mTtsEnabled = paramBoolean;
    this.mNetworkInformation = paramNetworkInformation;
    this.mDeviceParams = paramDeviceParams;
  }

  protected SoundSearch.SoundSearchInfo build()
  {
    EarsService.EarsLookupRequest localEarsLookupRequest = new EarsService.EarsLookupRequest();
    String str1 = this.mNetworkInformation.getDeviceCountryCode();
    if (!str1.isEmpty())
      localEarsLookupRequest.setClientCountryCode(str1);
    while (true)
    {
      localEarsLookupRequest.addDesiredResultType(0);
      EarsService.EarsStreamRequest localEarsStreamRequest = new EarsService.EarsStreamRequest();
      localEarsStreamRequest.setAudioContainer(4);
      localEarsStreamRequest.setAudioEncoding(4);
      SoundSearch.SoundSearchInfo localSoundSearchInfo = new SoundSearch.SoundSearchInfo();
      localSoundSearchInfo.setLookupRequest(localEarsLookupRequest);
      localSoundSearchInfo.setStreamRequest(localEarsStreamRequest);
      localSoundSearchInfo.setTtsOutputEnabled(this.mTtsEnabled);
      return localSoundSearchInfo;
      String str2 = this.mDeviceParams.getSearchDomainCountryCode();
      if (!TextUtils.isEmpty(str2))
        localEarsLookupRequest.setClientCountryCode(str2);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.SoundSearchInfoBuilderTask
 * JD-Core Version:    0.6.2
 */