package com.google.android.voicesearch;

import com.google.android.speech.utils.NetworkInformation;

public class LogExtras
{
  private final NetworkInformation mNetworkInformation;

  public LogExtras(NetworkInformation paramNetworkInformation)
  {
    this.mNetworkInformation = paramNetworkInformation;
  }

  public int getNetworkType()
  {
    return this.mNetworkInformation.getConnectionId();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.voicesearch.LogExtras
 * JD-Core Version:    0.6.2
 */