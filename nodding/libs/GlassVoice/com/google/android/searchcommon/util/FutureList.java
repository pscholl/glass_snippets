package com.google.android.searchcommon.util;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class FutureList<V>
  implements Future<List<V>>
{
  private final List<Future<V>> mListOfFuture;
  private Mode mMode;

  public FutureList(List<Future<V>> paramList, Mode paramMode)
  {
    this.mListOfFuture = paramList;
    this.mMode = paramMode;
  }

  private V getValue(Future<V> paramFuture, long paramLong)
    throws ExecutionException, InterruptedException, TimeoutException
  {
    switch (1.$SwitchMap$com$google$android$searchcommon$util$FutureList$Mode[this.mMode.ordinal()])
    {
    default:
      throw new IllegalStateException("Illegal mode: " + this.mMode);
    case 1:
      try
      {
        Object localObject = paramFuture.get(paramLong, TimeUnit.MILLISECONDS);
        return localObject;
      }
      catch (TimeoutException localTimeoutException)
      {
        return null;
      }
      catch (ExecutionException localExecutionException)
      {
        return null;
      }
    case 2:
    }
    return paramFuture.get(paramLong, TimeUnit.MILLISECONDS);
  }

  public boolean cancel(boolean paramBoolean)
  {
    boolean bool = true;
    Iterator localIterator = this.mListOfFuture.iterator();
    while (localIterator.hasNext())
      bool &= ((Future)localIterator.next()).cancel(paramBoolean);
    return bool;
  }

  public List<V> get()
    throws InterruptedException, ExecutionException
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = this.mListOfFuture.iterator();
    while (localIterator.hasNext())
      localLinkedList.add(((Future)localIterator.next()).get());
    return localLinkedList;
  }

  public List<V> get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = this.mListOfFuture.iterator();
    while (localIterator.hasNext())
      localLinkedList.add(getValue((Future)localIterator.next(), Math.max(0L, TimeUnit.MILLISECONDS.convert(paramLong, paramTimeUnit))));
    return localLinkedList;
  }

  public boolean isCancelled()
  {
    Iterator localIterator = this.mListOfFuture.iterator();
    while (localIterator.hasNext())
      if (!((Future)localIterator.next()).isCancelled())
        return false;
    return true;
  }

  public boolean isDone()
  {
    Iterator localIterator = this.mListOfFuture.iterator();
    while (localIterator.hasNext())
      if (!((Future)localIterator.next()).isDone())
        return false;
    return true;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("FutureList(");
    if (this.mListOfFuture != null);
    for (int i = this.mListOfFuture.size(); ; i = -1)
      return i + ")";
  }

  static enum Mode
  {
    static
    {
      ALL = new Mode("ALL", 1);
      Mode[] arrayOfMode = new Mode[2];
      arrayOfMode[0] = ONLY_SUCCESSFUL;
      arrayOfMode[1] = ALL;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.searchcommon.util.FutureList
 * JD-Core Version:    0.6.2
 */