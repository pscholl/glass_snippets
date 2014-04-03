package com.x.google.common.io.protocol;

import com.x.google.common.util.IntMap;
import com.x.google.common.util.IntMap.KeyIterator;

public class ProtoBufType
{
  public static final int MASK_MODIFIER = 65280;
  public static final int MASK_TYPE = 255;
  public static final int NEXT_TYPE_VALUE = 37;
  private static final TypeInfo[] NULL_DATA_TYPEINFOS = new TypeInfo['¨'];
  public static final int OPTIONAL = 512;
  public static final int REPEATED = 1024;
  public static final int REQUIRED = 256;
  public static final int START_TYPE_VALUE = 16;
  public static final int TYPES_BIT_RANGE = 8;
  public static final int TYPES_VALUE_RANGE = 21;
  public static final int TYPE_BOOL = 24;
  public static final int TYPE_BYTES = 35;
  public static final int TYPE_DATA = 25;
  public static final int TYPE_DOUBLE = 17;
  public static final int TYPE_ENUM = 30;
  public static final int TYPE_FIXED32 = 23;
  public static final int TYPE_FIXED64 = 22;
  public static final int TYPE_FLOAT = 18;
  public static final int TYPE_GROUP = 26;
  public static final int TYPE_INT32 = 21;
  public static final int TYPE_INT64 = 19;
  public static final int TYPE_MESSAGE = 27;
  public static final int TYPE_SFIXED32 = 31;
  public static final int TYPE_SFIXED64 = 32;
  public static final int TYPE_SINT32 = 33;
  public static final int TYPE_SINT64 = 34;
  public static final int TYPE_STRING = 36;
  public static final int TYPE_TEXT = 28;
  public static final int TYPE_UINT32 = 29;
  public static final int TYPE_UINT64 = 20;
  public static final int TYPE_UNDEFINED = 16;
  private final String typeName;
  private final IntMap types = new IntMap();

  static
  {
    int i = 0;
    int j = 0;
    while (i <= 7)
    {
      int k = 16;
      while (k < 37)
      {
        TypeInfo[] arrayOfTypeInfo = NULL_DATA_TYPEINFOS;
        int m = j + 1;
        arrayOfTypeInfo[j] = new TypeInfo(k + (i << 8), null);
        k++;
        j = m;
      }
      i++;
    }
  }

  public ProtoBufType()
  {
    this.typeName = null;
  }

  public ProtoBufType(String paramString)
  {
    this.typeName = paramString;
  }

  private static TypeInfo getCacheTypeInfoForNullData(int paramInt)
  {
    int i = 21 * ((0xFF00 & paramInt) >> 8) + (-16 + (paramInt & 0xFF));
    return NULL_DATA_TYPEINFOS[i];
  }

  public ProtoBufType addElement(int paramInt1, int paramInt2, Object paramObject)
  {
    IntMap localIntMap = this.types;
    if (paramObject == null);
    for (TypeInfo localTypeInfo = getCacheTypeInfoForNullData(paramInt1); ; localTypeInfo = new TypeInfo(paramInt1, paramObject))
    {
      localIntMap.put(paramInt2, localTypeInfo);
      return this;
    }
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return false;
      if (this == paramObject)
        return true;
    }
    while (getClass() != paramObject.getClass());
    ProtoBufType localProtoBufType = (ProtoBufType)paramObject;
    return this.types.equals(localProtoBufType.types);
  }

  public Object getData(int paramInt)
  {
    TypeInfo localTypeInfo = (TypeInfo)this.types.get(paramInt);
    if (localTypeInfo == null)
      return localTypeInfo;
    return localTypeInfo.data;
  }

  public int getModifiers(int paramInt)
  {
    TypeInfo localTypeInfo = (TypeInfo)this.types.get(paramInt);
    if (localTypeInfo == null)
      return 1536;
    return 0xFF00 & localTypeInfo.type;
  }

  public int getType(int paramInt)
  {
    TypeInfo localTypeInfo = (TypeInfo)this.types.get(paramInt);
    if (localTypeInfo == null)
      return 16;
    return 0xFF & localTypeInfo.type;
  }

  public int hashCode()
  {
    if (this.types != null)
      return this.types.hashCode();
    return super.hashCode();
  }

  public boolean isValidProto(ProtoBuf paramProtoBuf)
  {
    IntMap.KeyIterator localKeyIterator = this.types.keys();
    while (localKeyIterator.hasNext())
    {
      int i = localKeyIterator.next();
      int j = getModifiers(i);
      if (((j & 0x100) != 0) && (!paramProtoBuf.has(i)))
        return false;
      int k = paramProtoBuf.getCount(i);
      if (((j & 0x400) == 0) && (k > 1))
        return false;
      if ((getType(i) == 27) && ((getData(i) instanceof ProtoBufType)))
      {
        ProtoBufType localProtoBufType = (ProtoBufType)getData(i);
        for (int m = 0; m < k; m++)
          if (!localProtoBufType.isValidProto(paramProtoBuf.getProtoBuf(i, m)))
            return false;
      }
    }
    return true;
  }

  IntMap newIntMapForProtoBuf()
  {
    return this.types.newIntMapWithSameBufferSize();
  }

  public String toString()
  {
    return "ProtoBufType Name: " + this.typeName;
  }

  static class TypeInfo
  {
    private Object data;
    private int type;

    TypeInfo(int paramInt, Object paramObject)
    {
      this.type = paramInt;
      this.data = paramObject;
    }

    public boolean equals(Object paramObject)
    {
      if (this == paramObject);
      TypeInfo localTypeInfo;
      do
      {
        return true;
        if ((paramObject == null) || (!(paramObject instanceof TypeInfo)))
          return false;
        localTypeInfo = (TypeInfo)paramObject;
      }
      while ((this.type == localTypeInfo.type) && ((this.data == localTypeInfo.data) || ((this.data != null) && (this.data.equals(localTypeInfo.data)))));
      return false;
    }

    public int hashCode()
    {
      return this.type;
    }

    public String toString()
    {
      return "TypeInfo{type=" + this.type + ", data=" + this.data + "}";
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.protocol.ProtoBufType
 * JD-Core Version:    0.6.2
 */