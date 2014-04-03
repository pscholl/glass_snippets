package com.google.glass.companion;

import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineNano.UserAction;
import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class Proto
{
  public static final class ApiRequest extends MessageNano
  {
    public static final ApiRequest[] EMPTY_ARRAY = new ApiRequest[0];
    public byte[][] attachmentContent = WireFormatNano.EMPTY_BYTES_ARRAY;
    private int cachedSize = -1;
    public String projectId;
    public TimelineNano.TimelineItem timelineItem = null;
    public String token;
    public int type = -2147483648;

    public static ApiRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ApiRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ApiRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ApiRequest)MessageNano.mergeFrom(new ApiRequest(), paramArrayOfByte);
    }

    public final ApiRequest clear()
    {
      this.projectId = null;
      this.token = null;
      this.type = -2147483648;
      this.timelineItem = null;
      this.attachmentContent = WireFormatNano.EMPTY_BYTES_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label139: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof ApiRequest))
          return false;
        ApiRequest localApiRequest = (ApiRequest)paramObject;
        if (this.projectId == null)
          if (localApiRequest.projectId == null)
          {
            if (this.token != null)
              break label107;
            if (localApiRequest.token == null)
              label49: if (this.type == localApiRequest.type)
              {
                if (this.timelineItem != null)
                  break label124;
                if (localApiRequest.timelineItem != null);
              }
          }
        while (true)
        {
          if (Arrays.equals(this.attachmentContent, localApiRequest.attachmentContent))
            break label139;
          label107: label124: 
          do
          {
            do
            {
              do
                return false;
              while (!this.projectId.equals(localApiRequest.projectId));
              break;
            }
            while (!this.token.equals(localApiRequest.token));
            break label49;
          }
          while (!this.timelineItem.equals(localApiRequest.timelineItem));
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
      String str = this.projectId;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.projectId);
      if (this.token != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.token);
      if (this.type != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.type);
      if (this.timelineItem != null)
        i += CodedOutputByteBufferNano.computeMessageSize(4, this.timelineItem);
      if ((this.attachmentContent != null) && (this.attachmentContent.length > 0))
      {
        int j = 0;
        byte[][] arrayOfByte = this.attachmentContent;
        int k = arrayOfByte.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeBytesSizeNoTag(arrayOfByte[m]);
        i = i + j + 1 * this.attachmentContent.length;
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label57: int i1;
      if (this.projectId == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.token != null)
          break label92;
        k = 0;
        int m = 31 * (31 * (j + k) + this.type);
        TimelineNano.TimelineItem localTimelineItem = this.timelineItem;
        n = 0;
        if (localTimelineItem != null)
          break label103;
        i1 = m + n;
        if (this.attachmentContent != null)
          break label115;
        i1 *= 31;
      }
      while (true)
      {
        return i1;
        i = this.projectId.hashCode();
        break;
        label92: k = this.token.hashCode();
        break label27;
        label103: n = this.timelineItem.hashCode();
        break label57;
        label115: for (int i2 = 0; i2 < this.attachmentContent.length; i2++)
          for (int i3 = 0; i3 < this.attachmentContent[i2].length; i3++)
            i1 = i1 * 31 + this.attachmentContent[i2][i3];
      }
    }

    public ApiRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.projectId = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.token = paramCodedInputByteBufferNano.readString();
          break;
        case 24:
          this.type = paramCodedInputByteBufferNano.readInt32();
          break;
        case 34:
          this.timelineItem = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem);
          break;
        case 42:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
        int k = this.attachmentContent.length;
        byte[][] arrayOfByte = new byte[k + j][];
        System.arraycopy(this.attachmentContent, 0, arrayOfByte, 0, k);
        this.attachmentContent = arrayOfByte;
        while (k < -1 + this.attachmentContent.length)
        {
          this.attachmentContent[k] = paramCodedInputByteBufferNano.readBytes();
          paramCodedInputByteBufferNano.readTag();
          k++;
        }
        this.attachmentContent[k] = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.projectId != null)
        paramCodedOutputByteBufferNano.writeString(1, this.projectId);
      if (this.token != null)
        paramCodedOutputByteBufferNano.writeString(2, this.token);
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(3, this.type);
      if (this.timelineItem != null)
        paramCodedOutputByteBufferNano.writeMessage(4, this.timelineItem);
      if (this.attachmentContent != null)
      {
        byte[][] arrayOfByte = this.attachmentContent;
        int i = arrayOfByte.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeBytes(5, arrayOfByte[j]);
      }
    }

    public final class RequestType
    {
      public static final int DELETE_TIMELINE_ITEM = 1;
      public static final int INSERT_OR_UPDATE_TIMELINE_ITEM;

      public RequestType()
      {
      }
    }
  }

  public static final class ApiResponse extends MessageNano
  {
    public static final ApiResponse[] EMPTY_ARRAY = new ApiResponse[0];
    private int cachedSize = -1;
    public TimelineNano.TimelineItem timelineItem = null;
    public int type = -2147483648;
    public TimelineNano.UserAction userAction = null;

    public static ApiResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ApiResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ApiResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ApiResponse)MessageNano.mergeFrom(new ApiResponse(), paramArrayOfByte);
    }

    public final ApiResponse clear()
    {
      this.type = -2147483648;
      this.timelineItem = null;
      this.userAction = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ApiResponse localApiResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ApiResponse))
          return false;
        localApiResponse = (ApiResponse)paramObject;
        if (this.type != localApiResponse.type)
          break;
        if (this.timelineItem != null)
          break label62;
        if (localApiResponse.timelineItem != null)
          break;
        if (this.userAction != null)
          break label79;
      }
      while (localApiResponse.userAction == null);
      label62: label79: 
      while (!this.userAction.equals(localApiResponse.userAction))
      {
        do
          return false;
        while (!this.timelineItem.equals(localApiResponse.timelineItem));
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
      int i = this.type;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      if (this.timelineItem != null)
        j += CodedOutputByteBufferNano.computeMessageSize(2, this.timelineItem);
      if (this.userAction != null)
        j += CodedOutputByteBufferNano.computeMessageSize(3, this.userAction);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      int j;
      int k;
      int m;
      if (this.timelineItem == null)
      {
        j = 0;
        k = 31 * (i + j);
        TimelineNano.UserAction localUserAction = this.userAction;
        m = 0;
        if (localUserAction != null)
          break label58;
      }
      while (true)
      {
        return k + m;
        j = this.timelineItem.hashCode();
        break;
        label58: m = this.userAction.hashCode();
      }
    }

    public ApiResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.timelineItem = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem);
          break;
        case 26:
        }
        this.userAction = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      if (this.timelineItem != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.timelineItem);
      if (this.userAction != null)
        paramCodedOutputByteBufferNano.writeMessage(3, this.userAction);
    }

    public final class ResponseType
    {
      public static final int USER_ACTION;

      public ResponseType()
      {
      }
    }
  }

  public static final class Command extends MessageNano
  {
    public static final Command[] EMPTY_ARRAY = new Command[0];
    private int cachedSize = -1;
    public int command = -2147483648;

    public static Command parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Command().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Command parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Command)MessageNano.mergeFrom(new Command(), paramArrayOfByte);
    }

    public final Command clear()
    {
      this.command = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Command localCommand;
      do
      {
        return true;
        if (!(paramObject instanceof Command))
          return false;
        localCommand = (Command)paramObject;
      }
      while (this.command == localCommand.command);
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
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.command);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      return 527 + this.command;
    }

    public Command mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.command = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.command);
    }

    public final class CommandType
    {
      public static final int START_DEBUG = 1;
      public static final int STOP_DEBUG = 2;
      public static final int UNPAIR;

      public CommandType()
      {
      }
    }
  }

  public static final class CompanionInfo extends MessageNano
  {
    public static final CompanionInfo[] EMPTY_ARRAY = new CompanionInfo[0];
    private int cachedSize = -1;
    public Long id;
    public Boolean requestLog;
    public Boolean requestNetwork;
    public Integer responseAndroidVersion;
    public Boolean responseIsNetworkOk;
    public String responseLog;

    public static CompanionInfo parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new CompanionInfo().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static CompanionInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (CompanionInfo)MessageNano.mergeFrom(new CompanionInfo(), paramArrayOfByte);
    }

    public final CompanionInfo clear()
    {
      this.id = null;
      this.requestNetwork = null;
      this.responseIsNetworkOk = null;
      this.responseAndroidVersion = null;
      this.requestLog = null;
      this.responseLog = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      CompanionInfo localCompanionInfo;
      label49: label63: label77: label91: 
      do
      {
        return true;
        if (!(paramObject instanceof CompanionInfo))
          return false;
        localCompanionInfo = (CompanionInfo)paramObject;
        if (this.id != null)
          break label107;
        if (localCompanionInfo.id != null)
          break;
        if (this.requestNetwork != null)
          break label124;
        if (localCompanionInfo.requestNetwork != null)
          break;
        if (this.responseIsNetworkOk != null)
          break label141;
        if (localCompanionInfo.responseIsNetworkOk != null)
          break;
        if (this.responseAndroidVersion != null)
          break label158;
        if (localCompanionInfo.responseAndroidVersion != null)
          break;
        if (this.requestLog != null)
          break label175;
        if (localCompanionInfo.requestLog != null)
          break;
        if (this.responseLog != null)
          break label192;
      }
      while (localCompanionInfo.responseLog == null);
      label107: label124: 
      while (!this.responseLog.equals(localCompanionInfo.responseLog))
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
                while (!this.id.equals(localCompanionInfo.id));
                break;
              }
              while (!this.requestNetwork.equals(localCompanionInfo.requestNetwork));
              break label49;
            }
            while (!this.responseIsNetworkOk.equals(localCompanionInfo.responseIsNetworkOk));
            break label63;
          }
          while (!this.responseAndroidVersion.equals(localCompanionInfo.responseAndroidVersion));
          break label77;
        }
        while (!this.requestLog.equals(localCompanionInfo.requestLog));
        break label91;
      }
      label141: label158: label175: label192: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt64Size(1, this.id.longValue());
      if (this.requestNetwork != null)
        i += CodedOutputByteBufferNano.computeBoolSize(2, this.requestNetwork.booleanValue());
      if (this.responseIsNetworkOk != null)
        i += CodedOutputByteBufferNano.computeBoolSize(3, this.responseIsNetworkOk.booleanValue());
      if (this.responseAndroidVersion != null)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.responseAndroidVersion.intValue());
      if (this.requestLog != null)
        i += CodedOutputByteBufferNano.computeBoolSize(5, this.requestLog.booleanValue());
      if (this.responseLog != null)
        i += CodedOutputByteBufferNano.computeStringSize(6, this.responseLog);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 1;
      int j;
      int m;
      label30: int i1;
      label49: int i3;
      label69: label88: int i5;
      int i6;
      if (this.id == null)
      {
        j = 0;
        int k = 31 * (j + 527);
        if (this.requestNetwork != null)
          break label140;
        m = 0;
        int n = 31 * (k + m);
        if (this.responseIsNetworkOk != null)
          break label162;
        i1 = 0;
        int i2 = 31 * (n + i1);
        if (this.responseAndroidVersion != null)
          break label184;
        i3 = 0;
        int i4 = 31 * (i2 + i3);
        if (this.requestLog != null)
          break label196;
        i = 0;
        i5 = 31 * (i4 + i);
        String str = this.responseLog;
        i6 = 0;
        if (str != null)
          break label211;
      }
      while (true)
      {
        return i5 + i6;
        j = (int)(this.id.longValue() ^ this.id.longValue() >>> 32);
        break;
        label140: if (this.requestNetwork.booleanValue())
        {
          m = i;
          break label30;
        }
        m = 2;
        break label30;
        label162: if (this.responseIsNetworkOk.booleanValue())
        {
          i1 = i;
          break label49;
        }
        i1 = 2;
        break label49;
        label184: i3 = this.responseAndroidVersion.intValue();
        break label69;
        label196: if (this.requestLog.booleanValue())
          break label88;
        i = 2;
        break label88;
        label211: i6 = this.responseLog.hashCode();
      }
    }

    public CompanionInfo mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 16:
          this.requestNetwork = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 24:
          this.responseIsNetworkOk = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 32:
          this.responseAndroidVersion = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 40:
          this.requestLog = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 50:
        }
        this.responseLog = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt64(1, this.id.longValue());
      if (this.requestNetwork != null)
        paramCodedOutputByteBufferNano.writeBool(2, this.requestNetwork.booleanValue());
      if (this.responseIsNetworkOk != null)
        paramCodedOutputByteBufferNano.writeBool(3, this.responseIsNetworkOk.booleanValue());
      if (this.responseAndroidVersion != null)
        paramCodedOutputByteBufferNano.writeInt32(4, this.responseAndroidVersion.intValue());
      if (this.requestLog != null)
        paramCodedOutputByteBufferNano.writeBool(5, this.requestLog.booleanValue());
      if (this.responseLog != null)
        paramCodedOutputByteBufferNano.writeString(6, this.responseLog);
    }
  }

  public static final class Envelope extends MessageNano
  {
    public static final Envelope[] EMPTY_ARRAY = new Envelope[0];
    public Proto.ApiRequest apiRequestC2G = null;
    public Proto.ApiResponse apiResponseG2C = null;
    private int cachedSize = -1;
    public Proto.Command command = null;
    public Proto.CompanionInfo companionInfo = null;
    public Proto.Error error = null;
    public Proto.GlassInfoRequest glassInfoRequestC2G = null;
    public Proto.GlassInfoResponse glassInfoResponseG2C = null;
    public Proto.GlassSetupRequest glassSetupRequestC2G = null;
    public Proto.GlassSetupResponse glassSetupResponseG2C = null;
    public Proto.InputBoxRequest inputBoxRequestG2C = null;
    public Proto.InputBoxResponse inputBoxResponseC2G = null;
    public Proto.LocationMessage locationMessageC2G = null;
    public Proto.LocationRequest locationRequestG2C = null;
    public String messageC2G;
    public Proto.MotionEvent motionC2G = null;
    public Proto.NavigationRequest navigationRequestC2G = null;
    public Proto.ScreenShot screenshot = null;
    public Integer serialNumber;
    public String setupWifiC2G;
    public Long timeMillis;
    public TimelineNano.TimelineItem[] timelineItem = TimelineNano.TimelineItem.EMPTY_ARRAY;
    public Proto.TimelineItemResponse[] timelineItemResponseC2G = Proto.TimelineItemResponse.EMPTY_ARRAY;
    public String timezoneC2G;
    public Long uptimeMillis;
    public String urlG2C;
    public Integer version;

    public static Envelope parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Envelope().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Envelope parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Envelope)MessageNano.mergeFrom(new Envelope(), paramArrayOfByte);
    }

    public final Envelope clear()
    {
      this.version = null;
      this.serialNumber = null;
      this.timeMillis = null;
      this.uptimeMillis = null;
      this.timelineItem = TimelineNano.TimelineItem.EMPTY_ARRAY;
      this.timelineItemResponseC2G = Proto.TimelineItemResponse.EMPTY_ARRAY;
      this.locationRequestG2C = null;
      this.locationMessageC2G = null;
      this.messageC2G = null;
      this.timezoneC2G = null;
      this.navigationRequestC2G = null;
      this.urlG2C = null;
      this.setupWifiC2G = null;
      this.companionInfo = null;
      this.error = null;
      this.screenshot = null;
      this.command = null;
      this.apiRequestC2G = null;
      this.apiResponseG2C = null;
      this.motionC2G = null;
      this.glassInfoRequestC2G = null;
      this.glassInfoResponseG2C = null;
      this.inputBoxRequestG2C = null;
      this.inputBoxResponseC2G = null;
      this.glassSetupRequestC2G = null;
      this.glassSetupResponseG2C = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Envelope localEnvelope;
      label49: label63: label77: label119: 
      do
      {
        return true;
        if (!(paramObject instanceof Envelope))
          return false;
        localEnvelope = (Envelope)paramObject;
        if (this.version != null)
          break label387;
        if (localEnvelope.version != null)
          break;
        if (this.serialNumber != null)
          break label404;
        if (localEnvelope.serialNumber != null)
          break;
        if (this.timeMillis != null)
          break label421;
        if (localEnvelope.timeMillis != null)
          break;
        if (this.uptimeMillis != null)
          break label438;
        if (localEnvelope.uptimeMillis != null)
          break;
        if ((!Arrays.equals(this.timelineItem, localEnvelope.timelineItem)) || (!Arrays.equals(this.timelineItemResponseC2G, localEnvelope.timelineItemResponseC2G)))
          break;
        if (this.locationRequestG2C != null)
          break label455;
        if (localEnvelope.locationRequestG2C != null)
          break;
        if (this.locationMessageC2G != null)
          break label472;
        if (localEnvelope.locationMessageC2G != null)
          break;
        if (this.messageC2G != null)
          break label489;
        if (localEnvelope.messageC2G != null)
          break;
        if (this.timezoneC2G != null)
          break label506;
        if (localEnvelope.timezoneC2G != null)
          break;
        if (this.navigationRequestC2G != null)
          break label523;
        if (localEnvelope.navigationRequestC2G != null)
          break;
        if (this.urlG2C != null)
          break label540;
        if (localEnvelope.urlG2C != null)
          break;
        if (this.setupWifiC2G != null)
          break label557;
        if (localEnvelope.setupWifiC2G != null)
          break;
        if (this.companionInfo != null)
          break label574;
        if (localEnvelope.companionInfo != null)
          break;
        if (this.error != null)
          break label591;
        if (localEnvelope.error != null)
          break;
        if (this.screenshot != null)
          break label608;
        if (localEnvelope.screenshot != null)
          break;
        if (this.command != null)
          break label625;
        if (localEnvelope.command != null)
          break;
        if (this.apiRequestC2G != null)
          break label642;
        if (localEnvelope.apiRequestC2G != null)
          break;
        if (this.apiResponseG2C != null)
          break label659;
        if (localEnvelope.apiResponseG2C != null)
          break;
        if (this.motionC2G != null)
          break label676;
        if (localEnvelope.motionC2G != null)
          break;
        if (this.glassInfoRequestC2G != null)
          break label693;
        if (localEnvelope.glassInfoRequestC2G != null)
          break;
        if (this.glassInfoResponseG2C != null)
          break label710;
        if (localEnvelope.glassInfoResponseG2C != null)
          break;
        if (this.inputBoxRequestG2C != null)
          break label727;
        if (localEnvelope.inputBoxRequestG2C != null)
          break;
        if (this.inputBoxResponseC2G != null)
          break label744;
        if (localEnvelope.inputBoxResponseC2G != null)
          break;
        if (this.glassSetupRequestC2G != null)
          break label761;
        if (localEnvelope.glassSetupRequestC2G != null)
          break;
        if (this.glassSetupResponseG2C != null)
          break label778;
      }
      while (localEnvelope.glassSetupResponseG2C == null);
      label133: label147: label161: label175: label189: label203: label217: label231: label245: label506: 
      while (!this.glassSetupResponseG2C.equals(localEnvelope.glassSetupResponseG2C))
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
                                              {
                                                do
                                                {
                                                  do
                                                  {
                                                    do
                                                      return false;
                                                    while (!this.version.equals(localEnvelope.version));
                                                    break;
                                                  }
                                                  while (!this.serialNumber.equals(localEnvelope.serialNumber));
                                                  break label49;
                                                }
                                                while (!this.timeMillis.equals(localEnvelope.timeMillis));
                                                break label63;
                                              }
                                              while (!this.uptimeMillis.equals(localEnvelope.uptimeMillis));
                                              break label77;
                                            }
                                            while (!this.locationRequestG2C.equals(localEnvelope.locationRequestG2C));
                                            break label119;
                                          }
                                          while (!this.locationMessageC2G.equals(localEnvelope.locationMessageC2G));
                                          break label133;
                                        }
                                        while (!this.messageC2G.equals(localEnvelope.messageC2G));
                                        break label147;
                                      }
                                      while (!this.timezoneC2G.equals(localEnvelope.timezoneC2G));
                                      break label161;
                                    }
                                    while (!this.navigationRequestC2G.equals(localEnvelope.navigationRequestC2G));
                                    break label175;
                                  }
                                  while (!this.urlG2C.equals(localEnvelope.urlG2C));
                                  break label189;
                                }
                                while (!this.setupWifiC2G.equals(localEnvelope.setupWifiC2G));
                                break label203;
                              }
                              while (!this.companionInfo.equals(localEnvelope.companionInfo));
                              break label217;
                            }
                            while (!this.error.equals(localEnvelope.error));
                            break label231;
                          }
                          while (!this.screenshot.equals(localEnvelope.screenshot));
                          break label245;
                        }
                        while (!this.command.equals(localEnvelope.command));
                        break label259;
                      }
                      while (!this.apiRequestC2G.equals(localEnvelope.apiRequestC2G));
                      break label273;
                    }
                    while (!this.apiResponseG2C.equals(localEnvelope.apiResponseG2C));
                    break label287;
                  }
                  while (!this.motionC2G.equals(localEnvelope.motionC2G));
                  break label301;
                }
                while (!this.glassInfoRequestC2G.equals(localEnvelope.glassInfoRequestC2G));
                break label315;
              }
              while (!this.glassInfoResponseG2C.equals(localEnvelope.glassInfoResponseG2C));
              break label329;
            }
            while (!this.inputBoxRequestG2C.equals(localEnvelope.inputBoxRequestG2C));
            break label343;
          }
          while (!this.inputBoxResponseC2G.equals(localEnvelope.inputBoxResponseC2G));
          break label357;
        }
        while (!this.glassSetupRequestC2G.equals(localEnvelope.glassSetupRequestC2G));
        break label371;
      }
      label259: label273: label287: label301: label315: label329: label343: label357: label371: label761: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.version.intValue());
      if (this.serialNumber != null)
        i += CodedOutputByteBufferNano.computeUInt32Size(2, this.serialNumber.intValue());
      if (this.timeMillis != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(3, this.timeMillis.longValue());
      if (this.uptimeMillis != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(4, this.uptimeMillis.longValue());
      if (this.timelineItem != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.timelineItem;
        int m = arrayOfTimelineItem.length;
        for (int n = 0; n < m; n++)
          i += CodedOutputByteBufferNano.computeMessageSize(5, arrayOfTimelineItem[n]);
      }
      if (this.locationRequestG2C != null)
        i += CodedOutputByteBufferNano.computeMessageSize(6, this.locationRequestG2C);
      if (this.locationMessageC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(7, this.locationMessageC2G);
      if (this.messageC2G != null)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.messageC2G);
      if (this.timezoneC2G != null)
        i += CodedOutputByteBufferNano.computeStringSize(9, this.timezoneC2G);
      if (this.navigationRequestC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(10, this.navigationRequestC2G);
      if (this.urlG2C != null)
        i += CodedOutputByteBufferNano.computeStringSize(11, this.urlG2C);
      if (this.setupWifiC2G != null)
        i += CodedOutputByteBufferNano.computeStringSize(12, this.setupWifiC2G);
      if (this.companionInfo != null)
        i += CodedOutputByteBufferNano.computeMessageSize(13, this.companionInfo);
      if (this.error != null)
        i += CodedOutputByteBufferNano.computeMessageSize(14, this.error);
      if (this.screenshot != null)
        i += CodedOutputByteBufferNano.computeMessageSize(15, this.screenshot);
      if (this.command != null)
        i += CodedOutputByteBufferNano.computeMessageSize(16, this.command);
      if (this.timelineItemResponseC2G != null)
      {
        Proto.TimelineItemResponse[] arrayOfTimelineItemResponse = this.timelineItemResponseC2G;
        int j = arrayOfTimelineItemResponse.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(17, arrayOfTimelineItemResponse[k]);
      }
      if (this.apiRequestC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(18, this.apiRequestC2G);
      if (this.apiResponseG2C != null)
        i += CodedOutputByteBufferNano.computeMessageSize(19, this.apiResponseG2C);
      if (this.motionC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(20, this.motionC2G);
      if (this.glassInfoRequestC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(21, this.glassInfoRequestC2G);
      if (this.glassInfoResponseG2C != null)
        i += CodedOutputByteBufferNano.computeMessageSize(22, this.glassInfoResponseG2C);
      if (this.inputBoxRequestG2C != null)
        i += CodedOutputByteBufferNano.computeMessageSize(23, this.inputBoxRequestG2C);
      if (this.inputBoxResponseC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(24, this.inputBoxResponseC2G);
      if (this.glassSetupRequestC2G != null)
        i += CodedOutputByteBufferNano.computeMessageSize(25, this.glassSetupRequestC2G);
      if (this.glassSetupResponseG2C != null)
        i += CodedOutputByteBufferNano.computeMessageSize(26, this.glassSetupResponseG2C);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label65: int i3;
      int i11;
      label117: int i13;
      label137: int i15;
      label157: int i17;
      label177: int i19;
      label197: int i21;
      label217: int i23;
      label237: int i25;
      label257: int i27;
      label277: int i29;
      label297: int i31;
      label317: int i33;
      label337: int i35;
      label357: int i37;
      label377: int i39;
      label397: int i41;
      label417: int i43;
      label437: int i45;
      label457: int i47;
      label477: int i48;
      int i49;
      if (this.version == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.serialNumber != null)
          break label518;
        k = 0;
        int m = 31 * (j + k);
        if (this.timeMillis != null)
          break label529;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.uptimeMillis != null)
          break label553;
        i2 = 0;
        i3 = i1 + i2;
        if (this.timelineItem != null)
          break label577;
        i3 *= 31;
        if (this.timelineItemResponseC2G != null)
          break label638;
        i3 *= 31;
        int i10 = i3 * 31;
        if (this.locationRequestG2C != null)
          break label699;
        i11 = 0;
        int i12 = 31 * (i10 + i11);
        if (this.locationMessageC2G != null)
          break label711;
        i13 = 0;
        int i14 = 31 * (i12 + i13);
        if (this.messageC2G != null)
          break label723;
        i15 = 0;
        int i16 = 31 * (i14 + i15);
        if (this.timezoneC2G != null)
          break label735;
        i17 = 0;
        int i18 = 31 * (i16 + i17);
        if (this.navigationRequestC2G != null)
          break label747;
        i19 = 0;
        int i20 = 31 * (i18 + i19);
        if (this.urlG2C != null)
          break label759;
        i21 = 0;
        int i22 = 31 * (i20 + i21);
        if (this.setupWifiC2G != null)
          break label771;
        i23 = 0;
        int i24 = 31 * (i22 + i23);
        if (this.companionInfo != null)
          break label783;
        i25 = 0;
        int i26 = 31 * (i24 + i25);
        if (this.error != null)
          break label795;
        i27 = 0;
        int i28 = 31 * (i26 + i27);
        if (this.screenshot != null)
          break label807;
        i29 = 0;
        int i30 = 31 * (i28 + i29);
        if (this.command != null)
          break label819;
        i31 = 0;
        int i32 = 31 * (i30 + i31);
        if (this.apiRequestC2G != null)
          break label831;
        i33 = 0;
        int i34 = 31 * (i32 + i33);
        if (this.apiResponseG2C != null)
          break label843;
        i35 = 0;
        int i36 = 31 * (i34 + i35);
        if (this.motionC2G != null)
          break label855;
        i37 = 0;
        int i38 = 31 * (i36 + i37);
        if (this.glassInfoRequestC2G != null)
          break label867;
        i39 = 0;
        int i40 = 31 * (i38 + i39);
        if (this.glassInfoResponseG2C != null)
          break label879;
        i41 = 0;
        int i42 = 31 * (i40 + i41);
        if (this.inputBoxRequestG2C != null)
          break label891;
        i43 = 0;
        int i44 = 31 * (i42 + i43);
        if (this.inputBoxResponseC2G != null)
          break label903;
        i45 = 0;
        int i46 = 31 * (i44 + i45);
        if (this.glassSetupRequestC2G != null)
          break label915;
        i47 = 0;
        i48 = 31 * (i46 + i47);
        Proto.GlassSetupResponse localGlassSetupResponse = this.glassSetupResponseG2C;
        i49 = 0;
        if (localGlassSetupResponse != null)
          break label927;
      }
      while (true)
      {
        return i48 + i49;
        i = this.version.intValue();
        break;
        label518: k = this.serialNumber.intValue();
        break label27;
        label529: n = (int)(this.timeMillis.longValue() ^ this.timeMillis.longValue() >>> 32);
        break label45;
        label553: i2 = (int)(this.uptimeMillis.longValue() ^ this.uptimeMillis.longValue() >>> 32);
        break label65;
        label577: int i4 = 0;
        label580: int i5;
        if (i4 < this.timelineItem.length)
        {
          i5 = i3 * 31;
          if (this.timelineItem[i4] != null)
            break label623;
        }
        label623: for (int i6 = 0; ; i6 = this.timelineItem[i4].hashCode())
        {
          i3 = i5 + i6;
          i4++;
          break label580;
          break;
        }
        label638: int i7 = 0;
        label641: int i8;
        if (i7 < this.timelineItemResponseC2G.length)
        {
          i8 = i3 * 31;
          if (this.timelineItemResponseC2G[i7] != null)
            break label684;
        }
        label684: for (int i9 = 0; ; i9 = this.timelineItemResponseC2G[i7].hashCode())
        {
          i3 = i8 + i9;
          i7++;
          break label641;
          break;
        }
        label699: i11 = this.locationRequestG2C.hashCode();
        break label117;
        label711: i13 = this.locationMessageC2G.hashCode();
        break label137;
        label723: i15 = this.messageC2G.hashCode();
        break label157;
        label735: i17 = this.timezoneC2G.hashCode();
        break label177;
        label747: i19 = this.navigationRequestC2G.hashCode();
        break label197;
        label759: i21 = this.urlG2C.hashCode();
        break label217;
        label771: i23 = this.setupWifiC2G.hashCode();
        break label237;
        label783: i25 = this.companionInfo.hashCode();
        break label257;
        label795: i27 = this.error.hashCode();
        break label277;
        label807: i29 = this.screenshot.hashCode();
        break label297;
        label819: i31 = this.command.hashCode();
        break label317;
        label831: i33 = this.apiRequestC2G.hashCode();
        break label337;
        label843: i35 = this.apiResponseG2C.hashCode();
        break label357;
        label855: i37 = this.motionC2G.hashCode();
        break label377;
        label867: i39 = this.glassInfoRequestC2G.hashCode();
        break label397;
        label879: i41 = this.glassInfoResponseG2C.hashCode();
        break label417;
        label891: i43 = this.inputBoxRequestG2C.hashCode();
        break label437;
        label903: i45 = this.inputBoxResponseC2G.hashCode();
        break label457;
        label915: i47 = this.glassSetupRequestC2G.hashCode();
        break label477;
        label927: i49 = this.glassSetupResponseG2C.hashCode();
      }
    }

    public Envelope mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.version = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
          break;
        case 16:
          this.serialNumber = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
          break;
        case 24:
          this.timeMillis = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 32:
          this.uptimeMillis = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 42:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          if (this.timelineItem == null);
          for (int n = 0; ; n = this.timelineItem.length)
          {
            TimelineNano.TimelineItem[] arrayOfTimelineItem = new TimelineNano.TimelineItem[n + m];
            if (this.timelineItem != null)
              System.arraycopy(this.timelineItem, 0, arrayOfTimelineItem, 0, n);
            this.timelineItem = arrayOfTimelineItem;
            while (n < -1 + this.timelineItem.length)
            {
              this.timelineItem[n] = new TimelineNano.TimelineItem();
              paramCodedInputByteBufferNano.readMessage(this.timelineItem[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.timelineItem[n] = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem[n]);
          break;
        case 50:
          this.locationRequestG2C = new Proto.LocationRequest();
          paramCodedInputByteBufferNano.readMessage(this.locationRequestG2C);
          break;
        case 58:
          this.locationMessageC2G = new Proto.LocationMessage();
          paramCodedInputByteBufferNano.readMessage(this.locationMessageC2G);
          break;
        case 66:
          this.messageC2G = paramCodedInputByteBufferNano.readString();
          break;
        case 74:
          this.timezoneC2G = paramCodedInputByteBufferNano.readString();
          break;
        case 82:
          this.navigationRequestC2G = new Proto.NavigationRequest();
          paramCodedInputByteBufferNano.readMessage(this.navigationRequestC2G);
          break;
        case 90:
          this.urlG2C = paramCodedInputByteBufferNano.readString();
          break;
        case 98:
          this.setupWifiC2G = paramCodedInputByteBufferNano.readString();
          break;
        case 106:
          this.companionInfo = new Proto.CompanionInfo();
          paramCodedInputByteBufferNano.readMessage(this.companionInfo);
          break;
        case 114:
          this.error = new Proto.Error();
          paramCodedInputByteBufferNano.readMessage(this.error);
          break;
        case 122:
          this.screenshot = new Proto.ScreenShot();
          paramCodedInputByteBufferNano.readMessage(this.screenshot);
          break;
        case 130:
          this.command = new Proto.Command();
          paramCodedInputByteBufferNano.readMessage(this.command);
          break;
        case 138:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 138);
          if (this.timelineItemResponseC2G == null);
          for (int k = 0; ; k = this.timelineItemResponseC2G.length)
          {
            Proto.TimelineItemResponse[] arrayOfTimelineItemResponse = new Proto.TimelineItemResponse[k + j];
            if (this.timelineItemResponseC2G != null)
              System.arraycopy(this.timelineItemResponseC2G, 0, arrayOfTimelineItemResponse, 0, k);
            this.timelineItemResponseC2G = arrayOfTimelineItemResponse;
            while (k < -1 + this.timelineItemResponseC2G.length)
            {
              this.timelineItemResponseC2G[k] = new Proto.TimelineItemResponse();
              paramCodedInputByteBufferNano.readMessage(this.timelineItemResponseC2G[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.timelineItemResponseC2G[k] = new Proto.TimelineItemResponse();
          paramCodedInputByteBufferNano.readMessage(this.timelineItemResponseC2G[k]);
          break;
        case 146:
          this.apiRequestC2G = new Proto.ApiRequest();
          paramCodedInputByteBufferNano.readMessage(this.apiRequestC2G);
          break;
        case 154:
          this.apiResponseG2C = new Proto.ApiResponse();
          paramCodedInputByteBufferNano.readMessage(this.apiResponseG2C);
          break;
        case 162:
          this.motionC2G = new Proto.MotionEvent();
          paramCodedInputByteBufferNano.readMessage(this.motionC2G);
          break;
        case 170:
          this.glassInfoRequestC2G = new Proto.GlassInfoRequest();
          paramCodedInputByteBufferNano.readMessage(this.glassInfoRequestC2G);
          break;
        case 178:
          this.glassInfoResponseG2C = new Proto.GlassInfoResponse();
          paramCodedInputByteBufferNano.readMessage(this.glassInfoResponseG2C);
          break;
        case 186:
          this.inputBoxRequestG2C = new Proto.InputBoxRequest();
          paramCodedInputByteBufferNano.readMessage(this.inputBoxRequestG2C);
          break;
        case 194:
          this.inputBoxResponseC2G = new Proto.InputBoxResponse();
          paramCodedInputByteBufferNano.readMessage(this.inputBoxResponseC2G);
          break;
        case 202:
          this.glassSetupRequestC2G = new Proto.GlassSetupRequest();
          paramCodedInputByteBufferNano.readMessage(this.glassSetupRequestC2G);
          break;
        case 210:
        }
        this.glassSetupResponseG2C = new Proto.GlassSetupResponse();
        paramCodedInputByteBufferNano.readMessage(this.glassSetupResponseG2C);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeUInt32(1, this.version.intValue());
      if (this.serialNumber != null)
        paramCodedOutputByteBufferNano.writeUInt32(2, this.serialNumber.intValue());
      if (this.timeMillis != null)
        paramCodedOutputByteBufferNano.writeUInt64(3, this.timeMillis.longValue());
      if (this.uptimeMillis != null)
        paramCodedOutputByteBufferNano.writeUInt64(4, this.uptimeMillis.longValue());
      if (this.timelineItem != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.timelineItem;
        int k = arrayOfTimelineItem.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(5, arrayOfTimelineItem[m]);
      }
      if (this.locationRequestG2C != null)
        paramCodedOutputByteBufferNano.writeMessage(6, this.locationRequestG2C);
      if (this.locationMessageC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(7, this.locationMessageC2G);
      if (this.messageC2G != null)
        paramCodedOutputByteBufferNano.writeString(8, this.messageC2G);
      if (this.timezoneC2G != null)
        paramCodedOutputByteBufferNano.writeString(9, this.timezoneC2G);
      if (this.navigationRequestC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(10, this.navigationRequestC2G);
      if (this.urlG2C != null)
        paramCodedOutputByteBufferNano.writeString(11, this.urlG2C);
      if (this.setupWifiC2G != null)
        paramCodedOutputByteBufferNano.writeString(12, this.setupWifiC2G);
      if (this.companionInfo != null)
        paramCodedOutputByteBufferNano.writeMessage(13, this.companionInfo);
      if (this.error != null)
        paramCodedOutputByteBufferNano.writeMessage(14, this.error);
      if (this.screenshot != null)
        paramCodedOutputByteBufferNano.writeMessage(15, this.screenshot);
      if (this.command != null)
        paramCodedOutputByteBufferNano.writeMessage(16, this.command);
      if (this.timelineItemResponseC2G != null)
      {
        Proto.TimelineItemResponse[] arrayOfTimelineItemResponse = this.timelineItemResponseC2G;
        int i = arrayOfTimelineItemResponse.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(17, arrayOfTimelineItemResponse[j]);
      }
      if (this.apiRequestC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(18, this.apiRequestC2G);
      if (this.apiResponseG2C != null)
        paramCodedOutputByteBufferNano.writeMessage(19, this.apiResponseG2C);
      if (this.motionC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(20, this.motionC2G);
      if (this.glassInfoRequestC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(21, this.glassInfoRequestC2G);
      if (this.glassInfoResponseG2C != null)
        paramCodedOutputByteBufferNano.writeMessage(22, this.glassInfoResponseG2C);
      if (this.inputBoxRequestG2C != null)
        paramCodedOutputByteBufferNano.writeMessage(23, this.inputBoxRequestG2C);
      if (this.inputBoxResponseC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(24, this.inputBoxResponseC2G);
      if (this.glassSetupRequestC2G != null)
        paramCodedOutputByteBufferNano.writeMessage(25, this.glassSetupRequestC2G);
      if (this.glassSetupResponseG2C != null)
        paramCodedOutputByteBufferNano.writeMessage(26, this.glassSetupResponseG2C);
    }
  }

  public static final class Error extends MessageNano
  {
    public static final Error[] EMPTY_ARRAY = new Error[0];
    private int cachedSize = -1;
    public int type = -2147483648;

    public static Error parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Error().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Error parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Error)MessageNano.mergeFrom(new Error(), paramArrayOfByte);
    }

    public final Error clear()
    {
      this.type = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Error localError;
      do
      {
        return true;
        if (!(paramObject instanceof Error))
          return false;
        localError = (Error)paramObject;
      }
      while (this.type == localError.type);
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
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      return 527 + this.type;
    }

    public Error mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.type = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.type);
    }

    public final class ErrorType
    {
      public static final int SMS_GOOGLE_VOICE_NEEDS_UPDATE = 2;
      public static final int SMS_GOOGLE_VOICE_NOT_INSTALLED = 1;
      public static final int TETHERING_ERROR_ON_GLASS;

      public ErrorType()
      {
      }
    }
  }

  public static final class GlassInfoRequest extends MessageNano
  {
    public static final GlassInfoRequest[] EMPTY_ARRAY = new GlassInfoRequest[0];
    private int cachedSize = -1;
    public Boolean requestBatteryLevel;
    public Boolean requestDeviceName;
    public Boolean requestStorageInfo;

    public static GlassInfoRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassInfoRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassInfoRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassInfoRequest)MessageNano.mergeFrom(new GlassInfoRequest(), paramArrayOfByte);
    }

    public final GlassInfoRequest clear()
    {
      this.requestBatteryLevel = null;
      this.requestStorageInfo = null;
      this.requestDeviceName = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassInfoRequest localGlassInfoRequest;
      label49: 
      do
      {
        return true;
        if (!(paramObject instanceof GlassInfoRequest))
          return false;
        localGlassInfoRequest = (GlassInfoRequest)paramObject;
        if (this.requestBatteryLevel != null)
          break label65;
        if (localGlassInfoRequest.requestBatteryLevel != null)
          break;
        if (this.requestStorageInfo != null)
          break label82;
        if (localGlassInfoRequest.requestStorageInfo != null)
          break;
        if (this.requestDeviceName != null)
          break label99;
      }
      while (localGlassInfoRequest.requestDeviceName == null);
      label65: label82: label99: 
      while (!this.requestDeviceName.equals(localGlassInfoRequest.requestDeviceName))
      {
        do
        {
          do
            return false;
          while (!this.requestBatteryLevel.equals(localGlassInfoRequest.requestBatteryLevel));
          break;
        }
        while (!this.requestStorageInfo.equals(localGlassInfoRequest.requestStorageInfo));
        break label49;
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
      Boolean localBoolean = this.requestBatteryLevel;
      int i = 0;
      if (localBoolean != null)
        i = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.requestBatteryLevel.booleanValue());
      if (this.requestStorageInfo != null)
        i += CodedOutputByteBufferNano.computeBoolSize(2, this.requestStorageInfo.booleanValue());
      if (this.requestDeviceName != null)
        i += CodedOutputByteBufferNano.computeBoolSize(3, this.requestDeviceName.booleanValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int m;
      int n;
      if (this.requestBatteryLevel == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.requestStorageInfo != null)
          break label75;
        k = 0;
        m = 31 * (j + k);
        Boolean localBoolean = this.requestDeviceName;
        n = 0;
        if (localBoolean != null)
          break label95;
      }
      while (true)
      {
        return m + n;
        if (this.requestBatteryLevel.booleanValue())
        {
          i = 1;
          break;
        }
        i = 2;
        break;
        label75: if (this.requestStorageInfo.booleanValue())
        {
          k = 1;
          break label27;
        }
        k = 2;
        break label27;
        label95: if (this.requestDeviceName.booleanValue())
          n = 1;
        else
          n = 2;
      }
    }

    public GlassInfoRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.requestBatteryLevel = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 16:
          this.requestStorageInfo = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 24:
        }
        this.requestDeviceName = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.requestBatteryLevel != null)
        paramCodedOutputByteBufferNano.writeBool(1, this.requestBatteryLevel.booleanValue());
      if (this.requestStorageInfo != null)
        paramCodedOutputByteBufferNano.writeBool(2, this.requestStorageInfo.booleanValue());
      if (this.requestDeviceName != null)
        paramCodedOutputByteBufferNano.writeBool(3, this.requestDeviceName.booleanValue());
    }
  }

  public static final class GlassInfoResponse extends MessageNano
  {
    public static final GlassInfoResponse[] EMPTY_ARRAY = new GlassInfoResponse[0];
    public Integer batteryLevel;
    private int cachedSize = -1;
    public String deviceName;
    public Long externalStorageAvailableBytes;
    public Long externalStorageTotalBytes;

    public static GlassInfoResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassInfoResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassInfoResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassInfoResponse)MessageNano.mergeFrom(new GlassInfoResponse(), paramArrayOfByte);
    }

    public final GlassInfoResponse clear()
    {
      this.batteryLevel = null;
      this.externalStorageTotalBytes = null;
      this.externalStorageAvailableBytes = null;
      this.deviceName = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassInfoResponse localGlassInfoResponse;
      label49: label63: 
      do
      {
        return true;
        if (!(paramObject instanceof GlassInfoResponse))
          return false;
        localGlassInfoResponse = (GlassInfoResponse)paramObject;
        if (this.batteryLevel != null)
          break label79;
        if (localGlassInfoResponse.batteryLevel != null)
          break;
        if (this.externalStorageTotalBytes != null)
          break label96;
        if (localGlassInfoResponse.externalStorageTotalBytes != null)
          break;
        if (this.externalStorageAvailableBytes != null)
          break label113;
        if (localGlassInfoResponse.externalStorageAvailableBytes != null)
          break;
        if (this.deviceName != null)
          break label130;
      }
      while (localGlassInfoResponse.deviceName == null);
      label79: label96: label113: 
      while (!this.deviceName.equals(localGlassInfoResponse.deviceName))
      {
        do
        {
          do
          {
            do
              return false;
            while (!this.batteryLevel.equals(localGlassInfoResponse.batteryLevel));
            break;
          }
          while (!this.externalStorageTotalBytes.equals(localGlassInfoResponse.externalStorageTotalBytes));
          break label49;
        }
        while (!this.externalStorageAvailableBytes.equals(localGlassInfoResponse.externalStorageAvailableBytes));
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
      Integer localInteger = this.batteryLevel;
      int i = 0;
      if (localInteger != null)
        i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.batteryLevel.intValue());
      if (this.externalStorageTotalBytes != null)
        i += CodedOutputByteBufferNano.computeInt64Size(2, this.externalStorageTotalBytes.longValue());
      if (this.externalStorageAvailableBytes != null)
        i += CodedOutputByteBufferNano.computeInt64Size(3, this.externalStorageAvailableBytes.longValue());
      if (this.deviceName != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.deviceName);
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
      if (this.batteryLevel == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.externalStorageTotalBytes != null)
          break label86;
        k = 0;
        int m = 31 * (j + k);
        if (this.externalStorageAvailableBytes != null)
          break label109;
        n = 0;
        i1 = 31 * (m + n);
        String str = this.deviceName;
        i2 = 0;
        if (str != null)
          break label133;
      }
      while (true)
      {
        return i1 + i2;
        i = this.batteryLevel.intValue();
        break;
        label86: k = (int)(this.externalStorageTotalBytes.longValue() ^ this.externalStorageTotalBytes.longValue() >>> 32);
        break label27;
        label109: n = (int)(this.externalStorageAvailableBytes.longValue() ^ this.externalStorageAvailableBytes.longValue() >>> 32);
        break label45;
        label133: i2 = this.deviceName.hashCode();
      }
    }

    public GlassInfoResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.batteryLevel = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 16:
          this.externalStorageTotalBytes = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 24:
          this.externalStorageAvailableBytes = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 34:
        }
        this.deviceName = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.batteryLevel != null)
        paramCodedOutputByteBufferNano.writeInt32(1, this.batteryLevel.intValue());
      if (this.externalStorageTotalBytes != null)
        paramCodedOutputByteBufferNano.writeInt64(2, this.externalStorageTotalBytes.longValue());
      if (this.externalStorageAvailableBytes != null)
        paramCodedOutputByteBufferNano.writeInt64(3, this.externalStorageAvailableBytes.longValue());
      if (this.deviceName != null)
        paramCodedOutputByteBufferNano.writeString(4, this.deviceName);
    }
  }

  public static final class GlassSetupRequest extends MessageNano
  {
    public static final GlassSetupRequest[] EMPTY_ARRAY = new GlassSetupRequest[0];
    private int cachedSize = -1;
    public String setupString;

    public static GlassSetupRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassSetupRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassSetupRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassSetupRequest)MessageNano.mergeFrom(new GlassSetupRequest(), paramArrayOfByte);
    }

    public final GlassSetupRequest clear()
    {
      this.setupString = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassSetupRequest localGlassSetupRequest;
      do
      {
        return true;
        if (!(paramObject instanceof GlassSetupRequest))
          return false;
        localGlassSetupRequest = (GlassSetupRequest)paramObject;
        if (this.setupString != null)
          break;
      }
      while (localGlassSetupRequest.setupString == null);
      return false;
      return this.setupString.equals(localGlassSetupRequest.setupString);
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.setupString;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.setupString);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.setupString == null);
      for (int i = 0; ; i = this.setupString.hashCode())
        return i + 527;
    }

    public GlassSetupRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.setupString = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.setupString != null)
        paramCodedOutputByteBufferNano.writeString(1, this.setupString);
    }
  }

  public static final class GlassSetupResponse extends MessageNano
  {
    public static final GlassSetupResponse[] EMPTY_ARRAY = new GlassSetupResponse[0];
    private int cachedSize = -1;
    public int setupStatus = -2147483648;

    public static GlassSetupResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassSetupResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassSetupResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassSetupResponse)MessageNano.mergeFrom(new GlassSetupResponse(), paramArrayOfByte);
    }

    public final GlassSetupResponse clear()
    {
      this.setupStatus = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassSetupResponse localGlassSetupResponse;
      do
      {
        return true;
        if (!(paramObject instanceof GlassSetupResponse))
          return false;
        localGlassSetupResponse = (GlassSetupResponse)paramObject;
      }
      while (this.setupStatus == localGlassSetupResponse.setupStatus);
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
      int i = this.setupStatus;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.setupStatus);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      return 527 + this.setupStatus;
    }

    public GlassSetupResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.setupStatus = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.setupStatus != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.setupStatus);
    }

    public final class SetupStatus
    {
      public static final int FAILED = 2;
      public static final int OK = 1;

      public SetupStatus()
      {
      }
    }
  }

  public static final class InputBoxRequest extends MessageNano
  {
    public static final InputBoxRequest[] EMPTY_ARRAY = new InputBoxRequest[0];
    private int cachedSize = -1;
    public Boolean dismissInputBox;
    public byte[] handlerObject;
    public String hintText;
    public Integer inputType;
    public String summaryText;

    public static InputBoxRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new InputBoxRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static InputBoxRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (InputBoxRequest)MessageNano.mergeFrom(new InputBoxRequest(), paramArrayOfByte);
    }

    public final InputBoxRequest clear()
    {
      this.dismissInputBox = null;
      this.inputType = null;
      this.summaryText = null;
      this.hintText = null;
      this.handlerObject = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label144: label159: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof InputBoxRequest))
          return false;
        InputBoxRequest localInputBoxRequest = (InputBoxRequest)paramObject;
        if (this.dismissInputBox == null)
          if (localInputBoxRequest.dismissInputBox == null)
          {
            if (this.inputType != null)
              break label110;
            if (localInputBoxRequest.inputType == null)
            {
              label49: if (this.summaryText != null)
                break label127;
              if (localInputBoxRequest.summaryText == null)
              {
                label63: if (this.hintText != null)
                  break label144;
                if (localInputBoxRequest.hintText != null);
              }
            }
          }
        while (true)
        {
          if (Arrays.equals(this.handlerObject, localInputBoxRequest.handlerObject))
            break label159;
          label110: label127: 
          do
          {
            do
            {
              do
              {
                do
                  return false;
                while (!this.dismissInputBox.equals(localInputBoxRequest.dismissInputBox));
                break;
              }
              while (!this.inputType.equals(localInputBoxRequest.inputType));
              break label49;
            }
            while (!this.summaryText.equals(localInputBoxRequest.summaryText));
            break label63;
          }
          while (!this.hintText.equals(localInputBoxRequest.hintText));
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
      Boolean localBoolean = this.dismissInputBox;
      int i = 0;
      if (localBoolean != null)
        i = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.dismissInputBox.booleanValue());
      if (this.inputType != null)
        i += CodedOutputByteBufferNano.computeInt32Size(2, this.inputType.intValue());
      if (this.summaryText != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.summaryText);
      if (this.hintText != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.hintText);
      if (this.handlerObject != null)
        i += CodedOutputByteBufferNano.computeBytesSize(5, this.handlerObject);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label69: int i3;
      if (this.dismissInputBox == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.inputType != null)
          break label113;
        k = 0;
        int m = 31 * (j + k);
        if (this.summaryText != null)
          break label124;
        n = 0;
        int i1 = 31 * (m + n);
        String str = this.hintText;
        i2 = 0;
        if (str != null)
          break label136;
        i3 = i1 + i2;
        if (this.handlerObject != null)
          break label148;
        i3 *= 31;
      }
      while (true)
      {
        return i3;
        if (this.dismissInputBox.booleanValue())
        {
          i = 1;
          break;
        }
        i = 2;
        break;
        label113: k = this.inputType.intValue();
        break label27;
        label124: n = this.summaryText.hashCode();
        break label45;
        label136: i2 = this.hintText.hashCode();
        break label69;
        label148: for (int i4 = 0; i4 < this.handlerObject.length; i4++)
          i3 = i3 * 31 + this.handlerObject[i4];
      }
    }

    public InputBoxRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.dismissInputBox = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 16:
          this.inputType = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 26:
          this.summaryText = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.hintText = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
        }
        this.handlerObject = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.dismissInputBox != null)
        paramCodedOutputByteBufferNano.writeBool(1, this.dismissInputBox.booleanValue());
      if (this.inputType != null)
        paramCodedOutputByteBufferNano.writeInt32(2, this.inputType.intValue());
      if (this.summaryText != null)
        paramCodedOutputByteBufferNano.writeString(3, this.summaryText);
      if (this.hintText != null)
        paramCodedOutputByteBufferNano.writeString(4, this.hintText);
      if (this.handlerObject != null)
        paramCodedOutputByteBufferNano.writeBytes(5, this.handlerObject);
    }
  }

  public static final class InputBoxResponse extends MessageNano
  {
    public static final InputBoxResponse[] EMPTY_ARRAY = new InputBoxResponse[0];
    private int cachedSize = -1;
    public byte[] handlerObject;
    public String response;

    public static InputBoxResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new InputBoxResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static InputBoxResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (InputBoxResponse)MessageNano.mergeFrom(new InputBoxResponse(), paramArrayOfByte);
    }

    public final InputBoxResponse clear()
    {
      this.response = null;
      this.handlerObject = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof InputBoxResponse))
          return false;
        InputBoxResponse localInputBoxResponse = (InputBoxResponse)paramObject;
        if (this.response == null)
          if (localInputBoxResponse.response != null);
        while (!Arrays.equals(this.handlerObject, localInputBoxResponse.handlerObject))
          do
            return false;
          while (!this.response.equals(localInputBoxResponse.response));
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
      String str = this.response;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.response);
      if (this.handlerObject != null)
        i += CodedOutputByteBufferNano.computeBytesSize(2, this.handlerObject);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.response == null)
      {
        i = 0;
        j = i + 527;
        if (this.handlerObject != null)
          break label40;
        j *= 31;
      }
      while (true)
      {
        return j;
        i = this.response.hashCode();
        break;
        label40: for (int k = 0; k < this.handlerObject.length; k++)
          j = j * 31 + this.handlerObject[k];
      }
    }

    public InputBoxResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.response = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
        }
        this.handlerObject = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.response != null)
        paramCodedOutputByteBufferNano.writeString(1, this.response);
      if (this.handlerObject != null)
        paramCodedOutputByteBufferNano.writeBytes(2, this.handlerObject);
    }
  }

  public static final class Location extends MessageNano
  {
    public static final Location[] EMPTY_ARRAY = new Location[0];
    public Float accuracy;
    public Double altitude;
    public Float bearing;
    private int cachedSize = -1;
    public Double latitude;
    public String levelId;
    public Integer levelNumberE3;
    public Double longitude;
    public Integer satellitesUsedInFix;
    public Float speed;
    public Long time;
    public Integer visibleSatellites;

    public static Location parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Location().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Location parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Location)MessageNano.mergeFrom(new Location(), paramArrayOfByte);
    }

    public final Location clear()
    {
      this.latitude = null;
      this.longitude = null;
      this.accuracy = null;
      this.altitude = null;
      this.bearing = null;
      this.speed = null;
      this.time = null;
      this.satellitesUsedInFix = null;
      this.visibleSatellites = null;
      this.levelId = null;
      this.levelNumberE3 = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Location localLocation;
      label49: label63: label77: label91: label105: label119: 
      do
      {
        return true;
        if (!(paramObject instanceof Location))
          return false;
        localLocation = (Location)paramObject;
        if (this.latitude != null)
          break label177;
        if (localLocation.latitude != null)
          break;
        if (this.longitude != null)
          break label194;
        if (localLocation.longitude != null)
          break;
        if (this.accuracy != null)
          break label211;
        if (localLocation.accuracy != null)
          break;
        if (this.altitude != null)
          break label228;
        if (localLocation.altitude != null)
          break;
        if (this.bearing != null)
          break label245;
        if (localLocation.bearing != null)
          break;
        if (this.speed != null)
          break label262;
        if (localLocation.speed != null)
          break;
        if (this.time != null)
          break label279;
        if (localLocation.time != null)
          break;
        if (this.satellitesUsedInFix != null)
          break label296;
        if (localLocation.satellitesUsedInFix != null)
          break;
        if (this.visibleSatellites != null)
          break label313;
        if (localLocation.visibleSatellites != null)
          break;
        if (this.levelId != null)
          break label330;
        if (localLocation.levelId != null)
          break;
        if (this.levelNumberE3 != null)
          break label347;
      }
      while (localLocation.levelNumberE3 == null);
      label133: label147: label161: label177: label194: label211: label228: label245: 
      while (!this.levelNumberE3.equals(localLocation.levelNumberE3))
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
                          while (!this.latitude.equals(localLocation.latitude));
                          break;
                        }
                        while (!this.longitude.equals(localLocation.longitude));
                        break label49;
                      }
                      while (!this.accuracy.equals(localLocation.accuracy));
                      break label63;
                    }
                    while (!this.altitude.equals(localLocation.altitude));
                    break label77;
                  }
                  while (!this.bearing.equals(localLocation.bearing));
                  break label91;
                }
                while (!this.speed.equals(localLocation.speed));
                break label105;
              }
              while (!this.time.equals(localLocation.time));
              break label119;
            }
            while (!this.satellitesUsedInFix.equals(localLocation.satellitesUsedInFix));
            break label133;
          }
          while (!this.visibleSatellites.equals(localLocation.visibleSatellites));
          break label147;
        }
        while (!this.levelId.equals(localLocation.levelId));
        break label161;
      }
      label262: label279: label296: label313: label330: label347: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      Double localDouble = this.latitude;
      int i = 0;
      if (localDouble != null)
        i = 0 + CodedOutputByteBufferNano.computeDoubleSize(1, this.latitude.doubleValue());
      if (this.longitude != null)
        i += CodedOutputByteBufferNano.computeDoubleSize(2, this.longitude.doubleValue());
      if (this.accuracy != null)
        i += CodedOutputByteBufferNano.computeFloatSize(3, this.accuracy.floatValue());
      if (this.altitude != null)
        i += CodedOutputByteBufferNano.computeDoubleSize(4, this.altitude.doubleValue());
      if (this.bearing != null)
        i += CodedOutputByteBufferNano.computeFloatSize(5, this.bearing.floatValue());
      if (this.speed != null)
        i += CodedOutputByteBufferNano.computeFloatSize(6, this.speed.floatValue());
      if (this.time != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(7, this.time.longValue());
      if (this.satellitesUsedInFix != null)
        i += CodedOutputByteBufferNano.computeInt32Size(8, this.satellitesUsedInFix.intValue());
      if (this.visibleSatellites != null)
        i += CodedOutputByteBufferNano.computeInt32Size(9, this.visibleSatellites.intValue());
      if (this.levelId != null)
        i += CodedOutputByteBufferNano.computeStringSize(10, this.levelId);
      if (this.levelNumberE3 != null)
        i += CodedOutputByteBufferNano.computeInt32Size(11, this.levelNumberE3.intValue());
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
      label105: int i8;
      label125: int i10;
      label145: int i12;
      label165: int i14;
      label185: int i15;
      int i16;
      if (this.latitude == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.longitude != null)
          break label244;
        k = 0;
        int m = 31 * (j + k);
        if (this.accuracy != null)
          break label273;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.altitude != null)
          break label288;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.bearing != null)
          break label318;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.speed != null)
          break label333;
        i6 = 0;
        int i7 = 31 * (i5 + i6);
        if (this.time != null)
          break label348;
        i8 = 0;
        int i9 = 31 * (i7 + i8);
        if (this.satellitesUsedInFix != null)
          break label372;
        i10 = 0;
        int i11 = 31 * (i9 + i10);
        if (this.visibleSatellites != null)
          break label384;
        i12 = 0;
        int i13 = 31 * (i11 + i12);
        if (this.levelId != null)
          break label396;
        i14 = 0;
        i15 = 31 * (i13 + i14);
        Integer localInteger = this.levelNumberE3;
        i16 = 0;
        if (localInteger != null)
          break label408;
      }
      while (true)
      {
        return i15 + i16;
        i = (int)(Double.doubleToLongBits(this.latitude.doubleValue()) ^ Double.doubleToLongBits(this.latitude.doubleValue()) >>> 32);
        break;
        label244: k = (int)(Double.doubleToLongBits(this.longitude.doubleValue()) ^ Double.doubleToLongBits(this.longitude.doubleValue()) >>> 32);
        break label27;
        label273: n = Float.floatToIntBits(this.accuracy.floatValue());
        break label45;
        label288: i2 = (int)(Double.doubleToLongBits(this.altitude.doubleValue()) ^ Double.doubleToLongBits(this.altitude.doubleValue()) >>> 32);
        break label65;
        label318: i4 = Float.floatToIntBits(this.bearing.floatValue());
        break label85;
        label333: i6 = Float.floatToIntBits(this.speed.floatValue());
        break label105;
        label348: i8 = (int)(this.time.longValue() ^ this.time.longValue() >>> 32);
        break label125;
        label372: i10 = this.satellitesUsedInFix.intValue();
        break label145;
        label384: i12 = this.visibleSatellites.intValue();
        break label165;
        label396: i14 = this.levelId.hashCode();
        break label185;
        label408: i16 = this.levelNumberE3.intValue();
      }
    }

    public Location mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        case 9:
          this.latitude = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 17:
          this.longitude = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 29:
          this.accuracy = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 33:
          this.altitude = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 45:
          this.bearing = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 53:
          this.speed = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 56:
          this.time = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 64:
          this.satellitesUsedInFix = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 72:
          this.visibleSatellites = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 82:
          this.levelId = paramCodedInputByteBufferNano.readString();
          break;
        case 88:
        }
        this.levelNumberE3 = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.latitude != null)
        paramCodedOutputByteBufferNano.writeDouble(1, this.latitude.doubleValue());
      if (this.longitude != null)
        paramCodedOutputByteBufferNano.writeDouble(2, this.longitude.doubleValue());
      if (this.accuracy != null)
        paramCodedOutputByteBufferNano.writeFloat(3, this.accuracy.floatValue());
      if (this.altitude != null)
        paramCodedOutputByteBufferNano.writeDouble(4, this.altitude.doubleValue());
      if (this.bearing != null)
        paramCodedOutputByteBufferNano.writeFloat(5, this.bearing.floatValue());
      if (this.speed != null)
        paramCodedOutputByteBufferNano.writeFloat(6, this.speed.floatValue());
      if (this.time != null)
        paramCodedOutputByteBufferNano.writeUInt64(7, this.time.longValue());
      if (this.satellitesUsedInFix != null)
        paramCodedOutputByteBufferNano.writeInt32(8, this.satellitesUsedInFix.intValue());
      if (this.visibleSatellites != null)
        paramCodedOutputByteBufferNano.writeInt32(9, this.visibleSatellites.intValue());
      if (this.levelId != null)
        paramCodedOutputByteBufferNano.writeString(10, this.levelId);
      if (this.levelNumberE3 != null)
        paramCodedOutputByteBufferNano.writeInt32(11, this.levelNumberE3.intValue());
    }
  }

  public static final class LocationMessage extends MessageNano
  {
    public static final LocationMessage[] EMPTY_ARRAY = new LocationMessage[0];
    private int cachedSize = -1;
    public Proto.Location location = null;
    public String provider;
    public String receiver;
    public Integer status;
    public int type = -2147483648;

    public static LocationMessage parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LocationMessage().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LocationMessage parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LocationMessage)MessageNano.mergeFrom(new LocationMessage(), paramArrayOfByte);
    }

    public final LocationMessage clear()
    {
      this.type = -2147483648;
      this.provider = null;
      this.location = null;
      this.status = null;
      this.receiver = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LocationMessage localLocationMessage;
      label60: label74: 
      do
      {
        return true;
        if (!(paramObject instanceof LocationMessage))
          return false;
        localLocationMessage = (LocationMessage)paramObject;
        if (this.type != localLocationMessage.type)
          break;
        if (this.provider != null)
          break label90;
        if (localLocationMessage.provider != null)
          break;
        if (this.location != null)
          break label107;
        if (localLocationMessage.location != null)
          break;
        if (this.status != null)
          break label124;
        if (localLocationMessage.status != null)
          break;
        if (this.receiver != null)
          break label141;
      }
      while (localLocationMessage.receiver == null);
      label90: label107: label124: 
      while (!this.receiver.equals(localLocationMessage.receiver))
      {
        do
        {
          do
          {
            do
              return false;
            while (!this.provider.equals(localLocationMessage.provider));
            break;
          }
          while (!this.location.equals(localLocationMessage.location));
          break label60;
        }
        while (!this.status.equals(localLocationMessage.status));
        break label74;
      }
      label141: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type) + CodedOutputByteBufferNano.computeStringSize(2, this.provider);
      if (this.location != null)
        i += CodedOutputByteBufferNano.computeMessageSize(3, this.location);
      if (this.status != null)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.status.intValue());
      if (this.receiver != null)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.receiver);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      int j;
      int m;
      label38: int i1;
      label57: int i2;
      int i3;
      if (this.provider == null)
      {
        j = 0;
        int k = 31 * (i + j);
        if (this.location != null)
          break label98;
        m = 0;
        int n = 31 * (k + m);
        if (this.status != null)
          break label110;
        i1 = 0;
        i2 = 31 * (n + i1);
        String str = this.receiver;
        i3 = 0;
        if (str != null)
          break label122;
      }
      while (true)
      {
        return i2 + i3;
        j = this.provider.hashCode();
        break;
        label98: m = this.location.hashCode();
        break label38;
        label110: i1 = this.status.intValue();
        break label57;
        label122: i3 = this.receiver.hashCode();
      }
    }

    public LocationMessage mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.provider = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.location = new Proto.Location();
          paramCodedInputByteBufferNano.readMessage(this.location);
          break;
        case 32:
          this.status = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 42:
        }
        this.receiver = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      paramCodedOutputByteBufferNano.writeString(2, this.provider);
      if (this.location != null)
        paramCodedOutputByteBufferNano.writeMessage(3, this.location);
      if (this.status != null)
        paramCodedOutputByteBufferNano.writeInt32(4, this.status.intValue());
      if (this.receiver != null)
        paramCodedOutputByteBufferNano.writeString(5, this.receiver);
    }

    public final class MessageType
    {
      public static final int LOCATION_CHANGED = 0;
      public static final int PROVIDER_DISABLED = 1;
      public static final int PROVIDER_ENABLED = 2;
      public static final int STATUS_CHANGED = 3;

      public MessageType()
      {
      }
    }
  }

  public static final class LocationRequest extends MessageNano
  {
    public static final LocationRequest[] EMPTY_ARRAY = new LocationRequest[0];
    private int cachedSize = -1;
    public Long fastestInterval;
    public Float minDistance;
    public Long minTime;
    public int priority = -2147483648;
    public String provider;
    public Boolean sendLastKnownLocation;
    public int type = -2147483648;

    public static LocationRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LocationRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LocationRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LocationRequest)MessageNano.mergeFrom(new LocationRequest(), paramArrayOfByte);
    }

    public final LocationRequest clear()
    {
      this.type = -2147483648;
      this.provider = null;
      this.minTime = null;
      this.minDistance = null;
      this.sendLastKnownLocation = null;
      this.priority = -2147483648;
      this.fastestInterval = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LocationRequest localLocationRequest;
      label60: label74: label88: 
      do
      {
        return true;
        if (!(paramObject instanceof LocationRequest))
          return false;
        localLocationRequest = (LocationRequest)paramObject;
        if (this.type != localLocationRequest.type)
          break;
        if (this.provider != null)
          break label115;
        if (localLocationRequest.provider != null)
          break;
        if (this.minTime != null)
          break label132;
        if (localLocationRequest.minTime != null)
          break;
        if (this.minDistance != null)
          break label149;
        if (localLocationRequest.minDistance != null)
          break;
        if (this.sendLastKnownLocation != null)
          break label166;
        if (localLocationRequest.sendLastKnownLocation != null)
          break;
        if (this.priority != localLocationRequest.priority)
          break;
        if (this.fastestInterval != null)
          break label183;
      }
      while (localLocationRequest.fastestInterval == null);
      label115: 
      while (!this.fastestInterval.equals(localLocationRequest.fastestInterval))
      {
        do
        {
          do
          {
            do
            {
              do
                return false;
              while (!this.provider.equals(localLocationRequest.provider));
              break;
            }
            while (!this.minTime.equals(localLocationRequest.minTime));
            break label60;
          }
          while (!this.minDistance.equals(localLocationRequest.minDistance));
          break label74;
        }
        while (!this.sendLastKnownLocation.equals(localLocationRequest.sendLastKnownLocation));
        break label88;
      }
      label132: label149: label166: label183: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type) + CodedOutputByteBufferNano.computeStringSize(2, this.provider);
      if (this.minTime != null)
        i += CodedOutputByteBufferNano.computeInt64Size(3, this.minTime.longValue());
      if (this.minDistance != null)
        i += CodedOutputByteBufferNano.computeFloatSize(4, this.minDistance.floatValue());
      if (this.sendLastKnownLocation != null)
        i += CodedOutputByteBufferNano.computeBoolSize(5, this.sendLastKnownLocation.booleanValue());
      if (this.priority != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(6, this.priority);
      if (this.fastestInterval != null)
        i += CodedOutputByteBufferNano.computeInt64Size(7, this.fastestInterval.longValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      int j;
      int m;
      label38: int i1;
      label57: int i3;
      label77: int i4;
      int i5;
      if (this.provider == null)
      {
        j = 0;
        int k = 31 * (i + j);
        if (this.minTime != null)
          break label126;
        m = 0;
        int n = 31 * (k + m);
        if (this.minDistance != null)
          break label150;
        i1 = 0;
        int i2 = 31 * (n + i1);
        if (this.sendLastKnownLocation != null)
          break label165;
        i3 = 0;
        i4 = 31 * (31 * (i2 + i3) + this.priority);
        Long localLong = this.fastestInterval;
        i5 = 0;
        if (localLong != null)
          break label187;
      }
      while (true)
      {
        return i4 + i5;
        j = this.provider.hashCode();
        break;
        label126: m = (int)(this.minTime.longValue() ^ this.minTime.longValue() >>> 32);
        break label38;
        label150: i1 = Float.floatToIntBits(this.minDistance.floatValue());
        break label57;
        label165: if (this.sendLastKnownLocation.booleanValue())
        {
          i3 = 1;
          break label77;
        }
        i3 = 2;
        break label77;
        label187: i5 = (int)(this.fastestInterval.longValue() ^ this.fastestInterval.longValue() >>> 32);
      }
    }

    public LocationRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.provider = paramCodedInputByteBufferNano.readString();
          break;
        case 24:
          this.minTime = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
          break;
        case 37:
          this.minDistance = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 40:
          this.sendLastKnownLocation = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 48:
          this.priority = paramCodedInputByteBufferNano.readInt32();
          break;
        case 56:
        }
        this.fastestInterval = Long.valueOf(paramCodedInputByteBufferNano.readInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      paramCodedOutputByteBufferNano.writeString(2, this.provider);
      if (this.minTime != null)
        paramCodedOutputByteBufferNano.writeInt64(3, this.minTime.longValue());
      if (this.minDistance != null)
        paramCodedOutputByteBufferNano.writeFloat(4, this.minDistance.floatValue());
      if (this.sendLastKnownLocation != null)
        paramCodedOutputByteBufferNano.writeBool(5, this.sendLastKnownLocation.booleanValue());
      if (this.priority != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(6, this.priority);
      if (this.fastestInterval != null)
        paramCodedOutputByteBufferNano.writeInt64(7, this.fastestInterval.longValue());
    }

    public final class Priority
    {
      public static final int PRIORITY_BALANCED_POWER_ACCURACY = 2;
      public static final int PRIORITY_HIGH_ACCURACY = 1;
      public static final int PRIORITY_UNKNOWN;

      public Priority()
      {
      }
    }

    public final class RequestType
    {
      public static final int START_LISTENING = 0;
      public static final int STOP_LISTENING = 1;

      public RequestType()
      {
      }
    }
  }

  public static final class MotionEvent extends MessageNano
  {
    public static final MotionEvent[] EMPTY_ARRAY = new MotionEvent[0];
    public Integer action;
    public Integer buttonState;
    private int cachedSize = -1;
    public Integer deviceId;
    public Long downTime;
    public Integer edgeFlags;
    public Long eventTime;
    public Integer flags;
    public Integer metaState;
    public PointerCoords[] pointerCoords = PointerCoords.EMPTY_ARRAY;
    public Integer pointerCount;
    public PointerProperties[] pointerProperties = PointerProperties.EMPTY_ARRAY;
    public Integer source;
    public Float xPrecision;
    public Float yPrecision;

    public static MotionEvent parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MotionEvent().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MotionEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MotionEvent)MessageNano.mergeFrom(new MotionEvent(), paramArrayOfByte);
    }

    public final MotionEvent clear()
    {
      this.downTime = null;
      this.eventTime = null;
      this.action = null;
      this.pointerCount = null;
      this.pointerProperties = PointerProperties.EMPTY_ARRAY;
      this.pointerCoords = PointerCoords.EMPTY_ARRAY;
      this.metaState = null;
      this.buttonState = null;
      this.xPrecision = null;
      this.yPrecision = null;
      this.deviceId = null;
      this.edgeFlags = null;
      this.source = null;
      this.flags = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MotionEvent localMotionEvent;
      label49: label63: label77: label119: 
      do
      {
        return true;
        if (!(paramObject instanceof MotionEvent))
          return false;
        localMotionEvent = (MotionEvent)paramObject;
        if (this.downTime != null)
          break label219;
        if (localMotionEvent.downTime != null)
          break;
        if (this.eventTime != null)
          break label236;
        if (localMotionEvent.eventTime != null)
          break;
        if (this.action != null)
          break label253;
        if (localMotionEvent.action != null)
          break;
        if (this.pointerCount != null)
          break label270;
        if (localMotionEvent.pointerCount != null)
          break;
        if ((!Arrays.equals(this.pointerProperties, localMotionEvent.pointerProperties)) || (!Arrays.equals(this.pointerCoords, localMotionEvent.pointerCoords)))
          break;
        if (this.metaState != null)
          break label287;
        if (localMotionEvent.metaState != null)
          break;
        if (this.buttonState != null)
          break label304;
        if (localMotionEvent.buttonState != null)
          break;
        if (this.xPrecision != null)
          break label321;
        if (localMotionEvent.xPrecision != null)
          break;
        if (this.yPrecision != null)
          break label338;
        if (localMotionEvent.yPrecision != null)
          break;
        if (this.deviceId != null)
          break label355;
        if (localMotionEvent.deviceId != null)
          break;
        if (this.edgeFlags != null)
          break label372;
        if (localMotionEvent.edgeFlags != null)
          break;
        if (this.source != null)
          break label389;
        if (localMotionEvent.source != null)
          break;
        if (this.flags != null)
          break label406;
      }
      while (localMotionEvent.flags == null);
      label133: label147: label161: label175: label189: label203: label219: label236: label253: 
      while (!this.flags.equals(localMotionEvent.flags))
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
                          {
                            do
                              return false;
                            while (!this.downTime.equals(localMotionEvent.downTime));
                            break;
                          }
                          while (!this.eventTime.equals(localMotionEvent.eventTime));
                          break label49;
                        }
                        while (!this.action.equals(localMotionEvent.action));
                        break label63;
                      }
                      while (!this.pointerCount.equals(localMotionEvent.pointerCount));
                      break label77;
                    }
                    while (!this.metaState.equals(localMotionEvent.metaState));
                    break label119;
                  }
                  while (!this.buttonState.equals(localMotionEvent.buttonState));
                  break label133;
                }
                while (!this.xPrecision.equals(localMotionEvent.xPrecision));
                break label147;
              }
              while (!this.yPrecision.equals(localMotionEvent.yPrecision));
              break label161;
            }
            while (!this.deviceId.equals(localMotionEvent.deviceId));
            break label175;
          }
          while (!this.edgeFlags.equals(localMotionEvent.edgeFlags));
          break label189;
        }
        while (!this.source.equals(localMotionEvent.source));
        break label203;
      }
      label270: label287: label304: label321: label338: label355: label372: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      Long localLong = this.downTime;
      int i = 0;
      if (localLong != null)
        i = 0 + CodedOutputByteBufferNano.computeUInt64Size(1, this.downTime.longValue());
      if (this.eventTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(2, this.eventTime.longValue());
      if (this.action != null)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.action.intValue());
      if (this.pointerCount != null)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.pointerCount.intValue());
      if (this.pointerProperties != null)
      {
        PointerProperties[] arrayOfPointerProperties = this.pointerProperties;
        int m = arrayOfPointerProperties.length;
        for (int n = 0; n < m; n++)
          i += CodedOutputByteBufferNano.computeMessageSize(5, arrayOfPointerProperties[n]);
      }
      if (this.pointerCoords != null)
      {
        PointerCoords[] arrayOfPointerCoords = this.pointerCoords;
        int j = arrayOfPointerCoords.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(6, arrayOfPointerCoords[k]);
      }
      if (this.metaState != null)
        i += CodedOutputByteBufferNano.computeInt32Size(7, this.metaState.intValue());
      if (this.buttonState != null)
        i += CodedOutputByteBufferNano.computeInt32Size(8, this.buttonState.intValue());
      if (this.xPrecision != null)
        i += CodedOutputByteBufferNano.computeFloatSize(9, this.xPrecision.floatValue());
      if (this.yPrecision != null)
        i += CodedOutputByteBufferNano.computeFloatSize(10, this.yPrecision.floatValue());
      if (this.deviceId != null)
        i += CodedOutputByteBufferNano.computeInt32Size(11, this.deviceId.intValue());
      if (this.edgeFlags != null)
        i += CodedOutputByteBufferNano.computeInt32Size(12, this.edgeFlags.intValue());
      if (this.source != null)
        i += CodedOutputByteBufferNano.computeInt32Size(13, this.source.intValue());
      if (this.flags != null)
        i += CodedOutputByteBufferNano.computeInt32Size(14, this.flags.intValue());
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label65: int i3;
      int i11;
      label117: int i13;
      label137: int i15;
      label157: int i17;
      label177: int i19;
      label197: int i21;
      label217: int i23;
      label237: int i24;
      int i25;
      if (this.downTime == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.eventTime != null)
          break label290;
        k = 0;
        int m = 31 * (j + k);
        if (this.action != null)
          break label313;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.pointerCount != null)
          break label325;
        i2 = 0;
        i3 = i1 + i2;
        if (this.pointerProperties != null)
          break label337;
        i3 *= 31;
        if (this.pointerCoords != null)
          break label398;
        i3 *= 31;
        int i10 = i3 * 31;
        if (this.metaState != null)
          break label459;
        i11 = 0;
        int i12 = 31 * (i10 + i11);
        if (this.buttonState != null)
          break label471;
        i13 = 0;
        int i14 = 31 * (i12 + i13);
        if (this.xPrecision != null)
          break label483;
        i15 = 0;
        int i16 = 31 * (i14 + i15);
        if (this.yPrecision != null)
          break label498;
        i17 = 0;
        int i18 = 31 * (i16 + i17);
        if (this.deviceId != null)
          break label513;
        i19 = 0;
        int i20 = 31 * (i18 + i19);
        if (this.edgeFlags != null)
          break label525;
        i21 = 0;
        int i22 = 31 * (i20 + i21);
        if (this.source != null)
          break label537;
        i23 = 0;
        i24 = 31 * (i22 + i23);
        Integer localInteger = this.flags;
        i25 = 0;
        if (localInteger != null)
          break label549;
      }
      while (true)
      {
        return i24 + i25;
        i = (int)(this.downTime.longValue() ^ this.downTime.longValue() >>> 32);
        break;
        label290: k = (int)(this.eventTime.longValue() ^ this.eventTime.longValue() >>> 32);
        break label27;
        label313: n = this.action.intValue();
        break label45;
        label325: i2 = this.pointerCount.intValue();
        break label65;
        label337: int i4 = 0;
        label340: int i5;
        if (i4 < this.pointerProperties.length)
        {
          i5 = i3 * 31;
          if (this.pointerProperties[i4] != null)
            break label383;
        }
        label383: for (int i6 = 0; ; i6 = this.pointerProperties[i4].hashCode())
        {
          i3 = i5 + i6;
          i4++;
          break label340;
          break;
        }
        label398: int i7 = 0;
        label401: int i8;
        if (i7 < this.pointerCoords.length)
        {
          i8 = i3 * 31;
          if (this.pointerCoords[i7] != null)
            break label444;
        }
        label444: for (int i9 = 0; ; i9 = this.pointerCoords[i7].hashCode())
        {
          i3 = i8 + i9;
          i7++;
          break label401;
          break;
        }
        label459: i11 = this.metaState.intValue();
        break label117;
        label471: i13 = this.buttonState.intValue();
        break label137;
        label483: i15 = Float.floatToIntBits(this.xPrecision.floatValue());
        break label157;
        label498: i17 = Float.floatToIntBits(this.yPrecision.floatValue());
        break label177;
        label513: i19 = this.deviceId.intValue();
        break label197;
        label525: i21 = this.edgeFlags.intValue();
        break label217;
        label537: i23 = this.source.intValue();
        break label237;
        label549: i25 = this.flags.intValue();
      }
    }

    public MotionEvent mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.downTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 16:
          this.eventTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 24:
          this.action = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 32:
          this.pointerCount = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 42:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          if (this.pointerProperties == null);
          for (int n = 0; ; n = this.pointerProperties.length)
          {
            PointerProperties[] arrayOfPointerProperties = new PointerProperties[n + m];
            if (this.pointerProperties != null)
              System.arraycopy(this.pointerProperties, 0, arrayOfPointerProperties, 0, n);
            this.pointerProperties = arrayOfPointerProperties;
            while (n < -1 + this.pointerProperties.length)
            {
              this.pointerProperties[n] = new PointerProperties();
              paramCodedInputByteBufferNano.readMessage(this.pointerProperties[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.pointerProperties[n] = new PointerProperties();
          paramCodedInputByteBufferNano.readMessage(this.pointerProperties[n]);
          break;
        case 50:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 50);
          if (this.pointerCoords == null);
          for (int k = 0; ; k = this.pointerCoords.length)
          {
            PointerCoords[] arrayOfPointerCoords = new PointerCoords[k + j];
            if (this.pointerCoords != null)
              System.arraycopy(this.pointerCoords, 0, arrayOfPointerCoords, 0, k);
            this.pointerCoords = arrayOfPointerCoords;
            while (k < -1 + this.pointerCoords.length)
            {
              this.pointerCoords[k] = new PointerCoords();
              paramCodedInputByteBufferNano.readMessage(this.pointerCoords[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.pointerCoords[k] = new PointerCoords();
          paramCodedInputByteBufferNano.readMessage(this.pointerCoords[k]);
          break;
        case 56:
          this.metaState = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 64:
          this.buttonState = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 77:
          this.xPrecision = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 85:
          this.yPrecision = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 88:
          this.deviceId = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 96:
          this.edgeFlags = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 104:
          this.source = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 112:
        }
        this.flags = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.downTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(1, this.downTime.longValue());
      if (this.eventTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.eventTime.longValue());
      if (this.action != null)
        paramCodedOutputByteBufferNano.writeInt32(3, this.action.intValue());
      if (this.pointerCount != null)
        paramCodedOutputByteBufferNano.writeInt32(4, this.pointerCount.intValue());
      if (this.pointerProperties != null)
      {
        PointerProperties[] arrayOfPointerProperties = this.pointerProperties;
        int k = arrayOfPointerProperties.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(5, arrayOfPointerProperties[m]);
      }
      if (this.pointerCoords != null)
      {
        PointerCoords[] arrayOfPointerCoords = this.pointerCoords;
        int i = arrayOfPointerCoords.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(6, arrayOfPointerCoords[j]);
      }
      if (this.metaState != null)
        paramCodedOutputByteBufferNano.writeInt32(7, this.metaState.intValue());
      if (this.buttonState != null)
        paramCodedOutputByteBufferNano.writeInt32(8, this.buttonState.intValue());
      if (this.xPrecision != null)
        paramCodedOutputByteBufferNano.writeFloat(9, this.xPrecision.floatValue());
      if (this.yPrecision != null)
        paramCodedOutputByteBufferNano.writeFloat(10, this.yPrecision.floatValue());
      if (this.deviceId != null)
        paramCodedOutputByteBufferNano.writeInt32(11, this.deviceId.intValue());
      if (this.edgeFlags != null)
        paramCodedOutputByteBufferNano.writeInt32(12, this.edgeFlags.intValue());
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeInt32(13, this.source.intValue());
      if (this.flags != null)
        paramCodedOutputByteBufferNano.writeInt32(14, this.flags.intValue());
    }

    public static final class PointerCoords extends MessageNano
    {
      public static final PointerCoords[] EMPTY_ARRAY = new PointerCoords[0];
      private int cachedSize = -1;
      public Float orientation;
      public Float pressure;
      public Float size;
      public Float toolMajor;
      public Float toolMinor;
      public Float touchMajor;
      public Float touchMinor;
      public Float x;
      public Float y;

      public final PointerCoords clear()
      {
        this.orientation = null;
        this.pressure = null;
        this.size = null;
        this.toolMajor = null;
        this.toolMinor = null;
        this.touchMajor = null;
        this.touchMinor = null;
        this.x = null;
        this.y = null;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        PointerCoords localPointerCoords;
        label49: label63: label77: label91: label105: label119: 
        do
        {
          return true;
          if (!(paramObject instanceof PointerCoords))
            return false;
          localPointerCoords = (PointerCoords)paramObject;
          if (this.orientation != null)
            break label149;
          if (localPointerCoords.orientation != null)
            break;
          if (this.pressure != null)
            break label166;
          if (localPointerCoords.pressure != null)
            break;
          if (this.size != null)
            break label183;
          if (localPointerCoords.size != null)
            break;
          if (this.toolMajor != null)
            break label200;
          if (localPointerCoords.toolMajor != null)
            break;
          if (this.toolMinor != null)
            break label217;
          if (localPointerCoords.toolMinor != null)
            break;
          if (this.touchMajor != null)
            break label234;
          if (localPointerCoords.touchMajor != null)
            break;
          if (this.touchMinor != null)
            break label251;
          if (localPointerCoords.touchMinor != null)
            break;
          if (this.x != null)
            break label268;
          if (localPointerCoords.x != null)
            break;
          if (this.y != null)
            break label285;
        }
        while (localPointerCoords.y == null);
        label133: label149: label166: label183: label200: label217: label234: label251: 
        while (!this.y.equals(localPointerCoords.y))
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
                  {
                    do
                    {
                      do
                      {
                        do
                          return false;
                        while (!this.orientation.equals(localPointerCoords.orientation));
                        break;
                      }
                      while (!this.pressure.equals(localPointerCoords.pressure));
                      break label49;
                    }
                    while (!this.size.equals(localPointerCoords.size));
                    break label63;
                  }
                  while (!this.toolMajor.equals(localPointerCoords.toolMajor));
                  break label77;
                }
                while (!this.toolMinor.equals(localPointerCoords.toolMinor));
                break label91;
              }
              while (!this.touchMajor.equals(localPointerCoords.touchMajor));
              break label105;
            }
            while (!this.touchMinor.equals(localPointerCoords.touchMinor));
            break label119;
          }
          while (!this.x.equals(localPointerCoords.x));
          break label133;
        }
        label268: label285: return true;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getSerializedSize()
      {
        Float localFloat = this.orientation;
        int i = 0;
        if (localFloat != null)
          i = 0 + CodedOutputByteBufferNano.computeFloatSize(1, this.orientation.floatValue());
        if (this.pressure != null)
          i += CodedOutputByteBufferNano.computeFloatSize(2, this.pressure.floatValue());
        if (this.size != null)
          i += CodedOutputByteBufferNano.computeFloatSize(3, this.size.floatValue());
        if (this.toolMajor != null)
          i += CodedOutputByteBufferNano.computeFloatSize(4, this.toolMajor.floatValue());
        if (this.toolMinor != null)
          i += CodedOutputByteBufferNano.computeFloatSize(5, this.toolMinor.floatValue());
        if (this.touchMajor != null)
          i += CodedOutputByteBufferNano.computeFloatSize(6, this.touchMajor.floatValue());
        if (this.touchMinor != null)
          i += CodedOutputByteBufferNano.computeFloatSize(7, this.touchMinor.floatValue());
        if (this.x != null)
          i += CodedOutputByteBufferNano.computeFloatSize(8, this.x.floatValue());
        if (this.y != null)
          i += CodedOutputByteBufferNano.computeFloatSize(9, this.y.floatValue());
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
        label105: int i8;
        label125: int i10;
        label145: int i11;
        int i12;
        if (this.orientation == null)
        {
          i = 0;
          int j = 31 * (i + 527);
          if (this.pressure != null)
            break label189;
          k = 0;
          int m = 31 * (j + k);
          if (this.size != null)
            break label203;
          n = 0;
          int i1 = 31 * (m + n);
          if (this.toolMajor != null)
            break label218;
          i2 = 0;
          int i3 = 31 * (i1 + i2);
          if (this.toolMinor != null)
            break label233;
          i4 = 0;
          int i5 = 31 * (i3 + i4);
          if (this.touchMajor != null)
            break label248;
          i6 = 0;
          int i7 = 31 * (i5 + i6);
          if (this.touchMinor != null)
            break label263;
          i8 = 0;
          int i9 = 31 * (i7 + i8);
          if (this.x != null)
            break label278;
          i10 = 0;
          i11 = 31 * (i9 + i10);
          Float localFloat = this.y;
          i12 = 0;
          if (localFloat != null)
            break label293;
        }
        while (true)
        {
          return i11 + i12;
          i = Float.floatToIntBits(this.orientation.floatValue());
          break;
          label189: k = Float.floatToIntBits(this.pressure.floatValue());
          break label27;
          label203: n = Float.floatToIntBits(this.size.floatValue());
          break label45;
          label218: i2 = Float.floatToIntBits(this.toolMajor.floatValue());
          break label65;
          label233: i4 = Float.floatToIntBits(this.toolMinor.floatValue());
          break label85;
          label248: i6 = Float.floatToIntBits(this.touchMajor.floatValue());
          break label105;
          label263: i8 = Float.floatToIntBits(this.touchMinor.floatValue());
          break label125;
          label278: i10 = Float.floatToIntBits(this.x.floatValue());
          break label145;
          label293: i12 = Float.floatToIntBits(this.y.floatValue());
        }
      }

      public PointerCoords mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          case 13:
            this.orientation = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 21:
            this.pressure = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 29:
            this.size = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 37:
            this.toolMajor = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 45:
            this.toolMinor = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 53:
            this.touchMajor = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 61:
            this.touchMinor = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 69:
            this.x = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
            break;
          case 77:
          }
          this.y = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
        }
      }

      public PointerCoords parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new PointerCoords().mergeFrom(paramCodedInputByteBufferNano);
      }

      public PointerCoords parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (PointerCoords)MessageNano.mergeFrom(new PointerCoords(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.orientation != null)
          paramCodedOutputByteBufferNano.writeFloat(1, this.orientation.floatValue());
        if (this.pressure != null)
          paramCodedOutputByteBufferNano.writeFloat(2, this.pressure.floatValue());
        if (this.size != null)
          paramCodedOutputByteBufferNano.writeFloat(3, this.size.floatValue());
        if (this.toolMajor != null)
          paramCodedOutputByteBufferNano.writeFloat(4, this.toolMajor.floatValue());
        if (this.toolMinor != null)
          paramCodedOutputByteBufferNano.writeFloat(5, this.toolMinor.floatValue());
        if (this.touchMajor != null)
          paramCodedOutputByteBufferNano.writeFloat(6, this.touchMajor.floatValue());
        if (this.touchMinor != null)
          paramCodedOutputByteBufferNano.writeFloat(7, this.touchMinor.floatValue());
        if (this.x != null)
          paramCodedOutputByteBufferNano.writeFloat(8, this.x.floatValue());
        if (this.y != null)
          paramCodedOutputByteBufferNano.writeFloat(9, this.y.floatValue());
      }
    }

    public static final class PointerProperties extends MessageNano
    {
      public static final PointerProperties[] EMPTY_ARRAY = new PointerProperties[0];
      private int cachedSize = -1;
      public Integer id;
      public Integer toolType;

      public final PointerProperties clear()
      {
        this.id = null;
        this.toolType = null;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        PointerProperties localPointerProperties;
        do
        {
          return true;
          if (!(paramObject instanceof PointerProperties))
            return false;
          localPointerProperties = (PointerProperties)paramObject;
          if (this.id != null)
            break label51;
          if (localPointerProperties.id != null)
            break;
          if (this.toolType != null)
            break label68;
        }
        while (localPointerProperties.toolType == null);
        label51: label68: 
        while (!this.toolType.equals(localPointerProperties.toolType))
        {
          do
            return false;
          while (!this.id.equals(localPointerProperties.id));
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
        Integer localInteger = this.id;
        int i = 0;
        if (localInteger != null)
          i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.id.intValue());
        if (this.toolType != null)
          i += CodedOutputByteBufferNano.computeInt32Size(2, this.toolType.intValue());
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        int i;
        int j;
        int k;
        if (this.id == null)
        {
          i = 0;
          j = 31 * (i + 527);
          Integer localInteger = this.toolType;
          k = 0;
          if (localInteger != null)
            break label46;
        }
        while (true)
        {
          return j + k;
          i = this.id.intValue();
          break;
          label46: k = this.toolType.intValue();
        }
      }

      public PointerProperties mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.id = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
            break;
          case 16:
          }
          this.toolType = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
        }
      }

      public PointerProperties parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new PointerProperties().mergeFrom(paramCodedInputByteBufferNano);
      }

      public PointerProperties parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (PointerProperties)MessageNano.mergeFrom(new PointerProperties(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.id != null)
          paramCodedOutputByteBufferNano.writeInt32(1, this.id.intValue());
        if (this.toolType != null)
          paramCodedOutputByteBufferNano.writeInt32(2, this.toolType.intValue());
      }
    }
  }

  public static final class NavigationRequest extends MessageNano
  {
    public static final NavigationRequest[] EMPTY_ARRAY = new NavigationRequest[0];
    private int cachedSize = -1;
    public String uri;

    public static NavigationRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new NavigationRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static NavigationRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (NavigationRequest)MessageNano.mergeFrom(new NavigationRequest(), paramArrayOfByte);
    }

    public final NavigationRequest clear()
    {
      this.uri = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      NavigationRequest localNavigationRequest;
      do
      {
        return true;
        if (!(paramObject instanceof NavigationRequest))
          return false;
        localNavigationRequest = (NavigationRequest)paramObject;
        if (this.uri != null)
          break;
      }
      while (localNavigationRequest.uri == null);
      return false;
      return this.uri.equals(localNavigationRequest.uri);
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.uri;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.uri);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.uri == null);
      for (int i = 0; ; i = this.uri.hashCode())
        return i + 527;
    }

    public NavigationRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.uri = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.uri != null)
        paramCodedOutputByteBufferNano.writeString(1, this.uri);
    }
  }

  public static final class ScreenShot extends MessageNano
  {
    public static final ScreenShot[] EMPTY_ARRAY = new ScreenShot[0];
    private int cachedSize = -1;
    public byte[] screenshotBytesG2C;
    public Boolean startScreenshotRequestC2G;
    public Boolean stopScreenshotRequestC2G;

    public static ScreenShot parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ScreenShot().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ScreenShot parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ScreenShot)MessageNano.mergeFrom(new ScreenShot(), paramArrayOfByte);
    }

    public final ScreenShot clear()
    {
      this.startScreenshotRequestC2G = null;
      this.stopScreenshotRequestC2G = null;
      this.screenshotBytesG2C = null;
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
        if (!(paramObject instanceof ScreenShot))
          return false;
        ScreenShot localScreenShot = (ScreenShot)paramObject;
        if (this.startScreenshotRequestC2G == null)
          if (localScreenShot.startScreenshotRequestC2G == null)
          {
            if (this.stopScreenshotRequestC2G != null)
              break label82;
            if (localScreenShot.stopScreenshotRequestC2G != null);
          }
        while (true)
        {
          if (Arrays.equals(this.screenshotBytesG2C, localScreenShot.screenshotBytesG2C))
            break label97;
          do
          {
            do
              return false;
            while (!this.startScreenshotRequestC2G.equals(localScreenShot.startScreenshotRequestC2G));
            break;
          }
          while (!this.stopScreenshotRequestC2G.equals(localScreenShot.stopScreenshotRequestC2G));
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
      Boolean localBoolean = this.startScreenshotRequestC2G;
      int i = 0;
      if (localBoolean != null)
        i = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.startScreenshotRequestC2G.booleanValue());
      if (this.stopScreenshotRequestC2G != null)
        i += CodedOutputByteBufferNano.computeBoolSize(2, this.stopScreenshotRequestC2G.booleanValue());
      if (this.screenshotBytesG2C != null)
        i += CodedOutputByteBufferNano.computeBytesSize(3, this.screenshotBytesG2C);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label30: int m;
      if (this.startScreenshotRequestC2G == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        Boolean localBoolean = this.stopScreenshotRequestC2G;
        k = 0;
        if (localBoolean != null)
          break label73;
        m = j + k;
        if (this.screenshotBytesG2C != null)
          break label95;
        m *= 31;
      }
      while (true)
      {
        return m;
        if (this.startScreenshotRequestC2G.booleanValue())
        {
          i = 1;
          break;
        }
        i = 2;
        break;
        label73: if (this.stopScreenshotRequestC2G.booleanValue())
        {
          k = 1;
          break label30;
        }
        k = 2;
        break label30;
        label95: for (int n = 0; n < this.screenshotBytesG2C.length; n++)
          m = m * 31 + this.screenshotBytesG2C[n];
      }
    }

    public ScreenShot mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.startScreenshotRequestC2G = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 16:
          this.stopScreenshotRequestC2G = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 26:
        }
        this.screenshotBytesG2C = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.startScreenshotRequestC2G != null)
        paramCodedOutputByteBufferNano.writeBool(1, this.startScreenshotRequestC2G.booleanValue());
      if (this.stopScreenshotRequestC2G != null)
        paramCodedOutputByteBufferNano.writeBool(2, this.stopScreenshotRequestC2G.booleanValue());
      if (this.screenshotBytesG2C != null)
        paramCodedOutputByteBufferNano.writeBytes(3, this.screenshotBytesG2C);
    }
  }

  public static final class TimelineItemResponse extends MessageNano
  {
    public static final TimelineItemResponse[] EMPTY_ARRAY = new TimelineItemResponse[0];
    private int cachedSize = -1;
    public String id;
    public int syncStatus = -2147483648;

    public static TimelineItemResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new TimelineItemResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static TimelineItemResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (TimelineItemResponse)MessageNano.mergeFrom(new TimelineItemResponse(), paramArrayOfByte);
    }

    public final TimelineItemResponse clear()
    {
      this.id = null;
      this.syncStatus = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof TimelineItemResponse))
          return false;
        TimelineItemResponse localTimelineItemResponse = (TimelineItemResponse)paramObject;
        if (this.id == null)
          if (localTimelineItemResponse.id != null);
        while (this.syncStatus != localTimelineItemResponse.syncStatus)
          do
            return false;
          while (!this.id.equals(localTimelineItemResponse.id));
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
      String str = this.id;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.syncStatus != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(2, this.syncStatus);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      if (this.id == null);
      for (int i = 0; ; i = this.id.hashCode())
        return 31 * (i + 527) + this.syncStatus;
    }

    public TimelineItemResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 16:
        }
        this.syncStatus = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.syncStatus != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(2, this.syncStatus);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.Proto
 * JD-Core Version:    0.6.2
 */