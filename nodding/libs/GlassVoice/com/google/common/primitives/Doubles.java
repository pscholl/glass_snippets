package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Doubles
{
  public static final int BYTES = 8;

  @GwtIncompatible("regular expressions")
  static final Pattern FLOATING_POINT_PATTERN = fpPattern();

  public static List<Double> asList(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble.length == 0)
      return Collections.emptyList();
    return new DoubleArrayAsList(paramArrayOfDouble);
  }

  public static int compare(double paramDouble1, double paramDouble2)
  {
    return Double.compare(paramDouble1, paramDouble2);
  }

  public static double[] concat(double[][] paramArrayOfDouble)
  {
    int i = 0;
    int j = paramArrayOfDouble.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfDouble[k].length;
    double[] arrayOfDouble1 = new double[i];
    int m = 0;
    int n = paramArrayOfDouble.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      double[] arrayOfDouble2 = paramArrayOfDouble[i1];
      System.arraycopy(arrayOfDouble2, 0, arrayOfDouble1, m, arrayOfDouble2.length);
      m += arrayOfDouble2.length;
    }
    return arrayOfDouble1;
  }

  public static boolean contains(double[] paramArrayOfDouble, double paramDouble)
  {
    int i = paramArrayOfDouble.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfDouble[j] == paramDouble)
        return true;
    return false;
  }

  private static double[] copyOf(double[] paramArrayOfDouble, int paramInt)
  {
    double[] arrayOfDouble = new double[paramInt];
    System.arraycopy(paramArrayOfDouble, 0, arrayOfDouble, 0, Math.min(paramArrayOfDouble.length, paramInt));
    return arrayOfDouble;
  }

  public static double[] ensureCapacity(double[] paramArrayOfDouble, int paramInt1, int paramInt2)
  {
    boolean bool1;
    if (paramInt1 >= 0)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      Preconditions.checkArgument(bool1, "Invalid minLength: %s", arrayOfObject1);
      if (paramInt2 < 0)
        break label79;
    }
    label79: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt2);
      Preconditions.checkArgument(bool2, "Invalid padding: %s", arrayOfObject2);
      if (paramArrayOfDouble.length < paramInt1)
        paramArrayOfDouble = copyOf(paramArrayOfDouble, paramInt1 + paramInt2);
      return paramArrayOfDouble;
      bool1 = false;
      break;
    }
  }

  @GwtIncompatible("regular expressions")
  private static Pattern fpPattern()
  {
    String str1 = "(?:\\d++(?:\\.\\d*+)?|\\.\\d++)" + "(?:[eE][+-]?\\d++)?[fFdD]?";
    String str2 = "0[xX]" + "(?:\\p{XDigit}++(?:\\.\\p{XDigit}*+)?|\\.\\p{XDigit}++)" + "[pP][+-]?\\d++[fFdD]?";
    return Pattern.compile("[+-]?(?:NaN|Infinity|" + str1 + "|" + str2 + ")");
  }

  public static int hashCode(double paramDouble)
  {
    return Double.valueOf(paramDouble).hashCode();
  }

  public static int indexOf(double[] paramArrayOfDouble, double paramDouble)
  {
    return indexOf(paramArrayOfDouble, paramDouble, 0, paramArrayOfDouble.length);
  }

  private static int indexOf(double[] paramArrayOfDouble, double paramDouble, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
      if (paramArrayOfDouble[i] == paramDouble)
        return i;
    return -1;
  }

  public static int indexOf(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    Preconditions.checkNotNull(paramArrayOfDouble1, "array");
    Preconditions.checkNotNull(paramArrayOfDouble2, "target");
    int i;
    if (paramArrayOfDouble2.length == 0)
      i = 0;
    label75: 
    while (true)
    {
      return i;
      i = 0;
      if (i >= 1 + (paramArrayOfDouble1.length - paramArrayOfDouble2.length))
        break;
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfDouble2.length)
          break label75;
        if (paramArrayOfDouble1[(i + j)] != paramArrayOfDouble2[j])
        {
          i++;
          break;
        }
      }
    }
    return -1;
  }

  public static boolean isFinite(double paramDouble)
  {
    int i = 1;
    int j;
    if ((-1.0D / 0.0D) < paramDouble)
    {
      j = i;
      if (paramDouble >= (1.0D / 0.0D))
        break label29;
    }
    while (true)
    {
      return i & j;
      j = 0;
      break;
      label29: i = 0;
    }
  }

  public static String join(String paramString, double[] paramArrayOfDouble)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfDouble.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(12 * paramArrayOfDouble.length);
    localStringBuilder.append(paramArrayOfDouble[0]);
    for (int i = 1; i < paramArrayOfDouble.length; i++)
      localStringBuilder.append(paramString).append(paramArrayOfDouble[i]);
    return localStringBuilder.toString();
  }

  public static int lastIndexOf(double[] paramArrayOfDouble, double paramDouble)
  {
    return lastIndexOf(paramArrayOfDouble, paramDouble, 0, paramArrayOfDouble.length);
  }

  private static int lastIndexOf(double[] paramArrayOfDouble, double paramDouble, int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= paramInt1; i--)
      if (paramArrayOfDouble[i] == paramDouble)
        return i;
    return -1;
  }

  public static Comparator<double[]> lexicographicalComparator()
  {
    return LexicographicalComparator.INSTANCE;
  }

  public static double max(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble.length > 0);
    double d;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      d = paramArrayOfDouble[0];
      for (int i = 1; i < paramArrayOfDouble.length; i++)
        d = Math.max(d, paramArrayOfDouble[i]);
    }
    return d;
  }

  public static double min(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble.length > 0);
    double d;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      d = paramArrayOfDouble[0];
      for (int i = 1; i < paramArrayOfDouble.length; i++)
        d = Math.min(d, paramArrayOfDouble[i]);
    }
    return d;
  }

  public static double[] toArray(Collection<? extends Number> paramCollection)
  {
    double[] arrayOfDouble;
    if ((paramCollection instanceof DoubleArrayAsList))
      arrayOfDouble = ((DoubleArrayAsList)paramCollection).toDoubleArray();
    while (true)
    {
      return arrayOfDouble;
      Object[] arrayOfObject = paramCollection.toArray();
      int i = arrayOfObject.length;
      arrayOfDouble = new double[i];
      for (int j = 0; j < i; j++)
        arrayOfDouble[j] = ((Number)Preconditions.checkNotNull(arrayOfObject[j])).doubleValue();
    }
  }

  @Nullable
  @Beta
  @GwtIncompatible("regular expressions")
  public static Double tryParse(String paramString)
  {
    if (FLOATING_POINT_PATTERN.matcher(paramString).matches())
      try
      {
        Double localDouble = Double.valueOf(Double.parseDouble(paramString));
        return localDouble;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    return null;
  }

  @GwtCompatible
  private static class DoubleArrayAsList extends AbstractList<Double>
    implements RandomAccess, Serializable
  {
    private static final long serialVersionUID;
    final double[] array;
    final int end;
    final int start;

    DoubleArrayAsList(double[] paramArrayOfDouble)
    {
      this(paramArrayOfDouble, 0, paramArrayOfDouble.length);
    }

    DoubleArrayAsList(double[] paramArrayOfDouble, int paramInt1, int paramInt2)
    {
      this.array = paramArrayOfDouble;
      this.start = paramInt1;
      this.end = paramInt2;
    }

    public boolean contains(Object paramObject)
    {
      return ((paramObject instanceof Double)) && (Doubles.indexOf(this.array, ((Double)paramObject).doubleValue(), this.start, this.end) != -1);
    }

    public boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof DoubleArrayAsList))
          break;
        DoubleArrayAsList localDoubleArrayAsList = (DoubleArrayAsList)paramObject;
        int i = size();
        if (localDoubleArrayAsList.size() != i)
          return false;
        for (int j = 0; j < i; j++)
          if (this.array[(j + this.start)] != localDoubleArrayAsList.array[(j + localDoubleArrayAsList.start)])
            return false;
      }
      return super.equals(paramObject);
    }

    public Double get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, size());
      return Double.valueOf(this.array[(paramInt + this.start)]);
    }

    public int hashCode()
    {
      int i = 1;
      for (int j = this.start; j < this.end; j++)
        i = i * 31 + Doubles.hashCode(this.array[j]);
      return i;
    }

    public int indexOf(Object paramObject)
    {
      if ((paramObject instanceof Double))
      {
        int i = Doubles.indexOf(this.array, ((Double)paramObject).doubleValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public boolean isEmpty()
    {
      return false;
    }

    public int lastIndexOf(Object paramObject)
    {
      if ((paramObject instanceof Double))
      {
        int i = Doubles.lastIndexOf(this.array, ((Double)paramObject).doubleValue(), this.start, this.end);
        if (i >= 0)
          return i - this.start;
      }
      return -1;
    }

    public Double set(int paramInt, Double paramDouble)
    {
      Preconditions.checkElementIndex(paramInt, size());
      double d = this.array[(paramInt + this.start)];
      this.array[(paramInt + this.start)] = ((Double)Preconditions.checkNotNull(paramDouble)).doubleValue();
      return Double.valueOf(d);
    }

    public int size()
    {
      return this.end - this.start;
    }

    public List<Double> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
      if (paramInt1 == paramInt2)
        return Collections.emptyList();
      return new DoubleArrayAsList(this.array, paramInt1 + this.start, paramInt2 + this.start);
    }

    double[] toDoubleArray()
    {
      int i = size();
      double[] arrayOfDouble = new double[i];
      System.arraycopy(this.array, this.start, arrayOfDouble, 0, i);
      return arrayOfDouble;
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(12 * size());
      localStringBuilder.append('[').append(this.array[this.start]);
      for (int i = 1 + this.start; i < this.end; i++)
        localStringBuilder.append(", ").append(this.array[i]);
      return ']';
    }
  }

  private static enum LexicographicalComparator
    implements Comparator<double[]>
  {
    static
    {
      LexicographicalComparator[] arrayOfLexicographicalComparator = new LexicographicalComparator[1];
      arrayOfLexicographicalComparator[0] = INSTANCE;
    }

    public int compare(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
    {
      int i = Math.min(paramArrayOfDouble1.length, paramArrayOfDouble2.length);
      for (int j = 0; j < i; j++)
      {
        int k = Doubles.compare(paramArrayOfDouble1[j], paramArrayOfDouble2[j]);
        if (k != 0)
          return k;
      }
      return paramArrayOfDouble1.length - paramArrayOfDouble2.length;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.Doubles
 * JD-Core Version:    0.6.2
 */