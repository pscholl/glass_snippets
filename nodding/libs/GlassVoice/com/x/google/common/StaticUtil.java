package com.x.google.common;

import com.x.google.common.io.PersistentStore;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.util.Hashtable;
import java.util.Vector;

public final class StaticUtil
{
  private static final int BOOLEAN_CLASS = 0;
  private static final int EMERGENCY_MEMORY_SIZE = 32768;
  private static final int INTEGER_CLASS = 1;
  private static boolean IS_REGISTER_OUT_OF_MEMORY_HANDLER = false;
  private static final int LONG_CLASS = 2;
  public static final int RECORD_STORE_FULL = -2;
  public static final int RECORD_STORE_WRITE_FAILED = -1;
  private static long REFERENCE_CLEANUP_TIME_OUT_MSEC = 0L;
  private static final int STRING_CLASS = 3;
  private static byte[] emergencyMemory;
  private static final Vector outOfMemoryHandlers = new Vector();
  private static long referenceCleanupTime;

  static
  {
    IS_REGISTER_OUT_OF_MEMORY_HANDLER = true;
    REFERENCE_CLEANUP_TIME_OUT_MSEC = 10000L;
    referenceCleanupTime = 0L;
    allocateEmergencyMemory();
  }

  private static void allocateEmergencyMemory()
  {
    if (emergencyMemory == null);
    try
    {
      emergencyMemory = new byte[32768];
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
    }
  }

  public static boolean deleteRecordStore(String paramString)
  {
    return getPersistentStore().deleteBlock(paramString);
  }

  private static PersistentStore getPersistentStore()
  {
    return Config.getInstance().getPersistentStore();
  }

