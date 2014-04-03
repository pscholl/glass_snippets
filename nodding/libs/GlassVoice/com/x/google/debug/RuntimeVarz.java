package com.x.google.debug;

import com.x.google.common.task.Task;
import com.x.google.common.util.AbstractObservable;
import java.util.Enumeration;
import java.util.Hashtable;

public class RuntimeVarz extends AbstractObservable
{
  private static final String FALSE = "False";
  private static final String TRUE = "True";
  private static RuntimeVarz runtimeVarz;
  private LogSource logger = LogSource.getLogSource(RuntimeVarz.class);
  private Hashtable varzTable = new Hashtable();

  public static RuntimeVarz getInstance()
  {
    if ((runtimeVarz == null) && (runtimeVarz == null))
      runtimeVarz = new RuntimeVarz();
    return runtimeVarz;
  }

  private String getMinAvgMax(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt[0] == 0)
      return "NA";
    int i = paramArrayOfInt[1];
    int j = paramArrayOfInt[1];
    int k = paramArrayOfInt[1];
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append('[');
    localStringBuffer.append(paramArrayOfInt[1]);
    for (int m = 2; m < 1 + paramArrayOfInt[0]; m++)
    {
      i = Math.min(i, paramArrayOfInt[m]);
      j = Math.max(j, paramArrayOfInt[m]);
      k += paramArrayOfInt[m];
      localStringBuffer.append(',');
      localStringBuffer.append(paramArrayOfInt[m]);
    }
    localStringBuffer.append(']');
    int n = k / paramArrayOfInt[0];
    localStringBuffer.insert(0, i + "<" + n + "<" + j);
    return localStringBuffer.toString();
  }

  public void appendVarz(StringBuffer paramStringBuffer)
  {
    try
    {
      Enumeration localEnumeration = getKeys();
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        paramStringBuffer.append(str);
        paramStringBuffer.append('=');
        paramStringBuffer.append(runtimeVarz.getValue(str));
        paramStringBuffer.append('\n');
      }
    }
    finally
    {
    }
  }

  public void deleteStartWith(String paramString)
  {
    try
    {
      Enumeration localEnumeration = this.varzTable.keys();
      while (localEnumeration.hasMoreElements())
      {
        String str = (String)localEnumeration.nextElement();
        if (str.startsWith(paramString))
          this.varzTable.remove(str);
      }
    }
    finally
    {
    }
  }

  public String getAsString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    appendVarz(localStringBuffer);
    return localStringBuffer.toString();
  }

  public boolean getBooleanValue(String paramString, boolean paramBoolean)
  {
    try
    {
      String str = getValue(paramString);
      if (str == null);
      while (true)
      {
        return paramBoolean;
        if (str != "True")
          break;
        bool = true;
        paramBoolean = bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public int getIntValue(String paramString, int paramInt)
  {
    try
    {
      int[] arrayOfInt = (int[])this.varzTable.get(paramString);
      if (arrayOfInt == null);
      while (true)
      {
        return paramInt;
        paramInt = arrayOfInt[0];
      }
    }
    finally
    {
    }
  }

  public Enumeration getKeys()
  {
    try
    {
      Enumeration localEnumeration = this.varzTable.keys();
      return localEnumeration;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected String getLogSource()
  {
    return DebugUtil.getLogSource(this);
  }

  public String getValue(String paramString)
  {
    try
    {
      Object localObject2 = this.varzTable.get(paramString);
      Object localObject3;
      if (localObject2 == null)
        localObject3 = null;
      while (true)
      {
        return localObject3;
        if ((localObject2 instanceof String[]))
        {
          String[] arrayOfString = (String[])localObject2;
          if (arrayOfString == null)
            localObject3 = null;
          else
            localObject3 = arrayOfString[0];
        }
        else if ((localObject2 instanceof int[]))
        {
          int[] arrayOfInt = (int[])localObject2;
          if (arrayOfInt == null)
            localObject3 = null;
          else if (arrayOfInt.length == 1)
            localObject3 = Integer.toString(arrayOfInt[0]);
          else
            localObject3 = getMinAvgMax(arrayOfInt);
        }
        else if ((localObject2 instanceof Task))
        {
          localObject3 = "Run";
        }
        else
        {
          String str = localObject2.toString();
          localObject3 = str;
        }
      }
    }
    finally
    {
    }
  }

  public String[] getValues(String paramString)
  {
    while (true)
    {
      Object localObject2;
      Object localObject3;
      try
      {
        localObject2 = this.varzTable.get(paramString);
        if ((localObject2 instanceof String[]))
        {
          localObject3 = (String[])localObject2;
          return localObject3;
        }
        if ((localObject2 instanceof int[]))
        {
          localObject3 = new String[1];
          localObject3[0] = getValue(paramString);
          continue;
        }
      }
      finally
      {
      }
      if ((localObject2 instanceof Task))
      {
        Task localTask = (Task)localObject2;
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = localTask.getStateLabel();
        localObject3 = arrayOfString2;
      }
      else
      {
        String[] arrayOfString1 = new String[2];
        arrayOfString1[0] = "Unsupported";
        arrayOfString1[1] = localObject2.getClass().getName();
        localObject3 = arrayOfString1;
      }
    }
  }

  public boolean hasRegisteredValues()
  {
    return this.varzTable.size() != 0;
  }

  public boolean isRegistered(String paramString)
  {
    try
    {
      boolean bool = this.varzTable.containsKey(paramString);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isTask(String paramString)
  {
    try
    {
      boolean bool = this.varzTable.get(paramString) instanceof Task;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void register(String paramString, Task paramTask)
  {
    try
    {
      this.varzTable.put(paramString, paramTask);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void register(String paramString, String[] paramArrayOfString)
  {
    try
    {
      this.varzTable.put(paramString, paramArrayOfString);
      notifyObservers();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void registerBoolean(String paramString, boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      register(paramString, new String[] { "True", "False" });
      while (true)
      {
        return;
        register(paramString, new String[] { "False", "True" });
      }
    }
    finally
    {
    }
  }

  public void registerStatus(String paramString, int paramInt)
  {
    while (true)
    {
      try
      {
        Object localObject2 = this.varzTable.get(paramString);
        if ((localObject2 != null) && ((localObject2 instanceof int[])))
        {
          int[] arrayOfInt2 = (int[])localObject2;
          int j = paramInt + 1;
          int[] arrayOfInt3 = new int[j];
          if (arrayOfInt2.length <= j)
          {
            System.arraycopy(arrayOfInt2, 0, arrayOfInt3, 0, arrayOfInt2.length);
            notifyObservers(paramString);
            return;
          }
          System.arraycopy(arrayOfInt2, 0, arrayOfInt3, 0, arrayOfInt3.length);
          arrayOfInt3[0] = Math.min(-1 + arrayOfInt3.length, arrayOfInt3[0]);
          continue;
        }
      }
      finally
      {
      }
      int i = paramInt + 1;
      int[] arrayOfInt1 = new int[i];
      arrayOfInt1[0] = 0;
      this.varzTable.put(paramString, arrayOfInt1);
    }
  }

  public boolean schedule(String paramString)
  {
    Object localObject = this.varzTable.get(paramString);
    if ((localObject instanceof Task))
    {
      this.logger.info("Scheduling" + paramString);
      ((Task)localObject).schedule();
    }
    return (localObject != null) && ((localObject instanceof Task));
  }

  public boolean setValue(String paramString, int paramInt)
  {
    try
    {
      Object localObject2 = this.varzTable.get(paramString);
      boolean bool1 = false;
      if (localObject2 == null);
      while (true)
      {
        return bool1;
        boolean bool2 = localObject2 instanceof String[];
        bool1 = false;
        if (bool2)
        {
          String[] arrayOfString = (String[])this.varzTable.get(paramString);
          if (paramInt != 0)
          {
            String str = arrayOfString[0];
            arrayOfString[0] = arrayOfString[paramInt];
            arrayOfString[paramInt] = str;
            notifyObservers(paramString);
          }
          bool1 = true;
        }
      }
    }
    finally
    {
    }
  }

  public boolean setValue(String paramString, boolean paramBoolean)
  {
    try
    {
      registerBoolean(paramString, paramBoolean);
      return true;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void updateStatus(String paramString, int paramInt)
  {
    while (true)
    {
      int[] arrayOfInt;
      try
      {
        Object localObject2 = this.varzTable.get(paramString);
        if ((localObject2 == null) || (!(localObject2 instanceof int[])))
          break label126;
        arrayOfInt = (int[])localObject2;
        if (arrayOfInt.length == 1)
        {
          arrayOfInt[0] = paramInt;
          notifyObservers(paramString);
          return;
        }
        if (arrayOfInt[0] == -1 + arrayOfInt.length)
        {
          System.arraycopy(arrayOfInt, 1, arrayOfInt, 2, -2 + arrayOfInt.length);
          arrayOfInt[1] = paramInt;
          continue;
        }
      }
      finally
      {
      }
      System.arraycopy(arrayOfInt, 1, arrayOfInt, 2, arrayOfInt[0]);
      arrayOfInt[1] = paramInt;
      arrayOfInt[0] = (1 + arrayOfInt[0]);
      continue;
      label126: this.varzTable.put(paramString, new int[] { paramInt });
    }
  }

  public void updateStatus(String paramString1, String paramString2)
  {
    try
    {
      Object localObject2 = this.varzTable.get(paramString1);
      if ((localObject2 != null) && ((localObject2 instanceof String[])))
        ((String[])localObject2)[0] = paramString2;
      while (true)
      {
        notifyObservers(paramString1);
        return;
        this.varzTable.put(paramString1, new String[] { paramString2 });
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.RuntimeVarz
 * JD-Core Version:    0.6.2
 */