package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
final class FunctionalEquivalence<F, T> extends Equivalence<F>
  implements Serializable
{
  private static final long serialVersionUID;
  private final Function<F, ? extends T> function;
  private final Equivalence<T> resultEquivalence;

  FunctionalEquivalence(Function<F, ? extends T> paramFunction, Equivalence<T> paramEquivalence)
  {
    this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    this.resultEquivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
  }

  protected boolean doEquivalent(F paramF1, F paramF2)
  {
    return this.resultEquivalence.equivalent(this.function.apply(paramF1), this.function.apply(paramF2));
  }

  protected int doHash(F paramF)
  {
    return this.resultEquivalence.hash(this.function.apply(paramF));
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    FunctionalEquivalence localFunctionalEquivalence;
    do
    {
      return true;
      if (!(paramObject instanceof FunctionalEquivalence))
        break;
      localFunctionalEquivalence = (FunctionalEquivalence)paramObject;
    }
    while ((this.function.equals(localFunctionalEquivalence.function)) && (this.resultEquivalence.equals(localFunctionalEquivalence.resultEquivalence)));
    return false;
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.function;
    arrayOfObject[1] = this.resultEquivalence;
    return Objects.hashCode(arrayOfObject);
  }

  public String toString()
  {
    return this.resultEquivalence + ".onResultOf(" + this.function + ")";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.FunctionalEquivalence
 * JD-Core Version:    0.6.2
 */