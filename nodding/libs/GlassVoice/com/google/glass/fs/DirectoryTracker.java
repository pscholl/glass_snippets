package com.google.glass.fs;

import android.os.FileObserver;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class DirectoryTracker extends FileObserver
{
  private static final int OBSERVER_MASK = 4032;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Set<String> direntCache;
  private File trackedDir;
  private boolean tracking = false;

  public DirectoryTracker(String paramString)
    throws IOException
  {
    super(paramString, 4032);
    this.trackedDir = new File(paramString);
    if (!this.trackedDir.isDirectory())
      throw new IOException("Path [" + paramString + "] is not a directory!");
    this.direntCache = Collections.newSetFromMap(new ConcurrentHashMap());
    AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
    {
      public void run()
      {
        DirectoryTracker.this.start();
      }
    });
  }

  private void cacheNestedDirents(File paramFile)
  {
    Assert.assertNotUiThread();
    long l1 = System.currentTimeMillis();
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramFile);
    while (localLinkedList.size() > 0)
    {
      File localFile = (File)localLinkedList.removeFirst();
      if (localFile.isDirectory())
        localLinkedList.addAll(Arrays.asList(localFile.listFiles()));
      this.direntCache.add(localFile.getAbsolutePath());
    }
    long l2 = System.currentTimeMillis();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf((l2 - l1) / 1000L);
    arrayOfObject[1] = paramFile.getAbsolutePath();
    localFormattingLogger.i("Took %ds to iterate [%s].", arrayOfObject);
  }

  public boolean contains(String paramString)
  {
    if (!this.tracking)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.trackedDir.getAbsolutePath();
      arrayOfObject[1] = paramString;
      localFormattingLogger.w("Querying stopped instance on [%s] for filename [%s] -- results will be stale!", arrayOfObject);
    }
    return this.direntCache.contains(paramString);
  }

  public boolean isTracking()
  {
    return this.tracking;
  }

  public void onEvent(int paramInt, String paramString)
  {
    Assert.assertNotUiThread();
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = this.trackedDir.getAbsolutePath();
    arrayOfObject1[1] = File.separator;
    arrayOfObject1[2] = paramString;
    String str = String.format("%s%s%s", arrayOfObject1);
    switch (paramInt)
    {
    default:
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(paramInt);
      localFormattingLogger3.e("Unhandled event [%d] -- BUG!", arrayOfObject4);
      return;
    case 128:
    case 256:
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = paramString;
      arrayOfObject3[1] = this.trackedDir.getAbsolutePath();
      localFormattingLogger2.i("File [%s] ADDED to [%s]", arrayOfObject3);
      this.direntCache.add(str);
      return;
    case 64:
    case 512:
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = this.trackedDir.getAbsolutePath();
      localFormattingLogger1.i("File [%s] REMOVED from [%s]", arrayOfObject2);
      this.direntCache.remove(str);
      return;
    case 1024:
      logger.w("Monitored directory [%s] was deleted -- monitoring stopped!", new Object[] { paramString });
      this.tracking = false;
      return;
    case 2048:
    }
    logger.w("Monitored directory [%s] has moved -- file paths will be different!", new Object[] { paramString });
    this.trackedDir = new File(str);
  }

  public boolean start()
  {
    try
    {
      Assert.assertNotUiThread();
      if (this.tracking)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.trackedDir.getAbsolutePath();
        localFormattingLogger.w("Asked to start tracking path [%s], but we've already started.", arrayOfObject);
      }
      for (boolean bool = this.tracking; ; bool = this.tracking)
      {
        return bool;
        this.direntCache.clear();
        startWatching();
        cacheNestedDirents(this.trackedDir);
        this.tracking = true;
      }
    }
    finally
    {
    }
  }

  public void stop()
  {
    try
    {
      if (!this.tracking)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.trackedDir.getAbsolutePath();
        localFormattingLogger.w("Asked to stop tracking path [%s], but we've already stopped.", arrayOfObject);
      }
      stopWatching();
      this.tracking = false;
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.fs.DirectoryTracker
 * JD-Core Version:    0.6.2
 */