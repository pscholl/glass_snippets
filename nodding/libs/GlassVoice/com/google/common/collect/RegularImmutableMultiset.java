package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
class RegularImmutableMultiset<E> extends ImmutableMultiset<E>
{
  private final transient ImmutableMap<E, Integer> map;
  private final transient int size;

  RegularImmutableMultiset(ImmutableMap<E, Integer> paramImmutableMap, int paramInt)
  {
    this.map = paramImmutableMap;
    this.size = paramInt;
  }

  private static <E> Multiset.Entry<E> entryFromMapEntry(Map.Entry<E, Integer> paramEntry)
  {
    return Multisets.immutableEntry(paramEntry.getKey(), ((Integer)paramEntry.getValue()).intValue());
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  public int count(@Nullable Object paramObject)
  {
    Integer localInteger = (Integer)this.map.get(paramObject);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  ImmutableSet<Multiset.Entry<E>> createEntrySet()
  {
    return new EntrySet(null);
  }

  public ImmutableSet<E> elementSet()
  {
    return this.map.keySet();
  }

  public int hashCode()
  {
    return this.map.hashCode();
  }

  boolean isPartialView()
  {
    return this.map.isPartialView();
  }

  public int size()
  {
    return this.size;
  }

  private class EntrySet extends ImmutableMultiset.EntrySet
  {
    private EntrySet()
    {
      super();
    }

    ImmutableList<Multiset.Entry<E>> createAsList()
    {
      return new ImmutableAsList()
      {
        ImmutableCollection<Multiset.Entry<E>> delegateCollection()
        {
          return RegularImmutableMultiset.EntrySet.this;
        }

        public Multiset.Entry<E> get(int paramAnonymousInt)
        {
          return RegularImmutableMultiset.entryFromMapEntry((Map.Entry)this.val$entryList.get(paramAnonymousInt));
        }
      };
    }

    public UnmodifiableIterator<Multiset.Entry<E>> iterator()
    {
      return asList().iterator();
    }

    public int size()
    {
      return RegularImmutableMultiset.this.map.size();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableMultiset
 * JD-Core Version:    0.6.2
 */