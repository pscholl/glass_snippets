package com.x.google.debug;

public class DebugUtil
{
  public static String getAntProperty(String paramString1, String paramString2)
  {
    if (isAntPropertyExpanded(paramString1))
      return paramString1;
    return paramString2;
  }

  public static boolean getAntPropertyAsBoolean(String paramString, boolean paramBoolean)
  {
    String str1 = getAntPropertyOrNull(paramString);
    String str2;
    if (str1 != null)
    {
      str2 = str1.toLowerCase();
      if (!str2.equals("true"))
        break label27;
      paramBoolean = true;
    }
    label27: 
    while (!str2.equals("false"))
      return paramBoolean;
    return false;
  }

  public static int getAntPropertyAsInt(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(getAntPropertyOrNull(paramString));
      return i;
    }
    catch (Exception localException)
    {
    }
    return paramInt;
  }

  public static String getAntPropertyOrNull(String paramString)
  {
    return getAntProperty(paramString, null);
  }

  public static Class getClass(String paramString)
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new RuntimeException("Missing class " + paramString);
  }

  public static String getLogSource(Class paramClass)
  {
    String str = paramClass.getName();
    int i = str.lastIndexOf('.');
    if ((i != -1) && (i != -1 + str.length()))
      str = str.substring(i + 1, str.length());
    return str;
  }

  public static String getLogSource(Class paramClass, String paramString)
  {
    return getLogSource(paramClass) + "[" + paramString + "]";
  }

  public static String getLogSource(Object paramObject)
  {
    return getLogSource(paramObject.getClass());
  }

  public static boolean holdLock(Object paramObject)
  {
    try
    {
      paramObject.notify();
      return true;
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException)
    {
    }
    return false;
  }

  public static Class injectClass(String paramString)
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new RuntimeException("Missing injectable class " + paramString + "\n" + "This may be a symptom of a dynamically referenced class being removed during\n" + "optimization. The most likely cause of this is a bug in Bolide which has\n" + "prevented one the optimizer steps from knowing that the class should not be\n" + "removed or renamed. Please mail bolide-dev@google.com with details.");
  }

  public static boolean isAntPropertyExpanded(String paramString)
  {
    return !paramString.startsWith("${");
  }

  public static Object newInstance(Class paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Cannot instantiate instance of class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new RuntimeException("No public default constructor for class " + paramClass.getName());
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.DebugUtil
 * JD-Core Version:    0.6.2
 */