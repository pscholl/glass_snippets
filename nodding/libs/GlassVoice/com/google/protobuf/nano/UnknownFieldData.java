package com.google.protobuf.nano;

import java.util.Arrays;

public final class UnknownFieldData
{
  final byte[] bytes;
  final int tag;

  UnknownFieldData(int paramInt, byte[] paramArrayOfByte)
  {
    this.tag = paramInt;
    this.bytes = paramArrayOfByte;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    UnknownFieldData localUnknownFieldData;
    do
    {
      return true;
      if (!(paramObject instanceof UnknownFieldData))
        return false;
      localUnknownFieldData = (UnknownFieldData)paramObject;
    }
    while ((this.tag == localUnknownFieldData.tag) && (Arrays.equals(this.bytes, localUnknownFieldData.bytes)));
    return false;
  }

  public int hashCode()
  {
    int i = 527 + this.tag;
    for (int j = 0; j < this.bytes.length; j++)
      i = i * 31 + this.bytes[j];
    return i;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.nano.UnknownFieldData
 * JD-Core Version:    0.6.2
 */