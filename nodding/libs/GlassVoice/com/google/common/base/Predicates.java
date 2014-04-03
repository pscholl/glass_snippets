package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Predicates
{
  private static final Joiner COMMA_JOINER = Joiner.on(",");

  @GwtCompatible(serializable=true)
  public static <T> Predicate<T> alwaysFalse()
  {
    return ObjectPredicate.ALWAYS_FALSE.withNarrowedType();
  }

  @GwtCompatible(serializable=true)
  public static <T> Predicate<T> alwaysTrue()
  {
    return ObjectPredicate.ALWAYS_TRUE.withNarrowedType();
  }

  public static <T> Predicate<T> and(Predicate<? super T> paramPredicate1, Predicate<? super T> paramPredicate2)
  {
    return new AndPredicate(asList((Predicate)Preconditions.checkNotNull(paramPredicate1), (Predicate)Preconditions.checkNotNull(paramPredicate2)), null);
  }

  public static <T> Predicate<T> and(Iterable<? extends Predicate<? super T>> paramIterable)
  {
    return new AndPredicate(defensiveCopy(paramIterable), null);
  }

  public static <T> Predicate<T> and(Predicate<? super T>[] paramArrayOfPredicate)
  {
    return new AndPredicate(defensiveCopy(paramArrayOfPredicate), null);
  }

  private static <T> List<Predicate<? super T>> asList(Predicate<? super T> paramPredicate1, Predicate<? super T> paramPredicate2)
  {
    return Arrays.asList(new Predicate[] { paramPredicate1, paramPredicate2 });
  }

  @Beta
  @GwtIncompatible("Class.isAssignableFrom")
  public static Predicate<Class<?>> assignableFrom(Class<?> paramClass)
  {
    return new AssignableFromPredicate(paramClass, null);
  }

  public static <A, B> Predicate<A> compose(Predicate<B> paramPredicate, Function<A, ? extends B> paramFunction)
  {
    return new CompositionPredicate(paramPredicate, paramFunction, null);
  }

  @GwtIncompatible("java.util.regex.Pattern")
  public static Predicate<CharSequence> contains(Pattern paramPattern)
  {
    return new ContainsPatternPredicate(paramPattern);
  }

  @GwtIncompatible("java.util.regex.Pattern")
  public static Predicate<CharSequence> containsPattern(String paramString)
  {
    return new ContainsPatternPredicate(paramString);
  }

  static <T> List<T> defensiveCopy(Iterable<T> paramIterable)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      localArrayList.add(Preconditions.checkNotNull(localIterator.next()));
    return localArrayList;
  }

  private static <T> List<T> defensiveCopy(T[] paramArrayOfT)
  {
    return defensiveCopy(Arrays.asList(paramArrayOfT));
  }

  public static <T> Predicate<T> equalTo(@Nullable T paramT)
  {
    if (paramT == null)
      return isNull();
    return new IsEqualToPredicate(paramT, null);
  }

  public static <T> Predicate<T> in(Collection<? extends T> paramCollection)
  {
    return new InPredicate(paramCollection, null);
  }

  @GwtIncompatible("Class.isInstance")
  public static Predicate<Object> instanceOf(Class<?> paramClass)
  {
    return new InstanceOfPredicate(paramClass, null);
  }

  @GwtCompatible(serializable=true)
  public static <T> Predicate<T> isNull()
  {
    return ObjectPredicate.IS_NULL.withNarrowedType();
  }

  public static <T> Predicate<T> not(Predicate<T> paramPredicate)
  {
    return new NotPredicate(paramPredicate);
  }

  @GwtCompatible(serializable=true)
  public static <T> Predicate<T> notNull()
  {
    return ObjectPredicate.NOT_NULL.withNarrowedType();
  }

  public static <T> Predicate<T> or(Predicate<? super T> paramPredicate1, Predicate<? super T> paramPredicate2)
  {
    return new OrPredicate(asList((Predicate)Preconditions.checkNotNull(paramPredicate1), (Predicate)Preconditions.checkNotNull(paramPredicate2)), null);
  }

  public static <T> Predicate<T> or(Iterable<? extends Predicate<? super T>> paramIterable)
  {
    return new OrPredicate(defensiveCopy(paramIterable), null);
  }

  public static <T> Predicate<T> or(Predicate<? super T>[] paramArrayOfPredicate)
  {
    return new OrPredicate(defensiveCopy(paramArrayOfPredicate), null);
  }

  private static class AndPredicate<T>
    implements Predicate<T>, Serializable
  {
    private static final long serialVersionUID;
    private final List<? extends Predicate<? super T>> components;

    private AndPredicate(List<? extends Predicate<? super T>> paramList)
    {
      this.components = paramList;
    }

    public boolean apply(@Nullable T paramT)
    {
      for (int i = 0; i < this.components.size(); i++)
        if (!((Predicate)this.components.get(i)).apply(paramT))
          return false;
      return true;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof AndPredicate))
      {
        AndPredicate localAndPredicate = (AndPredicate)paramObject;
        return this.components.equals(localAndPredicate.components);
      }
      return false;
    }

    public int hashCode()
    {
      return 306654252 + this.components.hashCode();
    }

    public String toString()
    {
      return "And(" + Predicates.COMMA_JOINER.join(this.components) + ")";
    }
  }

  @GwtIncompatible("Class.isAssignableFrom")
  private static class AssignableFromPredicate
    implements Predicate<Class<?>>, Serializable
  {
    private static final long serialVersionUID;
    private final Class<?> clazz;

    private AssignableFromPredicate(Class<?> paramClass)
    {
      this.clazz = ((Class)Preconditions.checkNotNull(paramClass));
    }

    public boolean apply(Class<?> paramClass)
    {
      return this.clazz.isAssignableFrom(paramClass);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof AssignableFromPredicate;
      boolean bool2 = false;
      if (bool1)
      {
        AssignableFromPredicate localAssignableFromPredicate = (AssignableFromPredicate)paramObject;
        Class localClass1 = this.clazz;
        Class localClass2 = localAssignableFromPredicate.clazz;
        bool2 = false;
        if (localClass1 == localClass2)
          bool2 = true;
      }
      return bool2;
    }

    public int hashCode()
    {
      return this.clazz.hashCode();
    }

    public String toString()
    {
      return "IsAssignableFrom(" + this.clazz.getName() + ")";
    }
  }

  private static class CompositionPredicate<A, B>
    implements Predicate<A>, Serializable
  {
    private static final long serialVersionUID;
    final Function<A, ? extends B> f;
    final Predicate<B> p;

    private CompositionPredicate(Predicate<B> paramPredicate, Function<A, ? extends B> paramFunction)
    {
      this.p = ((Predicate)Preconditions.checkNotNull(paramPredicate));
      this.f = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    public boolean apply(@Nullable A paramA)
    {
      return this.p.apply(this.f.apply(paramA));
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof CompositionPredicate;
      boolean bool2 = false;
      if (bool1)
      {
        CompositionPredicate localCompositionPredicate = (CompositionPredicate)paramObject;
        boolean bool3 = this.f.equals(localCompositionPredicate.f);
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.p.equals(localCompositionPredicate.p);
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      return this.f.hashCode() ^ this.p.hashCode();
    }

    public String toString()
    {
      return this.p.toString() + "(" + this.f.toString() + ")";
    }
  }

  @GwtIncompatible("Only used by other GWT-incompatible code.")
  private static class ContainsPatternPredicate
    implements Predicate<CharSequence>, Serializable
  {
    private static final long serialVersionUID;
    final Pattern pattern;

    ContainsPatternPredicate(String paramString)
    {
      this(Pattern.compile(paramString));
    }

    ContainsPatternPredicate(Pattern paramPattern)
    {
      this.pattern = ((Pattern)Preconditions.checkNotNull(paramPattern));
    }

    public boolean apply(CharSequence paramCharSequence)
    {
      return this.pattern.matcher(paramCharSequence).find();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof ContainsPatternPredicate;
      boolean bool2 = false;
      if (bool1)
      {
        ContainsPatternPredicate localContainsPatternPredicate = (ContainsPatternPredicate)paramObject;
        boolean bool3 = Objects.equal(this.pattern.pattern(), localContainsPatternPredicate.pattern.pattern());
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = Objects.equal(Integer.valueOf(this.pattern.flags()), Integer.valueOf(localContainsPatternPredicate.pattern.flags()));
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public int hashCode()
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.pattern.pattern();
      arrayOfObject[1] = Integer.valueOf(this.pattern.flags());
      return Objects.hashCode(arrayOfObject);
    }

    public String toString()
    {
      return Objects.toStringHelper(this).add("pattern", this.pattern).add("pattern.flags", Integer.toHexString(this.pattern.flags())).toString();
    }
  }

  private static class InPredicate<T>
    implements Predicate<T>, Serializable
  {
    private static final long serialVersionUID;
    private final Collection<?> target;

    private InPredicate(Collection<?> paramCollection)
    {
      this.target = ((Collection)Preconditions.checkNotNull(paramCollection));
    }

    public boolean apply(@Nullable T paramT)
    {
      try
      {
        boolean bool = this.target.contains(paramT);
        return bool;
      }
      catch (NullPointerException localNullPointerException)
      {
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
      }
      return false;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof InPredicate))
      {
        InPredicate localInPredicate = (InPredicate)paramObject;
        return this.target.equals(localInPredicate.target);
      }
      return false;
    }

    public int hashCode()
    {
      return this.target.hashCode();
    }

    public String toString()
    {
      return "In(" + this.target + ")";
    }
  }

  @GwtIncompatible("Class.isInstance")
  private static class InstanceOfPredicate
    implements Predicate<Object>, Serializable
  {
    private static final long serialVersionUID;
    private final Class<?> clazz;

    private InstanceOfPredicate(Class<?> paramClass)
    {
      this.clazz = ((Class)Preconditions.checkNotNull(paramClass));
    }

    public boolean apply(@Nullable Object paramObject)
    {
      return this.clazz.isInstance(paramObject);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof InstanceOfPredicate;
      boolean bool2 = false;
      if (bool1)
      {
        InstanceOfPredicate localInstanceOfPredicate = (InstanceOfPredicate)paramObject;
        Class localClass1 = this.clazz;
        Class localClass2 = localInstanceOfPredicate.clazz;
        bool2 = false;
        if (localClass1 == localClass2)
          bool2 = true;
      }
      return bool2;
    }

    public int hashCode()
    {
      return this.clazz.hashCode();
    }

    public String toString()
    {
      return "IsInstanceOf(" + this.clazz.getName() + ")";
    }
  }

  private static class IsEqualToPredicate<T>
    implements Predicate<T>, Serializable
  {
    private static final long serialVersionUID;
    private final T target;

    private IsEqualToPredicate(T paramT)
    {
      this.target = paramT;
    }

    public boolean apply(T paramT)
    {
      return this.target.equals(paramT);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof IsEqualToPredicate))
      {
        IsEqualToPredicate localIsEqualToPredicate = (IsEqualToPredicate)paramObject;
        return this.target.equals(localIsEqualToPredicate.target);
      }
      return false;
    }

    public int hashCode()
    {
      return this.target.hashCode();
    }

    public String toString()
    {
      return "IsEqualTo(" + this.target + ")";
    }
  }

  private static class NotPredicate<T>
    implements Predicate<T>, Serializable
  {
    private static final long serialVersionUID;
    final Predicate<T> predicate;

    NotPredicate(Predicate<T> paramPredicate)
    {
      this.predicate = ((Predicate)Preconditions.checkNotNull(paramPredicate));
    }

    public boolean apply(@Nullable T paramT)
    {
      return !this.predicate.apply(paramT);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof NotPredicate))
      {
        NotPredicate localNotPredicate = (NotPredicate)paramObject;
        return this.predicate.equals(localNotPredicate.predicate);
      }
      return false;
    }

    public int hashCode()
    {
      return 0xFFFFFFFF ^ this.predicate.hashCode();
    }

    public String toString()
    {
      return "Not(" + this.predicate.toString() + ")";
    }
  }

  static abstract enum ObjectPredicate
    implements Predicate<Object>
  {
    static
    {
      // Byte code:
      //   0: new 18	com/google/common/base/Predicates$ObjectPredicate$1
      //   3: dup
      //   4: ldc 19
      //   6: iconst_0
      //   7: invokespecial 23	com/google/common/base/Predicates$ObjectPredicate$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 25	com/google/common/base/Predicates$ObjectPredicate:ALWAYS_TRUE	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   13: new 27	com/google/common/base/Predicates$ObjectPredicate$2
      //   16: dup
      //   17: ldc 28
      //   19: iconst_1
      //   20: invokespecial 29	com/google/common/base/Predicates$ObjectPredicate$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 31	com/google/common/base/Predicates$ObjectPredicate:ALWAYS_FALSE	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   26: new 33	com/google/common/base/Predicates$ObjectPredicate$3
      //   29: dup
      //   30: ldc 34
      //   32: iconst_2
      //   33: invokespecial 35	com/google/common/base/Predicates$ObjectPredicate$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 37	com/google/common/base/Predicates$ObjectPredicate:IS_NULL	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   39: new 39	com/google/common/base/Predicates$ObjectPredicate$4
      //   42: dup
      //   43: ldc 40
      //   45: iconst_3
      //   46: invokespecial 41	com/google/common/base/Predicates$ObjectPredicate$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 43	com/google/common/base/Predicates$ObjectPredicate:NOT_NULL	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   52: iconst_4
      //   53: anewarray 2	com/google/common/base/Predicates$ObjectPredicate
      //   56: astore_0
      //   57: aload_0
      //   58: iconst_0
      //   59: getstatic 25	com/google/common/base/Predicates$ObjectPredicate:ALWAYS_TRUE	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   62: aastore
      //   63: aload_0
      //   64: iconst_1
      //   65: getstatic 31	com/google/common/base/Predicates$ObjectPredicate:ALWAYS_FALSE	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   68: aastore
      //   69: aload_0
      //   70: iconst_2
      //   71: getstatic 37	com/google/common/base/Predicates$ObjectPredicate:IS_NULL	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   74: aastore
      //   75: aload_0
      //   76: iconst_3
      //   77: getstatic 43	com/google/common/base/Predicates$ObjectPredicate:NOT_NULL	Lcom/google/common/base/Predicates$ObjectPredicate;
      //   80: aastore
      //   81: aload_0
      //   82: putstatic 45	com/google/common/base/Predicates$ObjectPredicate:$VALUES	[Lcom/google/common/base/Predicates$ObjectPredicate;
      //   85: return
    }

    <T> Predicate<T> withNarrowedType()
    {
      return this;
    }
  }

  private static class OrPredicate<T>
    implements Predicate<T>, Serializable
  {
    private static final long serialVersionUID;
    private final List<? extends Predicate<? super T>> components;

    private OrPredicate(List<? extends Predicate<? super T>> paramList)
    {
      this.components = paramList;
    }

    public boolean apply(@Nullable T paramT)
    {
      for (int i = 0; i < this.components.size(); i++)
        if (((Predicate)this.components.get(i)).apply(paramT))
          return true;
      return false;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof OrPredicate))
      {
        OrPredicate localOrPredicate = (OrPredicate)paramObject;
        return this.components.equals(localOrPredicate.components);
      }
      return false;
    }

    public int hashCode()
    {
      return 87855567 + this.components.hashCode();
    }

    public String toString()
    {
      return "Or(" + Predicates.COMMA_JOINER.join(this.components) + ")";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Predicates
 * JD-Core Version:    0.6.2
 */