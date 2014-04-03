package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hashing;
import com.google.common.io.ByteArrayDataInput;
import com.google.common.io.ByteStreams;
import com.google.common.primitives.Ints;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import javax.annotation.Nullable;

@Beta
public final class InetAddresses
{
  private static final Inet4Address ANY4 = (Inet4Address)forString("0.0.0.0");
  private static final int IPV4_PART_COUNT = 4;
  private static final int IPV6_PART_COUNT = 8;
  private static final Inet4Address LOOPBACK4 = (Inet4Address)forString("127.0.0.1");

  private static InetAddress bytesToInetAddress(byte[] paramArrayOfByte)
  {
    try
    {
      InetAddress localInetAddress = InetAddress.getByAddress(paramArrayOfByte);
      return localInetAddress;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw new AssertionError(localUnknownHostException);
    }
  }

  public static int coerceToInteger(InetAddress paramInetAddress)
  {
    return ByteStreams.newDataInput(getCoercedIPv4Address(paramInetAddress).getAddress()).readInt();
  }

  private static void compressLongestRunOfZeroes(int[] paramArrayOfInt)
  {
    int i = -1;
    int j = -1;
    int k = -1;
    int m = 0;
    if (m < 1 + paramArrayOfInt.length)
    {
      if ((m < paramArrayOfInt.length) && (paramArrayOfInt[m] == 0))
        if (k < 0)
          k = m;
      while (true)
      {
        m++;
        break;
        if (k >= 0)
        {
          int n = m - k;
          if (n > j)
          {
            i = k;
            j = n;
          }
          k = -1;
        }
      }
    }
    if (j >= 2)
      Arrays.fill(paramArrayOfInt, i, i + j, -1);
  }

  private static String convertDottedQuadToHex(String paramString)
  {
    int i = paramString.lastIndexOf(':');
    String str1 = paramString.substring(0, i + 1);
    byte[] arrayOfByte = textToNumericFormatV4(paramString.substring(i + 1));
    if (arrayOfByte == null)
      return null;
    String str2 = Integer.toHexString((0xFF & arrayOfByte[0]) << 8 | 0xFF & arrayOfByte[1]);
    String str3 = Integer.toHexString((0xFF & arrayOfByte[2]) << 8 | 0xFF & arrayOfByte[3]);
    return str1 + str2 + ":" + str3;
  }

  private static byte[] copy4(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    System.arraycopy(paramArrayOfByte, paramInt, arrayOfByte, 0, 4);
    return arrayOfByte;
  }

  public static InetAddress forString(String paramString)
  {
    byte[] arrayOfByte = ipStringToBytes(paramString);
    if (arrayOfByte == null)
      throw new IllegalArgumentException(String.format("'%s' is not an IP string literal.", new Object[] { paramString }));
    return bytesToInetAddress(arrayOfByte);
  }

  public static InetAddress forUriString(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str;
    if ((paramString.startsWith("[")) && (paramString.endsWith("]")))
      str = paramString.substring(1, -1 + paramString.length());
    byte[] arrayOfByte;
    for (int i = 16; ; i = 4)
    {
      arrayOfByte = ipStringToBytes(str);
      if ((arrayOfByte != null) && (arrayOfByte.length == i))
        break;
      throw new IllegalArgumentException(String.format("Not a valid URI IP literal: '%s'", new Object[] { paramString }));
      str = paramString;
    }
    return bytesToInetAddress(arrayOfByte);
  }

  public static Inet4Address fromInteger(int paramInt)
  {
    return getInet4Address(Ints.toByteArray(paramInt));
  }

