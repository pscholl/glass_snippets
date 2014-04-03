package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@GwtCompatible
public class Joiner
{
  private final String separator;

  private Joiner(Joiner paramJoiner)
  {
    this.separator = paramJoiner.separator;
  }

  private Joiner(String paramString)
  {
    this.separator = ((String)Preconditions.checkNotNull(paramString));
  }

  private static Iterable<Object> iterable(final Object paramObject1, final Object paramObject2, Object[] paramArrayOfObject)
  {
    Preconditions.checkNotNull(paramArrayOfObject);
    return new AbstractList()
    {
      public Object get(int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default:
          return this.val$rest[(paramAnonymousInt - 2)];
        case 0:
          return paramObject1;
        case 1:
        }
        return paramObject2;
      }

      public int size()
      {
        return 2 + this.val$rest.length;
      }
    };
  }

  public static Joiner on(char paramChar)
  {
    return new Joiner(String.valueOf(paramChar));
  }

  public static Joiner on(String paramString)
  {
    return new Joiner(paramString);
  }

  public <A extends Appendable> A appendTo(A paramA, Iterable<?> paramIterable)
    throws IOException
  {
    return appendTo(paramA, paramIterable.iterator());
  }

  @Deprecated
  @Beta
  public final <A extends Appendable, I,  extends Iterable<?>,  extends Iterator<?>> A appendTo(A paramA, I paramI)
    throws IOException
  {
    return appendTo(paramA, (Iterator)paramI);
  }

  public final <A extends Appendable> A appendTo(A paramA, @Nullable Object paramObject1, @Nullable Object paramObject2, Object[] paramArrayOfObject)
    throws IOException
  {
    return appendTo(paramA, iterable(paramObject1, paramObject2, paramArrayOfObject));
  }

  public <A extends Appendable> A appendTo(A paramA, Iterator<?> paramIterator)
    throws IOException
  {
    Preconditions.checkNotNull(paramA);
    if (paramIterator.hasNext())
    {
      paramA.append(toString(paramIterator.next()));
      while (paramIterator.hasNext())
      {
        paramA.append(this.separator);
        paramA.append(toString(paramIterator.next()));
      }
    }
    return paramA;
  }

  public final <A extends Appendable> A appendTo(A paramA, Object[] paramArrayOfObject)
    throws IOException
  {
    return appendTo(paramA, Arrays.asList(paramArrayOfObject));
  }

  public final StringBuilder appendTo(StringBuilder paramStringBuilder, Iterable<?> paramIterable)
  {
    return appendTo(paramStringBuilder, paramIterable.iterator());
  }

  @Deprecated
  @Beta
  public final <I,  extends Iterable<?>,  extends Iterator<?>> StringBuilder appendTo(StringBuilder paramStringBuilder, I paramI)
  {
    return appendTo(paramStringBuilder, (Iterator)paramI);
  }

  public final StringBuilder appendTo(StringBuilder paramStringBuilder, @Nullable Object paramObject1, @Nullable Object paramObject2, Object[] paramArrayOfObject)
  {
    return appendTo(paramStringBuilder, iterable(paramObject1, paramObject2, paramArrayOfObject));
  }

  public final StringBuilder appendTo(StringBuilder paramStringBuilder, Iterator<?> paramIterator)
  {
    try
    {
      appendTo(paramStringBuilder, paramIterator);
      return paramStringBuilder;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }

  public final StringBuilder appendTo(StringBuilder paramStringBuilder, Object[] paramArrayOfObject)
  {
    return appendTo(paramStringBuilder, Arrays.asList(paramArrayOfObject));
  }

  public final String join(Iterable<?> paramIterable)
  {
    return join(paramIterable.iterator());
  }

  @Deprecated
  @Beta
  public final <I,  extends Iterable<?>,  extends Iterator<?>> String join(I paramI)
  {
    return join((Iterator)paramI);
  }

  public final String join(@Nullable Object paramObject1, @Nullable Object paramObject2, Object[] paramArrayOfObject)
  {
    return join(iterable(paramObject1, paramObject2, paramArrayOfObject));
  }

  public final String join(Iterator<?> paramIterator)
  {
    return appendTo(new StringBuilder(), paramIterator).toString();
  }

  public final String join(Object[] paramArrayOfObject)
  {
    return join(Arrays.asList(paramArrayOfObject));
  }

  @CheckReturnValue
  public Joiner skipNulls()
  {
    // Byte code:
    //   0: new 128	com/google/common/base/Joiner$2
    //   3: dup
    //   4: aload_0
    //   5: aload_0
    //   6: invokespecial 131	com/google/common/base/Joiner$2:<init>	(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner;)V
    //   9: areturn
  }

  CharSequence toString(Object paramObject)
  {
    Preconditions.checkNotNull(paramObject);
    if ((paramObject instanceof CharSequence))
      return (CharSequence)paramObject;
    return paramObject.toString();
  }

  @CheckReturnValue
  public Joiner useForNull(final String paramString)
  {
    Preconditions.checkNotNull(paramString);
    return new Joiner(this, paramString)
    {
      public Joiner skipNulls()
      {
        throw new UnsupportedOperationException("already specified useForNull");
      }

      CharSequence toString(@Nullable Object paramAnonymousObject)
      {
        if (paramAnonymousObject == null)
          return paramString;
        return Joiner.this.toString(paramAnonymousObject);
      }

      public Joiner useForNull(String paramAnonymousString)
      {
        Preconditions.checkNotNull(paramAnonymousString);
        throw new UnsupportedOperationException("already specified useForNull");
      }
    };
  }

  @CheckReturnValue
  public MapJoiner withKeyValueSeparator(String paramString)
  {
    return new MapJoiner(this, paramString, null);
  }

  public static final class MapJoiner
  {
    private final Joiner joiner;
    private final String keyValueSeparator;

    private MapJoiner(Joiner paramJoiner, String paramString)
    {
      this.joiner = paramJoiner;
      this.keyValueSeparator = ((String)Preconditions.checkNotNull(paramString));
    }

    @Beta
    public <A extends Appendable> A appendTo(A paramA, Iterable<? extends Map.Entry<?, ?>> paramIterable)
      throws IOException
    {
      return appendTo(paramA, paramIterable.iterator());
    }

    @Deprecated
    @Beta
    public <A extends Appendable, I,  extends Iterable<? extends Map.Entry<?, ?>>,  extends Iterator<? extends Map.Entry<?, ?>>> A appendTo(A paramA, I paramI)
      throws IOException
    {
      return appendTo(paramA, (Iterator)paramI);
    }

    @Beta
    public <A extends Appendable> A appendTo(A paramA, Iterator<? extends Map.Entry<?, ?>> paramIterator)
      throws IOException
    {
      Preconditions.checkNotNull(paramA);
      if (paramIterator.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)paramIterator.next();
        paramA.append(this.joiner.toString(localEntry1.getKey()));
        paramA.append(this.keyValueSeparator);
        paramA.append(this.joiner.toString(localEntry1.getValue()));
        while (paramIterator.hasNext())
        {
          paramA.append(this.joiner.separator);
          Map.Entry localEntry2 = (Map.Entry)paramIterator.next();
          paramA.append(this.joiner.toString(localEntry2.getKey()));
          paramA.append(this.keyValueSeparator);
          paramA.append(this.joiner.toString(localEntry2.getValue()));
        }
      }
      return paramA;
    }

    public <A extends Appendable> A appendTo(A paramA, Map<?, ?> paramMap)
      throws IOException
    {
      return appendTo(paramA, paramMap.entrySet());
    }

    @Beta
    public StringBuilder appendTo(StringBuilder paramStringBuilder, Iterable<? extends Map.Entry<?, ?>> paramIterable)
    {
      return appendTo(paramStringBuilder, paramIterable.iterator());
    }

    @Deprecated
    @Beta
    public <I,  extends Iterable<? extends Map.Entry<?, ?>>,  extends Iterator<? extends Map.Entry<?, ?>>> StringBuilder appendTo(StringBuilder paramStringBuilder, I paramI)
      throws IOException
    {
      return appendTo(paramStringBuilder, (Iterator)paramI);
    }

    @Beta
    public StringBuilder appendTo(StringBuilder paramStringBuilder, Iterator<? extends Map.Entry<?, ?>> paramIterator)
    {
      try
      {
        appendTo(paramStringBuilder, paramIterator);
        return paramStringBuilder;
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
    }

    public StringBuilder appendTo(StringBuilder paramStringBuilder, Map<?, ?> paramMap)
    {
      return appendTo(paramStringBuilder, paramMap.entrySet());
    }

    @Beta
    public String join(Iterable<? extends Map.Entry<?, ?>> paramIterable)
    {
      return join(paramIterable.iterator());
    }

    @Deprecated
    @Beta
    public <I,  extends Iterable<? extends Map.Entry<?, ?>>,  extends Iterator<? extends Map.Entry<?, ?>>> String join(I paramI)
      throws IOException
    {
      return join((Iterator)paramI);
    }

    @Beta
    public String join(Iterator<? extends Map.Entry<?, ?>> paramIterator)
    {
      return appendTo(new StringBuilder(), paramIterator).toString();
    }

    public String join(Map<?, ?> paramMap)
    {
      return join(paramMap.entrySet());
    }

    @CheckReturnValue
    public MapJoiner useForNull(String paramString)
    {
      return new MapJoiner(this.joiner.useForNull(paramString), this.keyValueSeparator);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Joiner
 * JD-Core Version:    0.6.2
 */