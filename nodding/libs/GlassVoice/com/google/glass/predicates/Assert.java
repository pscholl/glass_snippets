package com.google.glass.predicates;

import android.os.Looper;
import com.google.glass.build.BuildHelper;

public class Assert
{
  private static boolean isTest = false;

  public static void assertEquals(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 != paramObject2) && ((paramObject1 == null) || (paramObject2 == null) || (!paramObject1.equals(paramObject2))))
      throw new IllegalStateException("Expected to be equal: " + paramObject1 + " vs " + paramObject2);
  }

  public static void assertFalse(boolean paramBoolean)
  {
    if (paramBoolean)
      throw new IllegalStateException("Expected condition to be false.");
  }

  public static void assertFalse(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
      throw new IllegalStateException(paramString);
  }

  public static void assertFloatingEquals(float paramFloat1, float paramFloat2)
  {
    if (Math.abs(paramFloat1 - paramFloat2) < 1.4E-45F);
    for (boolean bool = true; ; bool = false)
    {
      assertTrue(bool);
      return;
    }
  }

  public static void assertIsTest()
  {
    if (!isTest)
      throw new IllegalStateException("This should only be called in tests.");
  }

  public static <T> T assertNotNull(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    return paramT;
  }

  public static <T> T assertNotNull(String paramString, T paramT)
  {
    if (paramT == null)
      throw new NullPointerException(paramString);
    return paramT;
  }

  public static void assertNotUiThread()
  {
    if ((!BuildHelper.isUser()) && (!isTest) && (isUiThread()))
      throw new IllegalStateException("This should not be called on the UI thread.");
  }

  public static void assertNull(Object paramObject)
  {
    if (paramObject != null)
      throw new IllegalStateException("Expected null.");
  }

  public static void assertTrue(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalStateException("Expected condition to be true.");
  }

  public static void assertTrue(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean)
      throw new IllegalStateException(paramString);
  }

  public static void assertUiThread()
  {
    if ((!BuildHelper.isUser()) && (!isTest) && (!isUiThread()))
      throw new IllegalStateException("This should be called on the UI thread.");
  }

  public static boolean isTest()
  {
    return isTest;
  }

  public static boolean isUiThread()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }

  public static void setIsTest()
  {
    isTest = true;
  }

  public static void unsetIsTest()
  {
    isTest = false;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.predicates.Assert
 * JD-Core Version:    0.6.2
 */