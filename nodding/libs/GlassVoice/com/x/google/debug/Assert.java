package com.x.google.debug;

public final class Assert
{
  private static final String FAIL_REASON = "explicit assertion failure";
  private static final boolean NEGATIVE = false;
  private static final boolean POSITIVE = true;

  public static void assertEquals(long paramLong1, long paramLong2)
  {
    assertEquals(null, paramLong1, paramLong2);
  }

  public static void assertEquals(Object paramObject1, Object paramObject2)
  {
    assertEquals(null, paramObject1, paramObject2);
  }

  public static void assertEquals(String paramString, long paramLong1, long paramLong2)
  {
    failIfReason(checkEquality(paramLong1, paramLong2, true), paramString);
  }

  public static void assertEquals(String paramString, Object paramObject1, Object paramObject2)
  {
    failIfReason(checkEquality(paramObject1, paramObject2, true), paramString);
  }

  public static void assertEquals(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    failIfReason(checkEquality(paramBoolean1, paramBoolean2, true), paramString);
  }

  public static void assertEquals(boolean paramBoolean1, boolean paramBoolean2)
  {
    assertEquals(null, paramBoolean1, paramBoolean2);
  }

  public static void assertFalse(String paramString, boolean paramBoolean)
  {
    failIfReason(checkTrue(paramBoolean, false), paramString);
  }

  public static void assertFalse(boolean paramBoolean)
  {
    assertFalse(null, paramBoolean);
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
    failIfReason(checkEquality(paramLong1, paramLong2, false), paramString);
  }

  public static void assertNotEquals(String paramString, Object paramObject1, Object paramObject2)
  {
    failIfReason(checkEquality(paramObject1, paramObject2, false), paramString);
  }

  public static void assertNotEquals(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    failIfReason(checkEquality(paramBoolean1, paramBoolean2, false), paramString);
  }

  public static void assertNotEquals(boolean paramBoolean1, boolean paramBoolean2)
  {
    assertNotEquals(null, paramBoolean1, paramBoolean2);
  }

  public static void assertNotNull(Object paramObject)
  {
    assertNotNull(null, paramObject);
  }

  public static void assertNotNull(String paramString, Object paramObject)
  {
    failIfReason(checkNull(paramObject, false), paramString);
  }

  public static void assertNotSame(Object paramObject1, Object paramObject2)
  {
    assertNotSame(null, paramObject1, paramObject2);
  }

  public static void assertNotSame(String paramString, Object paramObject1, Object paramObject2)
  {
    failIfReason(checkSame(paramObject1, paramObject2, false), paramString);
  }

  public static void assertNull(Object paramObject)
  {
    assertNull(null, paramObject);
  }

  public static void assertNull(String paramString, Object paramObject)
  {
    failIfReason(checkNull(paramObject, true), paramString);
  }

  public static void assertSame(Object paramObject1, Object paramObject2)
  {
    assertSame(null, paramObject1, paramObject2);
  }

  public static void assertSame(String paramString, Object paramObject1, Object paramObject2)
  {
    failIfReason(checkSame(paramObject1, paramObject2, true), paramString);
  }

  public static void assertTrue(String paramString, boolean paramBoolean)
  {
    failIfReason(checkTrue(paramBoolean, true), paramString);
  }

  public static void assertTrue(boolean paramBoolean)
  {
    assertTrue(null, paramBoolean);
  }

  private static String checkEquality(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if (paramLong1 == paramLong2);
    for (boolean bool = true; bool == paramBoolean; bool = false)
      return null;
    return failEquality(new Long(paramLong1), new Long(paramLong2), paramBoolean);
  }

