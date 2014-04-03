package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import java.io.Serializable;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

@GwtCompatible
abstract class Cut<C extends Comparable>
  implements Comparable<Cut<C>>, Serializable
{
  private static final long serialVersionUID;
  final C endpoint;

  Cut(@Nullable C paramC)
  {
    this.endpoint = paramC;
  }

  static <C extends Comparable> Cut<C> aboveAll()
  {
    return AboveAll.INSTANCE;
  }

  static <C extends Comparable> Cut<C> aboveValue(C paramC)
  {
    return new AboveValue(paramC);
  }

  static <C extends Comparable> Cut<C> belowAll()
  {
    return BelowAll.INSTANCE;
  }

  static <C extends Comparable> Cut<C> belowValue(C paramC)
  {
    return new BelowValue(paramC);
  }

  Cut<C> canonical(DiscreteDomain<C> paramDiscreteDomain)
  {
    return this;
  }

  public int compareTo(Cut<C> paramCut)
  {
    int i;
    if (paramCut == belowAll())
      i = 1;
    do
    {
      return i;
      if (paramCut == aboveAll())
        return -1;
      i = Range.compareOrThrow(this.endpoint, paramCut.endpoint);
    }
    while (i != 0);
    return Booleans.compare(this instanceof AboveValue, paramCut instanceof AboveValue);
  }

  abstract void describeAsLowerBound(StringBuilder paramStringBuilder);

  abstract void describeAsUpperBound(StringBuilder paramStringBuilder);

  C endpoint()
  {
    return this.endpoint;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Cut;
    boolean bool2 = false;
    Cut localCut;
    if (bool1)
      localCut = (Cut)paramObject;
    try
    {
      int i = compareTo(localCut);
      bool2 = false;
      if (i == 0)
        bool2 = true;
      return bool2;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  abstract C greatestValueBelow(DiscreteDomain<C> paramDiscreteDomain);

  abstract boolean isLessThan(C paramC);

  abstract C leastValueAbove(DiscreteDomain<C> paramDiscreteDomain);

  abstract BoundType typeAsLowerBound();

  abstract BoundType typeAsUpperBound();

  abstract Cut<C> withLowerBoundType(BoundType paramBoundType, DiscreteDomain<C> paramDiscreteDomain);

  abstract Cut<C> withUpperBoundType(BoundType paramBoundType, DiscreteDomain<C> paramDiscreteDomain);

  private static final class AboveAll extends Cut<Comparable<?>>
  {
    private static final AboveAll INSTANCE = new AboveAll();
    private static final long serialVersionUID;

    private AboveAll()
    {
      super();
    }

    private Object readResolve()
    {
      return INSTANCE;
    }

    public int compareTo(Cut<Comparable<?>> paramCut)
    {
      if (paramCut == this)
        return 0;
      return 1;
    }

    void describeAsLowerBound(StringBuilder paramStringBuilder)
    {
      throw new AssertionError();
    }

    void describeAsUpperBound(StringBuilder paramStringBuilder)
    {
      paramStringBuilder.append("+∞)");
    }

    Comparable<?> endpoint()
    {
      throw new IllegalStateException("range unbounded on this side");
    }

    Comparable<?> greatestValueBelow(DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      return paramDiscreteDomain.maxValue();
    }

    boolean isLessThan(Comparable<?> paramComparable)
    {
      return false;
    }

    Comparable<?> leastValueAbove(DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      throw new AssertionError();
    }

    public String toString()
    {
      return "+∞";
    }

    BoundType typeAsLowerBound()
    {
      throw new AssertionError("this statement should be unreachable");
    }

    BoundType typeAsUpperBound()
    {
      throw new IllegalStateException();
    }

    Cut<Comparable<?>> withLowerBoundType(BoundType paramBoundType, DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      throw new AssertionError("this statement should be unreachable");
    }

    Cut<Comparable<?>> withUpperBoundType(BoundType paramBoundType, DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      throw new IllegalStateException();
    }
  }

  private static final class AboveValue<C extends Comparable> extends Cut<C>
  {
    private static final long serialVersionUID;

    AboveValue(C paramC)
    {
      super();
    }

    Cut<C> canonical(DiscreteDomain<C> paramDiscreteDomain)
    {
      Comparable localComparable = leastValueAbove(paramDiscreteDomain);
      if (localComparable != null)
        return belowValue(localComparable);
      return Cut.aboveAll();
    }

    void describeAsLowerBound(StringBuilder paramStringBuilder)
    {
      paramStringBuilder.append('(').append(this.endpoint);
    }

    void describeAsUpperBound(StringBuilder paramStringBuilder)
    {
      paramStringBuilder.append(this.endpoint).append(']');
    }

    C greatestValueBelow(DiscreteDomain<C> paramDiscreteDomain)
    {
      return this.endpoint;
    }

    public int hashCode()
    {
      return 0xFFFFFFFF ^ this.endpoint.hashCode();
    }

    boolean isLessThan(C paramC)
    {
      return Range.compareOrThrow(this.endpoint, paramC) < 0;
    }

    C leastValueAbove(DiscreteDomain<C> paramDiscreteDomain)
    {
      return paramDiscreteDomain.next(this.endpoint);
    }

    public String toString()
    {
      return "/" + this.endpoint + "\\";
    }

    BoundType typeAsLowerBound()
    {
      return BoundType.OPEN;
    }

    BoundType typeAsUpperBound()
    {
      return BoundType.CLOSED;
    }

    Cut<C> withLowerBoundType(BoundType paramBoundType, DiscreteDomain<C> paramDiscreteDomain)
    {
      Comparable localComparable;
      switch (Cut.1.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        localComparable = paramDiscreteDomain.next(this.endpoint);
        if (localComparable != null)
          break;
      case 2:
      }
      for (Cut localCut = Cut.belowAll(); ; localCut = belowValue(localComparable))
      {
        this = localCut;
        return this;
      }
    }

    Cut<C> withUpperBoundType(BoundType paramBoundType, DiscreteDomain<C> paramDiscreteDomain)
    {
      switch (Cut.1.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
      {
      default:
        throw new AssertionError();
      case 2:
        Comparable localComparable = paramDiscreteDomain.next(this.endpoint);
        if (localComparable == null)
          return Cut.aboveAll();
        return belowValue(localComparable);
      case 1:
      }
      return this;
    }
  }

  private static final class BelowAll extends Cut<Comparable<?>>
  {
    private static final BelowAll INSTANCE = new BelowAll();
    private static final long serialVersionUID;

    private BelowAll()
    {
      super();
    }

    private Object readResolve()
    {
      return INSTANCE;
    }

    Cut<Comparable<?>> canonical(DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      try
      {
        Cut localCut = Cut.belowValue(paramDiscreteDomain.minValue());
        return localCut;
      }
      catch (NoSuchElementException localNoSuchElementException)
      {
      }
      return this;
    }

    public int compareTo(Cut<Comparable<?>> paramCut)
    {
      if (paramCut == this)
        return 0;
      return -1;
    }

    void describeAsLowerBound(StringBuilder paramStringBuilder)
    {
      paramStringBuilder.append("(-∞");
    }

    void describeAsUpperBound(StringBuilder paramStringBuilder)
    {
      throw new AssertionError();
    }

    Comparable<?> endpoint()
    {
      throw new IllegalStateException("range unbounded on this side");
    }

    Comparable<?> greatestValueBelow(DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      throw new AssertionError();
    }

    boolean isLessThan(Comparable<?> paramComparable)
    {
      return true;
    }

    Comparable<?> leastValueAbove(DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      return paramDiscreteDomain.minValue();
    }

    public String toString()
    {
      return "-∞";
    }

    BoundType typeAsLowerBound()
    {
      throw new IllegalStateException();
    }

    BoundType typeAsUpperBound()
    {
      throw new AssertionError("this statement should be unreachable");
    }

    Cut<Comparable<?>> withLowerBoundType(BoundType paramBoundType, DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      throw new IllegalStateException();
    }

    Cut<Comparable<?>> withUpperBoundType(BoundType paramBoundType, DiscreteDomain<Comparable<?>> paramDiscreteDomain)
    {
      throw new AssertionError("this statement should be unreachable");
    }
  }

  private static final class BelowValue<C extends Comparable> extends Cut<C>
  {
    private static final long serialVersionUID;

    BelowValue(C paramC)
    {
      super();
    }

    void describeAsLowerBound(StringBuilder paramStringBuilder)
    {
      paramStringBuilder.append('[').append(this.endpoint);
    }

    void describeAsUpperBound(StringBuilder paramStringBuilder)
    {
      paramStringBuilder.append(this.endpoint).append(')');
    }

    C greatestValueBelow(DiscreteDomain<C> paramDiscreteDomain)
    {
      return paramDiscreteDomain.previous(this.endpoint);
    }

    public int hashCode()
    {
      return this.endpoint.hashCode();
    }

    boolean isLessThan(C paramC)
    {
      return Range.compareOrThrow(this.endpoint, paramC) <= 0;
    }

    C leastValueAbove(DiscreteDomain<C> paramDiscreteDomain)
    {
      return this.endpoint;
    }

    public String toString()
    {
      return "\\" + this.endpoint + "/";
    }

    BoundType typeAsLowerBound()
    {
      return BoundType.CLOSED;
    }

    BoundType typeAsUpperBound()
    {
      return BoundType.OPEN;
    }

    Cut<C> withLowerBoundType(BoundType paramBoundType, DiscreteDomain<C> paramDiscreteDomain)
    {
      Comparable localComparable;
      switch (Cut.1.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
      {
      default:
        throw new AssertionError();
      case 2:
        localComparable = paramDiscreteDomain.previous(this.endpoint);
        if (localComparable != null)
          break;
      case 1:
      }
      for (Object localObject = Cut.belowAll(); ; localObject = new Cut.AboveValue(localComparable))
      {
        this = (BelowValue)localObject;
        return this;
      }
    }

    Cut<C> withUpperBoundType(BoundType paramBoundType, DiscreteDomain<C> paramDiscreteDomain)
    {
      switch (Cut.1.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        Comparable localComparable = paramDiscreteDomain.previous(this.endpoint);
        if (localComparable == null)
          return Cut.aboveAll();
        return new Cut.AboveValue(localComparable);
      case 2:
      }
      return this;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Cut
 * JD-Core Version:    0.6.2
 */