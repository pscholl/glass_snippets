package com.x.google.masf;

class BlockingByteQueue
{
  private final byte[] buffer;
  private boolean closed;
  private int head = -1;
  private final Object mutex = new Object();
  private int tail;

  public BlockingByteQueue(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("bufferSize " + paramInt);
    this.buffer = new byte[paramInt];
  }

  public int available()
  {
    while (true)
    {
      synchronized (this.mutex)
      {
        if (this.head < 0)
          return 0;
        if (this.tail > this.head)
        {
          m = this.tail - this.head;
          return m;
        }
      }
      int i = this.tail;
      int j = this.buffer.length;
      int k = this.head;
      int m = i + (j - k);
    }
  }

  public void close()
  {
    synchronized (this.mutex)
    {
      this.closed = true;
      this.mutex.notifyAll();
      return;
    }
  }

  public int read()
  {
    synchronized (this.mutex)
    {
      while (this.head < 0)
      {
        if (this.closed)
          return -1;
        try
        {
          this.mutex.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      byte[] arrayOfByte = this.buffer;
      int i = this.head;
      this.head = (i + 1);
      int j = 0xFF & arrayOfByte[i];
      if (this.head == this.buffer.length)
        this.head = 0;
      if (this.head == this.tail)
      {
        this.head = -1;
        this.tail = 0;
      }
      this.mutex.notifyAll();
      return j;
    }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
      return 0;
    while (true)
    {
      int k;
      int m;
      synchronized (this.mutex)
      {
        if (this.head < 0)
        {
          if (this.closed)
            return -1;
          try
          {
            this.mutex.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
          }
          continue;
        }
        if (this.head < this.tail)
        {
          k = this.tail - this.head;
          m = paramInt2;
          i = 0;
          break label244;
          System.arraycopy(this.buffer, this.head, paramArrayOfByte, paramInt1, k);
          int n = i + k;
          this.head = (k + this.head);
          if (this.head == this.buffer.length)
            this.head = 0;
          if (this.head == this.tail)
          {
            this.head = -1;
            this.tail = 0;
          }
          this.mutex.notifyAll();
          return n;
        }
      }
      int i = this.buffer.length - this.head;
      if (i < paramInt2)
      {
        System.arraycopy(this.buffer, this.head, paramArrayOfByte, paramInt1, i);
        paramInt1 += i;
        int j = paramInt2 - i;
        k = this.tail;
        this.head = 0;
        m = j;
      }
      else
      {
        k = i;
        i = 0;
        m = paramInt2;
      }
      label244: if (k > m)
        k = m;
    }
  }

  public void write(byte paramByte)
  {
    synchronized (this.mutex)
    {
      while (true)
      {
        int i = this.head;
        int j = this.tail;
        if (i != j)
          break;
        try
        {
          this.mutex.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      if (this.head < 0)
        this.head = 0;
      byte[] arrayOfByte = this.buffer;
      int k = this.tail;
      this.tail = (k + 1);
      arrayOfByte[k] = paramByte;
      if (this.tail == this.buffer.length)
        this.tail = 0;
      this.mutex.notifyAll();
      return;
    }
  }

  public void write(byte[] paramArrayOfByte, int paramInt)
  {
    Object localObject1 = this.mutex;
    int i = 0;
    int j = paramInt;
    if (j > 0);
    while (true)
    {
      try
      {
        int k = this.head;
        int m = this.tail;
        if (k == m)
        {
          try
          {
            this.mutex.notifyAll();
            this.mutex.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
          }
          continue;
        }
        if (this.head < 0)
          this.head = 0;
        if (this.tail < this.head)
        {
          n = this.head - this.tail;
          break label189;
          System.arraycopy(paramArrayOfByte, i, this.buffer, this.tail, n);
          i += n;
          j -= n;
          this.tail = (n + this.tail);
          if (this.tail != this.buffer.length)
            break;
          this.tail = 0;
          break;
        }
      }
      finally
      {
      }
      int n = this.buffer.length - this.tail;
      break label189;
      this.mutex.notifyAll();
      return;
      label189: if (n > j)
        n = j;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.BlockingByteQueue
 * JD-Core Version:    0.6.2
 */