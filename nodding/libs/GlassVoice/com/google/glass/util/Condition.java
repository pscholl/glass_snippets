package com.google.glass.util;

import java.util.ArrayList;
import java.util.List;

public final class Condition
{
  private List<Runnable> onSet = new ArrayList();
  private boolean state;

  public boolean addCallback(Runnable paramRunnable)
  {
    try
    {
      if (this.state)
        paramRunnable.run();
      for (boolean bool = true; ; bool = false)
      {
        return bool;
        this.onSet.add(paramRunnable);
      }
    }
    finally
    {
    }
  }

  public boolean get()
  {
    try
    {
      boolean bool = this.state;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void set()
  {
    try
    {
      if (!this.state)
      {
        this.state = true;
        int i = 0;
        int j = this.onSet.size();
        while (i < j)
        {
          ((Runnable)this.onSet.get(i)).run();
          i++;
        }
        this.onSet.clear();
      }
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.Condition
 * JD-Core Version:    0.6.2
 */