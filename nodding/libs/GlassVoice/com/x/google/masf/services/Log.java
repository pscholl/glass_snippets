package com.x.google.masf.services;

import com.x.google.common.Config;
import com.x.google.common.io.PersistentStore;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Hashtable;
import java.util.Vector;

public class Log
{
  public static final short AD_EVENT_BUBBLE_VIEWED = 33;
  public static final short AD_EVENT_DETAIS_VIEWED = 34;
  public static final short AD_EVENT_DIRECTION_REQUEST = 31;
  public static final short AD_EVENT_PHONE_CALL = 30;
  public static final short AD_EVENT_WEBSITE_CLICK = 32;
  private static final int AVERAGE_ENTRY_CHARS = 40;
  private static final String EVENT_LOG_PREFERENCE = "EVENT_LOG";
  public static final int EVENT_LOG_REQUEST_TYPE = 10;
  public static final short EVENT_TYPE_BUBBLE_VIEW = 18;
  public static final short EVENT_TYPE_CLICK_TO_CALL = 1;
  public static final short EVENT_TYPE_DIRECTIONS = 4;
  public static final short EVENT_TYPE_HELP_VIEW = 6;
  public static final short EVENT_TYPE_HISTORY_SELECT = 17;
  public static final short EVENT_TYPE_MENU_EVENT = 16;
  public static final short EVENT_TYPE_MOVE_MAP = 3;
  public static final short EVENT_TYPE_SCREENSTATE_POP = 21;
  public static final short EVENT_TYPE_SCREENSTATE_PUSH = 20;
  public static final short EVENT_TYPE_SEARCH = 2;
  public static final short EVENT_TYPE_SEARCH_DETAILS = 5;
  public static final short EVENT_TYPE_SEND_SMS = 7;
  public static final short EVENT_TYPE_WIZARD_ENTER_STATE = 19;
  private static final long FLUSH_WAIT_TIME = 2000L;
  private static final int MAX_ENTRIES = 151;
  private static final int MAX_EVENT_LOG_LENGTH = 600;
  private static final int MAX_EXCEPTION_LENGTH = 300;
  public static final String SOURCE_ENGINE = "ENGINE";
  public static final String SOURCE_FLASH = "FLASH";
  public static final String SOURCE_GPS = "GPS";
  public static final String SOURCE_MAP = "MAP";
  public static final String SOURCE_MEMORY = "MEMORY";
  public static final String SOURCE_MENU = "MENU";
  public static final String SOURCE_REQUEST = "REQUEST";
  public static final String SOURCE_STATS = "STATS";
  public static final String SOURCE_UI = "UI";
  public static final String SOURCE_UNKNOWN = "UNKNOWN";
  private static final int TARGET_ENTRIES = 50;
  private static boolean immediateFlush;
  private static long lastEventTimeMillis = 0L;
  private static final StringBuffer lastExceptionString;
  private static final LogRecord[] logEntries;
  private static int logEntryCount;
  private static int logEntryFirst;
  private static int logEntryNext;
  private static final Hashtable timers;
  static Object uploadCompleteLock;
  private static int uploadEntries;

  static
  {
    int i = 0;
    uploadEntries = 20;
    logEntries = new LogRecord[''];
    logEntryFirst = 0;
    logEntryNext = 0;
    logEntryCount = 0;
    uploadCompleteLock = new Object();
    timers = new Hashtable();
    while (i < 151)
    {
      logEntries[i] = new LogRecord();
      i++;
    }
    lastExceptionString = new StringBuffer(300);
  }

  public static boolean addEvent(short paramShort, String paramString1, String paramString2)
  {
    long l = System.currentTimeMillis();
    PersistentStore localPersistentStore = getPersistentStore();
    byte[] arrayOfByte = localPersistentStore.readPreference("EVENT_LOG");
    if (arrayOfByte == null)
    {
      resetEventLog(l);
      arrayOfByte = localPersistentStore.readPreference("EVENT_LOG");
      if (arrayOfByte.length <= 2)
        break label209;
    }
    label209: for (int i = (short)((0xFF & arrayOfByte[0]) << 8 | 0xFF & arrayOfByte[1]); ; i = 0)
      while (true)
      {
        int j = (short)(i + 1);
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
        try
        {
          localDataOutputStream.writeShort(j);
          localDataOutputStream.write(arrayOfByte, 2, -2 + arrayOfByte.length);
          localDataOutputStream.writeShort(paramShort);
          localDataOutputStream.writeShort((int)Math.min((l - lastEventTimeMillis) / 100L, 65535L));
          localDataOutputStream.writeUTF(paramString1);
          localDataOutputStream.writeUTF(paramString2);
          getPersistentStore().setPreference("EVENT_LOG", localByteArrayOutputStream.toByteArray());
          lastEventTimeMillis = l;
          return true;
          if (arrayOfByte.length <= 600)
            break;
          uploadEventLog();
          arrayOfByte = localPersistentStore.readPreference("EVENT_LOG");
        }
        catch (IOException localIOException)
        {
          return false;
        }
      }
  }

