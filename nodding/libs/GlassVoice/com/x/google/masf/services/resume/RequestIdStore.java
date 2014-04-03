package com.x.google.masf.services.resume;

import com.x.google.common.io.IoUtil;
import com.x.google.common.io.PersistentStore;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Hashtable;

public class RequestIdStore
{
  public static final String KEY_RESUMABLE_IDS = "MasfResumableIds";
  private static final long MAX_ID_LIFE_SPAN_MS = 691200000L;
  private static final int MAX_NUMBER_OF_ID_PAIRS = 64;
  private String[] clientIdsArray;
  private Hashtable clientIdsMap;
  private PersistentStore store;

  public RequestIdStore(PersistentStore paramPersistentStore)
  {
    this.store = paramPersistentStore;
    this.clientIdsArray = new String[64];
    this.clientIdsMap = new Hashtable();
    loadFromStore();
  }

  private long getTimeStamp(String paramString)
  {
    if (this.clientIdsMap.containsKey(paramString))
      return ((ClientIdInfo)this.clientIdsMap.get(paramString)).getTimestamp();
    return -1L;
  }

  private void loadFromStore()
  {
    byte[] arrayOfByte = this.store.readPreference("MasfResumableIds");
    if (arrayOfByte == null)
      return;
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(arrayOfByte);
    DataInputStream localDataInputStream = new DataInputStream(localByteArrayInputStream);
    long l1 = System.currentTimeMillis();
    try
    {
      int i = localDataInputStream.readInt();
      for (int j = 0; ; j++)
      {
        String str1;
        String str2;
        long l2;
        if (j < i)
        {
          str1 = localDataInputStream.readUTF();
          str2 = localDataInputStream.readUTF();
          l2 = localDataInputStream.readLong();
          if (691200000L + l2 >= l1);
        }
        else
        {
          return;
        }
        this.clientIdsMap.put(str1, new ClientIdInfo(str2, l2));
        this.clientIdsArray[j] = str1;
      }
    }
    catch (IOException localIOException)
    {
      this.clientIdsMap.clear();
      this.clientIdsArray = new String[64];
      return;
    }
    finally
    {
      IoUtil.closeInputStream(localDataInputStream);
      IoUtil.closeInputStream(localByteArrayInputStream);
    }
  }

  private void removeClientIdNoSave(String paramString)
  {
    for (int i = 0; ; i++)
      if (i < this.clientIdsMap.size())
      {
        if (this.clientIdsArray[i].equals(paramString))
        {
          System.arraycopy(this.clientIdsArray, i + 1, this.clientIdsArray, i, -1 + (this.clientIdsMap.size() - i));
          this.clientIdsMap.remove(paramString);
        }
      }
      else
        return;
  }

  private void removeExpiredIdsNoSave()
  {
    long l = System.currentTimeMillis();
    for (int i = -1 + this.clientIdsMap.size(); (i >= 0) && (691200000L + getTimeStamp(this.clientIdsArray[i]) < l); i--)
    {
      this.clientIdsMap.remove(this.clientIdsArray[i]);
      this.clientIdsArray[i] = null;
    }
  }

  private void saveToStore()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    try
    {
      removeExpiredIdsNoSave();
      localDataOutputStream.writeInt(this.clientIdsMap.size());
      for (int i = 0; i < this.clientIdsMap.size(); i++)
      {
        localDataOutputStream.writeUTF(this.clientIdsArray[i]);
        localDataOutputStream.writeUTF(getServerId(this.clientIdsArray[i]));
        localDataOutputStream.writeLong(getTimeStamp(this.clientIdsArray[i]));
      }
      this.store.setPreference("MasfResumableIds", localByteArrayOutputStream.toByteArray());
      this.store.savePreferences();
      return;
    }
    catch (IOException localIOException)
    {
    }
    finally
    {
      IoUtil.closeOutputStream(localDataOutputStream);
      IoUtil.closeOutputStream(localByteArrayOutputStream);
    }
  }

  public String[] getClientIds()
  {
    String[] arrayOfString = new String[this.clientIdsMap.size()];
    System.arraycopy(this.clientIdsArray, 0, arrayOfString, 0, arrayOfString.length);
    return arrayOfString;
  }

  public String getServerId(String paramString)
  {
    if (this.clientIdsMap.containsKey(paramString))
      return ((ClientIdInfo)this.clientIdsMap.get(paramString)).getServerId();
    return null;
  }

  public void removeClientId(String paramString)
  {
    removeClientIdNoSave(paramString);
    saveToStore();
  }

  public void setServerId(String paramString1, String paramString2)
  {
    if (this.clientIdsMap.contains(paramString1))
      removeClientIdNoSave(paramString1);
    while (true)
    {
      System.arraycopy(this.clientIdsArray, 0, this.clientIdsArray, 1, this.clientIdsMap.size());
      this.clientIdsArray[0] = paramString1;
      this.clientIdsMap.put(paramString1, new ClientIdInfo(paramString2, System.currentTimeMillis()));
      saveToStore();
      return;
      if (this.clientIdsMap.size() == 64)
      {
        this.clientIdsMap.remove(this.clientIdsArray[63]);
        this.clientIdsArray[63] = null;
      }
    }
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("RequestIdStore[");
    String[] arrayOfString = getClientIds();
    for (int i = 0; i < arrayOfString.length; i++)
    {
      localStringBuffer.append("<'" + arrayOfString[i]);
      localStringBuffer.append("', '" + getServerId(arrayOfString[i]));
      localStringBuffer.append("', " + getTimeStamp(arrayOfString[i]) + ">");
    }
    localStringBuffer.append("]");
    return localStringBuffer.toString();
  }

  private static class ClientIdInfo
  {
    private String serverId;
    private long timestamp;

    public ClientIdInfo(String paramString, long paramLong)
    {
      this.serverId = paramString;
      this.timestamp = paramLong;
    }

    public String getServerId()
    {
      return this.serverId;
    }

    public long getTimestamp()
    {
      return this.timestamp;
    }

    public void setServerId(String paramString)
    {
      this.serverId = paramString;
    }

    public void setTimestamp(long paramLong)
    {
      this.timestamp = paramLong;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.RequestIdStore
 * JD-Core Version:    0.6.2
 */