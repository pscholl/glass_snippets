package com.x.google.common.io;

import com.x.google.common.Config;
import com.x.google.common.util.Observable;

public abstract class BaseConnectionFactory
  implements ConnectionFactory
{
  private boolean hasPreviousNetworkSuccessBeenRead = false;
  private final String netAvailablePrefName;
  private boolean networkWorked = false;
  private boolean networkWorkedThisSession = false;
  protected final PersistentStore store;

  protected BaseConnectionFactory(String paramString)
  {
    this.netAvailablePrefName = paramString;
    this.store = Config.getInstance().getPersistentStore();
  }

  private void setNetworkWorked(boolean paramBoolean)
  {
    this.hasPreviousNetworkSuccessBeenRead = true;
    this.networkWorked = paramBoolean;
  }

  protected void checkPreviousNetworkSuccess()
  {
    if (this.store.readPreference(this.netAvailablePrefName) != null);
    for (boolean bool = true; ; bool = false)
    {
      setNetworkWorked(bool);
      return;
    }
  }

  protected byte getNetworkPreferenceValue()
  {
    return 0;
  }

  public boolean getNetworkWorked()
  {
    if (!this.hasPreviousNetworkSuccessBeenRead)
      checkPreviousNetworkSuccess();
    return this.networkWorked;
  }

  public boolean getNetworkWorkedThisSession()
  {
    return this.networkWorkedThisSession;
  }

  public void notifyFailure()
  {
  }

  public boolean registerNetworkSuccess(boolean paramBoolean)
  {
    try
    {
      this.networkWorkedThisSession = true;
      boolean bool;
      if (getNetworkWorked())
      {
        bool = false;
        if (!paramBoolean);
      }
      else
      {
        this.networkWorked = true;
        PersistentStore localPersistentStore = this.store;
        String str = this.netAvailablePrefName;
        byte[] arrayOfByte = new byte[1];
        arrayOfByte[0] = getNetworkPreferenceValue();
        localPersistentStore.setPreference(str, arrayOfByte);
        bool = true;
      }
      return bool;
    }
    finally
    {
    }
  }

  public void resetNetworkSettings()
  {
    this.store.setPreference(this.netAvailablePrefName, null);
    this.store.savePreferences();
    setNetworkWorked(false);
    this.networkWorkedThisSession = false;
  }

  public void setLogAdapter(LogAdapter paramLogAdapter)
  {
  }

  public void setSettingObservable(Observable paramObservable)
  {
  }

  public boolean usingMDS()
  {
    return false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.BaseConnectionFactory
 * JD-Core Version:    0.6.2
 */