package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class BuildNano
{
  public static final class Build extends MessageNano
  {
    public static final Build[] EMPTY_ARRAY = new Build[0];
    public String buildDisplayId;
    public int buildType = -2147483648;
    public String buildVersion;
    private int cachedSize = -1;

    public static Build parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Build().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Build parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Build)MessageNano.mergeFrom(new Build(), paramArrayOfByte);
    }

    public final Build clear()
    {
      this.buildType = -2147483648;
      this.buildDisplayId = null;
      this.buildVersion = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Build localBuild;
      do
      {
        return true;
        if (!(paramObject instanceof Build))
          return false;
        localBuild = (Build)paramObject;
        if (this.buildType != localBuild.buildType)
          break;
        if (this.buildDisplayId != null)
          break label62;
        if (localBuild.buildDisplayId != null)
          break;
        if (this.buildVersion != null)
          break label79;
      }
      while (localBuild.buildVersion == null);
      label62: label79: 
      while (!this.buildVersion.equals(localBuild.buildVersion))
      {
        do
          return false;
        while (!this.buildDisplayId.equals(localBuild.buildDisplayId));
        break;
      }
      return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = this.buildType;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.buildType);
      if (this.buildDisplayId != null)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.buildDisplayId);
      if (this.buildVersion != null)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.buildVersion);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.buildType);
      int j;
      int k;
      int m;
      if (this.buildDisplayId == null)
      {
        j = 0;
        k = 31 * (i + j);
        String str = this.buildVersion;
        m = 0;
        if (str != null)
          break label58;
      }
      while (true)
      {
        return k + m;
        j = this.buildDisplayId.hashCode();
        break;
        label58: m = this.buildVersion.hashCode();
      }
    }

    public Build mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 8:
          this.buildType = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
          this.buildDisplayId = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
        }
        this.buildVersion = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.buildType != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.buildType);
      if (this.buildDisplayId != null)
        paramCodedOutputByteBufferNano.writeString(2, this.buildDisplayId);
      if (this.buildVersion != null)
        paramCodedOutputByteBufferNano.writeString(3, this.buildVersion);
    }
  }

  public final class BuildType
  {
    public static final int ENG = 2;
    public static final int USER = 0;
    public static final int USERDEBUG = 1;

    public BuildType()
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BuildNano
 * JD-Core Version:    0.6.2
 */