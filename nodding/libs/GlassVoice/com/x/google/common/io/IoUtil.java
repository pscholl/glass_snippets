package com.x.google.common.io;

import com.x.google.common.Config;
import com.x.google.common.util.text.TextUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.util.Vector;

public class IoUtil
{
  public static final String ERROR_INVALID_REDIRECT = "Invalid redirect.";
  public static final String ERROR_MAX_REDIRECTS = "Maximum redirects reached.";
  public static final String ERROR_NOT_SECURE = "The connection is not end-to-end secure.";
  public static final String ERROR_UNEXPECTED_RESPONSE = "Unexpected response.";
  private static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private static final long HI_MASK = 5188146764422578174L;
  private static final long LOW_MASK = 288062709218410496L;
  public static final String MAILTO_BODY_PARAM = "body";
  private static final String MAILTO_SCHEME = "mailto:";
  public static final String MAILTO_SUBJECT_PARAM = "subject";
  public static final String NETWORK_NOT_AVAILABLE = "Network not available.";

  public static void appendParams(StringBuffer paramStringBuffer, String paramString)
  {
    char c = '?';
    if (paramString.length() != 0)
      if (paramStringBuffer.toString().indexOf(c) != -1)
        break label33;
    while (true)
    {
      paramStringBuffer.append(c).append(paramString);
      return;
      label33: c = '&';
    }
  }

