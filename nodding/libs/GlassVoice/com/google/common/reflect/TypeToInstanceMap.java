package com.google.common.reflect;

import com.google.common.annotations.Beta;
import java.util.Map;
import javax.annotation.Nullable;

@Beta
public abstract interface TypeToInstanceMap<B> extends Map<TypeToken<? extends B>, B>
{
  @Nullable
  public abstract <T extends B> T getInstance(TypeToken<T> paramTypeToken);

  @Nullable
  public abstract <T extends B> T getInstance(Class<T> paramClass);

  @Nullable
  public abstract <T extends B> T putInstance(TypeToken<T> paramTypeToken, @Nullable T paramT);

  @Nullable
  public abstract <T extends B> T putInstance(Class<T> paramClass, @Nullable T paramT);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.TypeToInstanceMap
 * JD-Core Version:    0.6.2
 */