  public static void addExceptionString(String paramString)
  {
    if (paramString == null)
      return;
    while (true)
    {
      int j;
      synchronized (lastExceptionString)
      {
        int i = lastExceptionString.length();
        j = 300 - (1 + paramString.length());
        k = 0;
        if (j < 0)
        {
          if (i > k)
            lastExceptionString.setLength(k);
          lastExceptionString.insert(0, '\n').insert(0, paramString);
          return;
        }
      }
      int k = j;
    }
  }

  private static void addLogEntry(String paramString1, String paramString2)
  {
    if (logEntryCount == 150)
      throw new IllegalStateException("No room for log entry in buffer");
    LogRecord localLogRecord = logEntries[logEntryNext];
    localLogRecord.timestamp = System.currentTimeMillis();
    localLogRecord.source = paramString1;
    localLogRecord.description = paramString2;
    logEntryCount = 1 + logEntryCount;
    logEntryNext = 1 + logEntryNext;
    if (logEntryNext >= 151)
      logEntryNext = 0;
  }

  public static void clear()
  {
    synchronized (logEntries)
    {
      clearLogEntries();
      return;
    }
  }

  private static void clearLogEntries()
  {
    int i = 0;
    logEntryFirst = 0;
    logEntryNext = 0;
    logEntryCount = 0;
    while (i < logEntries.length)
    {
      LogRecord localLogRecord = logEntries[i];
      localLogRecord.timestamp = 0L;
      localLogRecord.source = null;
      localLogRecord.description = null;
      i++;
    }
  }

  public static long endTimer(String paramString)
  {
    Long localLong = (Long)timers.remove(paramString);
    if (localLong == null)
    {
      log("ERROR: no matching timer: " + paramString);
      return -1L;
    }
    return System.currentTimeMillis() - localLong.longValue();
  }

  public static long endTimerAndLog(String paramString1, String paramString2)
  {
    return endTimerAndLogConditionally(paramString1, paramString2, -1L);
  }

  public static long endTimerAndLogConditionally(String paramString1, String paramString2, long paramLong)
  {
    long l = endTimer(paramString2);
    if (l > paramLong)
      log(paramString1, "(timer) " + paramString2 + " " + l);
    return l;
  }

  public static void flush()
  {
  }

  public static void flushAndWait()
  {
  }

  public static String getLastExceptionString()
  {
    synchronized (lastExceptionString)
    {
      String str = lastExceptionString.toString();
      lastExceptionString.setLength(0);
      return str;
    }
  }

  public static String getLog()
  {
    return getLog(2147483647);
  }

  public static String getLog(int paramInt)
  {
    while (true)
    {
      int i;
      int j;
      synchronized (logEntries)
      {
        i = Math.min(151, paramInt);
        StringBuffer localStringBuffer = new StringBuffer(i * 40);
        j = logEntryFirst + (151 - i);
        break label84;
        logEntries[j].appendToBuffer(localStringBuffer).append('\n');
        j++;
        i = k;
        break label84;
        String str = localStringBuffer.toString();
        return str;
      }
      label84: int k = i - 1;
      if (i > 0)
        if (j >= 151)
          j = 0;
    }
  }

  public static Vector getLogEntries()
  {
    Vector localVector = new Vector();
    int i = logEntryFirst;
    for (int j = 0; j < logEntryCount; j++)
    {
      localVector.addElement(logEntries[i].toString());
      i++;
      if (i >= 151)
        i = 0;
    }
    return localVector;
  }

  private static PersistentStore getPersistentStore()
  {
    return Config.getInstance().getPersistentStore();
  }

  public static void log(String paramString)
  {
    log("UNKNOWN", paramString);
  }

