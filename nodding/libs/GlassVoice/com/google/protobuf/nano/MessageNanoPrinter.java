package com.google.protobuf.nano;

import java.lang.reflect.Array;
import java.lang.reflect.Field;

public final class MessageNanoPrinter
{
  private static final String INDENT = "  ";
  private static final int MAX_STRING_LEN = 200;

  private static String deCamelCaseify(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if (i == 0)
        localStringBuffer.append(Character.toLowerCase(c));
      while (true)
      {
        i++;
        break;
        if (Character.isUpperCase(c))
          localStringBuffer.append('_').append(Character.toLowerCase(c));
        else
          localStringBuffer.append(c);
      }
    }
    return localStringBuffer.toString();
  }

  private static String escapeString(String paramString)
  {
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      if ((c >= ' ') && (c <= '~') && (c != '"') && (c != '\''))
        localStringBuilder.append(c);
      while (true)
      {
        j++;
        break;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(c);
        localStringBuilder.append(String.format("\\u%04x", arrayOfObject));
      }
    }
    return localStringBuilder.toString();
  }

  public static <T extends MessageNano> String print(T paramT)
  {
    if (paramT == null)
      return "null";
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      print(paramT.getClass().getSimpleName(), paramT.getClass(), paramT, new StringBuffer(), localStringBuffer);
      return localStringBuffer.toString();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return "Error printing proto: " + localIllegalAccessException.getMessage();
    }
  }

  private static void print(String paramString, Class<?> paramClass, Object paramObject, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2)
    throws IllegalAccessException
  {
    if (MessageNano.class.isAssignableFrom(paramClass))
      if (paramObject != null);
    while (paramObject == null)
    {
      return;
      paramStringBuffer2.append(paramStringBuffer1).append(paramString);
      paramStringBuffer1.append("  ");
      paramStringBuffer2.append(" <\n");
      Field[] arrayOfField = paramClass.getFields();
      int i = arrayOfField.length;
      int j = 0;
      if (j < i)
      {
        Field localField = arrayOfField[j];
        int k = localField.getModifiers();
        String str3 = localField.getName();
        if (((k & 0x1) != 1) || ((k & 0x8) == 8) || (str3.startsWith("_")) || (str3.endsWith("_")));
        while (true)
        {
          j++;
          break;
          Class localClass1 = localField.getType();
          Object localObject = localField.get(paramObject);
          if (localClass1.isArray())
          {
            Class localClass2 = localClass1.getComponentType();
            if (localClass2 == Byte.TYPE)
            {
              print(str3, localClass1, localObject, paramStringBuffer1, paramStringBuffer2);
            }
            else
            {
              if (localObject == null);
              for (int m = 0; ; m = Array.getLength(localObject))
              {
                for (int n = 0; n < m; n++)
                  print(str3, localClass2, Array.get(localObject, n), paramStringBuffer1, paramStringBuffer2);
                break;
              }
            }
          }
          else
          {
            print(str3, localClass1, localObject, paramStringBuffer1, paramStringBuffer2);
          }
        }
      }
      paramStringBuffer1.delete(paramStringBuffer1.length() - "  ".length(), paramStringBuffer1.length());
      paramStringBuffer2.append(paramStringBuffer1).append(">\n");
      return;
    }
    String str1 = deCamelCaseify(paramString);
    paramStringBuffer2.append(paramStringBuffer1).append(str1).append(": ");
    if ((paramObject instanceof String))
    {
      String str2 = sanitizeString((String)paramObject);
      paramStringBuffer2.append("\"").append(str2).append("\"");
    }
    while (true)
    {
      paramStringBuffer2.append("\n");
      return;
      paramStringBuffer2.append(paramObject);
    }
  }

  private static String sanitizeString(String paramString)
  {
    if ((!paramString.startsWith("http")) && (paramString.length() > 200))
      paramString = paramString.substring(0, 200) + "[...]";
    return escapeString(paramString);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.nano.MessageNanoPrinter
 * JD-Core Version:    0.6.2
 */