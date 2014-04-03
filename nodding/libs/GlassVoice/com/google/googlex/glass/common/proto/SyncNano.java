package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class SyncNano
{
  public static final class AttachmentGetRequest extends MessageNano
  {
    public static final AttachmentGetRequest[] EMPTY_ARRAY = new AttachmentGetRequest[0];
    public String attachmentId;
    private int cachedSize = -1;
    public ScreenDimensions screenDimensions = null;

    public static AttachmentGetRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentGetRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentGetRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentGetRequest)MessageNano.mergeFrom(new AttachmentGetRequest(), paramArrayOfByte);
    }

    public final AttachmentGetRequest clear()
    {
      this.attachmentId = null;
      this.screenDimensions = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AttachmentGetRequest localAttachmentGetRequest;
      do
      {
        return true;
        if (!(paramObject instanceof AttachmentGetRequest))
          return false;
        localAttachmentGetRequest = (AttachmentGetRequest)paramObject;
        if (this.attachmentId != null)
          break label51;
        if (localAttachmentGetRequest.attachmentId != null)
          break;
        if (this.screenDimensions != null)
          break label68;
      }
      while (localAttachmentGetRequest.screenDimensions == null);
      label51: label68: 
      while (!this.screenDimensions.equals(localAttachmentGetRequest.screenDimensions))
      {
        do
          return false;
        while (!this.attachmentId.equals(localAttachmentGetRequest.attachmentId));
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
      String str = this.attachmentId;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.attachmentId);
      if (this.screenDimensions != null)
        i += CodedOutputByteBufferNano.computeMessageSize(2, this.screenDimensions);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      int k;
      if (this.attachmentId == null)
      {
        i = 0;
        j = 31 * (i + 527);
        ScreenDimensions localScreenDimensions = this.screenDimensions;
        k = 0;
        if (localScreenDimensions != null)
          break label46;
      }
      while (true)
      {
        return j + k;
        i = this.attachmentId.hashCode();
        break;
        label46: k = this.screenDimensions.hashCode();
      }
    }

    public AttachmentGetRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.attachmentId = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
        }
        this.screenDimensions = new ScreenDimensions();
        paramCodedInputByteBufferNano.readMessage(this.screenDimensions);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.attachmentId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.attachmentId);
      if (this.screenDimensions != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.screenDimensions);
    }

    public static final class ScreenDimensions extends MessageNano
    {
      public static final ScreenDimensions[] EMPTY_ARRAY = new ScreenDimensions[0];
      private int cachedSize = -1;
      public Integer heightPixels;
      public Integer widthPixels;

      public final ScreenDimensions clear()
      {
        this.widthPixels = null;
        this.heightPixels = null;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        ScreenDimensions localScreenDimensions;
        do
        {
          return true;
          if (!(paramObject instanceof ScreenDimensions))
            return false;
          localScreenDimensions = (ScreenDimensions)paramObject;
          if (this.widthPixels != null)
            break label51;
          if (localScreenDimensions.widthPixels != null)
            break;
          if (this.heightPixels != null)
            break label68;
        }
        while (localScreenDimensions.heightPixels == null);
        label51: label68: 
        while (!this.heightPixels.equals(localScreenDimensions.heightPixels))
        {
          do
            return false;
          while (!this.widthPixels.equals(localScreenDimensions.widthPixels));
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
        Integer localInteger = this.widthPixels;
        int i = 0;
        if (localInteger != null)
          i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.widthPixels.intValue());
        if (this.heightPixels != null)
          i += CodedOutputByteBufferNano.computeInt32Size(2, this.heightPixels.intValue());
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        int i;
        int j;
        int k;
        if (this.widthPixels == null)
        {
          i = 0;
          j = 31 * (i + 527);
          Integer localInteger = this.heightPixels;
          k = 0;
          if (localInteger != null)
            break label46;
        }
        while (true)
        {
          return j + k;
          i = this.widthPixels.intValue();
          break;
          label46: k = this.heightPixels.intValue();
        }
      }

      public ScreenDimensions mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.widthPixels = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
            break;
          case 16:
          }
          this.heightPixels = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
        }
      }

      public ScreenDimensions parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new ScreenDimensions().mergeFrom(paramCodedInputByteBufferNano);
      }

      public ScreenDimensions parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (ScreenDimensions)MessageNano.mergeFrom(new ScreenDimensions(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.widthPixels != null)
          paramCodedOutputByteBufferNano.writeInt32(1, this.widthPixels.intValue());
        if (this.heightPixels != null)
          paramCodedOutputByteBufferNano.writeInt32(2, this.heightPixels.intValue());
      }
    }
  }

  public static final class AttachmentGetResponse extends MessageNano
  {
    public static final AttachmentGetResponse[] EMPTY_ARRAY = new AttachmentGetResponse[0];
    private int cachedSize = -1;
    public byte[] content;
    public String mimeType;
    public int responseCode = -2147483648;

    public static AttachmentGetResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentGetResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentGetResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentGetResponse)MessageNano.mergeFrom(new AttachmentGetResponse(), paramArrayOfByte);
    }

    public final AttachmentGetResponse clear()
    {
      this.responseCode = -2147483648;
      this.mimeType = null;
      this.content = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof AttachmentGetResponse))
          return false;
        AttachmentGetResponse localAttachmentGetResponse = (AttachmentGetResponse)paramObject;
        if (this.responseCode == localAttachmentGetResponse.responseCode)
        {
          if (this.mimeType != null)
            break label62;
          if (localAttachmentGetResponse.mimeType != null);
        }
        while (!Arrays.equals(this.content, localAttachmentGetResponse.content))
          label62: 
          do
            return false;
          while (!this.mimeType.equals(localAttachmentGetResponse.mimeType));
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
      int i = this.responseCode;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode);
      if (this.mimeType != null)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.mimeType);
      if (this.content != null)
        j += CodedOutputByteBufferNano.computeBytesSize(3, this.content);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.responseCode);
      int j;
      int k;
      if (this.mimeType == null)
      {
        j = 0;
        k = i + j;
        if (this.content != null)
          break label50;
        k *= 31;
      }
      while (true)
      {
        return k;
        j = this.mimeType.hashCode();
        break;
        label50: for (int m = 0; m < this.content.length; m++)
          k = k * 31 + this.content[m];
      }
    }

    public AttachmentGetResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.responseCode = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
          this.mimeType = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
        }
        this.content = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.responseCode != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode);
      if (this.mimeType != null)
        paramCodedOutputByteBufferNano.writeString(2, this.mimeType);
      if (this.content != null)
        paramCodedOutputByteBufferNano.writeBytes(3, this.content);
    }

    public final class ResponseCode
    {
      public static final int FAIL = 1;
      public static final int SUCCESS;

      public ResponseCode()
      {
      }
    }
  }

  public static final class AttachmentInsertRequest extends MessageNano
  {
    public static final AttachmentInsertRequest[] EMPTY_ARRAY = new AttachmentInsertRequest[0];
    private int cachedSize = -1;
    public byte[] content;
    public Long creationTime;
    public String description;
    public String deviceId;
    public String mimeType;
    public String name;
    public String source;

    public static AttachmentInsertRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentInsertRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentInsertRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentInsertRequest)MessageNano.mergeFrom(new AttachmentInsertRequest(), paramArrayOfByte);
    }

    public final AttachmentInsertRequest clear()
    {
      this.deviceId = null;
      this.mimeType = null;
      this.content = null;
      this.description = null;
      this.name = null;
      this.creationTime = null;
      this.source = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AttachmentInsertRequest localAttachmentInsertRequest;
      label49: label77: label91: label105: 
      do
      {
        return true;
        if (!(paramObject instanceof AttachmentInsertRequest))
          return false;
        localAttachmentInsertRequest = (AttachmentInsertRequest)paramObject;
        if (this.deviceId != null)
          break label121;
        if (localAttachmentInsertRequest.deviceId != null)
          break;
        if (this.mimeType != null)
          break label138;
        if (localAttachmentInsertRequest.mimeType != null)
          break;
        if (!Arrays.equals(this.content, localAttachmentInsertRequest.content))
          break;
        if (this.description != null)
          break label155;
        if (localAttachmentInsertRequest.description != null)
          break;
        if (this.name != null)
          break label172;
        if (localAttachmentInsertRequest.name != null)
          break;
        if (this.creationTime != null)
          break label189;
        if (localAttachmentInsertRequest.creationTime != null)
          break;
        if (this.source != null)
          break label206;
      }
      while (localAttachmentInsertRequest.source == null);
      label121: 
      while (!this.source.equals(localAttachmentInsertRequest.source))
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
                while (!this.deviceId.equals(localAttachmentInsertRequest.deviceId));
                break;
              }
              while (!this.mimeType.equals(localAttachmentInsertRequest.mimeType));
              break label49;
            }
            while (!this.description.equals(localAttachmentInsertRequest.description));
            break label77;
          }
          while (!this.name.equals(localAttachmentInsertRequest.name));
          break label91;
        }
        while (!this.creationTime.equals(localAttachmentInsertRequest.creationTime));
        break label105;
      }
      label138: label155: label172: label189: label206: return true;
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
      if (this.mimeType != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.mimeType);
      if (this.content != null)
        i += CodedOutputByteBufferNano.computeBytesSize(3, this.content);
      if (this.description != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.description);
      if (this.name != null)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.name);
      if (this.creationTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(6, this.creationTime.longValue());
      if (this.source != null)
        i += CodedOutputByteBufferNano.computeStringSize(7, this.source);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int m;
      label46: int i2;
      label63: int i4;
      label83: int i6;
      label103: int i7;
      int i8;
      if (this.deviceId == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.mimeType != null)
          break label144;
        k = 0;
        m = j + k;
        if (this.content != null)
          break label155;
        m *= 31;
        int i1 = m * 31;
        if (this.description != null)
          break label189;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.name != null)
          break label201;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.creationTime != null)
          break label213;
        i6 = 0;
        i7 = 31 * (i5 + i6);
        String str = this.source;
        i8 = 0;
        if (str != null)
          break label237;
      }
      while (true)
      {
        return i7 + i8;
        i = this.deviceId.hashCode();
        break;
        label144: k = this.mimeType.hashCode();
        break label27;
        label155: for (int n = 0; n < this.content.length; n++)
          m = m * 31 + this.content[n];
        break label46;
        label189: i2 = this.description.hashCode();
        break label63;
        label201: i4 = this.name.hashCode();
        break label83;
        label213: i6 = (int)(this.creationTime.longValue() ^ this.creationTime.longValue() >>> 32);
        break label103;
        label237: i8 = this.source.hashCode();
      }
    }

    public AttachmentInsertRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.mimeType = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.content = paramCodedInputByteBufferNano.readBytes();
          break;
        case 34:
          this.description = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          this.name = paramCodedInputByteBufferNano.readString();
          break;
        case 48:
          this.creationTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 58:
        }
        this.source = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.deviceId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.deviceId);
      if (this.mimeType != null)
        paramCodedOutputByteBufferNano.writeString(2, this.mimeType);
      if (this.content != null)
        paramCodedOutputByteBufferNano.writeBytes(3, this.content);
      if (this.description != null)
        paramCodedOutputByteBufferNano.writeString(4, this.description);
      if (this.name != null)
        paramCodedOutputByteBufferNano.writeString(5, this.name);
      if (this.creationTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(6, this.creationTime.longValue());
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeString(7, this.source);
    }
  }

  public static final class AttachmentInsertResponse extends MessageNano
  {
    public static final AttachmentInsertResponse[] EMPTY_ARRAY = new AttachmentInsertResponse[0];
    public String attachmentId;
    private int cachedSize = -1;
    public int responseCode = -2147483648;

    public static AttachmentInsertResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentInsertResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentInsertResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentInsertResponse)MessageNano.mergeFrom(new AttachmentInsertResponse(), paramArrayOfByte);
    }

    public final AttachmentInsertResponse clear()
    {
      this.responseCode = -2147483648;
      this.attachmentId = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AttachmentInsertResponse localAttachmentInsertResponse;
      do
      {
        return true;
        if (!(paramObject instanceof AttachmentInsertResponse))
          return false;
        localAttachmentInsertResponse = (AttachmentInsertResponse)paramObject;
        if (this.responseCode != localAttachmentInsertResponse.responseCode)
          break;
        if (this.attachmentId != null)
          break label48;
      }
      while (localAttachmentInsertResponse.attachmentId == null);
      label48: 
      while (!this.attachmentId.equals(localAttachmentInsertResponse.attachmentId))
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
      int i = this.responseCode;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode);
      if (this.attachmentId != null)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.attachmentId);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.responseCode);
      if (this.attachmentId == null);
      for (int j = 0; ; j = this.attachmentId.hashCode())
        return i + j;
    }

    public AttachmentInsertResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.responseCode = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
        }
        this.attachmentId = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.responseCode != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode);
      if (this.attachmentId != null)
        paramCodedOutputByteBufferNano.writeString(2, this.attachmentId);
    }

    public final class ResponseCode
    {
      public static final int FAIL = 1;
      public static final int SUCCESS;

      public ResponseCode()
      {
      }
    }
  }

  public static final class Delete extends MessageNano
  {
    public static final Delete[] EMPTY_ARRAY = new Delete[0];
    private int cachedSize = -1;
    public String timelineItemId;
    public TimelineNano.UserAction[] userAction = TimelineNano.UserAction.EMPTY_ARRAY;

    public static Delete parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Delete().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Delete parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Delete)MessageNano.mergeFrom(new Delete(), paramArrayOfByte);
    }

    public final Delete clear()
    {
      this.timelineItemId = null;
      this.userAction = TimelineNano.UserAction.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof Delete))
          return false;
        Delete localDelete = (Delete)paramObject;
        if (this.timelineItemId == null)
          if (localDelete.timelineItemId != null);
        while (!Arrays.equals(this.userAction, localDelete.userAction))
          do
            return false;
          while (!this.timelineItemId.equals(localDelete.timelineItemId));
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
      String str = this.timelineItemId;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.timelineItemId);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int j = arrayOfUserAction.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfUserAction[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.timelineItemId == null);
      int j;
      for (int i = 0; ; i = this.timelineItemId.hashCode())
      {
        j = i + 527;
        if (this.userAction != null)
          break;
        j *= 31;
        return j;
      }
      int k = 0;
      label42: int m;
      if (k < this.userAction.length)
      {
        m = j * 31;
        if (this.userAction[k] != null)
          break label81;
      }
      label81: for (int n = 0; ; n = this.userAction[k].hashCode())
      {
        j = m + n;
        k++;
        break label42;
        break;
      }
    }

    public Delete mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.timelineItemId = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
        if (this.userAction == null);
        for (int k = 0; ; k = this.userAction.length)
        {
          TimelineNano.UserAction[] arrayOfUserAction = new TimelineNano.UserAction[k + j];
          if (this.userAction != null)
            System.arraycopy(this.userAction, 0, arrayOfUserAction, 0, k);
          this.userAction = arrayOfUserAction;
          while (k < -1 + this.userAction.length)
          {
            this.userAction[k] = new TimelineNano.UserAction();
            paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userAction[k] = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.timelineItemId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.timelineItemId);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int i = arrayOfUserAction.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfUserAction[j]);
      }
    }
  }

  public static final class InsertReplaceOnConflict extends MessageNano
  {
    public static final InsertReplaceOnConflict[] EMPTY_ARRAY = new InsertReplaceOnConflict[0];
    private int cachedSize = -1;
    public TimelineNano.TimelineItem timelineItem = null;
    public TimelineNano.UserAction[] userAction = TimelineNano.UserAction.EMPTY_ARRAY;

    public static InsertReplaceOnConflict parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new InsertReplaceOnConflict().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static InsertReplaceOnConflict parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (InsertReplaceOnConflict)MessageNano.mergeFrom(new InsertReplaceOnConflict(), paramArrayOfByte);
    }

    public final InsertReplaceOnConflict clear()
    {
      this.timelineItem = null;
      this.userAction = TimelineNano.UserAction.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof InsertReplaceOnConflict))
          return false;
        InsertReplaceOnConflict localInsertReplaceOnConflict = (InsertReplaceOnConflict)paramObject;
        if (this.timelineItem == null)
          if (localInsertReplaceOnConflict.timelineItem != null);
        while (!Arrays.equals(this.userAction, localInsertReplaceOnConflict.userAction))
          do
            return false;
          while (!this.timelineItem.equals(localInsertReplaceOnConflict.timelineItem));
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
      TimelineNano.TimelineItem localTimelineItem = this.timelineItem;
      int i = 0;
      if (localTimelineItem != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.timelineItem);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int j = arrayOfUserAction.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfUserAction[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.timelineItem == null);
      int j;
      for (int i = 0; ; i = this.timelineItem.hashCode())
      {
        j = i + 527;
        if (this.userAction != null)
          break;
        j *= 31;
        return j;
      }
      int k = 0;
      label42: int m;
      if (k < this.userAction.length)
      {
        m = j * 31;
        if (this.userAction[k] != null)
          break label81;
      }
      label81: for (int n = 0; ; n = this.userAction[k].hashCode())
      {
        j = m + n;
        k++;
        break label42;
        break;
      }
    }

    public InsertReplaceOnConflict mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.timelineItem = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem);
          break;
        case 18:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
        if (this.userAction == null);
        for (int k = 0; ; k = this.userAction.length)
        {
          TimelineNano.UserAction[] arrayOfUserAction = new TimelineNano.UserAction[k + j];
          if (this.userAction != null)
            System.arraycopy(this.userAction, 0, arrayOfUserAction, 0, k);
          this.userAction = arrayOfUserAction;
          while (k < -1 + this.userAction.length)
          {
            this.userAction[k] = new TimelineNano.UserAction();
            paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userAction[k] = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.timelineItem != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.timelineItem);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int i = arrayOfUserAction.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfUserAction[j]);
      }
    }
  }

  public static final class Select extends MessageNano
  {
    public static final Select[] EMPTY_ARRAY = new Select[0];
    private int cachedSize = -1;
    public byte[] continuationToken;
    public Integer maxItems;
    public Long modifiedAfterTime;
    public Long modifiedBeforeTime;
    public Long startTime;
    public Long writeAfterTime;
    public Long writeBeforeTime;

    public static Select parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Select().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Select parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Select)MessageNano.mergeFrom(new Select(), paramArrayOfByte);
    }

    public final Select clear()
    {
      this.maxItems = null;
      this.modifiedAfterTime = null;
      this.modifiedBeforeTime = null;
      this.writeAfterTime = null;
      this.writeBeforeTime = null;
      this.startTime = null;
      this.continuationToken = null;
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
        if (!(paramObject instanceof Select))
          return false;
        Select localSelect = (Select)paramObject;
        if (this.maxItems == null)
          if (localSelect.maxItems == null)
          {
            if (this.modifiedAfterTime != null)
              break label138;
            if (localSelect.modifiedAfterTime == null)
            {
              if (this.modifiedBeforeTime != null)
                break label155;
              if (localSelect.modifiedBeforeTime == null)
              {
                if (this.writeAfterTime != null)
                  break label172;
                if (localSelect.writeAfterTime == null)
                {
                  if (this.writeBeforeTime != null)
                    break label189;
                  if (localSelect.writeBeforeTime == null)
                  {
                    if (this.startTime != null)
                      break label206;
                    if (localSelect.startTime != null);
                  }
                }
              }
            }
          }
        while (true)
        {
          if (Arrays.equals(this.continuationToken, localSelect.continuationToken))
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
                    while (!this.maxItems.equals(localSelect.maxItems));
                    break;
                  }
                  while (!this.modifiedAfterTime.equals(localSelect.modifiedAfterTime));
                  break label49;
                }
                while (!this.modifiedBeforeTime.equals(localSelect.modifiedBeforeTime));
                break label63;
              }
              while (!this.writeAfterTime.equals(localSelect.writeAfterTime));
              break label77;
            }
            while (!this.writeBeforeTime.equals(localSelect.writeBeforeTime));
            break label91;
          }
          while (!this.startTime.equals(localSelect.startTime));
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
      Integer localInteger = this.maxItems;
      int i = 0;
      if (localInteger != null)
        i = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.maxItems.intValue());
      if (this.writeAfterTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(2, this.writeAfterTime.longValue());
      if (this.writeBeforeTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(3, this.writeBeforeTime.longValue());
      if (this.continuationToken != null)
        i += CodedOutputByteBufferNano.computeBytesSize(4, this.continuationToken);
      if (this.modifiedAfterTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(7, this.modifiedAfterTime.longValue());
      if (this.modifiedBeforeTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(8, this.modifiedBeforeTime.longValue());
      if (this.startTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(9, this.startTime.longValue());
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
      label85: int i6;
      label109: int i7;
      if (this.maxItems == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.modifiedAfterTime != null)
          break label144;
        k = 0;
        int m = 31 * (j + k);
        if (this.modifiedBeforeTime != null)
          break label167;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.writeAfterTime != null)
          break label191;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.writeBeforeTime != null)
          break label215;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        Long localLong = this.startTime;
        i6 = 0;
        if (localLong != null)
          break label239;
        i7 = i5 + i6;
        if (this.continuationToken != null)
          break label263;
        i7 *= 31;
      }
      while (true)
      {
        return i7;
        i = this.maxItems.intValue();
        break;
        label144: k = (int)(this.modifiedAfterTime.longValue() ^ this.modifiedAfterTime.longValue() >>> 32);
        break label27;
        label167: n = (int)(this.modifiedBeforeTime.longValue() ^ this.modifiedBeforeTime.longValue() >>> 32);
        break label45;
        label191: i2 = (int)(this.writeAfterTime.longValue() ^ this.writeAfterTime.longValue() >>> 32);
        break label65;
        label215: i4 = (int)(this.writeBeforeTime.longValue() ^ this.writeBeforeTime.longValue() >>> 32);
        break label85;
        label239: i6 = (int)(this.startTime.longValue() ^ this.startTime.longValue() >>> 32);
        break label109;
        label263: for (int i8 = 0; i8 < this.continuationToken.length; i8++)
          i7 = i7 * 31 + this.continuationToken[i8];
      }
    }

    public Select mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.maxItems = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
          break;
        case 16:
          this.writeAfterTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 24:
          this.writeBeforeTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 34:
          this.continuationToken = paramCodedInputByteBufferNano.readBytes();
          break;
        case 56:
          this.modifiedAfterTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 64:
          this.modifiedBeforeTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 72:
        }
        this.startTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.maxItems != null)
        paramCodedOutputByteBufferNano.writeUInt32(1, this.maxItems.intValue());
      if (this.writeAfterTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.writeAfterTime.longValue());
      if (this.writeBeforeTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(3, this.writeBeforeTime.longValue());
      if (this.continuationToken != null)
        paramCodedOutputByteBufferNano.writeBytes(4, this.continuationToken);
      if (this.modifiedAfterTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(7, this.modifiedAfterTime.longValue());
      if (this.modifiedBeforeTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(8, this.modifiedBeforeTime.longValue());
      if (this.startTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(9, this.startTime.longValue());
    }
  }

  public static final class SyncRequest extends MessageNano
  {
    public static final SyncRequest[] EMPTY_ARRAY = new SyncRequest[0];
    private int cachedSize = -1;
    public SyncNano.Delete[] delete = SyncNano.Delete.EMPTY_ARRAY;
    public String deviceId;
    public SyncNano.InsertReplaceOnConflict[] insertReplaceOnConflict = SyncNano.InsertReplaceOnConflict.EMPTY_ARRAY;
    public SyncNano.Select select = null;
    public SyncNano.Update[] update = SyncNano.Update.EMPTY_ARRAY;

    public static SyncRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new SyncRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static SyncRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (SyncRequest)MessageNano.mergeFrom(new SyncRequest(), paramArrayOfByte);
    }

    public final SyncRequest clear()
    {
      this.select = null;
      this.insertReplaceOnConflict = SyncNano.InsertReplaceOnConflict.EMPTY_ARRAY;
      this.update = SyncNano.Update.EMPTY_ARRAY;
      this.delete = SyncNano.Delete.EMPTY_ARRAY;
      this.deviceId = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      SyncRequest localSyncRequest;
      do
      {
        return true;
        if (!(paramObject instanceof SyncRequest))
          return false;
        localSyncRequest = (SyncRequest)paramObject;
        if (this.select != null)
          break label93;
        if (localSyncRequest.select != null)
          break;
        if ((!Arrays.equals(this.insertReplaceOnConflict, localSyncRequest.insertReplaceOnConflict)) || (!Arrays.equals(this.update, localSyncRequest.update)) || (!Arrays.equals(this.delete, localSyncRequest.delete)))
          break;
        if (this.deviceId != null)
          break label110;
      }
      while (localSyncRequest.deviceId == null);
      label93: label110: 
      while (!this.deviceId.equals(localSyncRequest.deviceId))
      {
        do
          return false;
        while (!this.select.equals(localSyncRequest.select));
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
      SyncNano.Select localSelect = this.select;
      int i = 0;
      if (localSelect != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.select);
      if (this.insertReplaceOnConflict != null)
      {
        SyncNano.InsertReplaceOnConflict[] arrayOfInsertReplaceOnConflict = this.insertReplaceOnConflict;
        int i2 = arrayOfInsertReplaceOnConflict.length;
        for (int i3 = 0; i3 < i2; i3++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfInsertReplaceOnConflict[i3]);
      }
      if (this.update != null)
      {
        SyncNano.Update[] arrayOfUpdate = this.update;
        int n = arrayOfUpdate.length;
        for (int i1 = 0; i1 < n; i1++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfUpdate[i1]);
      }
      if (this.delete != null)
      {
        SyncNano.Delete[] arrayOfDelete = this.delete;
        int k = arrayOfDelete.length;
        for (int m = 0; m < k; m++)
          i += CodedOutputByteBufferNano.computeMessageSize(4, arrayOfDelete[m]);
      }
      int j = i + CodedOutputByteBufferNano.computeStringSize(5, this.deviceId);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i;
      int j;
      int i7;
      int i8;
      if (this.select == null)
      {
        i = 0;
        j = i + 527;
        if (this.insertReplaceOnConflict != null)
          break label88;
        j *= 31;
        if (this.update != null)
          break label143;
        j *= 31;
        if (this.delete != null)
          break label202;
        j *= 31;
        i7 = j * 31;
        String str = this.deviceId;
        i8 = 0;
        if (str != null)
          break label261;
      }
      while (true)
      {
        return i7 + i8;
        i = this.select.hashCode();
        break;
        label88: int k = 0;
        label90: int m;
        if (k < this.insertReplaceOnConflict.length)
        {
          m = j * 31;
          if (this.insertReplaceOnConflict[k] != null)
            break label129;
        }
        label129: for (int n = 0; ; n = this.insertReplaceOnConflict[k].hashCode())
        {
          j = m + n;
          k++;
          break label90;
          break;
        }
        label143: int i1 = 0;
        label146: int i2;
        if (i1 < this.update.length)
        {
          i2 = j * 31;
          if (this.update[i1] != null)
            break label187;
        }
        label187: for (int i3 = 0; ; i3 = this.update[i1].hashCode())
        {
          j = i2 + i3;
          i1++;
          break label146;
          break;
        }
        label202: int i4 = 0;
        label205: int i5;
        if (i4 < this.delete.length)
        {
          i5 = j * 31;
          if (this.delete[i4] != null)
            break label246;
        }
        label246: for (int i6 = 0; ; i6 = this.delete[i4].hashCode())
        {
          j = i5 + i6;
          i4++;
          break label205;
          break;
        }
        label261: i8 = this.deviceId.hashCode();
      }
    }

    public SyncRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.select = new SyncNano.Select();
          paramCodedInputByteBufferNano.readMessage(this.select);
          break;
        case 18:
          int i1 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
          if (this.insertReplaceOnConflict == null);
          for (int i2 = 0; ; i2 = this.insertReplaceOnConflict.length)
          {
            SyncNano.InsertReplaceOnConflict[] arrayOfInsertReplaceOnConflict = new SyncNano.InsertReplaceOnConflict[i2 + i1];
            if (this.insertReplaceOnConflict != null)
              System.arraycopy(this.insertReplaceOnConflict, 0, arrayOfInsertReplaceOnConflict, 0, i2);
            this.insertReplaceOnConflict = arrayOfInsertReplaceOnConflict;
            while (i2 < -1 + this.insertReplaceOnConflict.length)
            {
              this.insertReplaceOnConflict[i2] = new SyncNano.InsertReplaceOnConflict();
              paramCodedInputByteBufferNano.readMessage(this.insertReplaceOnConflict[i2]);
              paramCodedInputByteBufferNano.readTag();
              i2++;
            }
          }
          this.insertReplaceOnConflict[i2] = new SyncNano.InsertReplaceOnConflict();
          paramCodedInputByteBufferNano.readMessage(this.insertReplaceOnConflict[i2]);
          break;
        case 26:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          if (this.update == null);
          for (int n = 0; ; n = this.update.length)
          {
            SyncNano.Update[] arrayOfUpdate = new SyncNano.Update[n + m];
            if (this.update != null)
              System.arraycopy(this.update, 0, arrayOfUpdate, 0, n);
            this.update = arrayOfUpdate;
            while (n < -1 + this.update.length)
            {
              this.update[n] = new SyncNano.Update();
              paramCodedInputByteBufferNano.readMessage(this.update[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.update[n] = new SyncNano.Update();
          paramCodedInputByteBufferNano.readMessage(this.update[n]);
          break;
        case 34:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 34);
          if (this.delete == null);
          for (int k = 0; ; k = this.delete.length)
          {
            SyncNano.Delete[] arrayOfDelete = new SyncNano.Delete[k + j];
            if (this.delete != null)
              System.arraycopy(this.delete, 0, arrayOfDelete, 0, k);
            this.delete = arrayOfDelete;
            while (k < -1 + this.delete.length)
            {
              this.delete[k] = new SyncNano.Delete();
              paramCodedInputByteBufferNano.readMessage(this.delete[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.delete[k] = new SyncNano.Delete();
          paramCodedInputByteBufferNano.readMessage(this.delete[k]);
          break;
        case 42:
        }
        this.deviceId = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.select != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.select);
      if (this.insertReplaceOnConflict != null)
      {
        SyncNano.InsertReplaceOnConflict[] arrayOfInsertReplaceOnConflict = this.insertReplaceOnConflict;
        int n = arrayOfInsertReplaceOnConflict.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfInsertReplaceOnConflict[i1]);
      }
      if (this.update != null)
      {
        SyncNano.Update[] arrayOfUpdate = this.update;
        int k = arrayOfUpdate.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfUpdate[m]);
      }
      if (this.delete != null)
      {
        SyncNano.Delete[] arrayOfDelete = this.delete;
        int i = arrayOfDelete.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(4, arrayOfDelete[j]);
      }
      paramCodedOutputByteBufferNano.writeString(5, this.deviceId);
    }
  }

  public static final class SyncResponse extends MessageNano
  {
    public static final SyncResponse[] EMPTY_ARRAY = new SyncResponse[0];
    private int cachedSize = -1;
    public String[] deleteFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
    public String[] insertFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
    public int responseCode = -2147483648;
    public byte[] selectContinuationToken;
    public Long selectMaxWriteTimestamp;
    public Long selectStartTime;
    public TimelineNano.TimelineItem[] selectedItems = TimelineNano.TimelineItem.EMPTY_ARRAY;
    public byte[] syncContinuationToken;
    public Long syncEndTime;
    public Long syncStartTime;
    public String[] updateFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;

    public static SyncResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new SyncResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static SyncResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (SyncResponse)MessageNano.mergeFrom(new SyncResponse(), paramArrayOfByte);
    }

    public final SyncResponse clear()
    {
      this.responseCode = -2147483648;
      this.selectedItems = TimelineNano.TimelineItem.EMPTY_ARRAY;
      this.insertFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
      this.updateFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
      this.deleteFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
      this.syncStartTime = null;
      this.syncEndTime = null;
      this.syncContinuationToken = null;
      this.selectStartTime = null;
      this.selectContinuationToken = null;
      this.selectMaxWriteTimestamp = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      SyncResponse localSyncResponse;
      label116: 
      do
      {
        return true;
        if (!(paramObject instanceof SyncResponse))
          return false;
        localSyncResponse = (SyncResponse)paramObject;
        if ((this.responseCode != localSyncResponse.responseCode) || (!Arrays.equals(this.selectedItems, localSyncResponse.selectedItems)) || (!Arrays.equals(this.insertFailedItemIds, localSyncResponse.insertFailedItemIds)) || (!Arrays.equals(this.updateFailedItemIds, localSyncResponse.updateFailedItemIds)) || (!Arrays.equals(this.deleteFailedItemIds, localSyncResponse.deleteFailedItemIds)))
          break;
        if (this.syncStartTime != null)
          break label174;
        if (localSyncResponse.syncStartTime != null)
          break;
        if (this.syncEndTime != null)
          break label191;
        if (localSyncResponse.syncEndTime != null)
          break;
        if (!Arrays.equals(this.syncContinuationToken, localSyncResponse.syncContinuationToken))
          break;
        if (this.selectStartTime != null)
          break label208;
        if (localSyncResponse.selectStartTime != null)
          break;
        if (!Arrays.equals(this.selectContinuationToken, localSyncResponse.selectContinuationToken))
          break;
        if (this.selectMaxWriteTimestamp != null)
          break label225;
      }
      while (localSyncResponse.selectMaxWriteTimestamp == null);
      label144: label174: label191: label208: label225: 
      while (!this.selectMaxWriteTimestamp.equals(localSyncResponse.selectMaxWriteTimestamp))
      {
        do
        {
          do
          {
            do
              return false;
            while (!this.syncStartTime.equals(localSyncResponse.syncStartTime));
            break;
          }
          while (!this.syncEndTime.equals(localSyncResponse.syncEndTime));
          break label116;
        }
        while (!this.selectStartTime.equals(localSyncResponse.selectStartTime));
        break label144;
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
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode);
      if (this.selectedItems != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.selectedItems;
        int i6 = arrayOfTimelineItem.length;
        for (int i7 = 0; i7 < i6; i7++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfTimelineItem[i7]);
      }
      if ((this.insertFailedItemIds != null) && (this.insertFailedItemIds.length > 0))
      {
        int i3 = 0;
        String[] arrayOfString3 = this.insertFailedItemIds;
        int i4 = arrayOfString3.length;
        for (int i5 = 0; i5 < i4; i5++)
          i3 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString3[i5]);
        i = i + i3 + 1 * this.insertFailedItemIds.length;
      }
      if ((this.updateFailedItemIds != null) && (this.updateFailedItemIds.length > 0))
      {
        int n = 0;
        String[] arrayOfString2 = this.updateFailedItemIds;
        int i1 = arrayOfString2.length;
        for (int i2 = 0; i2 < i1; i2++)
          n += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString2[i2]);
        i = i + n + 1 * this.updateFailedItemIds.length;
      }
      if ((this.deleteFailedItemIds != null) && (this.deleteFailedItemIds.length > 0))
      {
        int j = 0;
        String[] arrayOfString1 = this.deleteFailedItemIds;
        int k = arrayOfString1.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString1[m]);
        i = i + j + 1 * this.deleteFailedItemIds.length;
      }
      if (this.syncStartTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(6, this.syncStartTime.longValue());
      if (this.syncEndTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(7, this.syncEndTime.longValue());
      if (this.syncContinuationToken != null)
        i += CodedOutputByteBufferNano.computeBytesSize(8, this.syncContinuationToken);
      if (this.selectStartTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(9, this.selectStartTime.longValue());
      if (this.selectContinuationToken != null)
        i += CodedOutputByteBufferNano.computeBytesSize(10, this.selectContinuationToken);
      if (this.selectMaxWriteTimestamp != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(11, this.selectMaxWriteTimestamp.longValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 527 + this.responseCode;
      int i10;
      label73: int i12;
      label93: int i13;
      label114: int i16;
      label131: int i17;
      label152: int i19;
      int i20;
      if (this.selectedItems == null)
      {
        i *= 31;
        if (this.insertFailedItemIds != null)
          break label232;
        i *= 31;
        if (this.updateFailedItemIds != null)
          break label291;
        i *= 31;
        if (this.deleteFailedItemIds != null)
          break label350;
        i *= 31;
        int i9 = i * 31;
        if (this.syncStartTime != null)
          break label409;
        i10 = 0;
        int i11 = 31 * (i9 + i10);
        if (this.syncEndTime != null)
          break label433;
        i12 = 0;
        i13 = i11 + i12;
        if (this.syncContinuationToken != null)
          break label457;
        i13 *= 31;
        int i15 = i13 * 31;
        if (this.selectStartTime != null)
          break label491;
        i16 = 0;
        i17 = i15 + i16;
        if (this.selectContinuationToken != null)
          break label515;
        i17 *= 31;
        i19 = i17 * 31;
        Long localLong = this.selectMaxWriteTimestamp;
        i20 = 0;
        if (localLong != null)
          break label549;
      }
      while (true)
      {
        return i19 + i20;
        int j = 0;
        label181: int k;
        if (j < this.selectedItems.length)
        {
          k = i * 31;
          if (this.selectedItems[j] != null)
            break label218;
        }
        label218: for (int m = 0; ; m = this.selectedItems[j].hashCode())
        {
          i = k + m;
          j++;
          break label181;
          break;
        }
        label232: int n = 0;
        label235: int i1;
        if (n < this.insertFailedItemIds.length)
        {
          i1 = i * 31;
          if (this.insertFailedItemIds[n] != null)
            break label276;
        }
        label276: for (int i2 = 0; ; i2 = this.insertFailedItemIds[n].hashCode())
        {
          i = i1 + i2;
          n++;
          break label235;
          break;
        }
        label291: int i3 = 0;
        label294: int i4;
        if (i3 < this.updateFailedItemIds.length)
        {
          i4 = i * 31;
          if (this.updateFailedItemIds[i3] != null)
            break label335;
        }
        label335: for (int i5 = 0; ; i5 = this.updateFailedItemIds[i3].hashCode())
        {
          i = i4 + i5;
          i3++;
          break label294;
          break;
        }
        label350: int i6 = 0;
        label353: int i7;
        if (i6 < this.deleteFailedItemIds.length)
        {
          i7 = i * 31;
          if (this.deleteFailedItemIds[i6] != null)
            break label394;
        }
        label394: for (int i8 = 0; ; i8 = this.deleteFailedItemIds[i6].hashCode())
        {
          i = i7 + i8;
          i6++;
          break label353;
          break;
        }
        label409: i10 = (int)(this.syncStartTime.longValue() ^ this.syncStartTime.longValue() >>> 32);
        break label73;
        label433: i12 = (int)(this.syncEndTime.longValue() ^ this.syncEndTime.longValue() >>> 32);
        break label93;
        label457: for (int i14 = 0; i14 < this.syncContinuationToken.length; i14++)
          i13 = i13 * 31 + this.syncContinuationToken[i14];
        break label114;
        label491: i16 = (int)(this.selectStartTime.longValue() ^ this.selectStartTime.longValue() >>> 32);
        break label131;
        label515: for (int i18 = 0; i18 < this.selectContinuationToken.length; i18++)
          i17 = i17 * 31 + this.selectContinuationToken[i18];
        break label152;
        label549: i20 = (int)(this.selectMaxWriteTimestamp.longValue() ^ this.selectMaxWriteTimestamp.longValue() >>> 32);
      }
    }

    public SyncResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.responseCode = paramCodedInputByteBufferNano.readInt32();
          break;
        case 18:
          int i3 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
          if (this.selectedItems == null);
          for (int i4 = 0; ; i4 = this.selectedItems.length)
          {
            TimelineNano.TimelineItem[] arrayOfTimelineItem = new TimelineNano.TimelineItem[i4 + i3];
            if (this.selectedItems != null)
              System.arraycopy(this.selectedItems, 0, arrayOfTimelineItem, 0, i4);
            this.selectedItems = arrayOfTimelineItem;
            while (i4 < -1 + this.selectedItems.length)
            {
              this.selectedItems[i4] = new TimelineNano.TimelineItem();
              paramCodedInputByteBufferNano.readMessage(this.selectedItems[i4]);
              paramCodedInputByteBufferNano.readTag();
              i4++;
            }
          }
          this.selectedItems[i4] = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.selectedItems[i4]);
          break;
        case 26:
          int i1 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          int i2 = this.insertFailedItemIds.length;
          String[] arrayOfString3 = new String[i2 + i1];
          System.arraycopy(this.insertFailedItemIds, 0, arrayOfString3, 0, i2);
          this.insertFailedItemIds = arrayOfString3;
          while (i2 < -1 + this.insertFailedItemIds.length)
          {
            this.insertFailedItemIds[i2] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i2++;
          }
          this.insertFailedItemIds[i2] = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 34);
          int n = this.updateFailedItemIds.length;
          String[] arrayOfString2 = new String[n + m];
          System.arraycopy(this.updateFailedItemIds, 0, arrayOfString2, 0, n);
          this.updateFailedItemIds = arrayOfString2;
          while (n < -1 + this.updateFailedItemIds.length)
          {
            this.updateFailedItemIds[n] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            n++;
          }
          this.updateFailedItemIds[n] = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          int k = this.deleteFailedItemIds.length;
          String[] arrayOfString1 = new String[k + j];
          System.arraycopy(this.deleteFailedItemIds, 0, arrayOfString1, 0, k);
          this.deleteFailedItemIds = arrayOfString1;
          while (k < -1 + this.deleteFailedItemIds.length)
          {
            this.deleteFailedItemIds[k] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
          this.deleteFailedItemIds[k] = paramCodedInputByteBufferNano.readString();
          break;
        case 48:
          this.syncStartTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 56:
          this.syncEndTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 66:
          this.syncContinuationToken = paramCodedInputByteBufferNano.readBytes();
          break;
        case 72:
          this.selectStartTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 82:
          this.selectContinuationToken = paramCodedInputByteBufferNano.readBytes();
          break;
        case 88:
        }
        this.selectMaxWriteTimestamp = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode);
      if (this.selectedItems != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.selectedItems;
        int i2 = arrayOfTimelineItem.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfTimelineItem[i3]);
      }
      if (this.insertFailedItemIds != null)
      {
        String[] arrayOfString3 = this.insertFailedItemIds;
        int n = arrayOfString3.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeString(3, arrayOfString3[i1]);
      }
      if (this.updateFailedItemIds != null)
      {
        String[] arrayOfString2 = this.updateFailedItemIds;
        int k = arrayOfString2.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeString(4, arrayOfString2[m]);
      }
      if (this.deleteFailedItemIds != null)
      {
        String[] arrayOfString1 = this.deleteFailedItemIds;
        int i = arrayOfString1.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeString(5, arrayOfString1[j]);
      }
      if (this.syncStartTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(6, this.syncStartTime.longValue());
      if (this.syncEndTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(7, this.syncEndTime.longValue());
      if (this.syncContinuationToken != null)
        paramCodedOutputByteBufferNano.writeBytes(8, this.syncContinuationToken);
      if (this.selectStartTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(9, this.selectStartTime.longValue());
      if (this.selectContinuationToken != null)
        paramCodedOutputByteBufferNano.writeBytes(10, this.selectContinuationToken);
      if (this.selectMaxWriteTimestamp != null)
        paramCodedOutputByteBufferNano.writeUInt64(11, this.selectMaxWriteTimestamp.longValue());
    }

    public final class ResponseCode
    {
      public static final int SUCCESS;

      public ResponseCode()
      {
      }
    }
  }

  public static final class Update extends MessageNano
  {
    public static final Update[] EMPTY_ARRAY = new Update[0];
    private int cachedSize = -1;
    public Mutations mutations = null;
    public String timelineItemId;
    public TimelineNano.UserAction[] userAction = TimelineNano.UserAction.EMPTY_ARRAY;

    public static Update parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Update().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Update parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Update)MessageNano.mergeFrom(new Update(), paramArrayOfByte);
    }

    public final Update clear()
    {
      this.mutations = null;
      this.timelineItemId = null;
      this.userAction = TimelineNano.UserAction.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label82: label97: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof Update))
          return false;
        Update localUpdate = (Update)paramObject;
        if (this.mutations == null)
          if (localUpdate.mutations == null)
          {
            if (this.timelineItemId != null)
              break label82;
            if (localUpdate.timelineItemId != null);
          }
        while (true)
        {
          if (Arrays.equals(this.userAction, localUpdate.userAction))
            break label97;
          do
          {
            do
              return false;
            while (!this.mutations.equals(localUpdate.mutations));
            break;
          }
          while (!this.timelineItemId.equals(localUpdate.timelineItemId));
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
      Mutations localMutations = this.mutations;
      int i = 0;
      if (localMutations != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.mutations);
      if (this.timelineItemId != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.timelineItemId);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int j = arrayOfUserAction.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfUserAction[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.mutations == null)
      {
        i = 0;
        j = 31 * (i + 527);
        if (this.timelineItemId != null)
          break label60;
      }
      int m;
      label60: for (int k = 0; ; k = this.timelineItemId.hashCode())
      {
        m = j + k;
        if (this.userAction != null)
          break label71;
        m *= 31;
        return m;
        i = this.mutations.hashCode();
        break;
      }
      label71: int n = 0;
      label74: int i1;
      if (n < this.userAction.length)
      {
        i1 = m * 31;
        if (this.userAction[n] != null)
          break label117;
      }
      label117: for (int i2 = 0; ; i2 = this.userAction[n].hashCode())
      {
        m = i1 + i2;
        n++;
        break label74;
        break;
      }
    }

    public Update mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.mutations = new Mutations();
          paramCodedInputByteBufferNano.readMessage(this.mutations);
          break;
        case 18:
          this.timelineItemId = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
        if (this.userAction == null);
        for (int k = 0; ; k = this.userAction.length)
        {
          TimelineNano.UserAction[] arrayOfUserAction = new TimelineNano.UserAction[k + j];
          if (this.userAction != null)
            System.arraycopy(this.userAction, 0, arrayOfUserAction, 0, k);
          this.userAction = arrayOfUserAction;
          while (k < -1 + this.userAction.length)
          {
            this.userAction[k] = new TimelineNano.UserAction();
            paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userAction[k] = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.mutations != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.mutations);
      if (this.timelineItemId != null)
        paramCodedOutputByteBufferNano.writeString(2, this.timelineItemId);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int i = arrayOfUserAction.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfUserAction[j]);
      }
    }

    public static final class Mutations extends MessageNano
    {
      public static final Mutations[] EMPTY_ARRAY = new Mutations[0];
      public String[] attachmentDeletions = WireFormatNano.EMPTY_STRING_ARRAY;
      private int cachedSize = -1;
      public TimelineNano.TimelineItem item = null;
      public Integer[] itemFieldDeletions = WireFormatNano.EMPTY_INT_REF_ARRAY;

      public final Mutations clear()
      {
        this.item = null;
        this.itemFieldDeletions = WireFormatNano.EMPTY_INT_REF_ARRAY;
        this.attachmentDeletions = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        while (true)
        {
          return true;
          if (!(paramObject instanceof Mutations))
            return false;
          Mutations localMutations = (Mutations)paramObject;
          if (this.item == null)
            if (localMutations.item != null);
          while ((!Arrays.equals(this.itemFieldDeletions, localMutations.itemFieldDeletions)) || (!Arrays.equals(this.attachmentDeletions, localMutations.attachmentDeletions)))
            do
              return false;
            while (!this.item.equals(localMutations.item));
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
        TimelineNano.TimelineItem localTimelineItem = this.item;
        int i = 0;
        if (localTimelineItem != null)
          i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.item);
        if ((this.itemFieldDeletions != null) && (this.itemFieldDeletions.length > 0))
        {
          int n = 0;
          Integer[] arrayOfInteger = this.itemFieldDeletions;
          int i1 = arrayOfInteger.length;
          for (int i2 = 0; i2 < i1; i2++)
            n += CodedOutputByteBufferNano.computeUInt32SizeNoTag(arrayOfInteger[i2].intValue());
          i = i + n + 1 * this.itemFieldDeletions.length;
        }
        if ((this.attachmentDeletions != null) && (this.attachmentDeletions.length > 0))
        {
          int j = 0;
          String[] arrayOfString = this.attachmentDeletions;
          int k = arrayOfString.length;
          for (int m = 0; m < k; m++)
            j += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString[m]);
          i = i + j + 1 * this.attachmentDeletions.length;
        }
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        if (this.item == null);
        int j;
        for (int i = 0; ; i = this.item.hashCode())
        {
          j = i + 527;
          if (this.itemFieldDeletions != null)
            break;
          j *= 31;
          if (this.attachmentDeletions != null)
            break label107;
          j *= 31;
          return j;
        }
        int k = 0;
        label54: int m;
        if (k < this.itemFieldDeletions.length)
        {
          m = j * 31;
          if (this.itemFieldDeletions[k] != null)
            break label93;
        }
        label93: for (int n = 0; ; n = this.itemFieldDeletions[k].intValue())
        {
          j = m + n;
          k++;
          break label54;
          break;
        }
        label107: int i1 = 0;
        label110: int i2;
        if (i1 < this.attachmentDeletions.length)
        {
          i2 = j * 31;
          if (this.attachmentDeletions[i1] != null)
            break label151;
        }
        label151: for (int i3 = 0; ; i3 = this.attachmentDeletions[i1].hashCode())
        {
          j = i2 + i3;
          i1++;
          break label110;
          break;
        }
      }

      public Mutations mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.item = new TimelineNano.TimelineItem();
            paramCodedInputByteBufferNano.readMessage(this.item);
            break;
          case 16:
            int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 16);
            int n = this.itemFieldDeletions.length;
            Integer[] arrayOfInteger = new Integer[n + m];
            System.arraycopy(this.itemFieldDeletions, 0, arrayOfInteger, 0, n);
            this.itemFieldDeletions = arrayOfInteger;
            while (n < -1 + this.itemFieldDeletions.length)
            {
              this.itemFieldDeletions[n] = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
            this.itemFieldDeletions[n] = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
            break;
          case 26:
          }
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          int k = this.attachmentDeletions.length;
          String[] arrayOfString = new String[k + j];
          System.arraycopy(this.attachmentDeletions, 0, arrayOfString, 0, k);
          this.attachmentDeletions = arrayOfString;
          while (k < -1 + this.attachmentDeletions.length)
          {
            this.attachmentDeletions[k] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
          this.attachmentDeletions[k] = paramCodedInputByteBufferNano.readString();
        }
      }

      public Mutations parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new Mutations().mergeFrom(paramCodedInputByteBufferNano);
      }

      public Mutations parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (Mutations)MessageNano.mergeFrom(new Mutations(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.item != null)
          paramCodedOutputByteBufferNano.writeMessage(1, this.item);
        if (this.itemFieldDeletions != null)
        {
          Integer[] arrayOfInteger = this.itemFieldDeletions;
          int k = arrayOfInteger.length;
          for (int m = 0; m < k; m++)
            paramCodedOutputByteBufferNano.writeUInt32(2, arrayOfInteger[m].intValue());
        }
        if (this.attachmentDeletions != null)
        {
          String[] arrayOfString = this.attachmentDeletions;
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
            paramCodedOutputByteBufferNano.writeString(3, arrayOfString[j]);
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SyncNano
 * JD-Core Version:    0.6.2
 */