  private static String checkEquality(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    if ((paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2))));
    for (boolean bool = true; bool == paramBoolean; bool = false)
      return null;
    return failEquality(paramObject1, paramObject2, paramBoolean);
  }

  private static String checkEquality(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1 == paramBoolean2);
    for (boolean bool = true; bool == paramBoolean3; bool = false)
      return null;
    return failEquality(new Boolean(paramBoolean1), new Boolean(paramBoolean2), paramBoolean3);
  }

  private static String checkNull(Object paramObject, boolean paramBoolean)
  {
    if (paramObject == null);
    for (boolean bool = true; bool == paramBoolean; bool = false)
      return null;
    return failNull(paramBoolean);
  }

  private static String checkSame(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    if (paramObject1 == paramObject2);
    for (boolean bool = true; bool == paramBoolean; bool = false)
      return null;
    return failSame(paramObject1, paramObject2, paramBoolean);
  }

  private static String checkTrue(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1 == paramBoolean2)
      return null;
    return failTrue(paramBoolean2);
  }

  public static void fail()
  {
    throwAssertionError(format("explicit assertion failure", null));
  }

  public static void fail(String paramString)
  {
    throwAssertionError(format("explicit assertion failure", paramString));
  }

  private static String failEquality(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    if (paramBoolean == true)
      return "expected [" + paramObject1 + "] but got [" + paramObject2 + "]";
    return "did not expect [" + paramObject2 + "]";
  }

  private static void failIfReason(String paramString1, String paramString2)
  {
    if (paramString1 != null)
      throwAssertionError(format(paramString1, paramString2));
  }

  private static void failIfReason(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    if (paramString1 != null)
      throwAssertionError(format(paramString1, paramString2, paramString3, paramString4, paramInt));
  }

  private static String failNull(boolean paramBoolean)
  {
    if (paramBoolean == true)
      return "expected null";
    return "did not expect null";
  }

  private static String failSame(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    if (paramBoolean == true)
      return "expected instance [" + paramObject1 + "] but got [" + paramObject2 + "]";
    return "did not expect instance [" + paramObject2 + "]";
  }

  private static String failTrue(boolean paramBoolean)
  {
    if (paramBoolean == true)
      return "expected true";
    return "did not expect true";
  }

  private static String format(String paramString1, String paramString2)
  {
    if (paramString2 != null)
      paramString1 = paramString2 + " :: " + paramString1;
    return paramString1;
  }

  private static String format(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    return format(paramString1, paramString2) + " [" + paramString3 + "#" + paramString4 + ":" + paramInt + "]";
  }

  private static void throwAssertionError(String paramString)
  {
    try
    {
      throw new AssertionError(paramString);
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      throw ((AssertionError)localThrowable);
    }
  }

  public static void xassertEquals(long paramLong1, long paramLong2, String paramString1, String paramString2, int paramInt)
  {
    xassertEquals(null, paramLong1, paramLong2, paramString1, paramString2, paramInt);
  }

  public static void xassertEquals(Object paramObject1, Object paramObject2, String paramString1, String paramString2, int paramInt)
  {
    xassertEquals(null, paramObject1, paramObject2, paramString1, paramString2, paramInt);
  }

  public static void xassertEquals(String paramString1, long paramLong1, long paramLong2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkEquality(paramLong1, paramLong2, true), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertEquals(String paramString1, Object paramObject1, Object paramObject2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkEquality(paramObject1, paramObject2, true), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertEquals(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkEquality(paramBoolean1, paramBoolean2, true), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertEquals(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, int paramInt)
  {
    xassertEquals(null, paramBoolean1, paramBoolean2, paramString1, paramString2, paramInt);
  }

  public static void xassertFalse(String paramString1, boolean paramBoolean, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkTrue(paramBoolean, false), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertFalse(boolean paramBoolean, String paramString1, String paramString2, int paramInt)
  {
    xassertFalse(null, paramBoolean, paramString1, paramString2, paramInt);
  }

  public static void xassertNotEquals(long paramLong1, long paramLong2, String paramString1, String paramString2, int paramInt)
  {
    xassertNotEquals(null, paramLong1, paramLong2, paramString1, paramString2, paramInt);
  }

  public static void xassertNotEquals(Object paramObject1, Object paramObject2, String paramString1, String paramString2, int paramInt)
  {
    xassertNotEquals(null, paramObject1, paramObject2, paramString1, paramString2, paramInt);
  }

  public static void xassertNotEquals(String paramString1, long paramLong1, long paramLong2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkEquality(paramLong1, paramLong2, false), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertNotEquals(String paramString1, Object paramObject1, Object paramObject2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkEquality(paramObject1, paramObject2, false), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertNotEquals(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkEquality(paramBoolean1, paramBoolean2, false), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertNotEquals(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, int paramInt)
  {
    xassertNotEquals(null, paramBoolean1, paramBoolean2, paramString1, paramString2, paramInt);
  }

  public static void xassertNotNull(Object paramObject, String paramString1, String paramString2, int paramInt)
  {
    xassertNotNull(null, paramObject, paramString1, paramString2, paramInt);
  }

  public static void xassertNotNull(String paramString1, Object paramObject, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkNull(paramObject, false), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertNotSame(Object paramObject1, Object paramObject2, String paramString1, String paramString2, int paramInt)
  {
    xassertNotSame(null, paramObject1, paramObject2, paramString1, paramString2, paramInt);
  }

  public static void xassertNotSame(String paramString1, Object paramObject1, Object paramObject2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkSame(paramObject1, paramObject2, false), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertNull(Object paramObject, String paramString1, String paramString2, int paramInt)
  {
    xassertNull(null, paramObject, paramString1, paramString2, paramInt);
  }

  public static void xassertNull(String paramString1, Object paramObject, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkNull(paramObject, true), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertSame(Object paramObject1, Object paramObject2, String paramString1, String paramString2, int paramInt)
  {
    xassertSame(null, paramObject1, paramObject2, paramString1, paramString2, paramInt);
  }

  public static void xassertSame(String paramString1, Object paramObject1, Object paramObject2, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkSame(paramObject1, paramObject2, true), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertTrue(String paramString1, boolean paramBoolean, String paramString2, String paramString3, int paramInt)
  {
    failIfReason(checkTrue(paramBoolean, true), paramString1, paramString2, paramString3, paramInt);
  }

  public static void xassertTrue(boolean paramBoolean, String paramString1, String paramString2, int paramInt)
  {
    xassertTrue(null, paramBoolean, paramString1, paramString2, paramInt);
  }

  public static void xfail(String paramString1, String paramString2, int paramInt)
  {
    throwAssertionError(format("explicit assertion failure", null, paramString1, paramString2, paramInt));
  }

  public static void xfail(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    throwAssertionError(format("explicit assertion failure", paramString1, paramString2, paramString3, paramInt));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.Assert
 * JD-Core Version:    0.6.2
 */