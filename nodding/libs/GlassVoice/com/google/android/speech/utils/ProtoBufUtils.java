package com.google.android.speech.utils;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.logs.VoicesearchClientLogProto.ClientEvent;
import com.google.speech.logs.VoicesearchClientLogProto.LatencyBreakdownEvent;
import com.google.speech.s3.S3.AuthToken;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ProtoBufUtils
{
  private static final boolean DEBUG = false;
  private static final ArrayList<String> OBFUSCATE_FILEDS = new ArrayList();
  private static final int SPLIT_STRING_LENGTH = 1000;
  private static final String TAG = "ProtoBufUtils";
  public static final int UNDEFINED_ENUM = -1;

  static
  {
    OBFUSCATE_FILEDS.add(getString(S3.AuthToken.class, "token"));
  }

  public static <T extends MessageMicro> T copyOf(T paramT1, T paramT2)
  {
    try
    {
      MessageMicro localMessageMicro = paramT2.mergeFrom(paramT1.toByteArray());
      return localMessageMicro;
    }
    catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
    {
    }
    return paramT2;
  }

  private static void fieldToString(StringBuffer paramStringBuffer, String paramString, MessageMicro paramMessageMicro, Field paramField, Object paramObject)
  {
    if ((paramObject instanceof MessageMicro))
      if (hasFieldValue(paramMessageMicro, paramField))
        protoToString(paramStringBuffer, paramString, getFieldName(paramField), (MessageMicro)paramObject);
    do
    {
      return;
      if ((paramObject instanceof List))
      {
        fieldsToString(paramStringBuffer, paramString, paramMessageMicro, paramField, (List)paramObject);
        return;
      }
    }
    while (!hasFieldValue(paramMessageMicro, paramField));
    paramStringBuffer.append(paramString);
    paramStringBuffer.append(getFieldName(paramField));
    paramStringBuffer.append(":");
    valueToString(paramStringBuffer, paramMessageMicro, getFieldName(paramField), paramObject);
    paramStringBuffer.append("\n");
  }

  private static void fieldsToString(StringBuffer paramStringBuffer, String paramString, MessageMicro paramMessageMicro, Field paramField, List<?> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject instanceof MessageMicro))
      {
        protoToString(paramStringBuffer, paramString, getFieldName(paramField), (MessageMicro)localObject);
      }
      else
      {
        paramStringBuffer.append(paramString);
        paramStringBuffer.append(getFieldName(paramField));
        paramStringBuffer.append(":");
        valueToString(paramStringBuffer, paramMessageMicro, getFieldName(paramField), localObject);
        paramStringBuffer.append("\n");
      }
    }
  }

  private static String getFieldName(Field paramField)
  {
    String str = paramField.getName();
    return str.substring(0, -1 + str.length());
  }

  private static String getIntFieldValue(MessageMicro paramMessageMicro, String paramString, Object paramObject)
  {
    if (((paramMessageMicro instanceof VoicesearchClientLogProto.ClientEvent)) && (paramString.equals("eventType")))
      return DebugEnumUtils.getClientEventTypeLabel(((Integer)paramObject).intValue());
    if (((paramMessageMicro instanceof VoicesearchClientLogProto.LatencyBreakdownEvent)) && (paramString.equals("event")))
      return DebugEnumUtils.getLatencyBreakDownLabel(((Integer)paramObject).intValue());
    return paramObject.toString();
  }

  private static ArrayList<Field> getProtoFields(MessageMicro paramMessageMicro)
  {
    ArrayList localArrayList = new ArrayList();
    for (Field localField : paramMessageMicro.getClass().getDeclaredFields())
      if (localField.getName().endsWith("_"))
      {
        localField.setAccessible(true);
        localArrayList.add(localField);
      }
    return localArrayList;
  }

  private static String getString(Class<? extends MessageMicro> paramClass, String paramString)
  {
    return paramClass.getName() + "#" + paramString;
  }

  private static boolean hasFieldValue(MessageMicro paramMessageMicro, Field paramField)
  {
    try
    {
      String str1 = paramField.getName();
      String str2 = "has" + Character.toUpperCase(str1.charAt(0)) + str1.substring(1, -1 + str1.length());
      Field localField = paramMessageMicro.getClass().getDeclaredField(str2);
      localField.setAccessible(true);
      boolean bool = ((Boolean)localField.get(paramMessageMicro)).booleanValue();
      return bool;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      return false;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    return false;
  }

  private static void protoToString(StringBuffer paramStringBuffer, String paramString1, String paramString2, MessageMicro paramMessageMicro)
  {
    try
    {
      paramStringBuffer.append(paramString1);
      paramStringBuffer.append(paramString2);
      paramStringBuffer.append(" {");
      paramStringBuffer.append("\n");
      Iterator localIterator = getProtoFields(paramMessageMicro).iterator();
      while (localIterator.hasNext())
      {
        Field localField = (Field)localIterator.next();
        Object localObject = localField.get(paramMessageMicro);
        fieldToString(paramStringBuffer, paramString1 + " ", paramMessageMicro, localField, localObject);
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      paramStringBuffer.append("Unable to print proto buffer " + localIllegalArgumentException);
      localIllegalArgumentException.printStackTrace();
      return;
      paramStringBuffer.append(paramString1);
      paramStringBuffer.append("}\n");
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramStringBuffer.append("Unable to print proto buffer " + localIllegalAccessException);
      localIllegalAccessException.printStackTrace();
    }
  }

  public static List<String> toSplittedString(MessageMicro paramMessageMicro)
  {
    ArrayList localArrayList = new ArrayList();
    String str = toString(paramMessageMicro);
    int j;
    for (int i = 0; i + 1000 < str.length(); i = j + 1)
    {
      j = str.indexOf('\n', i);
      if (j == -1)
        break;
      localArrayList.add(str.substring(i, j + 1));
    }
    localArrayList.add(str.substring(i));
    return localArrayList;
  }

  public static String toString(MessageMicro paramMessageMicro)
  {
    if (paramMessageMicro == null)
      return "null";
    StringBuffer localStringBuffer = new StringBuffer();
    protoToString(localStringBuffer, "", paramMessageMicro.getClass().getSimpleName(), paramMessageMicro);
    return localStringBuffer.toString();
  }

  private static void valueToString(StringBuffer paramStringBuffer, MessageMicro paramMessageMicro, String paramString, Object paramObject)
  {
    String str;
    if (paramObject == null)
      str = "null";
    while (OBFUSCATE_FILEDS.contains(getString(paramMessageMicro.getClass(), paramString)))
    {
      paramStringBuffer.append(str.substring(0, Math.min(4, str.length())));
      paramStringBuffer.append("XXXXXXXX");
      return;
      if ((paramObject instanceof ByteStringMicro))
        str = "bytes[" + ((ByteStringMicro)paramObject).size() + "]";
      else if ((paramObject instanceof Integer))
        str = getIntFieldValue(paramMessageMicro, paramString, paramObject);
      else
        str = paramObject.toString();
    }
    paramStringBuffer.append(str);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.utils.ProtoBufUtils
 * JD-Core Version:    0.6.2
 */