package com.google.common.cache;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

abstract class Striped64 extends Number
{
  static final int NCPU = Runtime.getRuntime().availableProcessors();
  private static final Unsafe UNSAFE;
  private static final long baseOffset;
  private static final long busyOffset;
  static final ThreadHashCode threadHashCode = new ThreadHashCode();
  volatile transient long base;
  volatile transient int busy;
  volatile transient Cell[] cells;

  static
  {
    try
    {
      UNSAFE = getUnsafe();
      baseOffset = UNSAFE.objectFieldOffset(Striped64.class.getDeclaredField("base"));
      busyOffset = UNSAFE.objectFieldOffset(Striped64.class.getDeclaredField("busy"));
      return;
    }
    catch (Exception localException)
    {
      throw new Error(localException);
    }
  }

  private static Unsafe getUnsafe()
  {
    try
    {
      Unsafe localUnsafe2 = Unsafe.getUnsafe();
      return localUnsafe2;
    }
    catch (SecurityException localSecurityException)
    {
      try
      {
        Unsafe localUnsafe1 = (Unsafe)AccessController.doPrivileged(new PrivilegedExceptionAction()
        {
          public Unsafe run()
            throws Exception
          {
            Field localField = Unsafe.class.getDeclaredField("theUnsafe");
            localField.setAccessible(true);
            return (Unsafe)localField.get(null);
          }
        });
        return localUnsafe1;
      }
      catch (PrivilegedActionException localPrivilegedActionException)
      {
        throw new RuntimeException("Could not initialize intrinsics", localPrivilegedActionException.getCause());
      }
    }
  }

  final boolean casBase(long paramLong1, long paramLong2)
  {
    return UNSAFE.compareAndSwapLong(this, baseOffset, paramLong1, paramLong2);
  }

  final boolean casBusy()
  {
    return UNSAFE.compareAndSwapInt(this, busyOffset, 0, 1);
  }

  abstract long fn(long paramLong1, long paramLong2);

  final void internalReset(long paramLong)
  {
    Cell[] arrayOfCell = this.cells;
    this.base = paramLong;
    if (arrayOfCell != null)
    {
      int i = arrayOfCell.length;
      for (int j = 0; j < i; j++)
      {
        Cell localCell = arrayOfCell[j];
        if (localCell != null)
          localCell.value = paramLong;
      }
    }
  }

  final void retryUpdate(long paramLong, HashCode paramHashCode, boolean paramBoolean)
  {
    int i = paramHashCode.code;
    int j = 0;
    Cell[] arrayOfCell1 = this.cells;
    int n;
    Cell localCell2;
    Cell localCell3;
    if (arrayOfCell1 != null)
    {
      n = arrayOfCell1.length;
      if (n > 0)
      {
        localCell2 = arrayOfCell1[(i & n - 1)];
        if (localCell2 == null)
          if (this.busy == 0)
          {
            localCell3 = new Cell(paramLong);
            if ((this.busy != 0) || (!casBusy()));
          }
      }
    }
    while (true)
    {
      while (true)
      {
        while (true)
        {
          try
          {
            Cell[] arrayOfCell5 = this.cells;
            int i4 = 0;
            if (arrayOfCell5 != null)
            {
              int i5 = arrayOfCell5.length;
              i4 = 0;
              if (i5 > 0)
              {
                int i6 = i & i5 - 1;
                Cell localCell4 = arrayOfCell5[i6];
                i4 = 0;
                if (localCell4 == null)
                {
                  arrayOfCell5[i6] = localCell3;
                  i4 = 1;
                }
              }
            }
            this.busy = 0;
            if (i4 == 0)
              break;
            label149: paramHashCode.code = i;
            return;
          }
          finally
          {
            this.busy = 0;
          }
          j = 0;
          label270: 
          do
            while (true)
            {
              int i1 = i ^ i << 13;
              int i2 = i1 ^ i1 >>> 17;
              i = i2 ^ i2 << 5;
              break;
              if (!paramBoolean)
              {
                paramBoolean = true;
              }
              else
              {
                long l2 = localCell2.value;
                if (localCell2.cas(l2, fn(l2, paramLong)))
                  break label149;
                if ((n >= NCPU) || (this.cells != arrayOfCell1))
                {
                  j = 0;
                }
                else
                {
                  if (j != 0)
                    break label270;
                  j = 1;
                }
              }
            }
          while ((this.busy != 0) || (!casBusy()));
          try
          {
            if (this.cells == arrayOfCell1)
            {
              Cell[] arrayOfCell4 = new Cell[n << 1];
              for (int i3 = 0; i3 < n; i3++)
                arrayOfCell4[i3] = arrayOfCell1[i3];
              this.cells = arrayOfCell4;
            }
            this.busy = 0;
            j = 0;
            break;
          }
          finally
          {
            this.busy = 0;
          }
        }
        if ((this.busy == 0) && (this.cells == arrayOfCell1) && (casBusy()))
          try
          {
            Cell[] arrayOfCell2 = this.cells;
            int k = 0;
            if (arrayOfCell2 == arrayOfCell1)
            {
              Cell[] arrayOfCell3 = new Cell[2];
              int m = i & 0x1;
              Cell localCell1 = new Cell(paramLong);
              arrayOfCell3[m] = localCell1;
              this.cells = arrayOfCell3;
              k = 1;
            }
            this.busy = 0;
            if (k == 0)
              break;
          }
          finally
          {
            this.busy = 0;
          }
      }
      long l1 = this.base;
      if (!casBase(l1, fn(l1, paramLong)))
        break;
    }
  }

