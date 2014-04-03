package com.x.google.common.io.android;

import android.util.Log;
import com.x.google.common.io.BasePersistentStore;
import com.x.google.common.io.PersistentStore;
import com.x.google.common.io.PersistentStore.PersistentStoreException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class AndroidFixedPersistentStore extends BasePersistentStore
  implements PersistentStore
{
  private static final int BLOCK_SIZE = 4096;
  private static final String LOGTAG = "Fixed_Persistence_Store";
  private static final String PREFIX = "FIXED_DATA_";
  private File baseFile;

  public AndroidFixedPersistentStore(String paramString)
  {
    this.baseFile = new File(paramString);
    if (!this.baseFile.isDirectory())
      throw new IllegalStateException("Directory " + paramString + " must already exist");
    if (!this.baseFile.canWrite())
      throw new IllegalStateException("Directory " + paramString + " must be writeable");
    if (!this.baseFile.canRead())
      throw new IllegalStateException("Directory " + paramString + " must be readable");
  }

  private File makeFile(String paramString)
  {
    return new File(makeFilename(paramString));
  }

  private String makeFilename(String paramString)
  {
    return getPrefix() + paramString;
  }

  private String unMakeFilename(String paramString)
  {
    if (paramString.startsWith(getPrefix()))
      return paramString.substring(getPrefix().length());
    return null;
  }

  public void deleteAllBlocks(String paramString)
  {
    File[] arrayOfFile = this.baseFile.getAbsoluteFile().listFiles();
    for (int i = 0; i < arrayOfFile.length; i++)
      if ((arrayOfFile[i].getAbsolutePath().startsWith(makeFilename(paramString))) && (!arrayOfFile[i].delete()))
        Log.w("Fixed_Persistence_Store", "Couldn't delete file: " + arrayOfFile[i].getAbsolutePath());
  }

  public boolean deleteBlock(String paramString)
  {
    return makeFile(paramString).delete();
  }

  public void deleteBlockX(String paramString)
    throws PersistentStore.PersistentStoreException
  {
    if (!deleteBlock(paramString))
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
      FileInputStream localFileInputStream = new FileInputStream(makeFile(paramString));
      int i = 4096 * (1 + (-1 + localFileInputStream.available()) / 4096);
      localFileInputStream.close();
      return i;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("Fixed_Persistence_Store", "Couldn't find file:  " + localFileNotFoundException.getMessage());
      return -1;
    }
    catch (IOException localIOException)
    {
      Log.w("Fixed_Persistence_Store", "Couldn't read file:  " + localIOException.getMessage());
    }
    return -1;
  }

  protected String getPrefix()
  {
    return new File(this.baseFile, "FIXED_DATA_").getAbsolutePath();
  }

  public String[] listBlocks(String paramString)
  {
    File[] arrayOfFile = this.baseFile.getAbsoluteFile().listFiles();
    String[] arrayOfString1 = new String[arrayOfFile.length];
    int i = 0;
    int j = 0;
    while (i < arrayOfFile.length)
    {
      if (arrayOfFile[i].getAbsolutePath().startsWith(makeFilename(paramString)))
      {
        String str = unMakeFilename(arrayOfFile[i].getAbsolutePath());
        if (str != null)
        {
          int k = j + 1;
          arrayOfString1[j] = str;
          j = k;
        }
      }
      i++;
    }
    String[] arrayOfString2 = new String[j];
    System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, j);
    return arrayOfString2;
  }

  public byte[] readBlock(String paramString)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(makeFile(paramString));
      int i = localFileInputStream.available();
      byte[] arrayOfByte = new byte[i];
      if (localFileInputStream.read(arrayOfByte, 0, i) < i)
        Log.w("Fixed_Persistence_Store", "Didn't read full file:  " + paramString);
      localFileInputStream.close();
      return arrayOfByte;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("Fixed_Persistence_Store", "Couldn't find file:  " + localFileNotFoundException.getMessage());
      return null;
    }
    catch (IOException localIOException)
    {
      Log.w("Fixed_Persistence_Store", "Couldn't read file:  " + localIOException.getMessage());
    }
    return null;
  }

  public int writeBlock(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(makeFile(paramString));
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      int i = (-1 + paramArrayOfByte.length) / 4096;
      return 4096 * (i + 1);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("Fixed_Persistence_Store", "Couldn't write block:  " + localFileNotFoundException.getMessage());
      return -1;
    }
    catch (IOException localIOException)
    {
      Log.w("Fixed_Persistence_Store", "Couldn't write block:  " + localIOException.getMessage());
    }
    return -1;
  }

  public int writeBlockX(byte[] paramArrayOfByte, String paramString)
    throws PersistentStore.PersistentStoreException
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(makeFile(paramString));
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
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.android.AndroidFixedPersistentStore
 * JD-Core Version:    0.6.2
 */