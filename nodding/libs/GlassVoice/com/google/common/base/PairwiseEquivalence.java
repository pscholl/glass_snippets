package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class PairwiseEquivalence<T> extends Equivalence<Iterable<T>>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  final Equivalence<? super T> elementEquivalence;

  PairwiseEquivalence(Equivalence<? super T> paramEquivalence)
  {
    this.elementEquivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
  }

  protected boolean doEquivalent(Iterable<T> paramIterable1, Iterable<T> paramIterable2)
  {
    Iterator localIterator1 = paramIterable1.iterator();
    Iterator localIterator2 = paramIterable2.iterator();
    do
      if ((!localIterator1.hasNext()) || (!localIterator2.hasNext()))
        break;
    while (this.elementEquivalence.equivalent(localIterator1.next(), localIterator2.next()));
    while ((localIterator1.hasNext()) || (localIterator2.hasNext()))
      return false;
    return true;
  }

  protected int doHash(Iterable<T> paramIterable)
  {
    int i = 78721;
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      i = i * 24943 + this.elementEquivalence.hash(localObject);
    }
    return i;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof PairwiseEquivalence))
    {
      PairwiseEquivalence localPairwiseEquivalence = (PairwiseEquivalence)paramObject;
      return this.elementEquivalence.equals(localPairwiseEquivalence.elementEquivalence);
    }
    return false;
  }

  public int hashCode()
  {
    return 0x46A3EB07 ^ this.elementEquivalence.hashCode();
  }

  public String toString()
  {
    return this.elementEquivalence + ".pairwise()";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.PairwiseEquivalence
 * JD-Core Version:    0.6.2
 */