  static final class Cell
  {
    private static final Unsafe UNSAFE;
    private static final long valueOffset;
    volatile long p0;
    volatile long p1;
    volatile long p2;
    volatile long p3;
    volatile long p4;
    volatile long p5;
    volatile long p6;
    volatile long q0;
    volatile long q1;
    volatile long q2;
    volatile long q3;
    volatile long q4;
    volatile long q5;
    volatile long q6;
    volatile long value;

    static
    {
      try
      {
        UNSAFE = getUnsafe();
        valueOffset = UNSAFE.objectFieldOffset(Cell.class.getDeclaredField("value"));
        return;
      }
      catch (Exception localException)
      {
        throw new Error(localException);
      }
    }

    Cell(long paramLong)
    {
      this.value = paramLong;
    }

    private static Unsafe getUnsafe()
    {
      try
      {
        Unsafe localUnsafe2 = Unsafe.getUnsafe();
        return localUnsafe2;
      }
      catch (SecurityException localSecurityException)
      {
        try
        {
          Unsafe localUnsafe1 = (Unsafe)AccessController.doPrivileged(new PrivilegedExceptionAction()
          {
            public Unsafe run()
              throws Exception
            {
              for (Field localField : Unsafe.class.getDeclaredFields())
              {
                localField.setAccessible(true);
                Object localObject = localField.get(null);
                if (Unsafe.class.isInstance(localObject))
                  return (Unsafe)Unsafe.class.cast(localObject);
              }
              throw new NoSuchFieldError("the Unsafe");
            }
          });
          return localUnsafe1;
        }
        catch (PrivilegedActionException localPrivilegedActionException)
        {
          throw new RuntimeException("Could not initialize intrinsics", localPrivilegedActionException.getCause());
        }
      }
    }

    final boolean cas(long paramLong1, long paramLong2)
    {
      return UNSAFE.compareAndSwapLong(this, valueOffset, paramLong1, paramLong2);
    }
  }

  static final class HashCode
  {
    static final Random rng = new Random();
    int code;

    HashCode()
    {
      int i = rng.nextInt();
      if (i == 0)
        i = 1;
      this.code = i;
    }
  }

  static final class ThreadHashCode extends ThreadLocal<Striped64.HashCode>
  {
    public Striped64.HashCode initialValue()
    {
      return new Striped64.HashCode();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.cache.Striped64
 * JD-Core Version:    0.6.2
 */