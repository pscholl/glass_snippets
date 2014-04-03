package com.x.google.common.task;

import com.x.google.common.Clock;
import com.x.google.common.Config;
import com.x.google.common.lang.ThreadFactory;
import com.x.google.debug.LogSource;
import java.util.Hashtable;
import java.util.Vector;

public class TaskRunner
  implements Runnable
{
  public static final int DEFAULT_PRIORITY = 127;
  private static final int DEFAULT_WORKER_COUNT = 1;
  private static final String DEFAULT_WORKER_NAME = "TaskRunner";
  public static final int MAX_PRIORITY = 255;
  public static final int MIN_PRIORITY;
  protected final Clock clock;
  private int defaultPriority = 127;
  protected ThreadFactory factory;
  private final LogSource logger;
  private int maxPriority = 255;
  private int minPriority = 0;
  protected Object mutex = new Object();
  protected String name;
  protected Vector priorityTaskQueue = new Vector();
  protected boolean running = false;
  private final Hashtable runningTaskMap;
  private final Hashtable taskMap;
  protected Vector timerTaskQueue = new Vector();
  protected Thread[] workers;

  public TaskRunner(ThreadFactory paramThreadFactory)
  {
    this(paramThreadFactory, "TaskRunner", 1);
  }

  public TaskRunner(ThreadFactory paramThreadFactory, String paramString)
  {
    this(paramThreadFactory, paramString, 1);
  }

  public TaskRunner(ThreadFactory paramThreadFactory, String paramString, int paramInt)
  {
    this.factory = paramThreadFactory;
    this.name = paramString;
    this.workers = new Thread[paramInt];
    this.clock = Config.getInstance().getClock();
    this.taskMap = null;
    this.runningTaskMap = null;
    this.logger = LogSource.getLogSource(getClass());
  }

  private String logFinishedTask(AbstractTask paramAbstractTask)
  {
    return "";
  }

  private String logScheduleTask(AbstractTask paramAbstractTask)
  {
    return "";
  }

  private String logStartingTask(AbstractTask paramAbstractTask)
  {
    return "";
  }

  private String printTaskSources()
  {
    return "";
  }

  public int cancelTask(AbstractTask paramAbstractTask)
  {
    synchronized (this.mutex)
    {
      int i = paramAbstractTask.cancelInternal();
      return i;
    }
  }

  boolean cancelTaskInternal(AbstractTask paramAbstractTask)
  {
    synchronized (this.mutex)
    {
      switch (paramAbstractTask.getState())
      {
      default:
        return false;
      case 1:
        this.timerTaskQueue.removeElement(paramAbstractTask);
        paramAbstractTask.setState(0);
        this.mutex.notifyAll();
        return true;
      case 2:
      case 3:
      case 4:
      }
    }
    this.priorityTaskQueue.removeElement(paramAbstractTask);
    paramAbstractTask.setState(0);
    this.mutex.notifyAll();
    return true;
    paramAbstractTask.setState(0);
    return false;
  }

  int getDefaultPriority()
  {
    return this.defaultPriority;
  }

  protected String getLogInfo()
  {
    return "";
  }

  int getMaxPriority()
  {
    return this.maxPriority;
  }

  int getMinPriority()
  {
    return this.minPriority;
  }

  public String getName()
  {
    return this.name;
  }

  protected Task getNextTaskToRun()
  {
    if (this.logger.isEnabled(3))
    {
      this.logger.fine("getNextTaskToRun(): moving expired tasks @" + this.clock.currentTimeMillis());
      this.logger.fine("getNextTaskToRun(): timer queue length = " + this.timerTaskQueue.size());
      this.logger.fine("getNextTaskToRun(): priority queue length = " + this.priorityTaskQueue.size());
    }
    while (!this.timerTaskQueue.isEmpty())
    {
      TimerTask localTimerTask = (TimerTask)this.timerTaskQueue.elementAt(0);
      if (this.logger.isEnabled(3))
        this.logger.fine("getNextTaskToRun(): timerTask = ", localTimerTask);
      long l = localTimerTask.getScheduledTime() - this.clock.currentTimeMillis();
      if (this.logger.isEnabled(3))
      {
        this.logger.fine("getNextTaskToRun(): current = " + this.clock.currentTimeMillis());
        this.logger.fine("getNextTaskToRun(): scheduled = " + localTimerTask.getScheduledTime());
      }
      if (l > 0L)
        break;
      if (this.logger.isEnabled(3))
        this.logger.fine("gettNextTaskToRun(): #2 delta = " + l);
      this.timerTaskQueue.removeElementAt(0);
      schedulePriorityTaskInternal(localTimerTask);
    }
    if (this.logger.isEnabled(3))
      this.logger.fine("getNextTask(): getting available task @" + this.clock.currentTimeMillis());
    if (!this.priorityTaskQueue.isEmpty())
    {
      Task localTask = (Task)this.priorityTaskQueue.elementAt(0);
      localTask.setState(3);
      this.priorityTaskQueue.removeElementAt(0);
      return localTask;
    }
    return null;
  }

  public int getPriorityQueueLength()
  {
    synchronized (this.mutex)
    {
      int i = this.priorityTaskQueue.size();
      return i;
    }
  }

  public int getTimerQueueLength()
  {
    synchronized (this.mutex)
    {
      int i = this.timerTaskQueue.size();
      return i;
    }
  }

  public boolean isWorker()
  {
    Thread localThread = Thread.currentThread();
    Object localObject1 = this.mutex;
    for (int i = 0; ; i++)
      try
      {
        if (i < this.workers.length)
        {
          if (localThread == this.workers[i])
            return true;
        }
        else
          return false;
      }
      finally
      {
      }
  }

  public void run()
  {
    Task localTask = null;
    while (true)
    {
      if (this.logger.isEnabled(3))
        this.logger.fine("run(): loop [running=" + this.running + "]");
      Object localObject1 = this.mutex;
      if (localTask != null);
      try
      {
        if (this.logger.isEnabled(3))
          this.logger.fine("run(): clean up");
        if (localTask.getState() == 4)
        {
          localTask.setState(0);
          localTask.scheduleInternal();
        }
        while (!waitForSomethingToDo())
        {
          if (this.logger.isEnabled(3))
            this.logger.fine("run(): exiting loop");
          if (this.logger.isEnabled(3))
            this.logger.fine("run(): end ", Thread.currentThread());
          return;
          if (localTask.getState() == 3)
            localTask.setState(0);
        }
      }
      finally
      {
      }
      localTask = getNextTaskToRun();
      if (this.logger.isEnabled(3))
        this.logger.fine(logStartingTask(localTask));
      if (this.logger.isEnabled(3))
        this.logger.fine("run(): running task @" + this.clock.currentTimeMillis());
      if (localTask == null)
        continue;
      localTask.updateStartTimestamp();
      try
      {
        localTask.runInternal();
        if (this.logger.isEnabled(3))
          this.logger.fine(logFinishedTask(localTask));
        localTask.updateFinishTimestamp();
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          this.logger.severe("runtime exception thrown by task [" + localTask + "]", localThrowable);
          localThrowable.printStackTrace();
        }
      }
    }
  }

  void schedulePriorityTaskInternal(Task paramTask)
  {
    int j;
    int k;
    int m;
    int i2;
    int i3;
    synchronized (this.mutex)
    {
      int i = paramTask.getPriority();
      j = 0;
      k = this.priorityTaskQueue.size();
      if (j < k)
      {
        m = (j + k) / 2;
        if (i > ((Task)this.priorityTaskQueue.elementAt(m)).getPriority())
          break label127;
        int n = m + 1;
        int i1 = k;
        i2 = n;
        i3 = i1;
      }
      else
      {
        this.priorityTaskQueue.insertElementAt(paramTask, j);
        paramTask.updateRunnableTimestamp();
        paramTask.setState(2);
        this.mutex.notifyAll();
        return;
      }
    }
    while (true)
    {
      j = i2;
      k = i3;
      break;
      label127: i3 = m;
      i2 = j;
    }
  }

  void scheduleTask(AbstractTask paramAbstractTask)
  {
    paramAbstractTask.updateScheduleTimestamp();
    while (true)
    {
      synchronized (this.mutex)
      {
        switch (paramAbstractTask.getState())
        {
        case 1:
        case 2:
        default:
          return;
        case 0:
          paramAbstractTask.scheduleInternal();
        case 3:
        }
      }
      paramAbstractTask.setState(4);
    }
  }

  void scheduleTimerTaskInternal(TimerTask paramTimerTask)
  {
    int i;
    int j;
    int k;
    int i1;
    int i2;
    synchronized (this.mutex)
    {
      long l = paramTimerTask.getScheduledTime();
      i = 0;
      j = this.timerTaskQueue.size();
      if (i < j)
      {
        k = (i + j) / 2;
        if (l < ((TimerTask)this.timerTaskQueue.elementAt(k)).getScheduledTime())
          break label124;
        int m = k + 1;
        int n = j;
        i1 = m;
        i2 = n;
      }
      else
      {
        this.timerTaskQueue.insertElementAt(paramTimerTask, i);
        paramTimerTask.setState(1);
        this.mutex.notifyAll();
        return;
      }
    }
    while (true)
    {
      i = i1;
      j = i2;
      break;
      label124: i2 = k;
      i1 = i;
    }
  }

  public void start()
  {
    synchronized (this.mutex)
    {
      if (!this.running)
      {
        this.running = true;
        for (int i = 0; i < this.workers.length; i++)
        {
          this.workers[i] = this.factory.createThread(this.name + "-" + i, this);
          this.workers[i].start();
        }
      }
      return;
    }
  }

  public void stop()
  {
    int i = 0;
    synchronized (this.mutex)
    {
      if (this.running == true)
      {
        this.running = false;
        while (i < this.workers.length)
        {
          this.workers[i] = null;
          i++;
        }
        this.mutex.notifyAll();
      }
      return;
    }
  }

  public void stopAndWait()
  {
    int i = 0;
    this.logger.info("#stopAndWait");
    synchronized (this.mutex)
    {
      if (this.running == true)
      {
        this.running = false;
        this.mutex.notifyAll();
      }
    }
    try
    {
      if (i < this.workers.length)
      {
        if ((this.workers[i] != null) && (this.workers[i] != Thread.currentThread()) && (this.workers[i].isAlive()))
        {
          this.logger.info("#stopAndWait - waiting for thread to die ", this.workers[i]);
          this.workers[i].join();
        }
        while (true)
        {
          i++;
          break;
          localObject2 = finally;
          throw localObject2;
          this.workers[i] = null;
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
      this.logger.info("#stopAndWait - done");
    }
  }

  public String toString()
  {
    return super.toString();
  }

  protected boolean waitForSomethingToDo()
  {
    if ((this.running) && (this.priorityTaskQueue.isEmpty()))
      if (this.logger.isEnabled(3))
        this.logger.fine("waitForSomethingToDo(): task queue empty @" + this.clock.currentTimeMillis());
    try
    {
      if (this.timerTaskQueue.isEmpty())
      {
        if (this.logger.isEnabled(3))
          this.logger.fine("waitForSomethingToDo(): timer task queue empty");
        this.mutex.wait();
      }
      while (true)
      {
        return this.running;
        TimerTask localTimerTask = (TimerTask)this.timerTaskQueue.elementAt(0);
        if (this.logger.isEnabled(3))
          this.logger.fine("waitForSomethingToDo(): scheduled = " + localTimerTask.getScheduledTime());
        long l = localTimerTask.getScheduledTime() - this.clock.currentTimeMillis();
        if (this.logger.isEnabled(3))
          this.logger.fine("waitForSomethingToDo(): #1 delta = " + l);
        if (l > 0L)
          this.mutex.wait(l);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        this.logger.severe("exception thrown while waiting", localInterruptedException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.task.TaskRunner
 * JD-Core Version:    0.6.2
 */