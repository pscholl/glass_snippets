package com.x.google.common.io.android;

import android.content.Context;
import com.x.google.common.io.BasePersistentStore;
import com.x.google.common.io.PersistentStore;
import com.x.google.common.io.PersistentStore.PersistentStoreException;
import com.x.google.common.io.ProcessLock;
import com.x.google.common.io.ProcessLockProvider;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLock;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class AndroidPersistentStore extends BasePersistentStore
  implements PersistentStore, ProcessLockProvider
{
  private static final int BLOCK_SIZE = 4096;
  private static final String PREFIX = "DATA_";
  private Context context;
  private final Set<String> fileLockNames = Collections.synchronizedSet(new HashSet());

  public AndroidPersistentStore(Context paramContext)
  {
    this.context = paramContext;
  }

  private static boolean closeFileOutputStreamSilently(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null);
    try
    {
      paramFileOutputStream.close();
      return true;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  private static String makeFilename(String paramString)
  {
    return "DATA_" + paramString;
  }

  private static String unMakeFilename(String paramString)
  {
    if (paramString.startsWith("DATA_"))
      return paramString.substring(5);
    return null;
  }

  public void deleteAllBlocks(String paramString)
  {
    if (this.context == null);
    String[] arrayOfString;
    do
    {
      return;
      arrayOfString = this.context.fileList();
    }
    while (arrayOfString == null);
    int i = 0;
    label22: if (i < arrayOfString.length)
      if (arrayOfString[i] != null)
        break label40;
    while (true)
    {
      i++;
      break label22;
      break;
      label40: if ((!arrayOfString[i].startsWith(makeFilename(paramString))) || (this.context.deleteFile(arrayOfString[i])));
    }
  }

  public boolean deleteBlock(String paramString)
  {
    return this.context.deleteFile(makeFilename(paramString));
  }

  public void deleteBlockX(String paramString)
    throws PersistentStore.PersistentStoreException
  {
    if (!this.context.deleteFile(makeFilename(paramString)))
      throw new PersistentStore.PersistentStoreException("Delete failed.", -1);
  }

  public int getBlockSize(String paramString)
  {
    return getDataSize(paramString);
  }

  public int getDataSize(String paramString)
  {
    try
    {
      FileInputStream localFileInputStream = this.context.openFileInput(makeFilename(paramString));
      int i = 4096 * (1 + (-1 + localFileInputStream.available()) / 4096);
      localFileInputStream.close();
      return i;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      return -1;
    }
    catch (IOException localIOException)
    {
    }
    return -1;
  }

  public String[] listBlocks(String paramString)
  {
    String[] arrayOfString1 = this.context.fileList();
    String[] arrayOfString2 = new String[arrayOfString1.length];
    int i = 0;
    int j = 0;
    while (i < arrayOfString1.length)
    {
      String str = unMakeFilename(arrayOfString1[i]);
      if ((str != null) && (str.startsWith(paramString)))
      {
        int k = j + 1;
        arrayOfString2[j] = str;
        j = k;
      }
      i++;
    }
    String[] arrayOfString3 = new String[j];
    System.arraycopy(arrayOfString2, 0, arrayOfString3, 0, j);
    return arrayOfString3;
  }

  // ERROR //
  public ProcessLock lock(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 86	com/x/google/common/io/android/AndroidPersistentStore:makeFilename	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 36	com/x/google/common/io/android/AndroidPersistentStore:fileLockNames	Ljava/util/Set;
    //   9: astore_3
    //   10: aload_3
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 36	com/x/google/common/io/android/AndroidPersistentStore:fileLockNames	Ljava/util/Set;
    //   16: aload_2
    //   17: invokeinterface 138 2 0
    //   22: ifeq +7 -> 29
    //   25: aload_3
    //   26: monitorexit
    //   27: aconst_null
    //   28: areturn
    //   29: aload_0
    //   30: getfield 38	com/x/google/common/io/android/AndroidPersistentStore:context	Landroid/content/Context;
    //   33: aload_2
    //   34: iconst_0
    //   35: invokevirtual 142	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   38: astore 11
    //   40: aload 11
    //   42: astore 6
    //   44: new 144	com/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock
    //   47: dup
    //   48: aload_0
    //   49: aload 6
    //   51: aload 6
    //   53: invokevirtual 148	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   56: invokevirtual 153	java/nio/channels/FileChannel:lock	()Ljava/nio/channels/FileLock;
    //   59: aload_2
    //   60: invokespecial 156	com/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock:<init>	(Lcom/x/google/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    //   63: astore 12
    //   65: aload_3
    //   66: monitorexit
    //   67: aload 12
    //   69: areturn
    //   70: aload 6
    //   72: invokestatic 45	com/x/google/common/io/android/AndroidPersistentStore:closeFileOutputStreamSilently	(Ljava/io/FileOutputStream;)Z
    //   75: pop
    //   76: aload_3
    //   77: monitorexit
    //   78: aconst_null
    //   79: areturn
    //   80: astore 4
    //   82: aload_3
    //   83: monitorexit
    //   84: aload 4
    //   86: athrow
    //   87: astore 8
    //   89: aconst_null
    //   90: astore 6
    //   92: goto -22 -> 70
    //   95: astore 15
    //   97: goto -27 -> 70
    //   100: astore 5
    //   102: aconst_null
    //   103: astore 6
    //   105: goto -35 -> 70
    //   108: astore 14
    //   110: goto -40 -> 70
    //   113: astore 13
    //   115: aload 6
    //   117: astore 10
    //   119: goto +8 -> 127
    //   122: astore 9
    //   124: aconst_null
    //   125: astore 10
    //   127: aload 10
    //   129: astore 6
    //   131: goto -61 -> 70
    //
    // Exception table:
    //   from	to	target	type
    //   12	27	80	finally
    //   29	40	80	finally
    //   44	65	80	finally
    //   65	67	80	finally
    //   70	78	80	finally
    //   82	84	80	finally
    //   29	40	87	java/nio/channels/OverlappingFileLockException
    //   44	65	95	java/nio/channels/OverlappingFileLockException
    //   29	40	100	java/nio/channels/NonWritableChannelException
    //   44	65	108	java/nio/channels/NonWritableChannelException
    //   44	65	113	java/io/IOException
    //   29	40	122	java/io/IOException
  }

  public byte[] readBlock(String paramString)
  {
    try
    {
      FileInputStream localFileInputStream = this.context.openFileInput(makeFilename(paramString));
      int i = localFileInputStream.available();
      byte[] arrayOfByte = new byte[i];
      if (localFileInputStream.read(arrayOfByte, 0, i) < i);
      localFileInputStream.close();
      return arrayOfByte;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      return null;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  // ERROR //
  public ProcessLock tryLock(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 86	com/x/google/common/io/android/AndroidPersistentStore:makeFilename	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 36	com/x/google/common/io/android/AndroidPersistentStore:fileLockNames	Ljava/util/Set;
    //   9: astore_3
    //   10: aload_3
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 36	com/x/google/common/io/android/AndroidPersistentStore:fileLockNames	Ljava/util/Set;
    //   16: aload_2
    //   17: invokeinterface 138 2 0
    //   22: ifeq +7 -> 29
    //   25: aload_3
    //   26: monitorexit
    //   27: aconst_null
    //   28: areturn
    //   29: aload_0
    //   30: getfield 38	com/x/google/common/io/android/AndroidPersistentStore:context	Landroid/content/Context;
    //   33: aload_2
    //   34: iconst_0
    //   35: invokevirtual 142	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   38: astore 10
    //   40: aload 10
    //   42: astore 6
    //   44: aload 6
    //   46: invokevirtual 148	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   49: invokevirtual 165	java/nio/channels/FileChannel:tryLock	()Ljava/nio/channels/FileLock;
    //   52: astore 13
    //   54: aload 13
    //   56: ifnull +23 -> 79
    //   59: new 144	com/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock
    //   62: dup
    //   63: aload_0
    //   64: aload 6
    //   66: aload 13
    //   68: aload_2
    //   69: invokespecial 156	com/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock:<init>	(Lcom/x/google/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    //   72: astore 14
    //   74: aload_3
    //   75: monitorexit
    //   76: aload 14
    //   78: areturn
    //   79: aload 6
    //   81: invokestatic 45	com/x/google/common/io/android/AndroidPersistentStore:closeFileOutputStreamSilently	(Ljava/io/FileOutputStream;)Z
    //   84: pop
    //   85: aload_3
    //   86: monitorexit
    //   87: aconst_null
    //   88: areturn
    //   89: astore 4
    //   91: aload_3
    //   92: monitorexit
    //   93: aload 4
    //   95: athrow
    //   96: astore 5
    //   98: aconst_null
    //   99: astore 6
    //   101: goto -22 -> 79
    //   104: astore 12
    //   106: goto -27 -> 79
    //   109: astore 11
    //   111: aload 6
    //   113: astore 9
    //   115: goto +8 -> 123
    //   118: astore 8
    //   120: aconst_null
    //   121: astore 9
    //   123: aload 9
    //   125: astore 6
    //   127: goto -48 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   12	27	89	finally
    //   29	40	89	finally
    //   44	54	89	finally
    //   59	74	89	finally
    //   74	76	89	finally
    //   79	87	89	finally
    //   91	93	89	finally
    //   29	40	96	java/nio/channels/OverlappingFileLockException
    //   44	54	104	java/nio/channels/OverlappingFileLockException
    //   59	74	104	java/nio/channels/OverlappingFileLockException
    //   44	54	109	java/io/IOException
    //   59	74	109	java/io/IOException
    //   29	40	118	java/io/IOException
  }

  public int writeBlock(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      int i = writeBlockX(paramArrayOfByte, paramString);
      return i;
    }
    catch (PersistentStore.PersistentStoreException localPersistentStoreException)
    {
      return localPersistentStoreException.getType();
    }
  }

  public int writeBlockX(byte[] paramArrayOfByte, String paramString)
    throws PersistentStore.PersistentStoreException
  {
    if (paramArrayOfByte == null);
    try
    {
      paramArrayOfByte = new byte[0];
      FileOutputStream localFileOutputStream = this.context.openFileOutput(makeFilename(paramString), 0);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      int i = (-1 + paramArrayOfByte.length) / 4096;
      return 4096 * (i + 1);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new PersistentStore.PersistentStoreException(localFileNotFoundException.getMessage(), -1);
    }
    catch (IOException localIOException)
    {
      throw new PersistentStore.PersistentStoreException(localIOException.getMessage(), -1);
    }
  }

  private class AndroidFileLock
    implements ProcessLock
  {
    private String fileName;
    private FileOutputStream fos = null;
    private FileLock lock = null;

    public AndroidFileLock(FileOutputStream paramFileLock, FileLock paramString, String arg4)
    {
      this.fos = paramFileLock;
      this.lock = paramString;
      Object localObject;
      this.fileName = localObject;
      AndroidPersistentStore.this.fileLockNames.add(localObject);
    }

    public boolean releaseLock()
    {
      AndroidPersistentStore.this.fileLockNames.remove(this.fileName);
      try
      {
        if (this.lock != null)
          this.lock.release();
        return AndroidPersistentStore.closeFileOutputStreamSilently(this.fos);
      }
      catch (IOException localIOException)
      {
        return false;
      }
      catch (ClosedChannelException localClosedChannelException)
      {
      }
      return false;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.AndroidPersistentStore
 * JD-Core Version:    0.6.2
 */