  public static void log(String paramString1, String paramString2)
  {
    try
    {
      synchronized (logEntries)
      {
        addLogEntry(paramString1, paramString2);
        if (logEntryCount >= 151)
          truncateLog(50);
        return;
      }
    }
    catch (OutOfMemoryError localOutOfMemoryError1)
    {
      try
      {
        System.err.println("Out of memory during logging!");
        return;
      }
      catch (OutOfMemoryError localOutOfMemoryError2)
      {
      }
    }
  }

  public static void logException(String paramString, Exception paramException)
  {
    addExceptionString(paramString + ": " + paramException.toString());
    logQuietException(paramString, paramException);
  }

  public static void logQuietException(String paramString, Exception paramException)
  {
    log(paramString, "ERROR " + paramException.toString());
    paramException.printStackTrace();
    sendException(paramString, paramException);
  }

  public static void print()
  {
    while (true)
    {
      int j;
      synchronized (logEntries)
      {
        int i = logEntryFirst;
        j = 0;
        if (j < logEntryCount)
        {
          System.err.println(logEntries[i]);
          i++;
          if (i >= 151)
            i = 0;
        }
        else
        {
          return;
        }
      }
      j++;
    }
  }

  // ERROR //
  private static void resetEventLog(long paramLong)
  {
    // Byte code:
    //   0: new 167	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 168	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: new 170	java/io/DataOutputStream
    //   11: dup
    //   12: aload_2
    //   13: invokespecial 173	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_3
    //   17: aload_3
    //   18: iconst_0
    //   19: invokevirtual 176	java/io/DataOutputStream:writeShort	(I)V
    //   22: aload_3
    //   23: lload_0
    //   24: invokevirtual 370	java/io/DataOutputStream:writeLong	(J)V
    //   27: lload_0
    //   28: putstatic 141	com/x/google/masf/services/Log:lastEventTimeMillis	J
    //   31: invokestatic 155	com/x/google/masf/services/Log:getPersistentStore	()Lcom/x/google/common/io/PersistentStore;
    //   34: ldc 22
    //   36: aload_2
    //   37: invokevirtual 198	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   40: invokeinterface 202 3 0
    //   45: pop
    //   46: return
    //   47: astore 6
    //   49: invokestatic 155	com/x/google/masf/services/Log:getPersistentStore	()Lcom/x/google/common/io/PersistentStore;
    //   52: ldc 22
    //   54: aload_2
    //   55: invokevirtual 198	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   58: invokeinterface 202 3 0
    //   63: pop
    //   64: return
    //   65: astore 4
    //   67: invokestatic 155	com/x/google/masf/services/Log:getPersistentStore	()Lcom/x/google/common/io/PersistentStore;
    //   70: ldc 22
    //   72: aload_2
    //   73: invokevirtual 198	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   76: invokeinterface 202 3 0
    //   81: pop
    //   82: aload 4
    //   84: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   17	31	47	java/io/IOException
    //   17	31	65	finally
  }

  private static void sendException(String paramString, Exception paramException)
  {
  }

  public static void setImmediateFlush(boolean paramBoolean)
  {
    immediateFlush = paramBoolean;
  }

  public static void setUploadEntries(int paramInt)
  {
    uploadEntries = paramInt;
  }

  public static void startTimer(String paramString)
  {
    Long localLong = new Long(System.currentTimeMillis());
    timers.put(paramString, localLong);
  }

  private static LogRecord takeLogEntry()
  {
    if (logEntryCount == 0)
      throw new IllegalStateException("No log entries in buffer");
    LogRecord localLogRecord = logEntries[logEntryFirst];
    logEntryCount = -1 + logEntryCount;
    logEntryFirst = 1 + logEntryFirst;
    if (logEntryFirst >= 151)
      logEntryFirst = 0;
    return localLogRecord;
  }

  private static void truncateLog(int paramInt)
  {
    while (logEntryCount > paramInt)
    {
      LogRecord localLogRecord = takeLogEntry();
      localLogRecord.source = null;
      localLogRecord.description = null;
    }
  }

  public static void uploadEventLog()
  {
  }

  private static class LogRecord
  {
    String description;
    String source;
    long timestamp;

    StringBuffer appendToBuffer(StringBuffer paramStringBuffer)
    {
      paramStringBuffer.append(this.timestamp);
      paramStringBuffer.append(' ');
      paramStringBuffer.append(this.source);
      paramStringBuffer.append(' ');
      paramStringBuffer.append(this.description);
      return paramStringBuffer;
    }

    public String toString()
    {
      return this.timestamp + " " + this.source + " " + this.description;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.Log
 * JD-Core Version:    0.6.2
 */