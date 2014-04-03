package com.x.google.common.task;

import com.x.google.debug.Log;
import java.util.Vector;

public abstract class AbstractTask
{
  private static final AbstractTask[] EMPTY_TASK_ARRAY = new AbstractTask[0];
  public static final int STATE_NONE = 0;
  public static final int STATE_PENDING = 4;
  public static final int STATE_RUNNABLE = 2;
  public static final int STATE_RUNNING = 3;
  public static final int STATE_SLEEPING = 1;
  private long finishTimestamp;
  private final String name;
  private int runCounter;
  private Object runCounterLock = new Object();
  protected Runnable runnable;
  private long runnableTimestamp;
  protected TaskRunner runner;
  private long scheduleTimestamp;
  private long startTimestamp;
  private int state;
  protected Vector tasks;
  private final String varzInsideQueue;
  private final String varzOutsideQueue;
  private final String varzTime;

  public AbstractTask(TaskRunner paramTaskRunner)
  {
    this(paramTaskRunner, (Runnable)null);
  }

  public AbstractTask(TaskRunner paramTaskRunner, Runnable paramRunnable)
  {
    this(paramTaskRunner, paramRunnable, null);
  }

  public AbstractTask(TaskRunner paramTaskRunner, Runnable paramRunnable, String paramString)
  {
    this.runner = paramTaskRunner;
    this.runnable = paramRunnable;
    this.name = paramString;
    this.varzOutsideQueue = null;
    this.varzInsideQueue = null;
    this.varzTime = null;
  }

  public void addTask(AbstractTask paramAbstractTask)
  {
    try
    {
      if (this.tasks == null)
        this.tasks = new Vector();
      if (!this.tasks.contains(paramAbstractTask))
        this.tasks.addElement(paramAbstractTask);
      return;
    }
    finally
    {
    }
  }

  public int cancel()
  {
    return this.runner.cancelTask(this);
  }

  abstract int cancelInternal();

  public String getName()
  {
    return this.name;
  }

  protected int getState()
  {
    return this.state;
  }

  public String getStateLabel()
  {
    switch (this.state)
    {
    default:
      return "Unknown(" + this.state + ")";
    case 0:
      return "None";
    case 1:
      return "Sleeping";
    case 2:
      return "Runnable";
    case 3:
      return "Running";
    case 4:
    }
    return "Pending";
  }

  public TaskRunner getTaskRunner()
  {
    return this.runner;
  }

  protected AbstractTask[] getTasks()
  {
    try
    {
      AbstractTask[] arrayOfAbstractTask;
      if (this.tasks != null)
      {
        arrayOfAbstractTask = new AbstractTask[this.tasks.size()];
        this.tasks.copyInto(arrayOfAbstractTask);
      }
      while (true)
      {
        return arrayOfAbstractTask;
        arrayOfAbstractTask = EMPTY_TASK_ARRAY;
      }
    }
    finally
    {
    }
  }

  public boolean removeTask(AbstractTask paramAbstractTask)
  {
    try
    {
      if (this.tasks != null)
      {
        boolean bool2 = this.tasks.removeElement(paramAbstractTask);
        if (bool2)
        {
          bool1 = true;
          return bool1;
        }
      }
      boolean bool1 = false;
    }
    finally
    {
    }
  }

  protected void run()
  {
    if (this.runnable != null)
      this.runnable.run();
  }

  void runInternal()
  {
    try
    {
      run();
    }
    catch (Throwable localThrowable)
    {
      synchronized (this.runCounterLock)
      {
        this.runCounter = (1 + this.runCounter);
        this.runCounterLock.notifyAll();
        AbstractTask[] arrayOfAbstractTask = getTasks();
        int i = 0;
        while (i < arrayOfAbstractTask.length)
        {
          arrayOfAbstractTask[i].schedule();
          i++;
          continue;
          localThrowable = localThrowable;
          Log.logThrowable("runtime exception [" + localThrowable + "] thrown by runnable [" + this.runnable + "]", localThrowable);
          localThrowable.printStackTrace();
        }
      }
    }
  }

  public void schedule()
  {
    synchronized (this.runCounterLock)
    {
      this.runCounter = 0;
      this.runner.scheduleTask(this);
      return;
    }
  }

  abstract void scheduleInternal();

  protected void setState(int paramInt)
  {
    this.state = paramInt;
  }

  void updateFinishTimestamp()
  {
    if (this.name != null);
  }

  void updateRunnableTimestamp()
  {
    if (this.name != null);
  }

  void updateScheduleTimestamp()
  {
    if (this.name != null);
  }

  void updateStartTimestamp()
  {
    if (this.name != null);
  }

  public void waitForRun()
    throws InterruptedException
  {
    waitForRun(1);
  }

  public void waitForRun(int paramInt)
    throws InterruptedException
  {
    synchronized (this.runCounterLock)
    {
      if (paramInt <= this.runCounter)
        this.runCounterLock.wait();
    }
  }

  public boolean wrappedEqualsRunnable(Runnable paramRunnable)
  {
    try
    {
      Runnable localRunnable = this.runnable;
      if (localRunnable == paramRunnable)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.task.AbstractTask
 * JD-Core Version:    0.6.2
 */