  public static int getSystemPropertyAsInt(String paramString, int paramInt)
  {
    String str = System.getProperty(paramString);
    if (str != null)
      try
      {
        int i = Integer.parseInt(str, paramInt);
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    return -1;
  }

  public static void handleLowOnMemory()
  {
    handleOutOfMemory(true);
  }

  public static void handleOutOfMemory()
  {
    handleOutOfMemory(false);
  }

  private static void handleOutOfMemory(boolean paramBoolean)
  {
    emergencyMemory = null;
    PrintStream localPrintStream = System.err;
    if (paramBoolean);
    for (String str = "LowOnMemory"; ; str = "OutOfMemory")
    {
      localPrintStream.println(str);
      removeEmptyReferences();
      for (int i = 0; i < outOfMemoryHandlers.size(); i++)
      {
        OutOfMemoryHandler localOutOfMemoryHandler = (OutOfMemoryHandler)((WeakReference)outOfMemoryHandlers.elementAt(i)).get();
        if (localOutOfMemoryHandler != null)
          localOutOfMemoryHandler.handleOutOfMemory(paramBoolean);
      }
    }
    allocateEmergencyMemory();
  }

  public static boolean isEmergencyMemoryAvailable()
  {
    return emergencyMemory != null;
  }

  public static Hashtable loadPropertiesFile(String paramString)
    throws IOException
  {
    InputStream localInputStream = "".getClass().getResourceAsStream(paramString);
    Hashtable localHashtable = null;
    if (localInputStream != null)
    {
      localHashtable = new Hashtable();
      DataInputStream localDataInputStream = new DataInputStream(localInputStream);
      int i = localDataInputStream.readInt();
      for (int j = 0; j < i; j++)
        localHashtable.put(localDataInputStream.readUTF(), localDataInputStream.readUTF());
      localInputStream.close();
    }
    return localHashtable;
  }

  public static DataInput readBlockAsDataInput(PersistentStore paramPersistentStore, String paramString)
  {
    byte[] arrayOfByte = paramPersistentStore.readBlock(paramString);
    if (arrayOfByte == null)
      return null;
    return new DataInputStream(new ByteArrayInputStream(arrayOfByte));
  }

  public static DataInput readBlockAsDataInput(String paramString)
  {
    return readBlockAsDataInput(getPersistentStore(), paramString);
  }

  public static byte[] readOneRecordRms(String paramString)
  {
    try
    {
      byte[] arrayOfByte = getPersistentStore().readBlock(paramString);
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static DataInput readOneRecordRmsAsDataInput(String paramString)
  {
    try
    {
      DataInput localDataInput = readBlockAsDataInput(paramString);
      return localDataInput;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static byte[] readPreference(String paramString)
  {
    return getPersistentStore().readPreference(paramString);
  }

  public static boolean readPreferenceAsBoolean(String paramString, boolean paramBoolean)
  {
    Object localObject = readPreferenceAsObject(paramString, 0);
    if (localObject != null)
      paramBoolean = ((Boolean)localObject).booleanValue();
    return paramBoolean;
  }

  public static DataInput readPreferenceAsDataInput(String paramString)
  {
    byte[] arrayOfByte = getPersistentStore().readPreference(paramString);
    if (arrayOfByte == null)
      return null;
    return new DataInputStream(new ByteArrayInputStream(arrayOfByte));
  }

  public static int readPreferenceAsInt(String paramString, int paramInt)
  {
    Object localObject = readPreferenceAsObject(paramString, 1);
    if (localObject != null)
      paramInt = ((Integer)localObject).intValue();
    return paramInt;
  }

  public static long readPreferenceAsLong(String paramString, long paramLong)
  {
    Object localObject = readPreferenceAsObject(paramString, 2);
    if (localObject != null)
      paramLong = ((Long)localObject).longValue();
    return paramLong;
  }

  private static Object readPreferenceAsObject(String paramString, int paramInt)
  {
    DataInput localDataInput = readPreferenceAsDataInput(paramString);
    if (localDataInput == null)
      return null;
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    try
    {
      throw new RuntimeException("Bad class: " + paramInt + " for " + paramString);
      return new Boolean(localDataInput.readBoolean());
      return new Integer(localDataInput.readInt());
      return new Long(localDataInput.readLong());
      String str = localDataInput.readUTF();
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public static String readPreferenceAsString(String paramString)
  {
    return (String)readPreferenceAsObject(paramString, 3);
  }

  public static void registerFirstOutOfMemoryHandler(OutOfMemoryHandler paramOutOfMemoryHandler)
  {
    if (IS_REGISTER_OUT_OF_MEMORY_HANDLER)
    {
      removeEmptyReferences();
      outOfMemoryHandlers.insertElementAt(new WeakReference(paramOutOfMemoryHandler), 0);
    }
  }

  public static void registerOutOfMemoryHandler(OutOfMemoryHandler paramOutOfMemoryHandler)
  {
    if (IS_REGISTER_OUT_OF_MEMORY_HANDLER)
    {
      removeEmptyReferences();
      outOfMemoryHandlers.addElement(new WeakReference(paramOutOfMemoryHandler));
    }
  }

  private static void removeEmptyReferences()
  {
    long l = Config.getInstance().getClock().relativeTimeMillis();
    if ((referenceCleanupTime == 0L) || (l - referenceCleanupTime >= REFERENCE_CLEANUP_TIME_OUT_MSEC))
    {
      for (int i = -1 + outOfMemoryHandlers.size(); i >= 0; i--)
        if (((WeakReference)outOfMemoryHandlers.elementAt(i)).get() == null)
          outOfMemoryHandlers.removeElementAt(i);
      referenceCleanupTime = l;
    }
  }

  public static void removeOutOfMemoryHandler(OutOfMemoryHandler paramOutOfMemoryHandler)
  {
    removeEmptyReferences();
    for (int i = 0; ; i++)
      if (i < outOfMemoryHandlers.size())
      {
        if (((WeakReference)outOfMemoryHandlers.elementAt(i)).get() == paramOutOfMemoryHandler)
          outOfMemoryHandlers.removeElementAt(i);
      }
      else
        return;
  }

  public static void savePreferenceAsBoolean(String paramString, boolean paramBoolean)
  {
    savePreferenceAsObject(paramString, new Boolean(paramBoolean));
  }

  public static void savePreferenceAsInt(String paramString, int paramInt)
  {
    savePreferenceAsObject(paramString, new Integer(paramInt));
  }

  public static void savePreferenceAsLong(String paramString, long paramLong)
  {
    savePreferenceAsObject(paramString, new Long(paramLong));
  }

  private static void savePreferenceAsObject(String paramString, Object paramObject)
  {
    PersistentStore localPersistentStore = Config.getInstance().getPersistentStore();
    if (paramObject == null)
    {
      localPersistentStore.setPreference(paramString, null);
      return;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    while (true)
    {
      try
      {
        if ((paramObject instanceof Boolean))
        {
          localDataOutputStream.writeBoolean(((Boolean)paramObject).booleanValue());
          localPersistentStore.setPreference(paramString, localByteArrayOutputStream.toByteArray());
          return;
        }
      }
      catch (IOException localIOException)
      {
        Log.logQuietThrowable("Writing: " + paramString, localIOException);
        return;
      }
      if ((paramObject instanceof String))
      {
        localDataOutputStream.writeUTF((String)paramObject);
      }
      else if ((paramObject instanceof Integer))
      {
        localDataOutputStream.writeInt(((Integer)paramObject).intValue());
      }
      else
      {
        if (!(paramObject instanceof Long))
          break;
        localDataOutputStream.writeLong(((Long)paramObject).longValue());
      }
    }
    throw new IllegalArgumentException("Bad type: " + paramObject.getClass() + " for " + paramString);
  }

  public static void savePreferenceAsString(String paramString1, String paramString2)
  {
    savePreferenceAsObject(paramString1, paramString2);
  }

  public static void savePreferences()
  {
    getPersistentStore().savePreferences();
  }

  public static void setPreference(String paramString, byte[] paramArrayOfByte)
  {
    getPersistentStore().setPreference(paramString, paramArrayOfByte);
  }

  public static void setRegisterOutOfMemoryHandlerForTest(boolean paramBoolean)
  {
  }

  public static void sleep(long paramLong)
  {
    try
    {
      Thread.sleep(paramLong);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.StaticUtil
 * JD-Core Version:    0.6.2
 */