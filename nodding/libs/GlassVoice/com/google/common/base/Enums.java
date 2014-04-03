package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.lang.reflect.Field;
import javax.annotation.Nullable;

@Beta
@GwtCompatible(emulated=true)
public final class Enums
{
  @GwtIncompatible("reflection")
  public static Field getField(Enum<?> paramEnum)
  {
    Class localClass = paramEnum.getDeclaringClass();
    try
    {
      Field localField = localClass.getDeclaredField(paramEnum.name());
      return localField;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new AssertionError(localNoSuchFieldException);
    }
  }

  public static <T extends Enum<T>> Optional<T> getIfPresent(Class<T> paramClass, String paramString)
  {
    Preconditions.checkNotNull(paramClass);
    Preconditions.checkNotNull(paramString);
    try
    {
      Optional localOptional = Optional.of(Enum.valueOf(paramClass, paramString));
      return localOptional;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return Optional.absent();
  }

  public static <T extends Enum<T>> Function<String, T> valueOfFunction(Class<T> paramClass)
  {
    return new ValueOfFunction(paramClass, null);
  }

  private static final class ValueOfFunction<T extends Enum<T>>
    implements Function<String, T>, Serializable
  {
    private static final long serialVersionUID;
    private final Class<T> enumClass;

    private ValueOfFunction(Class<T> paramClass)
    {
      this.enumClass = ((Class)Preconditions.checkNotNull(paramClass));
    }

    public T apply(String paramString)
    {
      try
      {
        Enum localEnum = Enum.valueOf(this.enumClass, paramString);
        return localEnum;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
      }
      return null;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return ((paramObject instanceof ValueOfFunction)) && (this.enumClass.equals(((ValueOfFunction)paramObject).enumClass));
    }

    public int hashCode()
    {
      return this.enumClass.hashCode();
    }

    public String toString()
    {
      return "Enums.valueOf(" + this.enumClass + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Enums
 * JD-Core Version:    0.6.2
 */