  public static void closeConnection(GoogleHttpConnection paramGoogleHttpConnection)
  {
    if (paramGoogleHttpConnection != null);
    try
    {
      paramGoogleHttpConnection.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void closeConnection(GoogleTcpConnection paramGoogleTcpConnection)
  {
    if (paramGoogleTcpConnection != null);
    try
    {
      paramGoogleTcpConnection.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void closeInputStream(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void closeOutputStream(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void closeReader(Reader paramReader)
  {
    if (paramReader != null);
    try
    {
      paramReader.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  // ERROR //
  public static GoogleHttpConnection connect(HttpConnectionFactory paramHttpConnectionFactory, String paramString, Vector paramVector, byte[] paramArrayOfByte, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 123 1 0
    //   6: ifne +13 -> 19
    //   9: new 90	java/io/IOException
    //   12: dup
    //   13: ldc 38
    //   15: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: iconst_0
    //   20: istore 8
    //   22: iconst_0
    //   23: istore 9
    //   25: aconst_null
    //   26: astore 10
    //   28: aconst_null
    //   29: astore 11
    //   31: aload_3
    //   32: ifnull +115 -> 147
    //   35: iconst_1
    //   36: istore 12
    //   38: aload_0
    //   39: aload_1
    //   40: iload 12
    //   42: invokeinterface 130 3 0
    //   47: astore 10
    //   49: aload 10
    //   51: aload_2
    //   52: invokestatic 134	com/x/google/common/io/IoUtil:setConnectionHeaders	(Lcom/x/google/common/io/GoogleHttpConnection;Ljava/util/Vector;)V
    //   55: aconst_null
    //   56: astore 11
    //   58: aload_3
    //   59: ifnull +18 -> 77
    //   62: aload 10
    //   64: invokeinterface 138 1 0
    //   69: astore 11
    //   71: aload 11
    //   73: aload_3
    //   74: invokevirtual 142	java/io/OutputStream:write	([B)V
    //   77: iload 4
    //   79: ifeq +74 -> 153
    //   82: aload 10
    //   84: invokeinterface 146 1 0
    //   89: ifeq +64 -> 153
    //   92: aload 10
    //   94: invokeinterface 149 1 0
    //   99: ifne +54 -> 153
    //   102: new 90	java/io/IOException
    //   105: dup
    //   106: ldc 14
    //   108: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   111: athrow
    //   112: astore 14
    //   114: iload 9
    //   116: iload 5
    //   118: if_icmpge +101 -> 219
    //   121: iload 6
    //   123: i2l
    //   124: lstore 15
    //   126: lload 15
    //   128: invokestatic 155	java/lang/Thread:sleep	(J)V
    //   131: aload 11
    //   133: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   136: aload 10
    //   138: invokestatic 159	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
    //   141: iinc 9 1
    //   144: goto -119 -> 25
    //   147: iconst_0
    //   148: istore 12
    //   150: goto -112 -> 38
    //   153: aload 10
    //   155: invokeinterface 162 1 0
    //   160: istore 18
    //   162: iload 18
    //   164: sipush 301
    //   167: if_icmpeq +11 -> 178
    //   170: iload 18
    //   172: sipush 302
    //   175: if_icmpne +91 -> 266
    //   178: aload 10
    //   180: ldc 164
    //   182: invokeinterface 168 2 0
    //   187: astore 19
    //   189: aload 19
    //   191: ifnonnull +31 -> 222
    //   194: new 90	java/io/IOException
    //   197: dup
    //   198: ldc 8
    //   200: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   203: athrow
    //   204: astore 13
    //   206: aload 11
    //   208: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   211: aload 10
    //   213: invokestatic 159	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
    //   216: aload 13
    //   218: athrow
    //   219: aload 14
    //   221: athrow
    //   222: aload_1
    //   223: aload 19
    //   225: invokestatic 172	com/x/google/common/io/IoUtil:getAbsoluteUrl	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   228: astore 20
    //   230: aload 20
    //   232: astore_1
    //   233: iload 8
    //   235: iload 7
    //   237: if_icmpge +19 -> 256
    //   240: aload 11
    //   242: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   245: aload 10
    //   247: invokestatic 159	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
    //   250: iinc 8 1
    //   253: goto -231 -> 22
    //   256: new 90	java/io/IOException
    //   259: dup
    //   260: ldc 11
    //   262: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   265: athrow
    //   266: aload 11
    //   268: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   271: aload 10
    //   273: areturn
    //   274: astore 17
    //   276: goto -145 -> 131
    //
    // Exception table:
    //   from	to	target	type
    //   38	55	112	java/io/IOException
    //   62	77	112	java/io/IOException
    //   82	112	112	java/io/IOException
    //   153	162	112	java/io/IOException
    //   38	55	204	finally
    //   62	77	204	finally
    //   82	112	204	finally
    //   126	131	204	finally
    //   153	162	204	finally
    //   178	189	204	finally
    //   194	204	204	finally
    //   219	222	204	finally
    //   222	230	204	finally
    //   256	266	204	finally
    //   126	131	274	java/lang/InterruptedException
  }

  public static void copyStream(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[512];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static DataInput createDataInputFromBytes(byte[] paramArrayOfByte)
  {
    return new ByteArrayDataInput(paramArrayOfByte);
  }

  public static String[] decodeURLs(String[] paramArrayOfString)
    throws IOException
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    for (int i = 0; i < paramArrayOfString.length; i++)
      arrayOfString[i] = decodeUrl(paramArrayOfString[i]);
    return arrayOfString;
  }

  public static String decodeUrl(String paramString)
    throws IOException
  {
    int i = paramString.length();
    byte[] arrayOfByte = new byte[i];
    int j = 0;
    int n;
    for (int k = 0; ; k = n)
    {
      if (j < i)
      {
        try
        {
          int m = paramString.charAt(j);
          switch (m)
          {
          default:
            n = k + 1;
            arrayOfByte[k] = ((byte)m);
            break;
          case 43:
            n = k + 1;
            arrayOfByte[k] = 32;
          case 37:
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new IOException(localNumberFormatException.getMessage());
        }
        if (paramString.length() < j + 3)
          throw new IOException("bad URL: " + paramString);
        n = k + 1;
        arrayOfByte[k] = ((byte)Integer.parseInt(paramString.substring(j + 1, j + 3), 16));
        j += 2;
      }
      else
      {
        return decodeUtf8(arrayOfByte, 0, k, true);
      }
      j++;
    }
  }

  public static String decodeUtf8(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramInt2 - paramInt1);
    if (paramInt1 < paramInt2)
    {
      int i = paramInt1 + 1;
      int j = 0xFF & paramArrayOfByte[paramInt1];
      if (j <= 127)
        localStringBuffer.append((char)j);
      while (true)
      {
        paramInt1 = i;
        break;
        if (j >= 245)
        {
          if (!paramBoolean)
            throw new IllegalArgumentException("Invalid UTF8");
          localStringBuffer.append((char)j);
        }
        else
        {
          int k = 1;
          int m = 31;
          int n = 224;
          int i1 = 128;
          if (j >= n)
          {
            int i7 = 0x80 | n >> 1;
            if (k == 1);
            for (int i8 = 4; ; i8 = 5)
            {
              int i9 = i1 << i8;
              int i10 = k + 1;
              m >>= 1;
              k = i10;
              i1 = i9;
              n = i7;
              break;
            }
          }
          int i2 = m & j;
          int i3 = 0;
          int i4 = i2;
          while (i3 < k)
          {
            i4 <<= 6;
            if (i >= paramInt2)
            {
              if (!paramBoolean)
                throw new IllegalArgumentException("Invalid UTF8");
            }
            else
            {
              if ((!paramBoolean) && ((0xC0 & paramArrayOfByte[i]) != 128))
                throw new IllegalArgumentException("Invalid UTF8");
              int i6 = i + 1;
              i4 |= 0x3F & paramArrayOfByte[i];
              i = i6;
            }
            i3++;
          }
          if (((!paramBoolean) && (i4 < i1)) || ((i4 >= 55296) && (i4 <= 57343)))
            throw new IllegalArgumentException("Invalid UTF8");
          if (i4 <= 65535)
          {
            localStringBuffer.append((char)i4);
          }
          else
          {
            int i5 = i4 - 65536;
            localStringBuffer.append((char)(0xD800 | i5 >> 10));
            localStringBuffer.append((char)(0xDC00 | i5 & 0x3FF));
          }
        }
      }
    }
    return localStringBuffer.toString();
  }

  public static String encodeMailto(String[] paramArrayOfString, String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("mailto:");
    if (paramArrayOfString != null)
      localStringBuffer.append(TextUtil.join(encodeURLs(paramArrayOfString), ','));
    if (!TextUtil.isEmpty(paramString1))
      appendParams(localStringBuffer, "subject=" + encodeURL(paramString1));
    if (!TextUtil.isEmpty(paramString2))
      appendParams(localStringBuffer, "body=" + encodeURL(paramString2));
    return localStringBuffer.toString();
  }

  public static String encodeURL(String paramString)
  {
    byte[] arrayOfByte = encodeUtf8(paramString);
    int i = arrayOfByte.length;
    StringBuffer localStringBuffer = new StringBuffer(i);
    int j = 0;
    if (j < i)
    {
      int k = arrayOfByte[j];
      if (((65 <= k) && (k <= 90)) || ((97 <= k) && (k <= 122)) || ((48 <= k) && (k <= 57)) || (k == 45) || (k == 95) || (k == 46) || (k == 33) || (k == 126) || (k == 42) || (k == 39) || (k == 40) || (k == 41))
        localStringBuffer.append((char)k);
      while (true)
      {
        j++;
        break;
        if (k == 32)
        {
          localStringBuffer.append('+');
        }
        else
        {
          localStringBuffer.append('%');
          localStringBuffer.append(HEX_DIGITS[(0xF & k >> 4)]);
          localStringBuffer.append(HEX_DIGITS[(k & 0xF)]);
        }
      }
    }
    return localStringBuffer.toString();
  }

  public static String encodeURLParameters(Vector paramVector)
  {
    String[][] arrayOfString; = new String[paramVector.size()][];
    paramVector.copyInto(arrayOfString;);
    return encodeURLParameters(arrayOfString;);
  }

  public static String encodeURLParameters(String[][] paramArrayOfString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfString.length; i++)
    {
      String[] arrayOfString = paramArrayOfString[i];
      if (arrayOfString.length != 2)
        throw new IllegalArgumentException("expects type / value pairs");
      if (localStringBuffer.length() != 0)
        localStringBuffer.append('&');
      localStringBuffer.append(encodeURL(arrayOfString[0]));
      localStringBuffer.append('=');
      localStringBuffer.append(encodeURL(arrayOfString[1]));
    }
    return localStringBuffer.toString();
  }

  public static String[] encodeURLs(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    for (int i = 0; i < paramArrayOfString.length; i++)
      arrayOfString[i] = encodeURL(paramArrayOfString[i]);
    return arrayOfString;
  }

  public static int encodeUtf8(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      int k = paramString.charAt(j);
      int n;
      if ((k >= 55296) && (k <= 57343) && (j + 1 < i))
      {
        n = paramString.charAt(j + 1);
        if ((n & 0xFC00 ^ k & 0xFC00) == 1024)
        {
          j++;
          if ((n & 0xFC00) != 55296)
            break label139;
          label87: k = 65536 + ((n & 0x3FF) << 10 | k & 0x3FF);
        }
      }
      int m;
      if (k <= 127)
      {
        if (paramArrayOfByte != null)
          paramArrayOfByte[paramInt] = ((byte)k);
        m = paramInt + 1;
      }
      while (true)
      {
        j++;
        paramInt = m;
        break;
        label139: int i1 = k;
        k = n;
        n = i1;
        break label87;
        if (k <= 2047)
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xC0 | k >> 6));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | k & 0x3F));
          }
          m = paramInt + 2;
        }
        else if (k <= 65535)
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xE0 | k >> 12));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | 0x3F & k >> 6));
            paramArrayOfByte[(paramInt + 2)] = ((byte)(0x80 | k & 0x3F));
          }
          m = paramInt + 3;
        }
        else
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xF0 | k >> 18));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | 0x3F & k >> 12));
            paramArrayOfByte[(paramInt + 2)] = ((byte)(0x80 | 0x3F & k >> 6));
            paramArrayOfByte[(paramInt + 3)] = ((byte)(0x80 | k & 0x3F));
          }
          m = paramInt + 4;
        }
      }
    }
    return paramInt;
  }

  public static byte[] encodeUtf8(String paramString)
  {
    byte[] arrayOfByte = new byte[encodeUtf8(paramString, null, 0)];
    encodeUtf8(paramString, arrayOfByte, 0);
    return arrayOfByte;
  }

  // ERROR //
  public static String fetchRedirect(HttpConnectionFactory paramHttpConnectionFactory, String paramString, Vector paramVector, int paramInt1, int paramInt2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 123 1 0
    //   6: istore 5
    //   8: iconst_0
    //   9: istore 6
    //   11: iload 5
    //   13: ifne +46 -> 59
    //   16: new 90	java/io/IOException
    //   19: dup
    //   20: ldc 38
    //   22: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   25: athrow
    //   26: astore 10
    //   28: aconst_null
    //   29: astore 8
    //   31: iload 6
    //   33: iload_3
    //   34: if_icmpge +94 -> 128
    //   37: iload 4
    //   39: i2l
    //   40: lstore 11
    //   42: lload 11
    //   44: invokestatic 155	java/lang/Thread:sleep	(J)V
    //   47: aconst_null
    //   48: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   51: aload 8
    //   53: invokestatic 159	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
    //   56: iinc 6 1
    //   59: aload_0
    //   60: aload_1
    //   61: iconst_0
    //   62: invokeinterface 130 3 0
    //   67: astore 9
    //   69: aload 9
    //   71: astore 8
    //   73: aload 8
    //   75: aload_2
    //   76: invokestatic 134	com/x/google/common/io/IoUtil:setConnectionHeaders	(Lcom/x/google/common/io/GoogleHttpConnection;Ljava/util/Vector;)V
    //   79: aload 8
    //   81: invokeinterface 162 1 0
    //   86: istore 14
    //   88: iload 14
    //   90: sipush 301
    //   93: if_icmpeq +38 -> 131
    //   96: iload 14
    //   98: sipush 302
    //   101: if_icmpeq +30 -> 131
    //   104: new 90	java/io/IOException
    //   107: dup
    //   108: ldc 17
    //   110: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   113: athrow
    //   114: astore 7
    //   116: aconst_null
    //   117: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   120: aload 8
    //   122: invokestatic 159	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
    //   125: aload 7
    //   127: athrow
    //   128: aload 10
    //   130: athrow
    //   131: aload 8
    //   133: ldc 164
    //   135: invokeinterface 168 2 0
    //   140: astore 15
    //   142: aload 15
    //   144: ifnonnull +13 -> 157
    //   147: new 90	java/io/IOException
    //   150: dup
    //   151: ldc 8
    //   153: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   156: athrow
    //   157: aload_1
    //   158: aload 15
    //   160: invokestatic 172	com/x/google/common/io/IoUtil:getAbsoluteUrl	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   163: astore 16
    //   165: aconst_null
    //   166: invokestatic 157	com/x/google/common/io/IoUtil:closeOutputStream	(Ljava/io/OutputStream;)V
    //   169: aload 8
    //   171: invokestatic 159	com/x/google/common/io/IoUtil:closeConnection	(Lcom/x/google/common/io/GoogleHttpConnection;)V
    //   174: aload 16
    //   176: areturn
    //   177: astore 13
    //   179: goto -132 -> 47
    //   182: astore 7
    //   184: aconst_null
    //   185: astore 8
    //   187: goto -71 -> 116
    //   190: astore 10
    //   192: goto -161 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   59	69	26	java/io/IOException
    //   42	47	114	finally
    //   73	88	114	finally
    //   104	114	114	finally
    //   128	131	114	finally
    //   131	142	114	finally
    //   147	157	114	finally
    //   157	165	114	finally
    //   42	47	177	java/lang/InterruptedException
    //   59	69	182	finally
    //   73	88	190	java/io/IOException
  }

  public static String getAbsoluteUrl(String paramString1, String paramString2)
  {
    if (TextUtil.isEmpty(paramString1));
    int i;
    do
    {
      return paramString2;
      i = paramString2.indexOf(':');
    }
    while ((i > 1) && (i < 7));
    if (paramString2.startsWith("//"))
    {
      int i2 = paramString1.indexOf("//");
      StringBuilder localStringBuilder2 = new StringBuilder();
      if (i2 == -1);
      while (true)
      {
        return paramString1 + paramString2;
        paramString1 = paramString1.substring(0, i2);
      }
    }
    int j = paramString1.indexOf('#');
    int k = paramString1.indexOf('?');
    int m;
    int i1;
    StringBuilder localStringBuilder1;
    if ((j != -1) || (k != -1))
    {
      if ((j != -1) && (k != -1))
      {
        j = Math.min(j, k);
        paramString1 = paramString1.substring(0, j);
      }
    }
    else
    {
      m = paramString1.indexOf(':');
      if (!paramString2.startsWith("/"))
        break label218;
      i1 = paramString1.indexOf('/', m + 3);
      localStringBuilder1 = new StringBuilder();
      if (i1 != -1)
        break label207;
    }
    while (true)
    {
      return paramString1 + paramString2;
      if (j != -1)
        break;
      j = k;
      break;
      label207: paramString1 = paramString1.substring(0, i1);
    }
    label218: int n = paramString1.lastIndexOf('/');
    if (n > m + 2)
      return paramString1.substring(0, n + 1) + paramString2;
    return paramString1 + '/' + paramString2;
  }

  public static String getMailtoBody(String paramString)
    throws IOException
  {
    return getMailtoParam(paramString, "body");
  }

  private static String getMailtoParam(String paramString1, String paramString2)
    throws IOException
  {
    int i = 0;
    String str = paramString2 + "=";
    while (true)
    {
      int j = paramString1.toLowerCase().indexOf(str, i);
      if (j == -1)
        return "";
      if ((j > 0) && ((paramString1.charAt(j - 1) == '?') || (paramString1.charAt(j - 1) == '&')))
      {
        int k = j + str.length();
        int m = paramString1.indexOf('&', k);
        if (m == -1)
          m = paramString1.length();
        return decodeUrl(paramString1.substring(k, m));
      }
      i = j + 1;
    }
  }

  public static String getMailtoSubject(String paramString)
    throws IOException
  {
    return getMailtoParam(paramString, "subject");
  }

  public static String[] getMailtoTo(String paramString)
    throws IOException
  {
    int i = 1 + paramString.indexOf(':');
    if (i == 0)
      return new String[0];
    int j = paramString.indexOf('?', i);
    if (j == -1)
      j = paramString.length();
    if (i == j)
      return new String[0];
    return decodeURLs(TextUtil.split(paramString.substring(i, j), ','));
  }

  public static byte[] inflate(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    int i = 0;
    byte[] arrayOfByte1 = new byte[paramInt2 + 1];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte1, 0, paramInt2);
    InputStream localInputStream = Config.getInstance().getInflaterInputStream(new ByteArrayInputStream(arrayOfByte1, 0, paramInt2 + 1));
    byte[] arrayOfByte2 = new byte[paramInt3];
    int j = paramInt3;
    while (true)
    {
      if (j > 0);
      try
      {
        int k = localInputStream.read(arrayOfByte2, i, j);
        if (k != -1)
        {
          j -= k;
          i += k;
        }
        else if (j != 0)
        {
          throw new IOException("Failed to read [" + paramInt3 + "] bytes, but only read [" + i + "]");
        }
      }
      finally
      {
        localInputStream.close();
      }
    }
    localInputStream.close();
    return arrayOfByte2;
  }

  public static boolean isUrlSafe(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    boolean bool = true;
    if ((j < i) && (bool))
    {
      int k = paramString.charAt(j);
      if (k < 64)
        if ((0x0 & 1L << k) != 0L)
          bool = true;
      while (true)
      {
        j++;
        break;
        bool = false;
        continue;
        if (k < 128)
        {
          if ((0x87FFFFFE & 1L << k - 64) != 0L)
            bool = true;
          else
            bool = false;
        }
        else
          bool = false;
      }
    }
    return bool;
  }

  public static byte[] readAllBytes(InputStream paramInputStream)
    throws IOException
  {
    return readAllBytes(paramInputStream, 32);
  }

  public static byte[] readAllBytes(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramInt);
      try
      {
        copyStream(paramInputStream, localByteArrayOutputStream);
        closeOutputStream(localByteArrayOutputStream);
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        return arrayOfByte;
      }
      finally
      {
      }
    }
    finally
    {
      closeInputStream(paramInputStream);
    }
  }

  private static void setConnectionHeaders(GoogleHttpConnection paramGoogleHttpConnection, Vector paramVector)
    throws IOException
  {
    if (paramVector != null)
    {
      int i = paramVector.size();
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString = (String[])paramVector.elementAt(j);
        paramGoogleHttpConnection.setConnectionProperty(arrayOfString[0], arrayOfString[1]);
      }
    }
  }

  public static void skipBytes(DataInput paramDataInput, int paramInt)
    throws IOException
  {
    if (paramInt < 0)
      throw new IllegalArgumentException();
    if (paramInt > 0)
    {
      byte[] arrayOfByte = new byte[Math.min(2048, paramInt)];
      while (paramInt > 0)
      {
        int i = Math.min(paramInt, arrayOfByte.length);
        paramDataInput.readFully(arrayOfByte, 0, i);
        paramInt -= i;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.IoUtil
 * JD-Core Version:    0.6.2
 */