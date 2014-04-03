package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.CheckReturnValue;

@GwtCompatible(emulated=true)
public final class Splitter
{
  private final int limit;
  private final boolean omitEmptyStrings;
  private final Strategy strategy;
  private final CharMatcher trimmer;

  private Splitter(Strategy paramStrategy)
  {
    this(paramStrategy, false, CharMatcher.NONE, 2147483647);
  }

  private Splitter(Strategy paramStrategy, boolean paramBoolean, CharMatcher paramCharMatcher, int paramInt)
  {
    this.strategy = paramStrategy;
    this.omitEmptyStrings = paramBoolean;
    this.trimmer = paramCharMatcher;
    this.limit = paramInt;
  }

  public static Splitter fixedLength(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "The length may not be less than 1");
      return new Splitter(new Strategy()
      {
        public Splitter.SplittingIterator iterator(Splitter paramAnonymousSplitter, CharSequence paramAnonymousCharSequence)
        {
          return new Splitter.SplittingIterator(paramAnonymousSplitter, paramAnonymousCharSequence)
          {
            public int separatorEnd(int paramAnonymous2Int)
            {
              return paramAnonymous2Int;
            }

            public int separatorStart(int paramAnonymous2Int)
            {
              int i = paramAnonymous2Int + Splitter.4.this.val$length;
              if (i < this.toSplit.length())
                return i;
              return -1;
            }
          };
        }
      });
    }
  }

  public static Splitter on(char paramChar)
  {
    return on(CharMatcher.is(paramChar));
  }

  public static Splitter on(CharMatcher paramCharMatcher)
  {
    Preconditions.checkNotNull(paramCharMatcher);
    return new Splitter(new Strategy()
    {
      public Splitter.SplittingIterator iterator(Splitter paramAnonymousSplitter, CharSequence paramAnonymousCharSequence)
      {
        return new Splitter.SplittingIterator(paramAnonymousSplitter, paramAnonymousCharSequence)
        {
          int separatorEnd(int paramAnonymous2Int)
          {
            return paramAnonymous2Int + 1;
          }

          int separatorStart(int paramAnonymous2Int)
          {
            return Splitter.1.this.val$separatorMatcher.indexIn(this.toSplit, paramAnonymous2Int);
          }
        };
      }
    });
  }

  public static Splitter on(String paramString)
  {
    if (paramString.length() != 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "The separator may not be the empty string.");
      return new Splitter(new Strategy()
      {
        public Splitter.SplittingIterator iterator(Splitter paramAnonymousSplitter, CharSequence paramAnonymousCharSequence)
        {
          return new Splitter.SplittingIterator(paramAnonymousSplitter, paramAnonymousCharSequence)
          {
            public int separatorEnd(int paramAnonymous2Int)
            {
              return paramAnonymous2Int + Splitter.2.this.val$separator.length();
            }

            public int separatorStart(int paramAnonymous2Int)
            {
              int i = Splitter.2.this.val$separator.length();
              int j = paramAnonymous2Int;
              int k = this.toSplit.length() - i;
              if (j <= k)
                for (int m = 0; ; m++)
                {
                  if (m >= i)
                    break label83;
                  if (this.toSplit.charAt(m + j) != Splitter.2.this.val$separator.charAt(m))
                  {
                    j++;
                    break;
                  }
                }
              j = -1;
              label83: return j;
            }
          };
        }
      });
    }
  }

  @GwtIncompatible("java.util.regex")
  public static Splitter on(Pattern paramPattern)
  {
    Preconditions.checkNotNull(paramPattern);
    if (!paramPattern.matcher("").matches());
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "The pattern may not match the empty string: %s", new Object[] { paramPattern });
      return new Splitter(new Strategy()
      {
        public Splitter.SplittingIterator iterator(Splitter paramAnonymousSplitter, CharSequence paramAnonymousCharSequence)
        {
          return new Splitter.SplittingIterator(paramAnonymousSplitter, paramAnonymousCharSequence)
          {
            public int separatorEnd(int paramAnonymous2Int)
            {
              return this.val$matcher.end();
            }

            public int separatorStart(int paramAnonymous2Int)
            {
              if (this.val$matcher.find(paramAnonymous2Int))
                return this.val$matcher.start();
              return -1;
            }
          };
        }
      });
    }
  }

  @GwtIncompatible("java.util.regex")
  public static Splitter onPattern(String paramString)
  {
    return on(Pattern.compile(paramString));
  }

  private Iterator<String> spliterator(CharSequence paramCharSequence)
  {
    return this.strategy.iterator(this, paramCharSequence);
  }

  @CheckReturnValue
  public Splitter limit(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "must be greater than zero: %s", arrayOfObject);
      return new Splitter(this.strategy, this.omitEmptyStrings, this.trimmer, paramInt);
    }
  }

  @CheckReturnValue
  public Splitter omitEmptyStrings()
  {
    return new Splitter(this.strategy, true, this.trimmer, this.limit);
  }

  public Iterable<String> split(final CharSequence paramCharSequence)
  {
    Preconditions.checkNotNull(paramCharSequence);
    return new Iterable()
    {
      public Iterator<String> iterator()
      {
        return Splitter.this.spliterator(paramCharSequence);
      }

      public String toString()
      {
        return ']';
      }
    };
  }

  @CheckReturnValue
  public Splitter trimResults()
  {
    return trimResults(CharMatcher.WHITESPACE);
  }

  @CheckReturnValue
  public Splitter trimResults(CharMatcher paramCharMatcher)
  {
    Preconditions.checkNotNull(paramCharMatcher);
    return new Splitter(this.strategy, this.omitEmptyStrings, paramCharMatcher, this.limit);
  }

  @CheckReturnValue
  @Beta
  public MapSplitter withKeyValueSeparator(char paramChar)
  {
    return withKeyValueSeparator(on(paramChar));
  }

  @CheckReturnValue
  @Beta
  public MapSplitter withKeyValueSeparator(Splitter paramSplitter)
  {
    return new MapSplitter(this, paramSplitter, null);
  }

  @CheckReturnValue
  @Beta
  public MapSplitter withKeyValueSeparator(String paramString)
  {
    return withKeyValueSeparator(on(paramString));
  }

  @Beta
  public static final class MapSplitter
  {
    private static final String INVALID_ENTRY_MESSAGE = "Chunk [%s] is not a valid entry";
    private final Splitter entrySplitter;
    private final Splitter outerSplitter;

    private MapSplitter(Splitter paramSplitter1, Splitter paramSplitter2)
    {
      this.outerSplitter = paramSplitter1;
      this.entrySplitter = ((Splitter)Preconditions.checkNotNull(paramSplitter2));
    }

    public Map<String, String> split(CharSequence paramCharSequence)
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      Iterator localIterator1 = this.outerSplitter.split(paramCharSequence).iterator();
      if (localIterator1.hasNext())
      {
        String str1 = (String)localIterator1.next();
        Iterator localIterator2 = this.entrySplitter.spliterator(str1);
        Preconditions.checkArgument(localIterator2.hasNext(), "Chunk [%s] is not a valid entry", new Object[] { str1 });
        String str2 = (String)localIterator2.next();
        boolean bool1;
        if (!localLinkedHashMap.containsKey(str2))
        {
          bool1 = true;
          label100: Preconditions.checkArgument(bool1, "Duplicate key [%s] found.", new Object[] { str2 });
          Preconditions.checkArgument(localIterator2.hasNext(), "Chunk [%s] is not a valid entry", new Object[] { str1 });
          localLinkedHashMap.put(str2, (String)localIterator2.next());
          if (localIterator2.hasNext())
            break label194;
        }
        label194: for (boolean bool2 = true; ; bool2 = false)
        {
          Preconditions.checkArgument(bool2, "Chunk [%s] is not a valid entry", new Object[] { str1 });
          break;
          bool1 = false;
          break label100;
        }
      }
      return Collections.unmodifiableMap(localLinkedHashMap);
    }
  }

  private static abstract class SplittingIterator extends AbstractIterator<String>
  {
    int limit;
    int offset = 0;
    final boolean omitEmptyStrings;
    final CharSequence toSplit;
    final CharMatcher trimmer;

    protected SplittingIterator(Splitter paramSplitter, CharSequence paramCharSequence)
    {
      this.trimmer = paramSplitter.trimmer;
      this.omitEmptyStrings = paramSplitter.omitEmptyStrings;
      this.limit = paramSplitter.limit;
      this.toSplit = paramCharSequence;
    }

    protected String computeNext()
    {
      int i = this.offset;
      while (this.offset != -1)
      {
        int j = i;
        int k = separatorStart(this.offset);
        int m;
        if (k == -1)
          m = this.toSplit.length();
        for (this.offset = -1; ; this.offset = separatorEnd(k))
        {
          if (this.offset != i)
            break label102;
          this.offset = (1 + this.offset);
          if (this.offset < this.toSplit.length())
            break;
          this.offset = -1;
          break;
          m = k;
        }
        label102: 
        while ((j < m) && (this.trimmer.matches(this.toSplit.charAt(j))))
          j++;
        while ((m > j) && (this.trimmer.matches(this.toSplit.charAt(m - 1))))
          m--;
        if ((this.omitEmptyStrings) && (j == m))
        {
          i = this.offset;
        }
        else
        {
          if (this.limit == 1)
          {
            m = this.toSplit.length();
            this.offset = -1;
            while ((m > j) && (this.trimmer.matches(this.toSplit.charAt(m - 1))))
              m--;
          }
          this.limit = (-1 + this.limit);
          return this.toSplit.subSequence(j, m).toString();
        }
      }
      return (String)endOfData();
    }

    abstract int separatorEnd(int paramInt);

    abstract int separatorStart(int paramInt);
  }

  private static abstract interface Strategy
  {
    public abstract Iterator<String> iterator(Splitter paramSplitter, CharSequence paramCharSequence);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.base.Splitter
 * JD-Core Version:    0.6.2
 */