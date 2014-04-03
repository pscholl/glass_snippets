package com.x.google.common.io;

public abstract class BasePersistentStore
  implements PersistentStore
{
  private final PreferenceStore preferenceStore = new PreferenceStore(this);

  public void clearPreferences()
  {
    this.preferenceStore.clearPreferences();
  }

  public long getFreeSpace(String paramString)
  {
    return -1L;
  }

  public byte[] readPreference(String paramString)
  {
    return this.preferenceStore.readPreference(paramString);
  }

  public void refreshPreferencesCache(boolean paramBoolean)
  {
    this.preferenceStore.refreshPreferencesCache(paramBoolean);
  }

  public void savePreferences()
  {
    this.preferenceStore.savePreferences();
  }

  public boolean setPreference(String paramString, byte[] paramArrayOfByte)
  {
    return this.preferenceStore.setPreference(paramString, paramArrayOfByte);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.BasePersistentStore
 * JD-Core Version:    0.6.2
 */