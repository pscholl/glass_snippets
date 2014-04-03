package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible
final class Count
  implements Serializable
{
  private int value;

  Count(int paramInt)
  {
    this.value = paramInt;
  }

  public int addAndGet(int paramInt)
  {
    int i = paramInt + this.value;
    this.value = i;
    return i;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return ((paramObject instanceof Count)) && (((Count)paramObject).value == this.value);
  }

  public int get()
  {
    return this.value;
  }

  public int getAndAdd(int paramInt)
  {
    int i = this.value;
    this.value = (i + paramInt);
    return i;
  }

  public int getAndSet(int paramInt)
  {
    int i = this.value;
    this.value = paramInt;
    return i;
  }

  public int hashCode()
  {
    return this.value;
  }

  public void set(int paramInt)
  {
    this.value = paramInt;
  }

  public String toString()
  {
    return Integer.toString(this.value);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Count
 * JD-Core Version:    0.6.2
 */