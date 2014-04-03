package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

@GwtCompatible
public abstract class ForwardingIterator<T> extends ForwardingObject
  implements Iterator<T>
{
  protected abstract Iterator<T> delegate();

  public boolean hasNext()
  {
    return delegate().hasNext();
  }

  public T next()
  {
    return delegate().next();
  }

  public void remove()
  {
    delegate().remove();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingIterator
 * JD-Core Version:    0.6.2
 */