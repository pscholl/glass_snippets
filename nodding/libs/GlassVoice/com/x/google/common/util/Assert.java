package com.x.google.common.util;

import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public final class Assert
{
  private static final Object NULL_OBJECT = new Object();

  public static void assertArrayContains(String paramString, int[] paramArrayOfInt, int paramInt)
  {
    if (assertArrayContainsInternal(paramArrayOfInt, paramInt) < 0)
      fail(paramString, "array doesn't contain " + paramInt);
  }

  public static void assertArrayContains(String paramString, Object[] paramArrayOfObject, Object paramObject)
  {
    if (assertArrayContainsInternal(paramArrayOfObject, paramObject) < 0)
      fail(paramString, "array doesn't contain " + paramObject);
  }

  public static void assertArrayContains(int[] paramArrayOfInt, int paramInt)
  {
    assertArrayContains(null, paramArrayOfInt, paramInt);
  }

  public static void assertArrayContains(Object[] paramArrayOfObject, Object paramObject)
  {
    assertArrayContains(null, paramArrayOfObject, paramObject);
  }

  private static int assertArrayContainsInternal(int[] paramArrayOfInt, int paramInt)
  {
    if (paramArrayOfInt == null)
      throw new IllegalArgumentException("Parameter 'array' may not be null.");
    return ArrayUtil.indexOf(paramArrayOfInt, paramInt);
  }

  private static int assertArrayContainsInternal(Object[] paramArrayOfObject, Object paramObject)
  {
    if (paramArrayOfObject == null)
      throw new IllegalArgumentException("Parameter 'array' may not be null.");
    return ArrayUtil.indexOf(paramArrayOfObject, paramObject);
  }

  public static void assertArrayEquals(Object paramObject1, Object paramObject2)
  {
    assertArrayEquals(null, paramObject1, paramObject2);
  }

  public static void assertArrayEquals(String paramString, Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
      throw new IllegalArgumentException("Parameter 'expected' may not be null. Use assertNull instead.");
    if (paramObject1 != paramObject2)
    {
      if (paramObject2 == null)
        fail(paramString, "value was null when " + DebugUtil.formatArray(paramObject1) + " was expected");
      int i = DebugUtil.getArrayLength(paramObject1);
      int j = DebugUtil.getArrayLength(paramObject2);
      if (i != j)
        fail(paramString, "array lengths differ,  expected [" + i + "] but got [" + j + "]");
      assertArrayRegionEqualsInternal(paramString, paramObject1, paramObject2, 0, 0, i);
    }
  }

  public static void assertArrayNotContains(String paramString, int[] paramArrayOfInt, int paramInt)
  {
    int i = assertArrayContainsInternal(paramArrayOfInt, paramInt);
    if (i >= 0)
      fail(paramString, "array contains " + paramInt + " at " + i);
  }

  public static void assertArrayNotContains(String paramString, Object[] paramArrayOfObject, Object paramObject)
  {
    int i = assertArrayContainsInternal(paramArrayOfObject, paramObject);
    if (i >= 0)
      fail(paramString, "array contains " + paramObject + " at " + i);
  }

  public static void assertArrayNotContains(int[] paramArrayOfInt, int paramInt)
  {
    assertArrayNotContains(null, paramArrayOfInt, paramInt);
  }

  public static void assertArrayNotContains(Object[] paramArrayOfObject, Object paramObject)
  {
    assertArrayNotContains(null, paramArrayOfObject, paramObject);
  }

  public static void assertArrayRegionEquals(Object paramObject1, Object paramObject2, int paramInt1, int paramInt2, int paramInt3)
  {
    assertArrayRegionEquals(null, paramObject1, paramObject2, paramInt1, paramInt2, paramInt3);
  }

  public static void assertArrayRegionEquals(String paramString, Object paramObject1, Object paramObject2, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramObject1 == null)
      throw new IllegalArgumentException("Parameter 'expected' may not be null. Use assertNull instead.");
    if (paramObject1 != paramObject2)
    {
      if (paramObject2 == null)
        fail(paramString, "value was null when " + DebugUtil.formatArray(paramObject1) + " was expected");
      assertArrayRegionEqualsInternal(paramString, paramObject1, paramObject2, paramInt1, paramInt2, paramInt3);
    }
  }

  private static void assertArrayRegionEqualsInternal(String paramString, Object paramObject1, Object paramObject2, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Parameter 'expectedStart' may not be less than zero.");
    if (paramInt2 < 0)
      throw new IllegalArgumentException("Parameter 'actualStart' may not be less than zero.");
    if (paramInt3 < 0)
      throw new IllegalArgumentException("Parameter 'count' may not be less than zero.");
    if (paramInt1 + paramInt3 > DebugUtil.getArrayLength(paramObject1))
      throw new IllegalArgumentException("The region may not extend off the end of the 'expected' array.");
    if (paramObject1 != paramObject2)
    {
      Class localClass1 = paramObject1.getClass();
      Class localClass2 = paramObject2.getClass();
      if (!localClass1.equals(localClass2))
        fail(paramString, "arrays have different types,  expected [" + localClass1 + "] but got [" + localClass2 + "]");
      if (DebugUtil.getArrayLength(paramObject2) < paramInt2 + paramInt3)
        fail(paramString, "array too short, expected at least [" + paramInt3 + "] elements," + " but only got [" + (DebugUtil.getArrayLength(paramObject2) - paramInt2) + "]");
      for (int i = 0; i < paramInt3; i++)
      {
        Object localObject1 = DebugUtil.getArrayElement(paramObject1, paramInt1 + i);
        Object localObject2 = DebugUtil.getArrayElement(paramObject2, paramInt2 + i);
        if (!localObject1.equals(localObject2))
          fail(paramString, "arrays differ at element " + i + ", expected [" + localObject1 + "] but got [" + localObject2 + "]");
      }
    }
  }

  public static void assertContains(String paramString1, String paramString2)
  {
    assertContains(null, paramString1, paramString2);
  }

  public static void assertContains(String paramString1, String paramString2, String paramString3)
  {
    if (-1 == paramString2.indexOf(paramString3))
      fail(paramString1, "'" + paramString2 + "' does not contain '" + paramString3 + "'");
  }

  public static void assertElementsNotNull(Object[] paramArrayOfObject)
  {
    assertNotNull(paramArrayOfObject);
    assertElementsNotNull(paramArrayOfObject, 0, paramArrayOfObject.length);
  }

  public static void assertElementsNotNull(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    int i = 0;
    assertNotNull(paramArrayOfObject);
    if (paramInt1 + paramInt2 <= paramArrayOfObject.length);
    for (boolean bool = true; ; bool = false)
    {
      assertTrue(bool);
      while (i < paramInt2)
      {
        assertNotNull(paramArrayOfObject[(paramInt1 + i)]);
        i++;
      }
    }
  }

  public static void assertEquals(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    assertEquals(null, paramDouble1, paramDouble2, paramDouble3);
  }

  public static void assertEquals(long paramLong1, long paramLong2)
  {
    assertEquals(null, paramLong1, paramLong2);
  }

  public static void assertEquals(Object paramObject1, Object paramObject2)
  {
    assertEquals(null, paramObject1, paramObject2);
  }

  public static void assertEquals(String paramString, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    if (Math.abs(paramDouble1 - paramDouble2) > paramDouble3)
      fail(paramString, "values not equal, expected [" + paramDouble1 + "] but got [" + paramDouble2 + "]");
  }

  public static void assertEquals(String paramString, long paramLong1, long paramLong2)
  {
    if (paramLong1 != paramLong2)
      fail(paramString, "values not equal, expected [" + paramLong1 + "] but got [" + paramLong2 + "]");
  }

  public static void assertEquals(String paramString, Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) && (paramObject2 == null));
    while ((paramObject1 != null) && (paramObject1.equals(paramObject2)))
      return;
    fail(paramString, "objects not equal, expected [" + DebugUtil.escape(paramObject1) + "] but got [" + DebugUtil.escape(paramObject2) + "]");
  }

  public static void assertEquals(String paramString, Vector paramVector1, Vector paramVector2)
  {
    if (paramVector1 == null)
      throw new IllegalArgumentException("Parameter 'expected' may not be null. Use assertNull instead.");
    if (paramVector1 != paramVector2)
    {
      if (paramVector2 == null)
        fail(paramString, "value was null when [" + paramVector1 + "] was expected");
      if (paramVector1.size() != paramVector2.size())
        fail(paramString, "vector lengths differ,  expected [" + paramVector1.size() + "] but got [" + paramVector2.size() + "]");
      int i = 0;
      if (i < paramVector1.size())
      {
        Object localObject1 = paramVector1.elementAt(i);
        Object localObject2 = paramVector2.elementAt(i);
        if (localObject1 == null)
          if (paramVector2 != null)
            fail(paramString, "vectors differ at element " + i + ", " + "expected  [null] but got [" + localObject2 + "]");
        while (true)
        {
          i++;
          break;
          if (!localObject1.equals(localObject2))
            fail(paramString, "vectors differ at element " + i + ", " + "expected " + "[" + localObject1 + "] but got [" + localObject2 + "]");
        }
      }
    }
  }

  public static void assertEquals(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 != paramBoolean2)
      fail(paramString, "booleans not equal, expected [" + paramBoolean1 + "]");
  }

  public static void assertEquals(Vector paramVector1, Vector paramVector2)
  {
    assertEquals(null, paramVector1, paramVector2);
  }

  public static void assertEquals(boolean paramBoolean1, boolean paramBoolean2)
  {
    assertEquals(null, paramBoolean1, paramBoolean2);
  }

  public static void assertEqualsAnyOrder(String paramString, Vector paramVector1, Vector paramVector2)
  {
    if (paramVector1 == null)
      throw new IllegalArgumentException("Parameter 'expected' may not be null. Use assertNull instead.");
    Hashtable localHashtable;
    Object localObject3;
    if (paramVector1 != paramVector2)
    {
      if (paramVector2 == null)
        fail(paramString, "value was null when [" + paramVector1 + "] was expected");
      if (paramVector1.size() != paramVector2.size())
        fail(paramString, "vector lengths differ,  expected [" + paramVector1.size() + "] but got [" + paramVector2.size() + "]");
      localHashtable = new Hashtable(paramVector2.size());
      Enumeration localEnumeration1 = paramVector2.elements();
      if (localEnumeration1.hasMoreElements())
      {
        localObject3 = localEnumeration1.nextElement();
        if (localObject3 != null)
          break label335;
      }
    }
    label328: label335: for (Object localObject4 = NULL_OBJECT; ; localObject4 = localObject3)
    {
      Integer localInteger2 = (Integer)localHashtable.get(localObject4);
      if (localInteger2 == null)
      {
        localHashtable.put(localObject4, new Integer(1));
        break;
      }
      localHashtable.put(localObject4, new Integer(1 + localInteger2.intValue()));
      break;
      Enumeration localEnumeration2 = paramVector1.elements();
      Object localObject1;
      if (localEnumeration2.hasMoreElements())
      {
        localObject1 = localEnumeration2.nextElement();
        if (localObject1 != null)
          break label328;
      }
      for (Object localObject2 = NULL_OBJECT; ; localObject2 = localObject1)
      {
        Integer localInteger1 = (Integer)localHashtable.get(localObject2);
        if ((localInteger1 == null) || (localInteger1.intValue() == 0))
        {
          fail(paramString, "vectors differ, expected object [" + localObject2 + "] was not found");
          break;
        }
        localHashtable.put(localObject2, new Integer(-1 + localInteger1.intValue()));
        break;
        return;
      }
    }
  }

  public static void assertEqualsAnyOrder(Vector paramVector1, Vector paramVector2)
  {
    assertEqualsAnyOrder(null, paramVector1, paramVector2);
  }

  public static void assertFalse(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      fail(paramString, "condition was true");
  }

  public static void assertFalse(boolean paramBoolean)
  {
    assertFalse(null, paramBoolean);
  }

  public static void assertFlagOnlyOne(int paramInt1, int paramInt2)
  {
    int i = paramInt1 & paramInt2;
    if (i == 0)
      fail("None bit in set in value\nvalue\n" + Integer.toBinaryString(paramInt1) + "\nflags\n" + Integer.toBinaryString(paramInt2));
    if ((i & i - 1) != 0)
      fail("More bits set\nvalue\n" + Integer.toBinaryString(paramInt1) + "\nflags\n" + Integer.toBinaryString(paramInt2));
  }

  public static void assertFlagsAtLeast(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & paramInt2) == 0)
      fail("None bit in set in value\nvalue\n" + Integer.toBinaryString(paramInt1) + "\nflags\n" + Integer.toBinaryString(paramInt2));
  }

  public static void assertFlagsSet(int paramInt1, int paramInt2)
  {
    String str = "The value does not matches the flags\nvalue\n" + Integer.toBinaryString(paramInt1) + "\nflags\n" + Integer.toBinaryString(paramInt2);
    if (paramInt1 == (paramInt1 & paramInt2));
    for (boolean bool = true; ; bool = false)
    {
      assertTrue(str, bool);
      return;
    }
  }

  public static void assertLocked(Object paramObject)
  {
    assertLocked(null, paramObject);
  }

  public static void assertLocked(String paramString, Object paramObject)
  {
    if (paramObject == null)
      fail(paramString, "object is null");
    try
    {
      paramObject.notify();
      return;
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException)
    {
      fail(paramString, "monitor on [" + paramObject + "] is not held by current thread");
    }
  }

  public static void assertNotContains(String paramString1, String paramString2)
  {
    assertNotContains(null, paramString1, paramString2);
  }

  public static void assertNotContains(String paramString1, String paramString2, String paramString3)
  {
    if (-1 != paramString2.indexOf(paramString3))
      fail(paramString1, "'" + paramString2 + "' contains '" + paramString3 + "'");
  }

  public static void assertNotEquals(long paramLong1, long paramLong2)
  {
    assertNotEquals(null, paramLong1, paramLong2);
  }

  public static void assertNotEquals(Object paramObject1, Object paramObject2)
  {
    assertNotEquals(null, paramObject1, paramObject2);
  }

  public static void assertNotEquals(String paramString, long paramLong1, long paramLong2)
  {
    if (paramLong1 == paramLong2)
      fail(paramString, "values equal, did not expect [" + paramLong1 + "]");
  }

  public static void assertNotEquals(String paramString, Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
      if (paramObject2 == null)
        bool = true;
    while (true)
    {
      if (bool)
        fail(paramString, "objects equal, did not expect [" + DebugUtil.escape(paramObject1) + "]");
      return;
      bool = false;
      continue;
      bool = paramObject1.equals(paramObject2);
    }
  }

  public static void assertNotEquals(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == paramBoolean2)
      fail(paramString, "booleans equal, did not expect [" + paramBoolean1 + "]");
  }

  public static void assertNotEquals(boolean paramBoolean1, boolean paramBoolean2)
  {
    assertNotEquals(null, paramBoolean1, paramBoolean2);
  }

  public static void assertNotLocked(Object paramObject)
  {
    assertNotLocked(null, paramObject);
  }

  public static void assertNotLocked(String paramString, Object paramObject)
  {
    if (paramObject == null)
      fail(paramString, "object is null");
    try
    {
      paramObject.notify();
      fail(paramString, "monitor on [" + paramObject + "] is held by current thread");
      return;
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException)
    {
    }
  }

  public static void assertNotNull(Object paramObject)
  {
    assertNotNull(null, paramObject);
  }

  public static void assertNotNull(String paramString, Object paramObject)
  {
    if (paramObject == null)
      fail(paramString, "object is null");
  }

  public static void assertNotSame(Object paramObject1, Object paramObject2)
  {
    assertNotSame(null, paramObject1, paramObject2);
  }

  public static void assertNotSame(String paramString, Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2)
      fail(paramString, "objects same, did not expect [" + paramObject1 + "]");
  }

  public static void assertNull(Object paramObject)
  {
    assertNull(null, paramObject);
  }

  public static void assertNull(String paramString, Object paramObject)
  {
    if (paramObject != null)
      fail(paramString, "object is not null [" + DebugUtil.escape(paramObject) + "]");
  }

  public static void assertSame(Object paramObject1, Object paramObject2)
  {
    assertSame(null, paramObject1, paramObject2);
  }

  public static void assertSame(String paramString, Object paramObject1, Object paramObject2)
  {
    if (paramObject1 != paramObject2)
      fail(paramString, "objects not same, expected [" + paramObject1 + "] but got [" + paramObject2 + "]");
  }

  public static void assertTrue(String paramString, boolean paramBoolean)
  {
    if (!paramBoolean)
      fail(paramString, "condition was false");
  }

  public static void assertTrue(boolean paramBoolean)
  {
    assertTrue(null, paramBoolean);
  }

  public static void fail(String paramString)
  {
    throwAssertionError(paramString);
  }

  private static void fail(String paramString1, String paramString2)
  {
    if (paramString1 != null)
      paramString2 = paramString1 + " :: " + paramString2;
    fail(paramString2);
  }

  private static void throwAssertionError(String paramString)
  {
    try
    {
      throw new Throwable();
    }
    catch (Throwable localThrowable)
    {
      System.out.println("Assert common");
      localThrowable.printStackTrace();
    }
    throw new AssertionError(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.util.Assert
 * JD-Core Version:    0.6.2
 */