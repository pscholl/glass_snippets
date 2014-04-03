package com.google.common.base;

import com.google.common.annotations.Beta;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

public final class Throwables
{
  @Beta
  public static List<Throwable> getCausalChain(Throwable paramThrowable)
  {
    Preconditions.checkNotNull(paramThrowable);
    ArrayList localArrayList = new ArrayList(4);
    while (paramThrowable != null)
    {
      localArrayList.add(paramThrowable);
      paramThrowable = paramThrowable.getCause();
    }
    return Collections.unmodifiableList(localArrayList);
  }

  public static Throwable getRootCause(Throwable paramThrowable)
  {
    while (true)
    {
      Throwable localThrowable = paramThrowable.getCause();
      if (localThrowable == null)
        break;
      paramThrowable = localThrowable;
    }
    return paramThrowable;
  }

  public static String getStackTraceAsString(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }

  public static RuntimeException propagate(Throwable paramThrowable)
  {
    propagateIfPossible((Throwable)Preconditions.checkNotNull(paramThrowable));
    throw new RuntimeException(paramThrowable);
  }

  public static <X extends Throwable> void propagateIfInstanceOf(@Nullable Throwable paramThrowable, Class<X> paramClass)
    throws Throwable
  {
    if ((paramThrowable != null) && (paramClass.isInstance(paramThrowable)))
      throw ((Throwable)paramClass.cast(paramThrowable));
  }

  public static void propagateIfPossible(@Nullable Throwable paramThrowable)
  {
    propagateIfInstanceOf(paramThrowable, Error.class);
    propagateIfInstanceOf(paramThrowable, RuntimeException.class);
  }

  public static <X extends Throwable> void propagateIfPossible(@Nullable Throwable paramThrowable, Class<X> paramClass)
    throws Throwable
  {
    propagateIfInstanceOf(paramThrowable, paramClass);
    propagateIfPossible(paramThrowable);
  }

  public static <X1 extends Throwable, X2 extends Throwable> void propagateIfPossible(@Nullable Throwable paramThrowable, Class<X1> paramClass, Class<X2> paramClass1)
    throws Throwable, Throwable
  {
    Preconditions.checkNotNull(paramClass1);
    propagateIfInstanceOf(paramThrowable, paramClass);
    propagateIfPossible(paramThrowable, paramClass1);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Throwables
 * JD-Core Version:    0.6.2
 */