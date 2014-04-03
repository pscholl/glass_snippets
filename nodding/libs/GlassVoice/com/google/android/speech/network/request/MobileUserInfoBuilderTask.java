package com.google.android.speech.network.request;

import com.google.android.speech.utils.NetworkInformation;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import javax.annotation.Nonnull;

public class MobileUserInfoBuilderTask extends BaseRequestBuilderTask<MobileUser.MobileUserInfo>
{

  @Nonnull
  private final NetworkInformation mNetworkInfo;

  public MobileUserInfoBuilderTask(@Nonnull NetworkInformation paramNetworkInformation)
  {
    super("MobileUserInfoBuilderTask");
    this.mNetworkInfo = paramNetworkInformation;
  }

  protected MobileUser.MobileUserInfo build()
  {
    MobileUser.MobileUserInfo localMobileUserInfo = new MobileUser.MobileUserInfo();
    int[] arrayOfInt1 = this.mNetworkInfo.getNetworkMccMnc();
    if (arrayOfInt1 != NetworkInformation.MISSING_TELEPHONY_RESULT)
    {
      localMobileUserInfo.setNetworkMcc(arrayOfInt1[0]);
      localMobileUserInfo.setNetworkMnc(arrayOfInt1[1]);
    }
    int[] arrayOfInt2 = this.mNetworkInfo.getSimMccMnc();
    if (arrayOfInt2 != NetworkInformation.MISSING_TELEPHONY_RESULT)
    {
      localMobileUserInfo.setSimMcc(arrayOfInt2[0]);
      localMobileUserInfo.setSimMnc(arrayOfInt2[1]);
    }
    int i = this.mNetworkInfo.getConnectionId();
    if (i != -1)
      localMobileUserInfo.setNetworkType(i);
    return localMobileUserInfo;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.request.MobileUserInfoBuilderTask
 * JD-Core Version:    0.6.2
 */