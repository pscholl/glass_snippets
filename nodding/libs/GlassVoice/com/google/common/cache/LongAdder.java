package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

@GwtCompatible(emulated=true)
final class LongAdder extends Striped64
  implements Serializable, LongAddable
{
  private static final long serialVersionUID = 7249069246863182397L;

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.busy = 0;
    this.cells = null;
    this.base = paramObjectInputStream.readLong();
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeLong(sum());
  }

  public void add(long paramLong)
  {
    Striped64.Cell[] arrayOfCell = this.cells;
    if (arrayOfCell == null)
    {
      long l2 = this.base;
      if (casBase(l2, l2 + paramLong));
    }
    else
    {
      boolean bool = true;
      Striped64.HashCode localHashCode = (Striped64.HashCode)threadHashCode.get();
      int i = localHashCode.code;
      if (arrayOfCell != null)
      {
        int j = arrayOfCell.length;
        if (j >= 1)
        {
          Striped64.Cell localCell = arrayOfCell[(i & j - 1)];
          if (localCell != null)
          {
            long l1 = localCell.value;
            bool = localCell.cas(l1, l1 + paramLong);
            if (bool)
              return;
          }
        }
      }
      retryUpdate(paramLong, localHashCode, bool);
    }
  }

  public void decrement()
  {
    add(-1L);
  }

  public double doubleValue()
  {
    return sum();
  }

  public float floatValue()
  {
    return (float)sum();
  }

  final long fn(long paramLong1, long paramLong2)
  {
    return paramLong1 + paramLong2;
  }

  public void increment()
  {
    add(1L);
  }

  public int intValue()
  {
    return (int)sum();
  }

  public long longValue()
  {
    return sum();
  }

  public void reset()
  {
    internalReset(0L);
  }

  public long sum()
  {
    long l = this.base;
    Striped64.Cell[] arrayOfCell = this.cells;
    if (arrayOfCell != null)
    {
      int i = arrayOfCell.length;
      for (int j = 0; j < i; j++)
      {
        Striped64.Cell localCell = arrayOfCell[j];
        if (localCell != null)
          l += localCell.value;
      }
    }
    return l;
  }

  public long sumThenReset()
  {
    long l = this.base;
    Striped64.Cell[] arrayOfCell = this.cells;
    this.base = 0L;
    if (arrayOfCell != null)
    {
      int i = arrayOfCell.length;
      for (int j = 0; j < i; j++)
      {
        Striped64.Cell localCell = arrayOfCell[j];
        if (localCell != null)
        {
          l += localCell.value;
          localCell.value = 0L;
        }
      }
    }
    return l;
  }

  public String toString()
  {
    return Long.toString(sum());
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.LongAdder
 * JD-Core Version:    0.6.2
 */