  public static InetAddress fromLittleEndianByteArray(byte[] paramArrayOfByte)
    throws UnknownHostException
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    for (int i = 0; i < paramArrayOfByte.length; i++)
      arrayOfByte[i] = paramArrayOfByte[(-1 + (paramArrayOfByte.length - i))];
    return InetAddress.getByAddress(arrayOfByte);
  }

  public static Inet4Address get6to4IPv4Address(Inet6Address paramInet6Address)
  {
    boolean bool = is6to4Address(paramInet6Address);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = toAddrString(paramInet6Address);
    Preconditions.checkArgument(bool, "Address '%s' is not a 6to4 address.", arrayOfObject);
    return getInet4Address(copy4(paramInet6Address.getAddress(), 2));
  }

  public static Inet4Address getCoercedIPv4Address(InetAddress paramInetAddress)
  {
    if ((paramInetAddress instanceof Inet4Address))
      return (Inet4Address)paramInetAddress;
    byte[] arrayOfByte = paramInetAddress.getAddress();
    int i = 1;
    for (int j = 0; ; j++)
      if (j < 15)
      {
        if (arrayOfByte[j] != 0)
          i = 0;
      }
      else
      {
        if ((i == 0) || (arrayOfByte[15] != 1))
          break;
        return LOOPBACK4;
      }
    if ((i != 0) && (arrayOfByte[15] == 0))
      return ANY4;
    Inet6Address localInet6Address = (Inet6Address)paramInetAddress;
    if (hasEmbeddedIPv4ClientAddress(localInet6Address));
    for (long l = getEmbeddedIPv4ClientAddress(localInet6Address).hashCode(); ; l = ByteBuffer.wrap(localInet6Address.getAddress(), 0, 8).getLong())
    {
      int k = 0xE0000000 | Hashing.murmur3_32().hashLong(l).asInt();
      if (k == -1)
        k = -2;
      return getInet4Address(Ints.toByteArray(k));
    }
  }

  public static Inet4Address getCompatIPv4Address(Inet6Address paramInet6Address)
  {
    boolean bool = isCompatIPv4Address(paramInet6Address);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = toAddrString(paramInet6Address);
    Preconditions.checkArgument(bool, "Address '%s' is not IPv4-compatible.", arrayOfObject);
    return getInet4Address(copy4(paramInet6Address.getAddress(), 12));
  }

  public static Inet4Address getEmbeddedIPv4ClientAddress(Inet6Address paramInet6Address)
  {
    if (isCompatIPv4Address(paramInet6Address))
      return getCompatIPv4Address(paramInet6Address);
    if (is6to4Address(paramInet6Address))
      return get6to4IPv4Address(paramInet6Address);
    if (isTeredoAddress(paramInet6Address))
      return getTeredoInfo(paramInet6Address).getClient();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = toAddrString(paramInet6Address);
    throw new IllegalArgumentException(String.format("'%s' has no embedded IPv4 address.", arrayOfObject));
  }

  private static Inet4Address getInet4Address(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 4);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
      Preconditions.checkArgument(bool, "Byte array has invalid length for an IPv4 address: %s != 4.", arrayOfObject);
      return (Inet4Address)bytesToInetAddress(paramArrayOfByte);
    }
  }

  public static Inet4Address getIsatapIPv4Address(Inet6Address paramInet6Address)
  {
    boolean bool = isIsatapAddress(paramInet6Address);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = toAddrString(paramInet6Address);
    Preconditions.checkArgument(bool, "Address '%s' is not an ISATAP address.", arrayOfObject);
    return getInet4Address(copy4(paramInet6Address.getAddress(), 12));
  }

  public static TeredoInfo getTeredoInfo(Inet6Address paramInet6Address)
  {
    boolean bool = isTeredoAddress(paramInet6Address);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = toAddrString(paramInet6Address);
    Preconditions.checkArgument(bool, "Address '%s' is not a Teredo address.", arrayOfObject);
    byte[] arrayOfByte1 = paramInet6Address.getAddress();
    Inet4Address localInet4Address = getInet4Address(copy4(arrayOfByte1, 4));
    int i = 0xFFFF & ByteStreams.newDataInput(arrayOfByte1, 8).readShort();
    int j = 0xFFFF & (0xFFFFFFFF ^ ByteStreams.newDataInput(arrayOfByte1, 10).readShort());
    byte[] arrayOfByte2 = copy4(arrayOfByte1, 12);
    for (int k = 0; k < arrayOfByte2.length; k++)
      arrayOfByte2[k] = ((byte)(0xFFFFFFFF ^ arrayOfByte2[k]));
    return new TeredoInfo(localInet4Address, getInet4Address(arrayOfByte2), j, i);
  }

  public static boolean hasEmbeddedIPv4ClientAddress(Inet6Address paramInet6Address)
  {
    return (isCompatIPv4Address(paramInet6Address)) || (is6to4Address(paramInet6Address)) || (isTeredoAddress(paramInet6Address));
  }

  private static String hextetsToIPv6String(int[] paramArrayOfInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(39);
    int i = 0;
    int j = 0;
    if (j < paramArrayOfInt.length)
    {
      int k;
      if (paramArrayOfInt[j] >= 0)
      {
        k = 1;
        label29: if (k == 0)
          break label71;
        if (i != 0)
          localStringBuilder.append(':');
        localStringBuilder.append(Integer.toHexString(paramArrayOfInt[j]));
      }
      while (true)
      {
        i = k;
        j++;
        break;
        k = 0;
        break label29;
        label71: if ((j == 0) || (i != 0))
          localStringBuilder.append("::");
      }
    }
    return localStringBuilder.toString();
  }

  public static InetAddress increment(InetAddress paramInetAddress)
  {
    byte[] arrayOfByte = paramInetAddress.getAddress();
    for (int i = -1 + arrayOfByte.length; (i >= 0) && (arrayOfByte[i] == -1); i--)
      arrayOfByte[i] = 0;
    if (i >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Incrementing %s would wrap.", new Object[] { paramInetAddress });
      arrayOfByte[i] = ((byte)(1 + arrayOfByte[i]));
      return bytesToInetAddress(arrayOfByte);
    }
  }

  private static byte[] ipStringToBytes(String paramString)
  {
    int i = 0;
    int j = 0;
    int k = 0;
    char c;
    while (true)
      if (k < paramString.length())
      {
        c = paramString.charAt(k);
        if (c == '.')
        {
          j = 1;
          k++;
        }
        else if (c == ':')
        {
          if (j == 0)
            break;
        }
      }
    label84: label89: 
    do
    {
      do
      {
        return null;
        i = 1;
        break;
        if (Character.digit(c, 16) != -1)
          break;
        return null;
        if (i == 0)
          break label89;
        if (j == 0)
          break label84;
        paramString = convertDottedQuadToHex(paramString);
      }
      while (paramString == null);
      return textToNumericFormatV6(paramString);
    }
    while (j == 0);
    return textToNumericFormatV4(paramString);
  }

  public static boolean is6to4Address(Inet6Address paramInet6Address)
  {
    byte[] arrayOfByte = paramInet6Address.getAddress();
    return (arrayOfByte[0] == 32) && (arrayOfByte[1] == 2);
  }

  public static boolean isCompatIPv4Address(Inet6Address paramInet6Address)
  {
    if (!paramInet6Address.isIPv4CompatibleAddress());
    byte[] arrayOfByte;
    do
    {
      return false;
      arrayOfByte = paramInet6Address.getAddress();
    }
    while ((arrayOfByte[12] == 0) && (arrayOfByte[13] == 0) && (arrayOfByte[14] == 0) && ((arrayOfByte[15] == 0) || (arrayOfByte[15] == 1)));
    return true;
  }

  public static boolean isInetAddress(String paramString)
  {
    return ipStringToBytes(paramString) != null;
  }

  public static boolean isIsatapAddress(Inet6Address paramInet6Address)
  {
    if (isTeredoAddress(paramInet6Address));
    byte[] arrayOfByte;
    do
    {
      return false;
      arrayOfByte = paramInet6Address.getAddress();
    }
    while (((0x3 | arrayOfByte[8]) != 3) || (arrayOfByte[9] != 0) || (arrayOfByte[10] != 94) || (arrayOfByte[11] != -2));
    return true;
  }

  public static boolean isMappedIPv4Address(String paramString)
  {
    byte[] arrayOfByte = ipStringToBytes(paramString);
    if ((arrayOfByte != null) && (arrayOfByte.length == 16));
    for (int i = 0; i < 10; i++)
      if (arrayOfByte[i] != 0)
        return false;
    for (int j = 10; ; j++)
    {
      if (j >= 12)
        break label60;
      if (arrayOfByte[j] != -1)
        break;
    }
    label60: return true;
  }

  public static boolean isMaximum(InetAddress paramInetAddress)
  {
    byte[] arrayOfByte = paramInetAddress.getAddress();
    for (int i = 0; i < arrayOfByte.length; i++)
      if (arrayOfByte[i] != -1)
        return false;
    return true;
  }

  public static boolean isTeredoAddress(Inet6Address paramInet6Address)
  {
    byte[] arrayOfByte = paramInet6Address.getAddress();
    return (arrayOfByte[0] == 32) && (arrayOfByte[1] == 1) && (arrayOfByte[2] == 0) && (arrayOfByte[3] == 0);
  }

  public static boolean isUriInetAddress(String paramString)
  {
    try
    {
      forUriString(paramString);
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return false;
  }

  private static short parseHextet(String paramString)
  {
    int i = Integer.parseInt(paramString, 16);
    if (i > 65535)
      throw new NumberFormatException();
    return (short)i;
  }

  private static byte parseOctet(String paramString)
  {
    int i = Integer.parseInt(paramString);
    if ((i > 255) || ((paramString.startsWith("0")) && (paramString.length() > 1)))
      throw new NumberFormatException();
    return (byte)i;
  }

  private static byte[] textToNumericFormatV4(String paramString)
  {
    String[] arrayOfString = paramString.split("\\.", 5);
    byte[] arrayOfByte;
    if (arrayOfString.length != 4)
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[4];
      int i = 0;
      try
      {
        while (i < arrayOfByte.length)
        {
          arrayOfByte[i] = parseOctet(arrayOfString[i]);
          i++;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
    return null;
  }

  private static byte[] textToNumericFormatV6(String paramString)
  {
    String[] arrayOfString = paramString.split(":", 10);
    if ((arrayOfString.length < 3) || (arrayOfString.length > 9));
    label57: int k;
    int m;
    int n;
    do
    {
      int i;
      do
      {
        do
        {
          return null;
          i = -1;
          for (int j = 1; ; j++)
          {
            if (j >= -1 + arrayOfString.length)
              break label57;
            if (arrayOfString[j].length() == 0)
            {
              if (i >= 0)
                break;
              i = j;
            }
          }
          if (i < 0)
            break label165;
          k = i;
          m = -1 + (arrayOfString.length - i);
          if (arrayOfString[0].length() != 0)
            break;
          k--;
        }
        while (k != 0);
        if (arrayOfString[(-1 + arrayOfString.length)].length() != 0)
          break;
        m--;
      }
      while (m != 0);
      n = 8 - (k + m);
      if (i < 0)
        break label175;
    }
    while (n < 1);
    label129: ByteBuffer localByteBuffer = ByteBuffer.allocate(16);
    int i1 = 0;
    label139: if (i1 < k);
    while (true)
    {
      try
      {
        localByteBuffer.putShort(parseHextet(arrayOfString[i1]));
        i1++;
        break label139;
        label165: k = arrayOfString.length;
        m = 0;
        break;
        label175: if (n == 0)
          break label129;
        return null;
        int i2 = 0;
        if (i2 >= n)
          break label242;
        localByteBuffer.putShort((short)0);
        i2++;
        continue;
        if (i3 > 0)
        {
          localByteBuffer.putShort(parseHextet(arrayOfString[(arrayOfString.length - i3)]));
          i3--;
          continue;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        return null;
      }
      return localByteBuffer.array();
      label242: int i3 = m;
    }
  }

  public static String toAddrString(InetAddress paramInetAddress)
  {
    Preconditions.checkNotNull(paramInetAddress);
    if ((paramInetAddress instanceof Inet4Address))
      return paramInetAddress.getHostAddress();
    Preconditions.checkArgument(paramInetAddress instanceof Inet6Address);
    byte[] arrayOfByte = paramInetAddress.getAddress();
    int[] arrayOfInt = new int[8];
    for (int i = 0; i < arrayOfInt.length; i++)
      arrayOfInt[i] = Ints.fromBytes(0, 0, arrayOfByte[(i * 2)], arrayOfByte[(1 + i * 2)]);
    compressLongestRunOfZeroes(arrayOfInt);
    return hextetsToIPv6String(arrayOfInt);
  }

  public static String toUriString(InetAddress paramInetAddress)
  {
    if ((paramInetAddress instanceof Inet6Address))
      return "[" + toAddrString(paramInetAddress) + "]";
    return toAddrString(paramInetAddress);
  }

  @Beta
  public static final class TeredoInfo
  {
    private final Inet4Address client;
    private final int flags;
    private final int port;
    private final Inet4Address server;

    public TeredoInfo(@Nullable Inet4Address paramInet4Address1, @Nullable Inet4Address paramInet4Address2, int paramInt1, int paramInt2)
    {
      boolean bool1;
      if ((paramInt1 >= 0) && (paramInt1 <= 65535))
      {
        bool1 = true;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(paramInt1);
        Preconditions.checkArgument(bool1, "port '%s' is out of range (0 <= port <= 0xffff)", arrayOfObject1);
        if ((paramInt2 < 0) || (paramInt2 > 65535))
          break label125;
      }
      label125: for (boolean bool2 = true; ; bool2 = false)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(paramInt2);
        Preconditions.checkArgument(bool2, "flags '%s' is out of range (0 <= flags <= 0xffff)", arrayOfObject2);
        this.server = ((Inet4Address)Objects.firstNonNull(paramInet4Address1, InetAddresses.ANY4));
        this.client = ((Inet4Address)Objects.firstNonNull(paramInet4Address2, InetAddresses.ANY4));
        this.port = paramInt1;
        this.flags = paramInt2;
        return;
        bool1 = false;
        break;
      }
    }

    public Inet4Address getClient()
    {
      return this.client;
    }

    public int getFlags()
    {
      return this.flags;
    }

    public int getPort()
    {
      return this.port;
    }

    public Inet4Address getServer()
    {
      return this.server;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.net.InetAddresses
 * JD-Core Version:    0.6.2
 */