package com.x.google.common.util;

import java.lang.ref.WeakReference;
import java.util.Vector;

public abstract class AbstractObservable
  implements Observable
{
  protected final Vector observers = new Vector();

  public void addObserver(Observer paramObserver)
  {
    synchronized (this.observers)
    {
      int i = indexOf(paramObserver);
      if (i == -1)
      {
        this.observers.addElement(paramObserver);
        return;
      }
      this.observers.setElementAt(paramObserver, i);
    }
  }

  public void addWeakObserver(Observer paramObserver)
  {
    synchronized (this.observers)
    {
      if (indexOf(paramObserver) == -1)
        this.observers.addElement(new WeakReference(paramObserver));
      return;
    }
  }

  public int getNumObservedBy(Class paramClass)
  {
    int i = 0;
    int j = 0;
    while (i < this.observers.size())
    {
      Object localObject = this.observers.elementAt(i);
      if (localObject.getClass() == WeakReference.class)
        localObject = ((WeakReference)localObject).get();
      if (paramClass.isInstance(localObject))
        j++;
      i++;
    }
    return j;
  }

  public int getNumObservers(Class paramClass)
  {
    int i = 0;
    int j = 0;
    while (true)
    {
      try
      {
        if (i < this.observers.size())
        {
          Object localObject2 = this.observers.elementAt(i);
          if (localObject2.getClass() == WeakReference.class)
            localObject2 = ((WeakReference)localObject2).get();
          if (localObject2 == null)
            break label90;
          boolean bool = paramClass.isInstance(localObject2);
          if (!bool)
            break label90;
          k = j + 1;
          i++;
          j = k;
          continue;
        }
        return j;
      }
      finally
      {
      }
      label90: int k = j;
    }
  }

  public Observer[] getObservers()
  {
    int k;
    for (int i = 0; ; i = k)
    {
      int j;
      while (true)
      {
        Observer[] arrayOfObserver1;
        synchronized (this.observers)
        {
          arrayOfObserver1 = new Observer[this.observers.size()];
          j = -1 + this.observers.size();
          if (j >= 0)
          {
            Object localObject2 = this.observers.elementAt(j);
            if (localObject2.getClass() == WeakReference.class)
            {
              Object localObject3 = ((WeakReference)localObject2).get();
              if (localObject3 != null)
              {
                arrayOfObserver1[(j + i)] = ((Observer)localObject3);
                k = i;
                break;
              }
              this.observers.removeElementAt(j);
              k = i + 1;
              break;
            }
            arrayOfObserver1[(j + i)] = ((Observer)localObject2);
            k = i;
            break;
          }
          if (i > 0)
          {
            arrayOfObserver2 = new Observer[arrayOfObserver1.length - i];
            System.arraycopy(arrayOfObserver1, i, arrayOfObserver2, 0, arrayOfObserver2.length);
            return arrayOfObserver2;
          }
        }
        Observer[] arrayOfObserver2 = arrayOfObserver1;
      }
      j--;
    }
  }

  protected int indexOf(Observer paramObserver)
  {
    for (int i = 0; i < this.observers.size(); i++)
    {
      Object localObject = this.observers.elementAt(i);
      if (localObject.getClass() == WeakReference.class)
        localObject = ((WeakReference)localObject).get();
      if (paramObserver.equals(localObject))
        return i;
    }
    return -1;
  }

  public boolean isObservedBy(Observer paramObserver)
  {
    return indexOf(paramObserver) != -1;
  }

  public boolean isWeakObserver(Observer paramObserver)
  {
    int i = indexOf(paramObserver);
    return this.observers.elementAt(i).getClass() == WeakReference.class;
  }

  public void notifyObservers()
  {
    notifyObservers(null);
  }

  public void notifyObservers(Object paramObject)
  {
    Observer[] arrayOfObserver = getObservers();
    for (int i = 0; i < arrayOfObserver.length; i++)
      arrayOfObserver[i].update(this, paramObject);
  }

  public void removeAllObservers()
  {
    synchronized (this.observers)
    {
      this.observers.removeAllElements();
      return;
    }
  }

  public boolean removeObserver(Observer paramObserver)
  {
    while (true)
    {
      int i;
      synchronized (this.observers)
      {
        i = -1 + this.observers.size();
        if (i >= 0)
        {
          Object localObject2 = this.observers.elementAt(i);
          if (localObject2.getClass() == WeakReference.class)
            localObject2 = ((WeakReference)localObject2).get();
          if (paramObserver.equals(localObject2))
          {
            this.observers.removeElementAt(i);
            return true;
          }
        }
        else
        {
          return false;
        }
      }
      i--;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.AbstractObservable
 * JD-Core Version:    0.6.2
 */