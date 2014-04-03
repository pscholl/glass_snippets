package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class BatchNano
{
  public static final class AuthToken extends MessageNano
  {
    public static final AuthToken[] EMPTY_ARRAY = new AuthToken[0];
    private int cachedSize = -1;
    public int type = -2147483648;
    public String value;

    public static AuthToken parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AuthToken().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AuthToken parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AuthToken)MessageNano.mergeFrom(new AuthToken(), paramArrayOfByte);
    }

    public final AuthToken clear()
    {
      this.type = -2147483648;
      this.value = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AuthToken localAuthToken;
      do
      {
        return true;
        if (!(paramObject instanceof AuthToken))
          return false;
        localAuthToken = (AuthToken)paramObject;
        if (this.type != localAuthToken.type)
          break;
        if (this.value != null)
          break label48;
      }
      while (localAuthToken.value == null);
      label48: 
      while (!this.value.equals(localAuthToken.value))
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
      int i = this.type;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      if (this.value != null)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.value);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      if (this.value == null);
      for (int j = 0; ; j = this.value.hashCode())
        return i + j;
    }

    public AuthToken mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        }
        this.value = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      if (this.value != null)
        paramCodedOutputByteBufferNano.writeString(2, this.value);
    }
  }

  public final class AuthTokenType
  {
    public static final int ANDROID_SERVICE = 1;

    public AuthTokenType()
    {
    }
  }

  public static final class BatchHeader extends MessageNano
  {
    public static final BatchHeader[] EMPTY_ARRAY = new BatchHeader[0];
    public BatchNano.AuthToken[] authToken = BatchNano.AuthToken.EMPTY_ARRAY;
    private int cachedSize = -1;
    public Long dispatcherId;

    public static BatchHeader parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new BatchHeader().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static BatchHeader parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (BatchHeader)MessageNano.mergeFrom(new BatchHeader(), paramArrayOfByte);
    }

    public final BatchHeader clear()
    {
      this.authToken = BatchNano.AuthToken.EMPTY_ARRAY;
      this.dispatcherId = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      BatchHeader localBatchHeader;
      do
      {
        return true;
        if (!(paramObject instanceof BatchHeader))
          return false;
        localBatchHeader = (BatchHeader)paramObject;
        if (!Arrays.equals(this.authToken, localBatchHeader.authToken))
          break;
        if (this.dispatcherId != null)
          break label51;
      }
      while (localBatchHeader.dispatcherId == null);
      label51: 
      while (!this.dispatcherId.equals(localBatchHeader.dispatcherId))
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
      BatchNano.AuthToken[] arrayOfAuthToken1 = this.authToken;
      int i = 0;
      if (arrayOfAuthToken1 != null)
      {
        BatchNano.AuthToken[] arrayOfAuthToken2 = this.authToken;
        int j = arrayOfAuthToken2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfAuthToken2[k]);
      }
      if (this.dispatcherId != null)
        i += CodedOutputByteBufferNano.computeInt64Size(2, this.dispatcherId.longValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      int n;
      int i1;
      if (this.authToken == null)
      {
        i *= 31;
        n = i * 31;
        Long localLong = this.dispatcherId;
        i1 = 0;
        if (localLong != null)
          break label94;
      }
      while (true)
      {
        return n + i1;
        int j = 0;
        label43: int k;
        if (j < this.authToken.length)
        {
          k = i * 31;
          if (this.authToken[j] != null)
            break label80;
        }
        label80: for (int m = 0; ; m = this.authToken[j].hashCode())
        {
          i = k + m;
          j++;
          break label43;
          break;
        }
        label94: i1 = (int)(this.dispatcherId.longValue() ^ this.dispatcherId.longValue() >>> 32);
      }
    }

    public BatchHeader mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 10);
          if (this.authToken == null);
          for (int k = 0; ; k = this.authToken.length)
          {
            BatchNano.AuthToken[] arrayOfAuthToken = new BatchNano.AuthToken[k + j];
            if (this.authToken != null)
              System.arraycopy(this.authToken, 0, arrayOfAuthToken, 0, k);
            this.authToken = arrayOfAuthToken;
            while (k < -1 + this.authToken.length)
            {
              this.authToken[k] = new BatchNano.AuthToken();
              paramCodedInputByteBufferNano.readMessage(this.authToken[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.authToken[k] = new BatchNano.AuthToken();
          paramCodedInputByteBufferNano.readMessage(this.authToken[k]);
          break;
        case 16:
        }
        this.dispatcherId = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.authToken != null)
      {
        BatchNano.AuthToken[] arrayOfAuthToken = this.authToken;
        int i = arrayOfAuthToken.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfAuthToken[j]);
      }
      if (this.dispatcherId != null)
        paramCodedOutputByteBufferNano.writeInt64(2, this.dispatcherId.longValue());
    }
  }

  public static final class BatchRequest extends MessageNano
  {
    public static final BatchRequest[] EMPTY_ARRAY = new BatchRequest[0];
    private int cachedSize = -1;
    public BatchNano.BatchHeader header = null;
    public BatchNano.RequestWrapper[] request = BatchNano.RequestWrapper.EMPTY_ARRAY;

    public static BatchRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new BatchRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static BatchRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (BatchRequest)MessageNano.mergeFrom(new BatchRequest(), paramArrayOfByte);
    }

    public final BatchRequest clear()
    {
      this.header = null;
      this.request = BatchNano.RequestWrapper.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof BatchRequest))
          return false;
        BatchRequest localBatchRequest = (BatchRequest)paramObject;
        if (this.header == null)
          if (localBatchRequest.header != null);
        while (!Arrays.equals(this.request, localBatchRequest.request))
          do
            return false;
          while (!this.header.equals(localBatchRequest.header));
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
      BatchNano.BatchHeader localBatchHeader = this.header;
      int i = 0;
      if (localBatchHeader != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.header);
      if (this.request != null)
      {
        BatchNano.RequestWrapper[] arrayOfRequestWrapper = this.request;
        int j = arrayOfRequestWrapper.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfRequestWrapper[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.header == null);
      int j;
      for (int i = 0; ; i = this.header.hashCode())
      {
        j = i + 527;
        if (this.request != null)
          break;
        j *= 31;
        return j;
      }
      int k = 0;
      label42: int m;
      if (k < this.request.length)
      {
        m = j * 31;
        if (this.request[k] != null)
          break label81;
      }
      label81: for (int n = 0; ; n = this.request[k].hashCode())
      {
        j = m + n;
        k++;
        break label42;
        break;
      }
    }

    public BatchRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.header = new BatchNano.BatchHeader();
          paramCodedInputByteBufferNano.readMessage(this.header);
          break;
        case 18:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
        if (this.request == null);
        for (int k = 0; ; k = this.request.length)
        {
          BatchNano.RequestWrapper[] arrayOfRequestWrapper = new BatchNano.RequestWrapper[k + j];
          if (this.request != null)
            System.arraycopy(this.request, 0, arrayOfRequestWrapper, 0, k);
          this.request = arrayOfRequestWrapper;
          while (k < -1 + this.request.length)
          {
            this.request[k] = new BatchNano.RequestWrapper();
            paramCodedInputByteBufferNano.readMessage(this.request[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.request[k] = new BatchNano.RequestWrapper();
        paramCodedInputByteBufferNano.readMessage(this.request[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.header != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.header);
      if (this.request != null)
      {
        BatchNano.RequestWrapper[] arrayOfRequestWrapper = this.request;
        int i = arrayOfRequestWrapper.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfRequestWrapper[j]);
      }
    }
  }

  public static final class BatchResponse extends MessageNano
  {
    public static final BatchResponse[] EMPTY_ARRAY = new BatchResponse[0];
    private int cachedSize = -1;
    public BatchNano.ResponseWrapper[] response = BatchNano.ResponseWrapper.EMPTY_ARRAY;

    public static BatchResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new BatchResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static BatchResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (BatchResponse)MessageNano.mergeFrom(new BatchResponse(), paramArrayOfByte);
    }

    public final BatchResponse clear()
    {
      this.response = BatchNano.ResponseWrapper.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      if (!(paramObject instanceof BatchResponse))
        return false;
      BatchResponse localBatchResponse = (BatchResponse)paramObject;
      return Arrays.equals(this.response, localBatchResponse.response);
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      BatchNano.ResponseWrapper[] arrayOfResponseWrapper1 = this.response;
      int i = 0;
      if (arrayOfResponseWrapper1 != null)
      {
        BatchNano.ResponseWrapper[] arrayOfResponseWrapper2 = this.response;
        int j = arrayOfResponseWrapper2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfResponseWrapper2[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.response == null)
      {
        i *= 31;
        return i;
      }
      int j = 0;
      label19: int k;
      if (j < this.response.length)
      {
        k = i * 31;
        if (this.response[j] != null)
          break label56;
      }
      label56: for (int m = 0; ; m = this.response[j].hashCode())
      {
        i = k + m;
        j++;
        break label19;
        break;
      }
    }

    public BatchResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 10);
        if (this.response == null);
        for (int k = 0; ; k = this.response.length)
        {
          BatchNano.ResponseWrapper[] arrayOfResponseWrapper = new BatchNano.ResponseWrapper[k + j];
          if (this.response != null)
            System.arraycopy(this.response, 0, arrayOfResponseWrapper, 0, k);
          this.response = arrayOfResponseWrapper;
          while (k < -1 + this.response.length)
          {
            this.response[k] = new BatchNano.ResponseWrapper();
            paramCodedInputByteBufferNano.readMessage(this.response[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.response[k] = new BatchNano.ResponseWrapper();
        paramCodedInputByteBufferNano.readMessage(this.response[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.response != null)
      {
        BatchNano.ResponseWrapper[] arrayOfResponseWrapper = this.response;
        int i = arrayOfResponseWrapper.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfResponseWrapper[j]);
      }
    }
  }

  public static final class RequestWrapper extends MessageNano
  {
    public static final RequestWrapper[] EMPTY_ARRAY = new RequestWrapper[0];
    private int cachedSize = -1;
    public byte[] data;
    public String path;

    public static RequestWrapper parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new RequestWrapper().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static RequestWrapper parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (RequestWrapper)MessageNano.mergeFrom(new RequestWrapper(), paramArrayOfByte);
    }

    public final RequestWrapper clear()
    {
      this.path = null;
      this.data = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof RequestWrapper))
          return false;
        RequestWrapper localRequestWrapper = (RequestWrapper)paramObject;
        if (this.path == null)
          if (localRequestWrapper.path != null);
        while (!Arrays.equals(this.data, localRequestWrapper.data))
          do
            return false;
          while (!this.path.equals(localRequestWrapper.path));
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
      String str = this.path;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.path);
      if (this.data != null)
        i += CodedOutputByteBufferNano.computeBytesSize(2, this.data);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.path == null)
      {
        i = 0;
        j = i + 527;
        if (this.data != null)
          break label40;
        j *= 31;
      }
      while (true)
      {
        return j;
        i = this.path.hashCode();
        break;
        label40: for (int k = 0; k < this.data.length; k++)
          j = j * 31 + this.data[k];
      }
    }

    public RequestWrapper mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.path = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
        }
        this.data = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.path != null)
        paramCodedOutputByteBufferNano.writeString(1, this.path);
      if (this.data != null)
        paramCodedOutputByteBufferNano.writeBytes(2, this.data);
    }
  }

  public static final class ResponseWrapper extends MessageNano
  {
    public static final ResponseWrapper[] EMPTY_ARRAY = new ResponseWrapper[0];
    private int cachedSize = -1;
    public byte[] data;
    public int errorCode = -2147483648;

    public static ResponseWrapper parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ResponseWrapper().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ResponseWrapper parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ResponseWrapper)MessageNano.mergeFrom(new ResponseWrapper(), paramArrayOfByte);
    }

    public final ResponseWrapper clear()
    {
      this.errorCode = -2147483648;
      this.data = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ResponseWrapper localResponseWrapper;
      do
      {
        return true;
        if (!(paramObject instanceof ResponseWrapper))
          return false;
        localResponseWrapper = (ResponseWrapper)paramObject;
      }
      while ((this.errorCode == localResponseWrapper.errorCode) && (Arrays.equals(this.data, localResponseWrapper.data)));
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
      int i = this.errorCode;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.errorCode);
      if (this.data != null)
        j += CodedOutputByteBufferNano.computeBytesSize(2, this.data);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 527 + this.errorCode;
      if (this.data == null)
        i *= 31;
      while (true)
      {
        return i;
        for (int j = 0; j < this.data.length; j++)
          i = i * 31 + this.data[j];
      }
    }

    public ResponseWrapper mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.errorCode = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
        }
        this.data = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.errorCode != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.errorCode);
      if (this.data != null)
        paramCodedOutputByteBufferNano.writeBytes(2, this.data);
    }

    public final class ErrorCode
    {
      public static final int INTERNAL_ERROR = 4;
      public static final int INVALID_PROTO = 3;
      public static final int NETWORK_ERROR = 5;
      public static final int NOT_AUTHORIZED = 2;
      public static final int UNKNOWN_REQUEST = 1;

      public ErrorCode()
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchNano
 * JD-Core Version:    0.6.2
 */