package com.google.common.collect;

import com.google.common.primitives.Primitives;
import java.util.HashMap;
import java.util.Map;

public final class MutableClassToInstanceMap<B> extends MapConstraints.ConstrainedMap<Class<? extends B>, B>
  implements ClassToInstanceMap<B>
{
  private static final MapConstraint<Class<?>, Object> VALUE_CAN_BE_CAST_TO_KEY = new MapConstraint()
  {
    public void checkKeyValue(Class<?> paramAnonymousClass, Object paramAnonymousObject)
    {
      MutableClassToInstanceMap.cast(paramAnonymousClass, paramAnonymousObject);
    }
  };
  private static final long serialVersionUID;

  private MutableClassToInstanceMap(Map<Class<? extends B>, B> paramMap)
  {
    super(paramMap, VALUE_CAN_BE_CAST_TO_KEY);
  }

  private static <B, T extends B> T cast(Class<T> paramClass, B paramB)
  {
    return Primitives.wrap(paramClass).cast(paramB);
  }

  public static <B> MutableClassToInstanceMap<B> create()
  {
    return new MutableClassToInstanceMap(new HashMap());
  }

  public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> paramMap)
  {
    return new MutableClassToInstanceMap(paramMap);
  }

  public <T extends B> T getInstance(Class<T> paramClass)
  {
    return cast(paramClass, get(paramClass));
  }

  public <T extends B> T putInstance(Class<T> paramClass, T paramT)
  {
    return cast(paramClass, put(paramClass, paramT));
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.MutableClassToInstanceMap
 * JD-Core Version:    0.6.2
 */