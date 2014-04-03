package com.x.google.common;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.NoSuchElementException;

public class LongVector
{
  public static final int CAPACITY_INCREMENT = 16;
  public static final int INITIAL_CAPACITY = 16;
  private long[] elements;
  private int size;

  public LongVector()
  {
    this.elements = new long[16];
  }

  public LongVector(int paramInt)
  {
    this.elements = new long[paramInt];
  }

  public static LongVector unmarshal(byte[] paramArrayOfByte)
    throws IOException
  {
    if (paramArrayOfByte.length % 8 != 0)
      throw new IOException("Buffer length not divisible by 8.");
    int i = paramArrayOfByte.length / 8;
    LongVector localLongVector = new LongVector(i);
    DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    for (int j = 0; j < i; j++)
      localLongVector.addElement(localDataInputStream.readLong());
    return localLongVector;
  }

  private void verifyArrayIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > this.size))
      throw new ArrayIndexOutOfBoundsException();
  }

  public void addElement(long paramLong)
  {
    ensureCapacity(1 + this.size);
    long[] arrayOfLong = this.elements;
    int i = this.size;
    this.size = (i + 1);
    arrayOfLong[i] = paramLong;
  }

  public int capacity()
  {
    return this.elements.length;
  }

  public boolean contains(long paramLong)
  {
    for (int i = -1 + this.size; i >= 0; i--)
      if (this.elements[i] == paramLong)
        return true;
    return false;
  }

  public void copyInto(long[] paramArrayOfLong)
  {
    System.arraycopy(this.elements, 0, paramArrayOfLong, 0, this.size);
  }

  public long elementAt(int paramInt)
  {
    if (paramInt >= this.size)
      throw new ArrayIndexOutOfBoundsException();
    return this.elements[paramInt];
  }

  public void ensureCapacity(int paramInt)
  {
    int i;
    if (paramInt > this.elements.length)
    {
      i = 16 + this.elements.length;
      if (i >= paramInt)
        break label47;
    }
    while (true)
    {
      long[] arrayOfLong = new long[paramInt];
      System.arraycopy(this.elements, 0, arrayOfLong, 0, this.size);
      this.elements = arrayOfLong;
      return;
      label47: paramInt = i;
    }
  }

  public long firstElement()
  {
    if (this.size == 0)
      throw new NoSuchElementException();
    return this.elements[0];
  }

  public int indexOf(long paramLong)
  {
    for (int i = 0; i < this.size; i++)
      if (this.elements[i] == paramLong)
        return i;
    return -1;
  }

  public int indexOf(long paramLong, int paramInt)
  {
    verifyArrayIndex(paramInt);
    if (paramInt >= this.size)
      return -1;
    do
    {
      paramInt++;
      if (paramInt >= this.size)
        break;
    }
    while (this.elements[paramInt] != paramLong);
    return paramInt;
    return -1;
  }

  public void insertElementAt(long paramLong, int paramInt)
  {
    verifyArrayIndex(paramInt);
    ensureCapacity(1 + this.size);
    if (paramInt < this.size)
      System.arraycopy(this.elements, paramInt, this.elements, paramInt + 1, this.size - paramInt);
    this.elements[paramInt] = paramLong;
    this.size = (1 + this.size);
  }

  public boolean isEmpty()
  {
    return this.size == 0;
  }

  public long lastElement()
  {
    if (this.size == 0)
      throw new NoSuchElementException();
    return this.elements[(-1 + this.size)];
  }

  public int lastIndexOf(long paramLong)
  {
    for (int i = -1 + this.size; i >= 0; i--)
      if (this.elements[i] == paramLong)
        return i;
    return -1;
  }

  public int lastIndexOf(long paramLong, int paramInt)
  {
    if (paramInt >= this.size)
      throw new IndexOutOfBoundsException();
    do
    {
      if (this.elements[paramInt] == paramLong)
        return paramInt;
      paramInt--;
    }
    while (paramInt >= 0);
    return -1;
  }

  public byte[] marshal()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(8 * this.size);
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    for (int i = 0; i < this.size; i++)
      localDataOutputStream.writeLong(this.elements[i]);
    return localByteArrayOutputStream.toByteArray();
  }

  public long max()
  {
    if (isEmpty())
      throw new IllegalStateException();
    long l = -9223372036854775808L;
    for (int i = 0; i < this.size; i++)
      if (l < this.elements[i])
        l = this.elements[i];
    return l;
  }

  public long min()
  {
    if (isEmpty())
      throw new IllegalStateException();
    long l = 9223372036854775807L;
    for (int i = 0; i < this.size; i++)
      if (l > this.elements[i])
        l = this.elements[i];
    return l;
  }

  public void removeAllElements()
  {
    this.size = 0;
  }

  public boolean removeElement(long paramLong)
  {
    for (int i = 0; ; i++)
    {
      int j = this.size;
      boolean bool = false;
      if (i < j)
      {
        if (this.elements[i] == paramLong)
        {
          this.size = (-1 + this.size);
          System.arraycopy(this.elements, i + 1, this.elements, i, this.size - i);
          bool = true;
        }
      }
      else
        return bool;
    }
  }

  public void removeElementAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.size))
      throw new ArrayIndexOutOfBoundsException();
    this.size = (-1 + this.size);
    System.arraycopy(this.elements, paramInt + 1, this.elements, paramInt, this.size - paramInt);
  }

  public void setElementAt(long paramLong, int paramInt)
  {
    if (paramInt >= this.size)
      throw new ArrayIndexOutOfBoundsException();
    this.elements[paramInt] = paramLong;
  }

  public void setSize(int paramInt)
  {
    if (paramInt < 0)
      throw new ArrayIndexOutOfBoundsException();
    ensureCapacity(paramInt);
    for (int i = this.size; i < paramInt; i++)
      this.elements[i] = 0L;
    this.size = paramInt;
  }

  public int size()
  {
    return this.size;
  }

  public long sum()
  {
    long l = 0L;
    for (int i = 0; i < this.size; i++)
      l += this.elements[i];
    return l;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append('[');
    for (int i = 0; i < this.size; i++)
    {
      localStringBuffer.append(this.elements[i]);
      if (i < -1 + this.size)
        localStringBuffer.append(", ");
    }
    localStringBuffer.append(']');
    return localStringBuffer.toString();
  }

  public void trimToSize()
  {
    if (this.size < this.elements.length)
    {
      long[] arrayOfLong = new long[this.size];
      System.arraycopy(this.elements, 0, arrayOfLong, 0, this.size);
      this.elements = arrayOfLong;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.LongVector
 * JD-Core Version:    0.6.2
 */