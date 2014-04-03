package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class DeviceCheckinNano
{
  public static final class DeviceCheckinRequest extends MessageNano
  {
    public static final DeviceCheckinRequest[] EMPTY_ARRAY = new DeviceCheckinRequest[0];
    public BuildNano.Build build = null;
    private int cachedSize = -1;
    public String deviceId;
    public String serialNumber;
    public String sessionId;

    public static DeviceCheckinRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new DeviceCheckinRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static DeviceCheckinRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (DeviceCheckinRequest)MessageNano.mergeFrom(new DeviceCheckinRequest(), paramArrayOfByte);
    }

    public final DeviceCheckinRequest clear()
    {
      this.deviceId = null;
      this.serialNumber = null;
      this.build = null;
      this.sessionId = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      DeviceCheckinRequest localDeviceCheckinRequest;
      label49: label63: 
      do
      {
        return true;
        if (!(paramObject instanceof DeviceCheckinRequest))
          return false;
        localDeviceCheckinRequest = (DeviceCheckinRequest)paramObject;
        if (this.deviceId != null)
          break label79;
        if (localDeviceCheckinRequest.deviceId != null)
          break;
        if (this.serialNumber != null)
          break label96;
        if (localDeviceCheckinRequest.serialNumber != null)
          break;
        if (this.build != null)
          break label113;
        if (localDeviceCheckinRequest.build != null)
          break;
        if (this.sessionId != null)
          break label130;
      }
      while (localDeviceCheckinRequest.sessionId == null);
      label79: label96: label113: 
      while (!this.sessionId.equals(localDeviceCheckinRequest.sessionId))
      {
        do
        {
          do
          {
            do
              return false;
            while (!this.deviceId.equals(localDeviceCheckinRequest.deviceId));
            break;
          }
          while (!this.serialNumber.equals(localDeviceCheckinRequest.serialNumber));
          break label49;
        }
        while (!this.build.equals(localDeviceCheckinRequest.build));
        break label63;
      }
      label130: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.deviceId;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.deviceId);
      if (this.serialNumber != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.serialNumber);
      if (this.build != null)
        i += CodedOutputByteBufferNano.computeMessageSize(3, this.build);
      if (this.sessionId != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.sessionId);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i1;
      int i2;
      if (this.deviceId == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.serialNumber != null)
          break label86;
        k = 0;
        int m = 31 * (j + k);
        if (this.build != null)
          break label97;
        n = 0;
        i1 = 31 * (m + n);
        String str = this.sessionId;
        i2 = 0;
        if (str != null)
          break label109;
      }
      while (true)
      {
        return i1 + i2;
        i = this.deviceId.hashCode();
        break;
        label86: k = this.serialNumber.hashCode();
        break label27;
        label97: n = this.build.hashCode();
        break label45;
        label109: i2 = this.sessionId.hashCode();
      }
    }

    public DeviceCheckinRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        case 10:
          this.deviceId = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.serialNumber = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.build = new BuildNano.Build();
          paramCodedInputByteBufferNano.readMessage(this.build);
          break;
        case 34:
        }
        this.sessionId = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.deviceId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.deviceId);
      if (this.serialNumber != null)
        paramCodedOutputByteBufferNano.writeString(2, this.serialNumber);
      if (this.build != null)
        paramCodedOutputByteBufferNano.writeMessage(3, this.build);
      if (this.sessionId != null)
        paramCodedOutputByteBufferNano.writeString(4, this.sessionId);
    }
  }

  public static final class DeviceCheckinResponse extends MessageNano
  {
    public static final DeviceCheckinResponse[] EMPTY_ARRAY = new DeviceCheckinResponse[0];
    private int cachedSize = -1;

    public static DeviceCheckinResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new DeviceCheckinResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static DeviceCheckinResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (DeviceCheckinResponse)MessageNano.mergeFrom(new DeviceCheckinResponse(), paramArrayOfByte);
    }

    public final DeviceCheckinResponse clear()
    {
      this.cachedSize = -1;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      this.cachedSize = 0;
      return 0;
    }

    public DeviceCheckinResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      int i;
      do
      {
        i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
        case 0:
        }
      }
      while (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i));
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.DeviceCheckinNano
 * JD-Core Version:    0.6.2
 */