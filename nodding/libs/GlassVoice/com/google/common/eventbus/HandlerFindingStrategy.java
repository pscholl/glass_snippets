package com.google.common.eventbus;

import com.google.common.collect.Multimap;

abstract interface HandlerFindingStrategy
{
  public abstract Multimap<Class<?>, EventHandler> findAllHandlers(Object paramObject);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.eventbus.HandlerFindingStrategy
 * JD-Core Version:    0.6.2
 */