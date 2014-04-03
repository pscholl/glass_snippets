package com.x.google.common.io;

import com.x.google.common.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;

public class PreferenceStore
{
  private static final int MIN_PREFERENCE_SIZE = 2000;
  public static final String PREFERENCE_BLOCK = "Preferences";
  private final PersistentStore persistentStore;
  private Hashtable preferences = null;
  private boolean preferencesChanged = false;

  public PreferenceStore(PersistentStore paramPersistentStore)
  {
    this.persistentStore = paramPersistentStore;
  }

  private void ensurePreferencesLoaded()
  {
    try
    {
      byte[] arrayOfByte;
      if (this.preferences == null)
      {
        arrayOfByte = this.persistentStore.readBlock("Preferences");
        if (arrayOfByte == null)
          break label41;
      }
      for (this.preferences = unpackPreferences(arrayOfByte); ; this.preferences = new Hashtable())
      {
        this.preferencesChanged = false;
        return;
        label41: this.persistentStore.writeBlock(new byte[2000], "Preferences");
      }
    }
    finally
    {
    }
  }

  public static byte[] packPreferences(Hashtable paramHashtable)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeShort(paramHashtable.size());
    Enumeration localEnumeration = paramHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      byte[] arrayOfByte = (byte[])paramHashtable.get(str);
      if (arrayOfByte == null)
        arrayOfByte = new byte[0];
      localDataOutputStream.writeUTF(str);
      localDataOutputStream.writeShort(arrayOfByte.length);
      localDataOutputStream.write(arrayOfByte);
    }
    return localByteArrayOutputStream.toByteArray();
  }

  private static byte[] packPreferencesBlock(Hashtable paramHashtable)
    throws IOException
  {
    byte[] arrayOfByte1 = packPreferences(paramHashtable);
    if (arrayOfByte1.length > 2000)
      return arrayOfByte1;
    byte[] arrayOfByte2 = new byte[2000];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte1.length);
    return arrayOfByte2;
  }

  public static Hashtable unpackPreferences(byte[] paramArrayOfByte)
  {
    DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    Hashtable localHashtable = new Hashtable();
    try
    {
      int i = localDataInputStream.readUnsignedShort();
      for (int j = 0; j < i; j++)
      {
        String str = localDataInputStream.readUTF();
        byte[] arrayOfByte = new byte[localDataInputStream.readUnsignedShort()];
        localDataInputStream.readFully(arrayOfByte);
        localHashtable.put(str, arrayOfByte);
      }
    }
    catch (IOException localIOException)
    {
      Log.logThrowable("FLASH", localIOException);
    }
    return localHashtable;
  }

  public void clearPreferences()
  {
    try
    {
      this.preferences = new Hashtable();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public byte[] readPreference(String paramString)
  {
    try
    {
      ensurePreferencesLoaded();
      byte[] arrayOfByte = (byte[])this.preferences.get(paramString);
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void refreshPreferencesCache(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      this.preferencesChanged = false;
      this.preferences = null;
      ensurePreferencesLoaded();
      return;
    }
    finally
    {
    }
  }

  // ERROR //
  public void savePreferences()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	com/x/google/common/io/PreferenceStore:preferencesChanged	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 24	com/x/google/common/io/PreferenceStore:preferences	Ljava/util/Hashtable;
    //   18: invokestatic 153	com/x/google/common/io/PreferenceStore:packPreferencesBlock	(Ljava/util/Hashtable;)[B
    //   21: astore 4
    //   23: aload_0
    //   24: getfield 28	com/x/google/common/io/PreferenceStore:persistentStore	Lcom/x/google/common/io/PersistentStore;
    //   27: aload 4
    //   29: ldc 11
    //   31: invokeinterface 43 3 0
    //   36: pop
    //   37: aload_0
    //   38: iconst_0
    //   39: putfield 26	com/x/google/common/io/PreferenceStore:preferencesChanged	Z
    //   42: goto -31 -> 11
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    //   50: astore_3
    //   51: ldc 138
    //   53: aload_3
    //   54: invokestatic 144	com/x/google/common/Log:logThrowable	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   57: goto -20 -> 37
    //
    // Exception table:
    //   from	to	target	type
    //   2	7	45	finally
    //   14	37	45	finally
    //   37	42	45	finally
    //   51	57	45	finally
    //   14	37	50	java/io/IOException
  }

  public boolean setPreference(String paramString, byte[] paramArrayOfByte)
  {
    boolean bool = true;
    try
    {
      ensurePreferencesLoaded();
      this.preferencesChanged = true;
      if (paramArrayOfByte == null)
      {
        Object localObject2 = this.preferences.remove(paramString);
        if (localObject2 == null);
      }
      while (true)
      {
        return bool;
        bool = false;
        continue;
        this.preferences.put(paramString, paramArrayOfByte);
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.PreferenceStore
 * JD-Core Version:    0.6.2
 */