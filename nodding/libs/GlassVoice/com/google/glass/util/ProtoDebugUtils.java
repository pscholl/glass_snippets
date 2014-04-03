package com.google.glass.util;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.protobuf.micro.ByteStringMicro;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Set;

public class ProtoDebugUtils
{
  private static final Set<Class<?>> PRIMITIVE_WRAPPERS;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  static
  {
    PRIMITIVE_WRAPPERS = new HashSet();
    PRIMITIVE_WRAPPERS.add(Boolean.class);
    PRIMITIVE_WRAPPERS.add(Byte.class);
    PRIMITIVE_WRAPPERS.add(Character.class);
    PRIMITIVE_WRAPPERS.add(Short.class);
    PRIMITIVE_WRAPPERS.add(Integer.class);
    PRIMITIVE_WRAPPERS.add(Long.class);
    PRIMITIVE_WRAPPERS.add(Float.class);
    PRIMITIVE_WRAPPERS.add(Double.class);
  }

  public static String asciiDebug(Object paramObject)
  {
    try
    {
      StringBuilderLogOutput localStringBuilderLogOutput = new StringBuilderLogOutput(null);
      debugObject(localStringBuilderLogOutput, "object", paramObject, new HashSet());
      String str = localStringBuilderLogOutput.toString();
      return str;
    }
    catch (Exception localException)
    {
      logger.w(localException, "asciiDebug failed", new Object[0]);
    }
    return "Error: unable to output asciiDebug()";
  }

  private static void debugFields(LogOutput paramLogOutput, Object paramObject, Set<Object> paramSet)
    throws Exception
  {
    if (paramSet.contains(paramObject))
      paramLogOutput.appendLine("[already printed this object]");
    while (true)
    {
      return;
      paramSet.add(paramObject);
      for (Class localClass = paramObject.getClass(); localClass != null; localClass = localClass.getSuperclass())
      {
        Field[] arrayOfField = localClass.getDeclaredFields();
        int i = arrayOfField.length;
        int j = 0;
        if (j < i)
        {
          Field localField = arrayOfField[j];
          if ((0x8 & localField.getModifiers()) != 0);
          while (true)
          {
            j++;
            break;
            if (!localField.isSynthetic())
            {
              localField.setAccessible(true);
              debugSingleField(paramLogOutput, localField, paramObject, paramSet);
            }
          }
        }
      }
    }
  }

  private static void debugObject(LogOutput paramLogOutput, String paramString, Object paramObject, Set<Object> paramSet)
    throws Exception
  {
    if (PRIMITIVE_WRAPPERS.contains(paramObject.getClass()))
    {
      paramLogOutput.appendLine(paramString + ": " + paramObject);
      return;
    }
    if (paramObject.getClass().equals(ByteStringMicro.class))
    {
      paramLogOutput.appendLine(paramString + ": " + paramObject.getClass().getName());
      paramLogOutput.appendLine("  length = " + ((ByteStringMicro)paramObject).size());
      return;
    }
    paramLogOutput.appendLine(paramString + ": " + paramObject.getClass().getName() + " {");
    paramLogOutput.indent();
    debugFields(paramLogOutput, paramObject, paramSet);
    paramLogOutput.outdent();
    paramLogOutput.appendLine("}");
  }

  private static void debugSingleField(LogOutput paramLogOutput, Field paramField, Object paramObject, Set<Object> paramSet)
    throws Exception
  {
    Object localObject1 = paramField.get(paramObject);
    String str = paramField.getName();
    if (str.equals("gaiaAuthenticationToken_"))
      paramLogOutput.appendLine("gaiaAuthenticationToken_: *****");
    while (true)
    {
      return;
      if (paramField.getType().isPrimitive())
      {
        paramLogOutput.appendLine(str + ": " + localObject1);
        return;
      }
      if (localObject1 == null)
      {
        paramLogOutput.appendLine(str + ": null");
        return;
      }
      if (localObject1.getClass().equals(String.class))
      {
        paramLogOutput.appendLine(str + ": \"" + localObject1 + "\"");
        return;
      }
      if (!paramField.getType().isArray())
        break;
      for (int i = 0; i < Array.getLength(localObject1); i++)
      {
        Object localObject2 = Array.get(localObject1, i);
        if (localObject2 != null)
          debugObject(paramLogOutput, str + "[" + i + "]", localObject2, paramSet);
      }
    }
    debugObject(paramLogOutput, str, localObject1, paramSet);
  }

  public static Object lazyAsciiDebug(Object paramObject)
  {
    return new Object()
    {
      public String toString()
      {
        return ProtoDebugUtils.asciiDebug(this.val$object);
      }
    };
  }

  private static abstract interface LogOutput
  {
    public abstract void appendLine(String paramString);

    public abstract void indent();

    public abstract void outdent();
  }

  private static class StringBuilderLogOutput
    implements ProtoDebugUtils.LogOutput
  {
    private static final String INDENT = "    ";
    private final StringBuilder buffer = new StringBuilder();
    private int level = 0;

    public void appendLine(String paramString)
    {
      for (int i = 0; i < this.level; i++)
        this.buffer.append("    ");
      this.buffer.append(paramString).append("\n");
    }

    public void indent()
    {
      this.level = (1 + this.level);
    }

    public void outdent()
    {
      this.level = (-1 + this.level);
    }

    public String toString()
    {
      return this.buffer.toString();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ProtoDebugUtils
 * JD-Core Version:    0.6.2
 */