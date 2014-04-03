package com.google.common.collect;

import java.util.SortedSet;

abstract interface SortedMultisetBridge<E> extends Multiset<E>
{
  public abstract SortedSet<E> elementSet();
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedMultisetBridge
 * JD-Core Version:    0.6.2
 */