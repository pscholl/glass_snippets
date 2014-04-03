package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Comparator;
import sun.misc.Unsafe;

public final class UnsignedBytes
{
  public static final byte MAX_POWER_OF_TWO = -128;
  public static final byte MAX_VALUE = -1;
  private static final int UNSIGNED_MASK = 255;

  public static byte checkedCast(long paramLong)
  {
    if (paramLong >> 8 == 0L);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "out of range: %s", arrayOfObject);
      return (byte)(int)paramLong;
    }
  }

  public static int compare(byte paramByte1, byte paramByte2)
  {
    return toInt(paramByte1) - toInt(paramByte2);
  }

  public static String join(String paramString, byte[] paramArrayOfByte)
  {
    Preconditions.checkNotNull(paramString);
    if (paramArrayOfByte.length == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * (3 + paramString.length()));
    localStringBuilder.append(toInt(paramArrayOfByte[0]));
    for (int i = 1; i < paramArrayOfByte.length; i++)
      localStringBuilder.append(paramString).append(toString(paramArrayOfByte[i]));
    return localStringBuilder.toString();
  }

  public static Comparator<byte[]> lexicographicalComparator()
  {
    return LexicographicalComparatorHolder.BEST_COMPARATOR;
  }

  @VisibleForTesting
  static Comparator<byte[]> lexicographicalComparatorJavaImpl()
  {
    return UnsignedBytes.LexicographicalComparatorHolder.PureJavaComparator.INSTANCE;
  }

  public static byte max(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length > 0);
    int i;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      i = toInt(paramArrayOfByte[0]);
      for (int j = 1; j < paramArrayOfByte.length; j++)
      {
        int k = toInt(paramArrayOfByte[j]);
        if (k > i)
          i = k;
      }
    }
    return (byte)i;
  }

  public static byte min(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length > 0);
    int i;
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      i = toInt(paramArrayOfByte[0]);
      for (int j = 1; j < paramArrayOfByte.length; j++)
      {
        int k = toInt(paramArrayOfByte[j]);
        if (k < i)
          i = k;
      }
    }
    return (byte)i;
  }

  @Beta
  public static byte parseUnsignedByte(String paramString)
  {
    return parseUnsignedByte(paramString, 10);
  }

  @Beta
  public static byte parseUnsignedByte(String paramString, int paramInt)
  {
    int i = Integer.parseInt((String)Preconditions.checkNotNull(paramString), paramInt);
    if (i >> 8 == 0)
      return (byte)i;
    throw new NumberFormatException("out of range: " + i);
  }

  public static byte saturatedCast(long paramLong)
  {
    if (paramLong > toInt((byte)-1))
      return -1;
    if (paramLong < 0L)
      return 0;
    return (byte)(int)paramLong;
  }

  public static int toInt(byte paramByte)
  {
    return paramByte & 0xFF;
  }

  @Beta
  public static String toString(byte paramByte)
  {
    return toString(paramByte, 10);
  }

  @Beta
  public static String toString(byte paramByte, int paramInt)
  {
    if ((paramInt >= 2) && (paramInt <= 36));
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", arrayOfObject);
      return Integer.toString(toInt(paramByte), paramInt);
    }
  }

  @VisibleForTesting
  static class LexicographicalComparatorHolder
  {
    static final Comparator<byte[]> BEST_COMPARATOR = getBestComparator();
    static final String UNSAFE_COMPARATOR_NAME = LexicographicalComparatorHolder.class.getName() + "$UnsafeComparator";

    static Comparator<byte[]> getBestComparator()
    {
      try
      {
        Comparator localComparator = (Comparator)Class.forName(UNSAFE_COMPARATOR_NAME).getEnumConstants()[0];
        return localComparator;
      }
      catch (Throwable localThrowable)
      {
      }
      return UnsignedBytes.lexicographicalComparatorJavaImpl();
    }

    static enum PureJavaComparator
      implements Comparator<byte[]>
    {
      static
      {
        PureJavaComparator[] arrayOfPureJavaComparator = new PureJavaComparator[1];
        arrayOfPureJavaComparator[0] = INSTANCE;
      }

      public int compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
      {
        int i = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
        for (int j = 0; j < i; j++)
        {
          int k = UnsignedBytes.compare(paramArrayOfByte1[j], paramArrayOfByte2[j]);
          if (k != 0)
            return k;
        }
        return paramArrayOfByte1.length - paramArrayOfByte2.length;
      }
    }

    @VisibleForTesting
    static enum UnsafeComparator
      implements Comparator<byte[]>
    {
      static final int BYTE_ARRAY_BASE_OFFSET;
      static final boolean littleEndian;
      static final Unsafe theUnsafe;

      static
      {
        UnsafeComparator[] arrayOfUnsafeComparator = new UnsafeComparator[1];
        arrayOfUnsafeComparator[0] = INSTANCE;
        $VALUES = arrayOfUnsafeComparator;
        littleEndian = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN);
        theUnsafe = getUnsafe();
        BYTE_ARRAY_BASE_OFFSET = theUnsafe.arrayBaseOffset([B.class);
        if (theUnsafe.arrayIndexScale([B.class) != 1)
          throw new AssertionError();
      }

      private static Unsafe getUnsafe()
      {
        try
        {
          Unsafe localUnsafe2 = Unsafe.getUnsafe();
          return localUnsafe2;
        }
        catch (SecurityException localSecurityException)
        {
          try
          {
            Unsafe localUnsafe1 = (Unsafe)AccessController.doPrivileged(new PrivilegedExceptionAction()
            {
              public Unsafe run()
                throws Exception
              {
                for (Field localField : Unsafe.class.getDeclaredFields())
                {
                  localField.setAccessible(true);
                  Object localObject = localField.get(null);
                  if (Unsafe.class.isInstance(localObject))
                    return (Unsafe)Unsafe.class.cast(localObject);
                }
                throw new NoSuchFieldError("the Unsafe");
              }
            });
            return localUnsafe1;
          }
          catch (PrivilegedActionException localPrivilegedActionException)
          {
            throw new RuntimeException("Could not initialize intrinsics", localPrivilegedActionException.getCause());
          }
        }
      }

      public int compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
      {
        int i = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
        int j = i / 8;
        int n;
        for (int k = 0; k < j * 8; k += 8)
        {
          long l1 = theUnsafe.getLong(paramArrayOfByte1, BYTE_ARRAY_BASE_OFFSET + k);
          long l2 = theUnsafe.getLong(paramArrayOfByte2, BYTE_ARRAY_BASE_OFFSET + k);
          long l3 = l1 ^ l2;
          if (l3 != 0L)
          {
            if (!littleEndian)
            {
              n = UnsignedLongs.compare(l1, l2);
              return n;
            }
            int i1 = (int)l3;
            int i2 = 0;
            if (i1 == 0)
            {
              i1 = (int)(l3 >>> 32);
              i2 = 32;
            }
            int i3 = i1 << 16;
            if (i3 == 0)
              i2 += 16;
            while (true)
            {
              if (i1 << 8 == 0)
                i2 += 8;
              return (int)((0xFF & l1 >>> i2) - (0xFF & l2 >>> i2));
              i1 = i3;
            }
          }
        }
        for (int m = j * 8; ; m++)
        {
          if (m >= i)
            break label215;
          n = UnsignedBytes.compare(paramArrayOfByte1[m], paramArrayOfByte2[m]);
          if (n != 0)
            break;
        }
        label215: return paramArrayOfByte1.length - paramArrayOfByte2.length;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.UnsignedBytes
 * JD-Core Version:    0.6.2
 */