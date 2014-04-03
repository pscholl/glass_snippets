package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class ResourceNano
{
  public static final class ResourceRequest extends MessageNano
  {
    public static final ResourceRequest[] EMPTY_ARRAY = new ResourceRequest[0];
    private int cachedSize = -1;
    public Long fingerprint;
    public String languageCode;
    public String name;
    public int type = -2147483648;

    public static ResourceRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ResourceRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ResourceRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ResourceRequest)MessageNano.mergeFrom(new ResourceRequest(), paramArrayOfByte);
    }

    public final ResourceRequest clear()
    {
      this.type = -2147483648;
      this.name = null;
      this.fingerprint = null;
      this.languageCode = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ResourceRequest localResourceRequest;
      label60: 
      do
      {
        return true;
        if (!(paramObject instanceof ResourceRequest))
          return false;
        localResourceRequest = (ResourceRequest)paramObject;
        if (this.type != localResourceRequest.type)
          break;
        if (this.name != null)
          break label76;
        if (localResourceRequest.name != null)
          break;
        if (this.fingerprint != null)
          break label93;
        if (localResourceRequest.fingerprint != null)
          break;
        if (this.languageCode != null)
          break label110;
      }
      while (localResourceRequest.languageCode == null);
      label76: label93: label110: 
      while (!this.languageCode.equals(localResourceRequest.languageCode))
      {
        do
        {
          do
            return false;
          while (!this.name.equals(localResourceRequest.name));
          break;
        }
        while (!this.fingerprint.equals(localResourceRequest.fingerprint));
        break label60;
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
      int i = this.type;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      if (this.name != null)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.name);
      if (this.fingerprint != null)
        j += CodedOutputByteBufferNano.computeFixed64Size(3, this.fingerprint.longValue());
      if (this.languageCode != null)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.languageCode);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      int j;
      int m;
      label38: int n;
      int i1;
      if (this.name == null)
      {
        j = 0;
        int k = 31 * (i + j);
        if (this.fingerprint != null)
          break label78;
        m = 0;
        n = 31 * (k + m);
        String str = this.languageCode;
        i1 = 0;
        if (str != null)
          break label102;
      }
      while (true)
      {
        return n + i1;
        j = this.name.hashCode();
        break;
        label78: m = (int)(this.fingerprint.longValue() ^ this.fingerprint.longValue() >>> 32);
        break label38;
        label102: i1 = this.languageCode.hashCode();
      }
    }

    public ResourceRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.type = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
          this.name = paramCodedInputByteBufferNano.readString();
          break;
        case 25:
          this.fingerprint = Long.valueOf(paramCodedInputByteBufferNano.readFixed64());
          break;
        case 34:
        }
        this.languageCode = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      if (this.name != null)
        paramCodedOutputByteBufferNano.writeString(2, this.name);
      if (this.fingerprint != null)
        paramCodedOutputByteBufferNano.writeFixed64(3, this.fingerprint.longValue());
      if (this.languageCode != null)
        paramCodedOutputByteBufferNano.writeString(4, this.languageCode);
    }

    public final class ResourceType
    {
      public static final int GLASSWARE_ICON_LARGE = 5;
      public static final int GLASSWARE_ICON_MEDIUM = 3;
      public static final int GLASSWARE_ICON_SMALL = 2;
      public static final int GLASSWARE_MESSAGES = 4;
      public static final int STYLESHEET = 1;

      public ResourceType()
      {
      }
    }
  }

  public static final class ResourceResponse extends MessageNano
  {
    public static final ResourceResponse[] EMPTY_ARRAY = new ResourceResponse[0];
    private int cachedSize = -1;
    public byte[] data;
    public Long fingerprint;
    public int status = -2147483648;

    public static ResourceResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ResourceResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ResourceResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ResourceResponse)MessageNano.mergeFrom(new ResourceResponse(), paramArrayOfByte);
    }

    public final ResourceResponse clear()
    {
      this.status = -2147483648;
      this.data = null;
      this.fingerprint = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ResourceResponse localResourceResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ResourceResponse))
          return false;
        localResourceResponse = (ResourceResponse)paramObject;
        if ((this.status != localResourceResponse.status) || (!Arrays.equals(this.data, localResourceResponse.data)))
          break;
        if (this.fingerprint != null)
          break label62;
      }
      while (localResourceResponse.fingerprint == null);
      label62: 
      while (!this.fingerprint.equals(localResourceResponse.fingerprint))
        return false;
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
      int i = this.status;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.status);
      if (this.data != null)
        j += CodedOutputByteBufferNano.computeBytesSize(2, this.data);
      if (this.fingerprint != null)
        j += CodedOutputByteBufferNano.computeFixed64Size(3, this.fingerprint.longValue());
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 527 + this.status;
      int k;
      if (this.data == null)
      {
        i *= 31;
        k = i * 31;
        if (this.fingerprint != null)
          break label70;
      }
      label70: for (int m = 0; ; m = (int)(this.fingerprint.longValue() ^ this.fingerprint.longValue() >>> 32))
      {
        return k + m;
        for (int j = 0; j < this.data.length; j++)
          i = i * 31 + this.data[j];
        break;
      }
    }

    public ResourceResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.status = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
          this.data = paramCodedInputByteBufferNano.readBytes();
          break;
        case 25:
        }
        this.fingerprint = Long.valueOf(paramCodedInputByteBufferNano.readFixed64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.status != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.status);
      if (this.data != null)
        paramCodedOutputByteBufferNano.writeBytes(2, this.data);
      if (this.fingerprint != null)
        paramCodedOutputByteBufferNano.writeFixed64(3, this.fingerprint.longValue());
    }

    public final class Status
    {
      public static final int BAD_REQUEST = 1;
      public static final int NOT_FOUND = 2;
      public static final int SUCCESS;

      public Status()
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ResourceNano
 * JD-Core Version:    0.6.2
 */