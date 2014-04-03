package com.x.google.common.io;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class InMemoryPersistentStore
  implements PersistentStore
{
  private Hashtable blocks = new Hashtable();
  private int nextWriteFailureCode;
  private final Hashtable prefs = new Hashtable();

  private void checkFailure()
    throws PersistentStore.PersistentStoreException
  {
    if (this.nextWriteFailureCode != 0)
    {
      int i = this.nextWriteFailureCode;
      this.nextWriteFailureCode = 0;
      throw new PersistentStore.PersistentStoreException("FORCED ERROR", i);
    }
  }

  public void clear()
  {
    try
    {
      this.blocks.clear();
      this.prefs.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void clearPreferences()
  {
    this.prefs.clear();
  }

  public void deleteAllBlocks(String paramString)
  {
    Hashtable localHashtable;
    try
    {
      Enumeration localEnumeration = this.blocks.keys();
      localHashtable = new Hashtable();
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        if (!str.startsWith(paramString))
          localHashtable.put(str, this.blocks.get(str));
      }
    }
    finally
    {
    }
    this.blocks = localHashtable;
  }

  public boolean deleteBlock(String paramString)
  {
    try
    {
      if (this.blocks.containsKey(paramString))
      {
        this.blocks.remove(paramString);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public void deleteBlockX(String paramString)
    throws PersistentStore.PersistentStoreException
  {
    try
    {
      this.blocks.remove(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getBlockSize(String paramString)
  {
    return getDataSize(paramString);
  }

  public int getDataSize(String paramString)
  {
    byte[] arrayOfByte = readBlock(paramString);
    if (arrayOfByte != null)
      return arrayOfByte.length;
    return -1;
  }

  public long getFreeSpace(String paramString)
  {
    return -1L;
  }

  public String[] listBlocks(String paramString)
  {
    Vector localVector;
    try
    {
      localVector = new Vector();
      Enumeration localEnumeration = this.blocks.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        if (str.startsWith(paramString))
          localVector.addElement(str);
      }
    }
    finally
    {
    }
    String[] arrayOfString = new String[localVector.size()];
    localVector.copyInto(arrayOfString);
    return arrayOfString;
  }

  public byte[] readBlock(String paramString)
  {
    return (byte[])this.blocks.get(paramString);
  }

  public byte[] readPreference(String paramString)
  {
    return (byte[])this.prefs.get(paramString);
  }

  public void refreshPreferencesCache(boolean paramBoolean)
  {
  }

  public void savePreferences()
  {
  }

  public void setNextFailureCode(int paramInt)
  {
    try
    {
      this.nextWriteFailureCode = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean setPreference(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      this.prefs.remove(paramString);
    while (true)
    {
      return true;
      this.prefs.put(paramString, paramArrayOfByte);
    }
  }

  public int writeBlock(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null);
    try
    {
      paramArrayOfByte = new byte[0];
      this.blocks.put(paramString, paramArrayOfByte);
      int i = paramArrayOfByte.length;
      return i;
    }
    finally
    {
    }
  }

  public int writeBlockX(byte[] paramArrayOfByte, String paramString)
    throws PersistentStore.PersistentStoreException
  {
    return writeBlock(paramArrayOfByte, paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.InMemoryPersistentStore
 * JD-Core Version:    0.6.2
 */