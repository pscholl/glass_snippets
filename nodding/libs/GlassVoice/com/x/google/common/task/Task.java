package com.x.google.common.task;

public class Task extends AbstractTask
{
  private int priority;

  public Task(TaskRunner paramTaskRunner)
  {
    this(paramTaskRunner, (Runnable)null, paramTaskRunner.getDefaultPriority());
  }

  public Task(TaskRunner paramTaskRunner, Runnable paramRunnable)
  {
    this(paramTaskRunner, paramRunnable, paramTaskRunner.getDefaultPriority());
  }

  public Task(TaskRunner paramTaskRunner, Runnable paramRunnable, int paramInt)
  {
    this(paramTaskRunner, paramRunnable, null, paramInt);
  }

  public Task(TaskRunner paramTaskRunner, Runnable paramRunnable, String paramString)
  {
    this(paramTaskRunner, paramRunnable, paramString, paramTaskRunner.getDefaultPriority());
  }

  public Task(TaskRunner paramTaskRunner, Runnable paramRunnable, String paramString, int paramInt)
  {
    super(paramTaskRunner, paramRunnable, paramString);
    setPriorityInternal(paramInt);
  }

  private void setPriorityInternal(int paramInt)
  {
    this.priority = paramInt;
  }

  int cancelInternal()
  {
    if (this.runner.cancelTaskInternal(this))
      return 1;
    return 0;
  }

  public int getDefaultPriority()
  {
    return this.runner.getDefaultPriority();
  }

  public int getMaxPriority()
  {
    return this.runner.getMaxPriority();
  }

  public int getMinPriority()
  {
    return this.runner.getMinPriority();
  }

  public int getPriority()
  {
    try
    {
      int i = this.priority;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  void scheduleInternal()
  {
    this.runner.schedulePriorityTaskInternal(this);
  }

  public void setPriority(int paramInt)
  {
    try
    {
      setPriorityInternal(paramInt);
      if (this.runner.cancelTask(this) > 0)
        this.runner.scheduleTask(this);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.task.Task
 * JD-Core Version:    0.6.2
 */