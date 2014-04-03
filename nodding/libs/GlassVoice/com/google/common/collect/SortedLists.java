package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
final class SortedLists
{
  public static <E, K extends Comparable> int binarySearch(List<E> paramList, Function<? super E, K> paramFunction, @Nullable K paramK, KeyPresentBehavior paramKeyPresentBehavior, KeyAbsentBehavior paramKeyAbsentBehavior)
  {
    return binarySearch(paramList, paramFunction, paramK, Ordering.natural(), paramKeyPresentBehavior, paramKeyAbsentBehavior);
  }

  public static <E, K> int binarySearch(List<E> paramList, Function<? super E, K> paramFunction, @Nullable K paramK, Comparator<? super K> paramComparator, KeyPresentBehavior paramKeyPresentBehavior, KeyAbsentBehavior paramKeyAbsentBehavior)
  {
    return binarySearch(Lists.transform(paramList, paramFunction), paramK, paramComparator, paramKeyPresentBehavior, paramKeyAbsentBehavior);
  }

  public static <E extends Comparable> int binarySearch(List<? extends E> paramList, E paramE, KeyPresentBehavior paramKeyPresentBehavior, KeyAbsentBehavior paramKeyAbsentBehavior)
  {
    Preconditions.checkNotNull(paramE);
    return binarySearch(paramList, Preconditions.checkNotNull(paramE), Ordering.natural(), paramKeyPresentBehavior, paramKeyAbsentBehavior);
  }

