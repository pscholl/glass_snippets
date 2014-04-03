package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.Maps;
import java.util.Map;
import javax.annotation.Nullable;

@Beta
public final class MutableTypeToInstanceMap<B> extends ForwardingMap<TypeToken<? extends B>, B>
  implements TypeToInstanceMap<B>
{
  private final Map<TypeToken<? extends B>, B> backingMap = Maps.newHashMap();

  @Nullable
  private <T extends B> T trustedGet(TypeToken<T> paramTypeToken)
  {
    return this.backingMap.get(paramTypeToken);
  }

  @Nullable
  private <T extends B> T trustedPut(TypeToken<T> paramTypeToken, @Nullable T paramT)
  {
    return this.backingMap.put(paramTypeToken, paramT);
  }

  protected Map<TypeToken<? extends B>, B> delegate()
  {
    return this.backingMap;
  }

  @Nullable
  public <T extends B> T getInstance(TypeToken<T> paramTypeToken)
  {
    return trustedGet(paramTypeToken.rejectTypeVariables());
  }

  @Nullable
  public <T extends B> T getInstance(Class<T> paramClass)
  {
    return trustedGet(TypeToken.of(paramClass));
  }

  public B put(TypeToken<? extends B> paramTypeToken, B paramB)
  {
    throw new UnsupportedOperationException("Please use putInstance() instead.");
  }

  public void putAll(Map<? extends TypeToken<? extends B>, ? extends B> paramMap)
  {
    throw new UnsupportedOperationException("Please use putInstance() instead.");
  }

  @Nullable
  public <T extends B> T putInstance(TypeToken<T> paramTypeToken, @Nullable T paramT)
  {
    return trustedPut(paramTypeToken.rejectTypeVariables(), paramT);
  }

  @Nullable
  public <T extends B> T putInstance(Class<T> paramClass, @Nullable T paramT)
  {
    return trustedPut(TypeToken.of(paramClass), paramT);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.MutableTypeToInstanceMap
 * JD-Core Version:    0.6.2
 */