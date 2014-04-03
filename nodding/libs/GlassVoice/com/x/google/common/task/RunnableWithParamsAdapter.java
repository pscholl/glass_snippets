package com.x.google.common.task;

public class RunnableWithParamsAdapter
  implements Runnable
{
  private final int methodCallId;
  private final Object[] params;
  private final RunnableWithParams runnableParams;

  public RunnableWithParamsAdapter(int paramInt, Object[] paramArrayOfObject, RunnableWithParams paramRunnableWithParams)
  {
    this.methodCallId = paramInt;
    this.params = paramArrayOfObject;
    this.runnableParams = paramRunnableWithParams;
  }

  public int getMethodCallId()
  {
    return this.methodCallId;
  }

  public Object[] getParams()
  {
    return this.params;
  }

  public RunnableWithParams getRunnableWithParams()
  {
    return this.runnableParams;
  }

  public void run()
  {
    this.runnableParams.run(this.methodCallId, this.params);
  }

  public String toString()
  {
    return super.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.task.RunnableWithParamsAdapter
 * JD-Core Version:    0.6.2
 */