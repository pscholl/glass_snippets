package com.x.google.common.io;

import java.io.IOException;

public abstract interface PersistentStore
{
  public static final int PERSISTENT_STORE_FULL = -2;
  public static final int PERSISTENT_STORE_WRITE_FAILED = -1;

  public abstract void clearPreferences();

  public abstract void deleteAllBlocks(String paramString);

  public abstract boolean deleteBlock(String paramString);

  public abstract void deleteBlockX(String paramString)
    throws PersistentStore.PersistentStoreException;

  public abstract int getBlockSize(String paramString);

  public abstract int getDataSize(String paramString);

  public abstract long getFreeSpace(String paramString);

  public abstract String[] listBlocks(String paramString);

  public abstract byte[] readBlock(String paramString);

  public abstract byte[] readPreference(String paramString);

  public abstract void refreshPreferencesCache(boolean paramBoolean);

  public abstract void savePreferences();

  public abstract boolean setPreference(String paramString, byte[] paramArrayOfByte);

  public abstract int writeBlock(byte[] paramArrayOfByte, String paramString);

  public abstract int writeBlockX(byte[] paramArrayOfByte, String paramString)
    throws PersistentStore.PersistentStoreException;

  public static class PersistentStoreException extends IOException
  {
    private final int type;

    public PersistentStoreException(String paramString, int paramInt)
    {
      super();
      this.type = paramInt;
    }

    public int getType()
    {
      return this.type;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.PersistentStore
 * JD-Core Version:    0.6.2
 */