package com.google.glass.util;

import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.ProtoParser;
import com.google.glass.predicates.Assert;
import com.google.protobuf.nano.MessageNano;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ProtoListFile<T extends MessageNano>
{
  private static final long TIME_BETWEEN_SAVES_MS = TimeUnit.MINUTES.toMillis(1L);
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final ScheduledExecutorService executor;
  private final ProtoParser<T> parser;
  private final String path;
  private List<T> saveQueue = new ArrayList();

  public ProtoListFile(Context paramContext, String paramString, ScheduledExecutorService paramScheduledExecutorService, ProtoParser<T> paramProtoParser)
  {
    this.context = paramContext;
    this.path = paramString;
    this.executor = paramScheduledExecutorService;
    this.parser = paramProtoParser;
  }

  private T readProto(DataInputStream paramDataInputStream)
    throws IOException
  {
    int i = paramDataInputStream.readInt();
    byte[] arrayOfByte = new byte[i];
    paramDataInputStream.readFully(arrayOfByte, 0, i);
    return this.parser.parse(arrayOfByte);
  }

  private void writeProto(T paramT, DataOutputStream paramDataOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = MessageNano.toByteArray(paramT);
    paramDataOutputStream.writeInt(arrayOfByte.length);
    paramDataOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
  }

  public void delete()
  {
    Assert.assertNotUiThread();
    this.context.deleteFile(this.path);
    this.saveQueue.clear();
  }

  public void flushWrites()
  {
    Assert.assertNotUiThread();
    if (!this.saveQueue.isEmpty())
    {
      FileOutputStream localFileOutputStream = null;
      try
      {
        localFileOutputStream = this.context.openFileOutput(this.path, 32768);
        DataOutputStream localDataOutputStream = new DataOutputStream(new BufferedOutputStream(localFileOutputStream));
        int i = 0;
        int j = this.saveQueue.size();
        while (i < j)
        {
          writeProto((MessageNano)this.saveQueue.get(i), localDataOutputStream);
          i++;
        }
        localDataOutputStream.flush();
        logger.i("Saved " + this.saveQueue.size() + " proto(s) to disk.", new Object[0]);
        this.saveQueue.clear();
        if (localFileOutputStream != null);
        try
        {
          localFileOutputStream.close();
          return;
        }
        catch (IOException localIOException4)
        {
          logger.w("Could not close protos file after write.", new Object[] { localIOException4 });
          return;
        }
      }
      catch (IOException localIOException2)
      {
        do
        {
          logger.w("Could not write protos.", new Object[] { localIOException2 });
          this.saveQueue.clear();
        }
        while (localFileOutputStream == null);
        try
        {
          localFileOutputStream.close();
          return;
        }
        catch (IOException localIOException3)
        {
          logger.w("Could not close protos file after write.", new Object[] { localIOException3 });
          return;
        }
      }
      finally
      {
        this.saveQueue.clear();
        if (localFileOutputStream == null);
      }
      try
      {
        localFileOutputStream.close();
        throw localObject;
      }
      catch (IOException localIOException1)
      {
        while (true)
          logger.w("Could not close protos file after write.", new Object[] { localIOException1 });
      }
    }
    logger.i("No protos to save to disk.", new Object[0]);
  }

  public long flushedSize()
  {
    Assert.assertNotUiThread();
    return this.context.getFileStreamPath(this.path).length();
  }

  public List<T> read()
  {
    Assert.assertNotUiThread();
    FileInputStream localFileInputStream = null;
    try
    {
      localFileInputStream = this.context.openFileInput(this.path);
      DataInputStream localDataInputStream = new DataInputStream(new BufferedInputStream(localFileInputStream));
      localArrayList = new ArrayList();
      int i = 1;
      while (i != 0)
        try
        {
          localArrayList.add(readProto(localDataInputStream));
        }
        catch (EOFException localEOFException)
        {
          i = 0;
        }
      logger.i("Read " + localArrayList.size() + " persisted protos.", new Object[0]);
      if (localArrayList.isEmpty())
        this.context.deleteFile(this.path);
      localArrayList.addAll(this.saveQueue);
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        return localArrayList;
      }
      catch (IOException localIOException4)
      {
        logger.w("Could not close file after read.", new Object[] { localIOException4 });
        return localArrayList;
      }
    }
    catch (IOException localIOException2)
    {
      ArrayList localArrayList;
      do
      {
        logger.d("Could not read protos from disk.", new Object[] { localIOException2 });
        this.context.deleteFile(this.path);
        localArrayList = new ArrayList(this.saveQueue);
      }
      while (localFileInputStream == null);
      try
      {
        localFileInputStream.close();
        return localArrayList;
      }
      catch (IOException localIOException3)
      {
        logger.w("Could not close file after read.", new Object[] { localIOException3 });
        return localArrayList;
      }
    }
    finally
    {
      if (localFileInputStream == null);
    }
    try
    {
      localFileInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        logger.w("Could not close file after read.", new Object[] { localIOException1 });
    }
  }

  public void write(T paramT)
  {
    Assert.assertNotUiThread();
    if (this.saveQueue.isEmpty())
      this.executor.schedule(new Runnable()
      {
        public void run()
        {
          ProtoListFile.this.flushWrites();
        }
      }
      , TIME_BETWEEN_SAVES_MS, TimeUnit.MILLISECONDS);
    this.saveQueue.add(paramT);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ProtoListFile
 * JD-Core Version:    0.6.2
 */