  public static <E> int binarySearch(List<? extends E> paramList, @Nullable E paramE, Comparator<? super E> paramComparator, KeyPresentBehavior paramKeyPresentBehavior, KeyAbsentBehavior paramKeyAbsentBehavior)
  {
    Preconditions.checkNotNull(paramComparator);
    Preconditions.checkNotNull(paramList);
    Preconditions.checkNotNull(paramKeyPresentBehavior);
    Preconditions.checkNotNull(paramKeyAbsentBehavior);
    if (!(paramList instanceof RandomAccess))
      paramList = Lists.newArrayList(paramList);
    int i = 0;
    int j = -1 + paramList.size();
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = paramComparator.compare(paramE, paramList.get(k));
      if (m < 0)
        j = k - 1;
      else if (m > 0)
        i = k + 1;
      else
        return i + paramKeyPresentBehavior.resultIndex(paramComparator, paramE, paramList.subList(i, j + 1), k - i);
    }
    return paramKeyAbsentBehavior.resultIndex(i);
  }

  public static abstract enum KeyAbsentBehavior
  {
    static
    {
      // Byte code:
      //   0: new 15	com/google/common/collect/SortedLists$KeyAbsentBehavior$1
      //   3: dup
      //   4: ldc 16
      //   6: iconst_0
      //   7: invokespecial 20	com/google/common/collect/SortedLists$KeyAbsentBehavior$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 22	com/google/common/collect/SortedLists$KeyAbsentBehavior:NEXT_LOWER	Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   13: new 24	com/google/common/collect/SortedLists$KeyAbsentBehavior$2
      //   16: dup
      //   17: ldc 25
      //   19: iconst_1
      //   20: invokespecial 26	com/google/common/collect/SortedLists$KeyAbsentBehavior$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 28	com/google/common/collect/SortedLists$KeyAbsentBehavior:NEXT_HIGHER	Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   26: new 30	com/google/common/collect/SortedLists$KeyAbsentBehavior$3
      //   29: dup
      //   30: ldc 31
      //   32: iconst_2
      //   33: invokespecial 32	com/google/common/collect/SortedLists$KeyAbsentBehavior$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 34	com/google/common/collect/SortedLists$KeyAbsentBehavior:INVERTED_INSERTION_INDEX	Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   39: iconst_3
      //   40: anewarray 2	com/google/common/collect/SortedLists$KeyAbsentBehavior
      //   43: astore_0
      //   44: aload_0
      //   45: iconst_0
      //   46: getstatic 22	com/google/common/collect/SortedLists$KeyAbsentBehavior:NEXT_LOWER	Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   49: aastore
      //   50: aload_0
      //   51: iconst_1
      //   52: getstatic 28	com/google/common/collect/SortedLists$KeyAbsentBehavior:NEXT_HIGHER	Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   55: aastore
      //   56: aload_0
      //   57: iconst_2
      //   58: getstatic 34	com/google/common/collect/SortedLists$KeyAbsentBehavior:INVERTED_INSERTION_INDEX	Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   61: aastore
      //   62: aload_0
      //   63: putstatic 36	com/google/common/collect/SortedLists$KeyAbsentBehavior:$VALUES	[Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
      //   66: return
    }

    abstract int resultIndex(int paramInt);
  }

  public static abstract enum KeyPresentBehavior
  {
    static
    {
      // Byte code:
      //   0: new 17	com/google/common/collect/SortedLists$KeyPresentBehavior$1
      //   3: dup
      //   4: ldc 18
      //   6: iconst_0
      //   7: invokespecial 22	com/google/common/collect/SortedLists$KeyPresentBehavior$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 24	com/google/common/collect/SortedLists$KeyPresentBehavior:ANY_PRESENT	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   13: new 26	com/google/common/collect/SortedLists$KeyPresentBehavior$2
      //   16: dup
      //   17: ldc 27
      //   19: iconst_1
      //   20: invokespecial 28	com/google/common/collect/SortedLists$KeyPresentBehavior$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 30	com/google/common/collect/SortedLists$KeyPresentBehavior:LAST_PRESENT	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   26: new 32	com/google/common/collect/SortedLists$KeyPresentBehavior$3
      //   29: dup
      //   30: ldc 33
      //   32: iconst_2
      //   33: invokespecial 34	com/google/common/collect/SortedLists$KeyPresentBehavior$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 36	com/google/common/collect/SortedLists$KeyPresentBehavior:FIRST_PRESENT	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   39: new 38	com/google/common/collect/SortedLists$KeyPresentBehavior$4
      //   42: dup
      //   43: ldc 39
      //   45: iconst_3
      //   46: invokespecial 40	com/google/common/collect/SortedLists$KeyPresentBehavior$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 42	com/google/common/collect/SortedLists$KeyPresentBehavior:FIRST_AFTER	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   52: new 44	com/google/common/collect/SortedLists$KeyPresentBehavior$5
      //   55: dup
      //   56: ldc 45
      //   58: iconst_4
      //   59: invokespecial 46	com/google/common/collect/SortedLists$KeyPresentBehavior$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 48	com/google/common/collect/SortedLists$KeyPresentBehavior:LAST_BEFORE	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   65: iconst_5
      //   66: anewarray 2	com/google/common/collect/SortedLists$KeyPresentBehavior
      //   69: astore_0
      //   70: aload_0
      //   71: iconst_0
      //   72: getstatic 24	com/google/common/collect/SortedLists$KeyPresentBehavior:ANY_PRESENT	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   75: aastore
      //   76: aload_0
      //   77: iconst_1
      //   78: getstatic 30	com/google/common/collect/SortedLists$KeyPresentBehavior:LAST_PRESENT	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   81: aastore
      //   82: aload_0
      //   83: iconst_2
      //   84: getstatic 36	com/google/common/collect/SortedLists$KeyPresentBehavior:FIRST_PRESENT	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   87: aastore
      //   88: aload_0
      //   89: iconst_3
      //   90: getstatic 42	com/google/common/collect/SortedLists$KeyPresentBehavior:FIRST_AFTER	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   93: aastore
      //   94: aload_0
      //   95: iconst_4
      //   96: getstatic 48	com/google/common/collect/SortedLists$KeyPresentBehavior:LAST_BEFORE	Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   99: aastore
      //   100: aload_0
      //   101: putstatic 50	com/google/common/collect/SortedLists$KeyPresentBehavior:$VALUES	[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
      //   104: return
    }

    abstract <E> int resultIndex(Comparator<? super E> paramComparator, E paramE, List<? extends E> paramList, int paramInt);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedLists
 * JD-Core Version:    0.6.2
 */