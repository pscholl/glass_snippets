package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(serializable=true)
class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object>
{
  static final EmptyImmutableListMultimap INSTANCE = new EmptyImmutableListMultimap();
  private static final long serialVersionUID;

  private EmptyImmutableListMultimap()
  {
    super(ImmutableMap.of(), 0);
  }

  private Object readResolve()
  {
    return INSTANCE;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableListMultimap
 * JD-Core Version:    0.6.2
 */