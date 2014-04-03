package com.google.googlex.glass.common.proto;

import com.google.common.logging.GlassExtensionsNano.GlassUserEventProto;
import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class LoggingNano
{
  public static final class GetSessionIdRequest extends MessageNano
  {
    public static final GetSessionIdRequest[] EMPTY_ARRAY = new GetSessionIdRequest[0];
    private int cachedSize = -1;
    public Boolean unusedField;

    public static GetSessionIdRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GetSessionIdRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GetSessionIdRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GetSessionIdRequest)MessageNano.mergeFrom(new GetSessionIdRequest(), paramArrayOfByte);
    }

    public final GetSessionIdRequest clear()
    {
      this.unusedField = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GetSessionIdRequest localGetSessionIdRequest;
      do
      {
        return true;
        if (!(paramObject instanceof GetSessionIdRequest))
          return false;
        localGetSessionIdRequest = (GetSessionIdRequest)paramObject;
        if (this.unusedField != null)
          break;
      }
      while (localGetSessionIdRequest.unusedField == null);
      return false;
      return this.unusedField.equals(localGetSessionIdRequest.unusedField);
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      Boolean localBoolean = this.unusedField;
      int i = 0;
      if (localBoolean != null)
        i = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.unusedField.booleanValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      if (this.unusedField == null)
        i = 0;
      while (true)
      {
        return i + 527;
        if (this.unusedField.booleanValue())
          i = 1;
        else
          i = 2;
      }
    }

    public GetSessionIdRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        }
        this.unusedField = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.unusedField != null)
        paramCodedOutputByteBufferNano.writeBool(1, this.unusedField.booleanValue());
    }
  }

  public static final class GetSessionIdResponse extends MessageNano
  {
    public static final GetSessionIdResponse[] EMPTY_ARRAY = new GetSessionIdResponse[0];
    private int cachedSize = -1;
    public String sessionId;

    public static GetSessionIdResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GetSessionIdResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GetSessionIdResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GetSessionIdResponse)MessageNano.mergeFrom(new GetSessionIdResponse(), paramArrayOfByte);
    }

    public final GetSessionIdResponse clear()
    {
      this.sessionId = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GetSessionIdResponse localGetSessionIdResponse;
      do
      {
        return true;
        if (!(paramObject instanceof GetSessionIdResponse))
          return false;
        localGetSessionIdResponse = (GetSessionIdResponse)paramObject;
        if (this.sessionId != null)
          break;
      }
      while (localGetSessionIdResponse.sessionId == null);
      return false;
      return this.sessionId.equals(localGetSessionIdResponse.sessionId);
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.sessionId;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.sessionId);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.sessionId == null);
      for (int i = 0; ; i = this.sessionId.hashCode())
        return i + 527;
    }

    public GetSessionIdResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        }
        this.sessionId = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.sessionId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.sessionId);
    }
  }

  public static final class ReportUserEventRequest extends MessageNano
  {
    public static final ReportUserEventRequest[] EMPTY_ARRAY = new ReportUserEventRequest[0];
    public String action;
    private int cachedSize = -1;
    public String data;
    public String hardwareVersion;
    public String sessionId;
    public String softwareVersion;
    public Long timestamp;
    public GlassExtensionsNano.GlassUserEventProto[] userEventProto = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;

    public static ReportUserEventRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ReportUserEventRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ReportUserEventRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ReportUserEventRequest)MessageNano.mergeFrom(new ReportUserEventRequest(), paramArrayOfByte);
    }

    public final ReportUserEventRequest clear()
    {
      this.action = null;
      this.data = null;
      this.sessionId = null;
      this.timestamp = null;
      this.softwareVersion = null;
      this.hardwareVersion = null;
      this.userEventProto = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label49: label63: label77: label91: label221: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof ReportUserEventRequest))
          return false;
        ReportUserEventRequest localReportUserEventRequest = (ReportUserEventRequest)paramObject;
        if (this.action == null)
          if (localReportUserEventRequest.action == null)
          {
            if (this.data != null)
              break label138;
            if (localReportUserEventRequest.data == null)
            {
              if (this.sessionId != null)
                break label155;
              if (localReportUserEventRequest.sessionId == null)
              {
                if (this.timestamp != null)
                  break label172;
                if (localReportUserEventRequest.timestamp == null)
                {
                  if (this.softwareVersion != null)
                    break label189;
                  if (localReportUserEventRequest.softwareVersion == null)
                  {
                    if (this.hardwareVersion != null)
                      break label206;
                    if (localReportUserEventRequest.hardwareVersion != null);
                  }
                }
              }
            }
          }
        while (true)
        {
          if (Arrays.equals(this.userEventProto, localReportUserEventRequest.userEventProto))
            break label221;
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                      return false;
                    while (!this.action.equals(localReportUserEventRequest.action));
                    break;
                  }
                  while (!this.data.equals(localReportUserEventRequest.data));
                  break label49;
                }
                while (!this.sessionId.equals(localReportUserEventRequest.sessionId));
                break label63;
              }
              while (!this.timestamp.equals(localReportUserEventRequest.timestamp));
              break label77;
            }
            while (!this.softwareVersion.equals(localReportUserEventRequest.softwareVersion));
            break label91;
          }
          while (!this.hardwareVersion.equals(localReportUserEventRequest.hardwareVersion));
        }
      }
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.action;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.action);
      if (this.data != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.data);
      if (this.sessionId != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.sessionId);
      if (this.timestamp != null)
        i += CodedOutputByteBufferNano.computeInt64Size(4, this.timestamp.longValue());
      if (this.softwareVersion != null)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.softwareVersion);
      if (this.hardwareVersion != null)
        i += CodedOutputByteBufferNano.computeStringSize(6, this.hardwareVersion);
      if (this.userEventProto != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEventProto;
        int j = arrayOfGlassUserEventProto.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(7, arrayOfGlassUserEventProto[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label65: int i4;
      label85: int i5;
      if (this.action == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.data != null)
          break label140;
        k = 0;
        int m = 31 * (j + k);
        if (this.sessionId != null)
          break label151;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.timestamp != null)
          break label163;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.softwareVersion != null)
          break label187;
        i4 = 0;
        i5 = 31 * (i3 + i4);
        if (this.hardwareVersion != null)
          break label199;
      }
      int i7;
      label140: label151: label163: label187: label199: for (int i6 = 0; ; i6 = this.hardwareVersion.hashCode())
      {
        i7 = i5 + i6;
        if (this.userEventProto != null)
          break label211;
        i7 *= 31;
        return i7;
        i = this.action.hashCode();
        break;
        k = this.data.hashCode();
        break label27;
        n = this.sessionId.hashCode();
        break label45;
        i2 = (int)(this.timestamp.longValue() ^ this.timestamp.longValue() >>> 32);
        break label65;
        i4 = this.softwareVersion.hashCode();
        break label85;
      }
      label211: int i8 = 0;
      label214: int i9;
      if (i8 < this.userEventProto.length)
      {
        i9 = i7 * 31;
        if (this.userEventProto[i8] != null)
          break label257;
      }
      label257: for (int i10 = 0; ; i10 = this.userEventProto[i8].hashCode())
      {
        i7 = i9 + i10;
        i8++;
        break label214;
        break;
      }
    }

    public ReportUserEventRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.action = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.data = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.sessionId = paramCodedInputByteBufferNano.readString();
          break;
        case 32:
          this.timestamp = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 42:
          this.softwareVersion = paramCodedInputByteBufferNano.readString();
          break;
        case 50:
          this.hardwareVersion = paramCodedInputByteBufferNano.readString();
          break;
        case 58:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 58);
        if (this.userEventProto == null);
        for (int k = 0; ; k = this.userEventProto.length)
        {
          GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = new GlassExtensionsNano.GlassUserEventProto[k + j];
          if (this.userEventProto != null)
            System.arraycopy(this.userEventProto, 0, arrayOfGlassUserEventProto, 0, k);
          this.userEventProto = arrayOfGlassUserEventProto;
          while (k < -1 + this.userEventProto.length)
          {
            this.userEventProto[k] = new GlassExtensionsNano.GlassUserEventProto();
            paramCodedInputByteBufferNano.readMessage(this.userEventProto[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userEventProto[k] = new GlassExtensionsNano.GlassUserEventProto();
        paramCodedInputByteBufferNano.readMessage(this.userEventProto[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.action != null)
        paramCodedOutputByteBufferNano.writeString(1, this.action);
      if (this.data != null)
        paramCodedOutputByteBufferNano.writeString(2, this.data);
      if (this.sessionId != null)
        paramCodedOutputByteBufferNano.writeString(3, this.sessionId);
      if (this.timestamp != null)
        paramCodedOutputByteBufferNano.writeInt64(4, this.timestamp.longValue());
      if (this.softwareVersion != null)
        paramCodedOutputByteBufferNano.writeString(5, this.softwareVersion);
      if (this.hardwareVersion != null)
        paramCodedOutputByteBufferNano.writeString(6, this.hardwareVersion);
      if (this.userEventProto != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEventProto;
        int i = arrayOfGlassUserEventProto.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(7, arrayOfGlassUserEventProto[j]);
      }
    }
  }

  public static final class ReportUserEventResponse extends MessageNano
  {
    public static final ReportUserEventResponse[] EMPTY_ARRAY = new ReportUserEventResponse[0];
    private int cachedSize = -1;
    public int responseCode = -2147483648;

    public static ReportUserEventResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ReportUserEventResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ReportUserEventResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ReportUserEventResponse)MessageNano.mergeFrom(new ReportUserEventResponse(), paramArrayOfByte);
    }

    public final ReportUserEventResponse clear()
    {
      this.responseCode = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ReportUserEventResponse localReportUserEventResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ReportUserEventResponse))
          return false;
        localReportUserEventResponse = (ReportUserEventResponse)paramObject;
      }
      while (this.responseCode == localReportUserEventResponse.responseCode);
      return false;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = this.responseCode;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      return 527 + this.responseCode;
    }

    public ReportUserEventResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        }
        this.responseCode = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.responseCode != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode);
    }

    public final class ResponseCode
    {
      public static final int ERROR_MISSING_SESSION_ID = 1;
      public static final int ERROR_MISSING_SOFTWARE_VERSION = 2;
      public static final int SUCCESS;

      public ResponseCode()
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LoggingNano
 * JD-Core Version:    0.6.2
 */