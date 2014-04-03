package com.google.glass.util;

import com.google.common.primitives.Ints;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ProtoEnumUtils
{
  public static final int UNSET = -2147483648;
  private static Map<Class, Map<String, Integer>> enumInfoMap = new HashMap();
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  private static Map<String, Integer> getEnumInfo(Class paramClass)
  {
    if (enumInfoMap.containsKey(paramClass))
      return (Map)enumInfoMap.get(paramClass);
    HashMap localHashMap = new HashMap();
    while (true)
    {
      int j;
      try
      {
        Field[] arrayOfField = paramClass.getDeclaredFields();
        boolean bool = false;
        int i = arrayOfField.length;
        j = 0;
        if (j < i)
        {
          Field localField = arrayOfField[j];
          if ((localField.getType().equals(Integer.TYPE)) && (Modifier.isStatic(localField.getModifiers())) && (Modifier.isFinal(localField.getModifiers())))
          {
            localHashMap.put(localField.getName(), Integer.valueOf(localField.getInt(null)));
            bool = true;
          }
        }
        else
        {
          Assert.assertTrue(bool);
          enumInfoMap.put(paramClass, localHashMap);
          return localHashMap;
        }
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramClass.getSimpleName();
        localFormattingLogger.e(localIllegalAccessException, "Error getting enum info for %s", arrayOfObject);
        return null;
      }
      j++;
    }
  }

  public static String getEnumName(Class paramClass, int paramInt)
  {
    try
    {
      Iterator localIterator = getEnumInfo(paramClass).entrySet().iterator();
      Map.Entry localEntry;
      do
      {
        if (!localIterator.hasNext())
          break;
        localEntry = (Map.Entry)localIterator.next();
      }
      while (((Integer)localEntry.getValue()).intValue() != paramInt);
      for (String str = (String)localEntry.getKey(); ; str = null)
      {
        return str;
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        arrayOfObject[1] = paramClass.getSimpleName();
        localFormattingLogger.e("Error getting enum name %s for %s", arrayOfObject);
      }
    }
    finally
    {
    }
  }

  public static int getEnumValue(Class paramClass, String paramString)
  {
    try
    {
      Map localMap = getEnumInfo(paramClass);
      if (!localMap.containsKey(paramString))
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString;
        arrayOfObject[1] = paramClass.getSimpleName();
        localFormattingLogger.e("No enum value %s for %s", arrayOfObject);
      }
      int i;
      for (int j = -2147483648; ; j = i)
      {
        return j;
        i = ((Integer)localMap.get(paramString)).intValue();
      }
    }
    finally
    {
    }
  }

  public static int[] getEnumValues(Class paramClass)
  {
    try
    {
      int[] arrayOfInt = Ints.toArray(getEnumInfo(paramClass).values());
      Arrays.sort(arrayOfInt);
      return arrayOfInt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ProtoEnumUtils
 * JD-Core Version:    0.6.2
 */