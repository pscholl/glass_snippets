package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class TimelineNano
{
  public static final class Attachment extends MessageNano
  {
    public static final Attachment[] EMPTY_ARRAY = new Attachment[0];
    private int cachedSize = -1;
    public String clientCachePath;
    public String contentType;
    public String contentUrl;
    public Long creationTime;
    public String id;
    public Boolean isProcessingContent;
    public String source;
    public String thumbnailUrl;

    public static Attachment parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Attachment().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Attachment parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Attachment)MessageNano.mergeFrom(new Attachment(), paramArrayOfByte);
    }

    public final Attachment clear()
    {
      this.id = null;
      this.contentType = null;
      this.contentUrl = null;
      this.thumbnailUrl = null;
      this.clientCachePath = null;
      this.creationTime = null;
      this.isProcessingContent = null;
      this.source = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Attachment localAttachment;
      label49: label63: label77: label91: label105: label119: 
      do
      {
        return true;
        if (!(paramObject instanceof Attachment))
          return false;
        localAttachment = (Attachment)paramObject;
        if (this.id != null)
          break label135;
        if (localAttachment.id != null)
          break;
        if (this.contentType != null)
          break label152;
        if (localAttachment.contentType != null)
          break;
        if (this.contentUrl != null)
          break label169;
        if (localAttachment.contentUrl != null)
          break;
        if (this.thumbnailUrl != null)
          break label186;
        if (localAttachment.thumbnailUrl != null)
          break;
        if (this.clientCachePath != null)
          break label203;
        if (localAttachment.clientCachePath != null)
          break;
        if (this.creationTime != null)
          break label220;
        if (localAttachment.creationTime != null)
          break;
        if (this.isProcessingContent != null)
          break label237;
        if (localAttachment.isProcessingContent != null)
          break;
        if (this.source != null)
          break label254;
      }
      while (localAttachment.source == null);
      label135: label152: label169: label186: label203: label220: label237: label254: 
      while (!this.source.equals(localAttachment.source))
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
                    while (!this.id.equals(localAttachment.id));
                    break;
                  }
                  while (!this.contentType.equals(localAttachment.contentType));
                  break label49;
                }
                while (!this.contentUrl.equals(localAttachment.contentUrl));
                break label63;
              }
              while (!this.thumbnailUrl.equals(localAttachment.thumbnailUrl));
              break label77;
            }
            while (!this.clientCachePath.equals(localAttachment.clientCachePath));
            break label91;
          }
          while (!this.creationTime.equals(localAttachment.creationTime));
          break label105;
        }
        while (!this.isProcessingContent.equals(localAttachment.isProcessingContent));
        break label119;
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
      String str = this.id;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.contentType != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.contentType);
      if (this.contentUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.contentUrl);
      if (this.thumbnailUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.thumbnailUrl);
      if (this.clientCachePath != null)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.clientCachePath);
      if (this.creationTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(6, this.creationTime.longValue());
      if (this.isProcessingContent != null)
        i += CodedOutputByteBufferNano.computeBoolSize(7, this.isProcessingContent.booleanValue());
      if (this.source != null)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.source);
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
      label125: int i9;
      int i10;
      if (this.id == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.contentType != null)
          break label166;
        k = 0;
        int m = 31 * (j + k);
        if (this.contentUrl != null)
          break label177;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.thumbnailUrl != null)
          break label189;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.clientCachePath != null)
          break label201;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.creationTime != null)
          break label213;
        i6 = 0;
        int i7 = 31 * (i5 + i6);
        if (this.isProcessingContent != null)
          break label237;
        i8 = 0;
        i9 = 31 * (i7 + i8);
        String str = this.source;
        i10 = 0;
        if (str != null)
          break label259;
      }
      while (true)
      {
        return i9 + i10;
        i = this.id.hashCode();
        break;
        label166: k = this.contentType.hashCode();
        break label27;
        label177: n = this.contentUrl.hashCode();
        break label45;
        label189: i2 = this.thumbnailUrl.hashCode();
        break label65;
        label201: i4 = this.clientCachePath.hashCode();
        break label85;
        label213: i6 = (int)(this.creationTime.longValue() ^ this.creationTime.longValue() >>> 32);
        break label105;
        label237: if (this.isProcessingContent.booleanValue())
        {
          i8 = 1;
          break label125;
        }
        i8 = 2;
        break label125;
        label259: i10 = this.source.hashCode();
      }
    }

    public Attachment mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        case 18:
          this.contentType = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.contentUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.thumbnailUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          this.clientCachePath = paramCodedInputByteBufferNano.readString();
          break;
        case 48:
          this.creationTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 56:
          this.isProcessingContent = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 66:
        }
        this.source = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.contentType != null)
        paramCodedOutputByteBufferNano.writeString(2, this.contentType);
      if (this.contentUrl != null)
        paramCodedOutputByteBufferNano.writeString(3, this.contentUrl);
      if (this.thumbnailUrl != null)
        paramCodedOutputByteBufferNano.writeString(4, this.thumbnailUrl);
      if (this.clientCachePath != null)
        paramCodedOutputByteBufferNano.writeString(5, this.clientCachePath);
      if (this.creationTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(6, this.creationTime.longValue());
      if (this.isProcessingContent != null)
        paramCodedOutputByteBufferNano.writeBool(7, this.isProcessingContent.booleanValue());
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeString(8, this.source);
    }
  }

  public static final class Entity extends MessageNano
  {
    public static final Entity[] EMPTY_ARRAY = new Entity[0];
    public Command[] acceptCommand = Command.EMPTY_ARRAY;
    public String[] acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
    private int cachedSize = -1;
    public int[] contactGroup = WireFormatNano.EMPTY_INT_ARRAY;
    public Long creationTime;
    public String displayName;
    public String email;
    public String fullName;
    public String id;
    public String[] imageUrl = WireFormatNano.EMPTY_STRING_ARRAY;
    public Boolean isCommunicationTarget;
    public int messagingOption = -2147483648;
    public TimelineNano.MessagingPersona[] messagingPersona = TimelineNano.MessagingPersona.EMPTY_ARRAY;
    public String nickname;
    public String phoneNumber;
    public Priority priority = null;
    public String[] secondaryEmail = WireFormatNano.EMPTY_STRING_ARRAY;
    public String[] secondaryPhoneNumber = WireFormatNano.EMPTY_STRING_ARRAY;
    public int[] sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
    public Boolean shouldSync;
    public String source;
    public String speakableName;
    public int type = -2147483648;

    public static Entity parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Entity().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Entity parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Entity)MessageNano.mergeFrom(new Entity(), paramArrayOfByte);
    }

    public final Entity clear()
    {
      this.source = null;
      this.id = null;
      this.messagingPersona = TimelineNano.MessagingPersona.EMPTY_ARRAY;
      this.messagingOption = -2147483648;
      this.sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
      this.displayName = null;
      this.nickname = null;
      this.fullName = null;
      this.imageUrl = WireFormatNano.EMPTY_STRING_ARRAY;
      this.shouldSync = null;
      this.type = -2147483648;
      this.phoneNumber = null;
      this.secondaryPhoneNumber = WireFormatNano.EMPTY_STRING_ARRAY;
      this.email = null;
      this.secondaryEmail = WireFormatNano.EMPTY_STRING_ARRAY;
      this.acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
      this.isCommunicationTarget = null;
      this.priority = null;
      this.acceptCommand = Command.EMPTY_ARRAY;
      this.speakableName = null;
      this.contactGroup = WireFormatNano.EMPTY_INT_ARRAY;
      this.creationTime = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Entity localEntity;
      label49: label102: label116: label253: 
      do
      {
        return true;
        if (!(paramObject instanceof Entity))
          return false;
        localEntity = (Entity)paramObject;
        if (this.source != null)
          break label325;
        if (localEntity.source != null)
          break;
        if (this.id != null)
          break label342;
        if (localEntity.id != null)
          break;
        if ((!Arrays.equals(this.messagingPersona, localEntity.messagingPersona)) || (this.messagingOption != localEntity.messagingOption) || (!Arrays.equals(this.sharingFeature, localEntity.sharingFeature)))
          break;
        if (this.displayName != null)
          break label359;
        if (localEntity.displayName != null)
          break;
        if (this.nickname != null)
          break label376;
        if (localEntity.nickname != null)
          break;
        if (this.fullName != null)
          break label393;
        if (localEntity.fullName != null)
          break;
        if (!Arrays.equals(this.imageUrl, localEntity.imageUrl))
          break;
        if (this.shouldSync != null)
          break label410;
        if (localEntity.shouldSync != null)
          break;
        if (this.type != localEntity.type)
          break;
        if (this.phoneNumber != null)
          break label427;
        if (localEntity.phoneNumber != null)
          break;
        if (!Arrays.equals(this.secondaryPhoneNumber, localEntity.secondaryPhoneNumber))
          break;
        if (this.email != null)
          break label444;
        if (localEntity.email != null)
          break;
        if ((!Arrays.equals(this.secondaryEmail, localEntity.secondaryEmail)) || (!Arrays.equals(this.acceptType, localEntity.acceptType)))
          break;
        if (this.isCommunicationTarget != null)
          break label461;
        if (localEntity.isCommunicationTarget != null)
          break;
        if (this.priority != null)
          break label478;
        if (localEntity.priority != null)
          break;
        if (!Arrays.equals(this.acceptCommand, localEntity.acceptCommand))
          break;
        if (this.speakableName != null)
          break label495;
        if (localEntity.speakableName != null)
          break;
        if (!Arrays.equals(this.contactGroup, localEntity.contactGroup))
          break;
        if (this.creationTime != null)
          break label512;
      }
      while (localEntity.creationTime == null);
      label130: label158: label183: label211: label342: label359: label376: 
      while (!this.creationTime.equals(localEntity.creationTime))
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
                            while (!this.source.equals(localEntity.source));
                            break;
                          }
                          while (!this.id.equals(localEntity.id));
                          break label49;
                        }
                        while (!this.displayName.equals(localEntity.displayName));
                        break label102;
                      }
                      while (!this.nickname.equals(localEntity.nickname));
                      break label116;
                    }
                    while (!this.fullName.equals(localEntity.fullName));
                    break label130;
                  }
                  while (!this.shouldSync.equals(localEntity.shouldSync));
                  break label158;
                }
                while (!this.phoneNumber.equals(localEntity.phoneNumber));
                break label183;
              }
              while (!this.email.equals(localEntity.email));
              break label211;
            }
            while (!this.isCommunicationTarget.equals(localEntity.isCommunicationTarget));
            break label253;
          }
          while (!this.priority.equals(localEntity.priority));
          break label267;
        }
        while (!this.speakableName.equals(localEntity.speakableName));
        break label295;
      }
      label267: label295: label325: label461: label478: label495: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.source;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.source);
      if (this.id != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.id);
      if (this.displayName != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.displayName);
      if (this.shouldSync != null)
        i += CodedOutputByteBufferNano.computeBoolSize(5, this.shouldSync.booleanValue());
      if (this.type != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(6, this.type);
      if (this.phoneNumber != null)
        i += CodedOutputByteBufferNano.computeStringSize(7, this.phoneNumber);
      if (this.email != null)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.email);
      if ((this.acceptType != null) && (this.acceptType.length > 0))
      {
        int i16 = 0;
        String[] arrayOfString4 = this.acceptType;
        int i17 = arrayOfString4.length;
        for (int i18 = 0; i18 < i17; i18++)
          i16 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString4[i18]);
        i = i + i16 + 1 * this.acceptType.length;
      }
      if (this.isCommunicationTarget != null)
        i += CodedOutputByteBufferNano.computeBoolSize(10, this.isCommunicationTarget.booleanValue());
      if ((this.imageUrl != null) && (this.imageUrl.length > 0))
      {
        int i13 = 0;
        String[] arrayOfString3 = this.imageUrl;
        int i14 = arrayOfString3.length;
        for (int i15 = 0; i15 < i14; i15++)
          i13 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString3[i15]);
        i = i + i13 + 1 * this.imageUrl.length;
      }
      if ((this.secondaryPhoneNumber != null) && (this.secondaryPhoneNumber.length > 0))
      {
        int i10 = 0;
        String[] arrayOfString2 = this.secondaryPhoneNumber;
        int i11 = arrayOfString2.length;
        for (int i12 = 0; i12 < i11; i12++)
          i10 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString2[i12]);
        i = i + i10 + 1 * this.secondaryPhoneNumber.length;
      }
      if (this.priority != null)
        i += CodedOutputByteBufferNano.computeMessageSize(14, this.priority);
      if ((this.secondaryEmail != null) && (this.secondaryEmail.length > 0))
      {
        int i7 = 0;
        String[] arrayOfString1 = this.secondaryEmail;
        int i8 = arrayOfString1.length;
        for (int i9 = 0; i9 < i8; i9++)
          i7 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString1[i9]);
        i = i + i7 + 1 * this.secondaryEmail.length;
      }
      if (this.acceptCommand != null)
      {
        Command[] arrayOfCommand = this.acceptCommand;
        int i5 = arrayOfCommand.length;
        for (int i6 = 0; i6 < i5; i6++)
          i += CodedOutputByteBufferNano.computeMessageSize(16, arrayOfCommand[i6]);
      }
      if (this.speakableName != null)
        i += CodedOutputByteBufferNano.computeStringSize(17, this.speakableName);
      if ((this.contactGroup != null) && (this.contactGroup.length > 0))
      {
        int i2 = 0;
        int[] arrayOfInt2 = this.contactGroup;
        int i3 = arrayOfInt2.length;
        for (int i4 = 0; i4 < i3; i4++)
          i2 += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt2[i4]);
        i = i + i2 + 2 * this.contactGroup.length;
      }
      if (this.creationTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(21, this.creationTime.longValue());
      if (this.messagingPersona != null)
      {
        TimelineNano.MessagingPersona[] arrayOfMessagingPersona = this.messagingPersona;
        int n = arrayOfMessagingPersona.length;
        for (int i1 = 0; i1 < n; i1++)
          i += CodedOutputByteBufferNano.computeMessageSize(22, arrayOfMessagingPersona[i1]);
      }
      if (this.nickname != null)
        i += CodedOutputByteBufferNano.computeStringSize(23, this.nickname);
      if (this.messagingOption != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(25, this.messagingOption);
      if (this.fullName != null)
        i += CodedOutputByteBufferNano.computeStringSize(26, this.fullName);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int j = 0;
        int[] arrayOfInt1 = this.sharingFeature;
        int k = arrayOfInt1.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt1[m]);
        i = i + j + 2 * this.sharingFeature.length;
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 1;
      int j;
      int m;
      label30: int n;
      int i4;
      label76: int i7;
      label93: int i9;
      label113: int i11;
      label133: int i12;
      int i17;
      label171: int i19;
      label199: int i20;
      int i25;
      label237: int i26;
      label288: int i35;
      label307: int i36;
      int i41;
      label345: int i42;
      label366: int i44;
      int i45;
      if (this.source == null)
      {
        j = 0;
        int k = 31 * (j + 527);
        if (this.id != null)
          break label404;
        m = 0;
        n = k + m;
        if (this.messagingPersona != null)
          break label416;
        n *= 31;
        i4 = n * 31 + this.messagingOption;
        if (this.sharingFeature != null)
          break label477;
        i4 *= 31;
        int i6 = i4 * 31;
        if (this.displayName != null)
          break label511;
        i7 = 0;
        int i8 = 31 * (i6 + i7);
        if (this.nickname != null)
          break label523;
        i9 = 0;
        int i10 = 31 * (i8 + i9);
        if (this.fullName != null)
          break label535;
        i11 = 0;
        i12 = i10 + i11;
        if (this.imageUrl != null)
          break label547;
        i12 *= 31;
        int i16 = i12 * 31;
        if (this.shouldSync != null)
          break label608;
        i17 = 0;
        int i18 = 31 * (31 * (i16 + i17) + this.type);
        if (this.phoneNumber != null)
          break label630;
        i19 = 0;
        i20 = i18 + i19;
        if (this.secondaryPhoneNumber != null)
          break label642;
        i20 *= 31;
        int i24 = i20 * 31;
        if (this.email != null)
          break label703;
        i25 = 0;
        i26 = i24 + i25;
        if (this.secondaryEmail != null)
          break label715;
        i26 *= 31;
        if (this.acceptType != null)
          break label776;
        i26 *= 31;
        int i33 = i26 * 31;
        if (this.isCommunicationTarget != null)
          break label837;
        i = 0;
        int i34 = 31 * (i33 + i);
        if (this.priority != null)
          break label852;
        i35 = 0;
        i36 = i34 + i35;
        if (this.acceptCommand != null)
          break label864;
        i36 *= 31;
        int i40 = i36 * 31;
        if (this.speakableName != null)
          break label925;
        i41 = 0;
        i42 = i40 + i41;
        if (this.contactGroup != null)
          break label937;
        i42 *= 31;
        i44 = i42 * 31;
        Long localLong = this.creationTime;
        i45 = 0;
        if (localLong != null)
          break label971;
      }
      while (true)
      {
        return i44 + i45;
        j = this.source.hashCode();
        break;
        label404: m = this.id.hashCode();
        break label30;
        label416: int i1 = 0;
        label419: int i2;
        if (i1 < this.messagingPersona.length)
        {
          i2 = n * 31;
          if (this.messagingPersona[i1] != null)
            break label462;
        }
        label462: for (int i3 = 0; ; i3 = this.messagingPersona[i1].hashCode())
        {
          n = i2 + i3;
          i1++;
          break label419;
          break;
        }
        label477: for (int i5 = 0; i5 < this.sharingFeature.length; i5++)
          i4 = i4 * 31 + this.sharingFeature[i5];
        break label76;
        label511: i7 = this.displayName.hashCode();
        break label93;
        label523: i9 = this.nickname.hashCode();
        break label113;
        label535: i11 = this.fullName.hashCode();
        break label133;
        label547: int i13 = 0;
        label550: int i14;
        if (i13 < this.imageUrl.length)
        {
          i14 = i12 * 31;
          if (this.imageUrl[i13] != null)
            break label593;
        }
        label593: for (int i15 = 0; ; i15 = this.imageUrl[i13].hashCode())
        {
          i12 = i14 + i15;
          i13++;
          break label550;
          break;
        }
        label608: if (this.shouldSync.booleanValue())
        {
          i17 = i;
          break label171;
        }
        i17 = 2;
        break label171;
        label630: i19 = this.phoneNumber.hashCode();
        break label199;
        label642: int i21 = 0;
        label645: int i22;
        if (i21 < this.secondaryPhoneNumber.length)
        {
          i22 = i20 * 31;
          if (this.secondaryPhoneNumber[i21] != null)
            break label688;
        }
        label688: for (int i23 = 0; ; i23 = this.secondaryPhoneNumber[i21].hashCode())
        {
          i20 = i22 + i23;
          i21++;
          break label645;
          break;
        }
        label703: i25 = this.email.hashCode();
        break label237;
        label715: int i27 = 0;
        label718: int i28;
        if (i27 < this.secondaryEmail.length)
        {
          i28 = i26 * 31;
          if (this.secondaryEmail[i27] != null)
            break label761;
        }
        label761: for (int i29 = 0; ; i29 = this.secondaryEmail[i27].hashCode())
        {
          i26 = i28 + i29;
          i27++;
          break label718;
          break;
        }
        label776: int i30 = 0;
        label779: int i31;
        if (i30 < this.acceptType.length)
        {
          i31 = i26 * 31;
          if (this.acceptType[i30] != null)
            break label822;
        }
        label822: for (int i32 = 0; ; i32 = this.acceptType[i30].hashCode())
        {
          i26 = i31 + i32;
          i30++;
          break label779;
          break;
        }
        label837: if (this.isCommunicationTarget.booleanValue())
          break label288;
        i = 2;
        break label288;
        label852: i35 = this.priority.hashCode();
        break label307;
        label864: int i37 = 0;
        label867: int i38;
        if (i37 < this.acceptCommand.length)
        {
          i38 = i36 * 31;
          if (this.acceptCommand[i37] != null)
            break label910;
        }
        label910: for (int i39 = 0; ; i39 = this.acceptCommand[i37].hashCode())
        {
          i36 = i38 + i39;
          i37++;
          break label867;
          break;
        }
        label925: i41 = this.speakableName.hashCode();
        break label345;
        label937: for (int i43 = 0; i43 < this.contactGroup.length; i43++)
          i42 = i42 * 31 + this.contactGroup[i43];
        break label366;
        label971: i45 = (int)(this.creationTime.longValue() ^ this.creationTime.longValue() >>> 32);
      }
    }

    public Entity mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.source = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.displayName = paramCodedInputByteBufferNano.readString();
          break;
        case 40:
          this.shouldSync = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 48:
          this.type = paramCodedInputByteBufferNano.readInt32();
          break;
        case 58:
          this.phoneNumber = paramCodedInputByteBufferNano.readString();
          break;
        case 66:
          this.email = paramCodedInputByteBufferNano.readString();
          break;
        case 74:
          int i11 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 74);
          int i12 = this.acceptType.length;
          String[] arrayOfString4 = new String[i12 + i11];
          System.arraycopy(this.acceptType, 0, arrayOfString4, 0, i12);
          this.acceptType = arrayOfString4;
          while (i12 < -1 + this.acceptType.length)
          {
            this.acceptType[i12] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i12++;
          }
          this.acceptType[i12] = paramCodedInputByteBufferNano.readString();
          break;
        case 80:
          this.isCommunicationTarget = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 98:
          int i9 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 98);
          int i10 = this.imageUrl.length;
          String[] arrayOfString3 = new String[i10 + i9];
          System.arraycopy(this.imageUrl, 0, arrayOfString3, 0, i10);
          this.imageUrl = arrayOfString3;
          while (i10 < -1 + this.imageUrl.length)
          {
            this.imageUrl[i10] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i10++;
          }
          this.imageUrl[i10] = paramCodedInputByteBufferNano.readString();
          break;
        case 106:
          int i7 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 106);
          int i8 = this.secondaryPhoneNumber.length;
          String[] arrayOfString2 = new String[i8 + i7];
          System.arraycopy(this.secondaryPhoneNumber, 0, arrayOfString2, 0, i8);
          this.secondaryPhoneNumber = arrayOfString2;
          while (i8 < -1 + this.secondaryPhoneNumber.length)
          {
            this.secondaryPhoneNumber[i8] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i8++;
          }
          this.secondaryPhoneNumber[i8] = paramCodedInputByteBufferNano.readString();
          break;
        case 114:
          this.priority = new Priority();
          paramCodedInputByteBufferNano.readMessage(this.priority);
          break;
        case 122:
          int i5 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 122);
          int i6 = this.secondaryEmail.length;
          String[] arrayOfString1 = new String[i6 + i5];
          System.arraycopy(this.secondaryEmail, 0, arrayOfString1, 0, i6);
          this.secondaryEmail = arrayOfString1;
          while (i6 < -1 + this.secondaryEmail.length)
          {
            this.secondaryEmail[i6] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i6++;
          }
          this.secondaryEmail[i6] = paramCodedInputByteBufferNano.readString();
          break;
        case 130:
          int i3 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 130);
          if (this.acceptCommand == null);
          for (int i4 = 0; ; i4 = this.acceptCommand.length)
          {
            Command[] arrayOfCommand = new Command[i4 + i3];
            if (this.acceptCommand != null)
              System.arraycopy(this.acceptCommand, 0, arrayOfCommand, 0, i4);
            this.acceptCommand = arrayOfCommand;
            while (i4 < -1 + this.acceptCommand.length)
            {
              this.acceptCommand[i4] = new Command();
              paramCodedInputByteBufferNano.readMessage(this.acceptCommand[i4]);
              paramCodedInputByteBufferNano.readTag();
              i4++;
            }
          }
          this.acceptCommand[i4] = new Command();
          paramCodedInputByteBufferNano.readMessage(this.acceptCommand[i4]);
          break;
        case 138:
          this.speakableName = paramCodedInputByteBufferNano.readString();
          break;
        case 160:
          int i1 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 160);
          int i2 = this.contactGroup.length;
          int[] arrayOfInt2 = new int[i2 + i1];
          System.arraycopy(this.contactGroup, 0, arrayOfInt2, 0, i2);
          this.contactGroup = arrayOfInt2;
          while (i2 < -1 + this.contactGroup.length)
          {
            this.contactGroup[i2] = paramCodedInputByteBufferNano.readInt32();
            paramCodedInputByteBufferNano.readTag();
            i2++;
          }
          this.contactGroup[i2] = paramCodedInputByteBufferNano.readInt32();
          break;
        case 168:
          this.creationTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 178:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 178);
          if (this.messagingPersona == null);
          for (int n = 0; ; n = this.messagingPersona.length)
          {
            TimelineNano.MessagingPersona[] arrayOfMessagingPersona = new TimelineNano.MessagingPersona[n + m];
            if (this.messagingPersona != null)
              System.arraycopy(this.messagingPersona, 0, arrayOfMessagingPersona, 0, n);
            this.messagingPersona = arrayOfMessagingPersona;
            while (n < -1 + this.messagingPersona.length)
            {
              this.messagingPersona[n] = new TimelineNano.MessagingPersona();
              paramCodedInputByteBufferNano.readMessage(this.messagingPersona[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.messagingPersona[n] = new TimelineNano.MessagingPersona();
          paramCodedInputByteBufferNano.readMessage(this.messagingPersona[n]);
          break;
        case 186:
          this.nickname = paramCodedInputByteBufferNano.readString();
          break;
        case 200:
          this.messagingOption = paramCodedInputByteBufferNano.readInt32();
          break;
        case 210:
          this.fullName = paramCodedInputByteBufferNano.readString();
          break;
        case 216:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 216);
        int k = this.sharingFeature.length;
        int[] arrayOfInt1 = new int[k + j];
        System.arraycopy(this.sharingFeature, 0, arrayOfInt1, 0, k);
        this.sharingFeature = arrayOfInt1;
        while (k < -1 + this.sharingFeature.length)
        {
          this.sharingFeature[k] = paramCodedInputByteBufferNano.readInt32();
          paramCodedInputByteBufferNano.readTag();
          k++;
        }
        this.sharingFeature[k] = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeString(1, this.source);
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(2, this.id);
      if (this.displayName != null)
        paramCodedOutputByteBufferNano.writeString(3, this.displayName);
      if (this.shouldSync != null)
        paramCodedOutputByteBufferNano.writeBool(5, this.shouldSync.booleanValue());
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(6, this.type);
      if (this.phoneNumber != null)
        paramCodedOutputByteBufferNano.writeString(7, this.phoneNumber);
      if (this.email != null)
        paramCodedOutputByteBufferNano.writeString(8, this.email);
      if (this.acceptType != null)
      {
        String[] arrayOfString4 = this.acceptType;
        int i10 = arrayOfString4.length;
        for (int i11 = 0; i11 < i10; i11++)
          paramCodedOutputByteBufferNano.writeString(9, arrayOfString4[i11]);
      }
      if (this.isCommunicationTarget != null)
        paramCodedOutputByteBufferNano.writeBool(10, this.isCommunicationTarget.booleanValue());
      if (this.imageUrl != null)
      {
        String[] arrayOfString3 = this.imageUrl;
        int i8 = arrayOfString3.length;
        for (int i9 = 0; i9 < i8; i9++)
          paramCodedOutputByteBufferNano.writeString(12, arrayOfString3[i9]);
      }
      if (this.secondaryPhoneNumber != null)
      {
        String[] arrayOfString2 = this.secondaryPhoneNumber;
        int i6 = arrayOfString2.length;
        for (int i7 = 0; i7 < i6; i7++)
          paramCodedOutputByteBufferNano.writeString(13, arrayOfString2[i7]);
      }
      if (this.priority != null)
        paramCodedOutputByteBufferNano.writeMessage(14, this.priority);
      if (this.secondaryEmail != null)
      {
        String[] arrayOfString1 = this.secondaryEmail;
        int i4 = arrayOfString1.length;
        for (int i5 = 0; i5 < i4; i5++)
          paramCodedOutputByteBufferNano.writeString(15, arrayOfString1[i5]);
      }
      if (this.acceptCommand != null)
      {
        Command[] arrayOfCommand = this.acceptCommand;
        int i2 = arrayOfCommand.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramCodedOutputByteBufferNano.writeMessage(16, arrayOfCommand[i3]);
      }
      if (this.speakableName != null)
        paramCodedOutputByteBufferNano.writeString(17, this.speakableName);
      if ((this.contactGroup != null) && (this.contactGroup.length > 0))
      {
        int[] arrayOfInt2 = this.contactGroup;
        int n = arrayOfInt2.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeInt32(20, arrayOfInt2[i1]);
      }
      if (this.creationTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(21, this.creationTime.longValue());
      if (this.messagingPersona != null)
      {
        TimelineNano.MessagingPersona[] arrayOfMessagingPersona = this.messagingPersona;
        int k = arrayOfMessagingPersona.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(22, arrayOfMessagingPersona[m]);
      }
      if (this.nickname != null)
        paramCodedOutputByteBufferNano.writeString(23, this.nickname);
      if (this.messagingOption != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(25, this.messagingOption);
      if (this.fullName != null)
        paramCodedOutputByteBufferNano.writeString(26, this.fullName);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int[] arrayOfInt1 = this.sharingFeature;
        int i = arrayOfInt1.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeInt32(27, arrayOfInt1[j]);
      }
    }

    public static final class Command extends MessageNano
    {
      public static final Command[] EMPTY_ARRAY = new Command[0];
      private int cachedSize = -1;
      public String completionLabel;
      public int inputType = -2147483648;
      public int invocationMode = -2147483648;
      public Boolean isVoiceEnabled;
      public String pendingLabel;
      public int type = -2147483648;

      public final Command clear()
      {
        this.type = -2147483648;
        this.isVoiceEnabled = null;
        this.inputType = -2147483648;
        this.pendingLabel = null;
        this.completionLabel = null;
        this.invocationMode = -2147483648;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        label132: label147: 
        while (true)
        {
          return true;
          if (!(paramObject instanceof Command))
            return false;
          Command localCommand = (Command)paramObject;
          if (this.type == localCommand.type)
          {
            if (this.isVoiceEnabled != null)
              break label98;
            if (localCommand.isVoiceEnabled == null)
              if (this.inputType == localCommand.inputType)
              {
                if (this.pendingLabel != null)
                  break label115;
                if (localCommand.pendingLabel == null)
                {
                  label71: if (this.completionLabel != null)
                    break label132;
                  if (localCommand.completionLabel != null);
                }
              }
          }
          while (true)
          {
            if (this.invocationMode == localCommand.invocationMode)
              break label147;
            label98: label115: 
            do
            {
              do
              {
                do
                  return false;
                while (!this.isVoiceEnabled.equals(localCommand.isVoiceEnabled));
                break;
              }
              while (!this.pendingLabel.equals(localCommand.pendingLabel));
              break label71;
            }
            while (!this.completionLabel.equals(localCommand.completionLabel));
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
        int i = this.type;
        int j = 0;
        if (i != -2147483648)
          j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
        if (this.isVoiceEnabled != null)
          j += CodedOutputByteBufferNano.computeBoolSize(2, this.isVoiceEnabled.booleanValue());
        if (this.inputType != -2147483648)
          j += CodedOutputByteBufferNano.computeInt32Size(3, this.inputType);
        if (this.pendingLabel != null)
          j += CodedOutputByteBufferNano.computeStringSize(4, this.pendingLabel);
        if (this.completionLabel != null)
          j += CodedOutputByteBufferNano.computeStringSize(5, this.completionLabel);
        if (this.invocationMode != -2147483648)
          j += CodedOutputByteBufferNano.computeInt32Size(6, this.invocationMode);
        this.cachedSize = j;
        return j;
      }

      public int hashCode()
      {
        int i = 31 * (527 + this.type);
        int j;
        int m;
        label46: int n;
        int i1;
        if (this.isVoiceEnabled == null)
        {
          j = 0;
          int k = 31 * (31 * (i + j) + this.inputType);
          if (this.pendingLabel != null)
            break label103;
          m = 0;
          n = 31 * (k + m);
          String str = this.completionLabel;
          i1 = 0;
          if (str != null)
            break label115;
        }
        while (true)
        {
          return 31 * (n + i1) + this.invocationMode;
          if (this.isVoiceEnabled.booleanValue())
          {
            j = 1;
            break;
          }
          j = 2;
          break;
          label103: m = this.pendingLabel.hashCode();
          break label46;
          label115: i1 = this.completionLabel.hashCode();
        }
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
            this.type = paramCodedInputByteBufferNano.readInt32();
            break;
          case 16:
            this.isVoiceEnabled = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
            break;
          case 24:
            this.inputType = paramCodedInputByteBufferNano.readInt32();
            break;
          case 34:
            this.pendingLabel = paramCodedInputByteBufferNano.readString();
            break;
          case 42:
            this.completionLabel = paramCodedInputByteBufferNano.readString();
            break;
          case 48:
          }
          this.invocationMode = paramCodedInputByteBufferNano.readInt32();
        }
      }

      public Command parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new Command().mergeFrom(paramCodedInputByteBufferNano);
      }

      public Command parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (Command)MessageNano.mergeFrom(new Command(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.type != -2147483648)
          paramCodedOutputByteBufferNano.writeInt32(1, this.type);
        if (this.isVoiceEnabled != null)
          paramCodedOutputByteBufferNano.writeBool(2, this.isVoiceEnabled.booleanValue());
        if (this.inputType != -2147483648)
          paramCodedOutputByteBufferNano.writeInt32(3, this.inputType);
        if (this.pendingLabel != null)
          paramCodedOutputByteBufferNano.writeString(4, this.pendingLabel);
        if (this.completionLabel != null)
          paramCodedOutputByteBufferNano.writeString(5, this.completionLabel);
        if (this.invocationMode != -2147483648)
          paramCodedOutputByteBufferNano.writeInt32(6, this.invocationMode);
      }

      public final class CommandType
      {
        public static final int ADD_A_CALENDAR_EVENT = 3;
        public static final int CHECK_ME_IN = 2;
        public static final int EXPLORE_NEARBY = 6;
        public static final int FIND_A_PLACE = 5;
        public static final int FIND_A_RECIPE = 4;
        public static final int POST_AN_UPDATE = 1;
        public static final int TAKE_A_NOTE;

        public CommandType()
        {
        }
      }

      public final class InputType
      {
        public static final int DICTATION = 2;
        public static final int LOCAL_SEARCH = 1;
        public static final int NO_INPUT = 3;
        public static final int WEB_SEARCH;

        public InputType()
        {
        }
      }

      public final class InvocationMode
      {
        public static final int BLOCKING = 1;
        public static final int DEFAULT = 0;
        public static final int NON_BLOCKING = 2;

        public InvocationMode()
        {
        }
      }
    }

    public final class ContactGroup
    {
      public static final int MY_CONTACTS;

      public ContactGroup()
      {
      }
    }

    public final class MessagingOption
    {
      public static final int EMAIL = 1;
      public static final int PERSONA = 0;
      public static final int SMS = 2;

      public MessagingOption()
      {
      }
    }

    public static final class Priority extends MessageNano
    {
      public static final Priority[] EMPTY_ARRAY = new Priority[0];
      private int cachedSize = -1;
      public Integer glasswareAffinity;

      public final Priority clear()
      {
        this.glasswareAffinity = null;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        Priority localPriority;
        do
        {
          return true;
          if (!(paramObject instanceof Priority))
            return false;
          localPriority = (Priority)paramObject;
          if (this.glasswareAffinity != null)
            break;
        }
        while (localPriority.glasswareAffinity == null);
        return false;
        return this.glasswareAffinity.equals(localPriority.glasswareAffinity);
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getSerializedSize()
      {
        Integer localInteger = this.glasswareAffinity;
        int i = 0;
        if (localInteger != null)
          i = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.glasswareAffinity.intValue());
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        if (this.glasswareAffinity == null);
        for (int i = 0; ; i = this.glasswareAffinity.intValue())
          return i + 527;
      }

      public Priority mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.glasswareAffinity = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
        }
      }

      public Priority parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new Priority().mergeFrom(paramCodedInputByteBufferNano);
      }

      public Priority parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (Priority)MessageNano.mergeFrom(new Priority(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.glasswareAffinity != null)
          paramCodedOutputByteBufferNano.writeUInt32(1, this.glasswareAffinity.intValue());
      }
    }

    public final class Type
    {
      public static final int GROUP = 0;
      public static final int INDIVIDUAL = 1;

      public Type()
      {
      }
    }
  }

  public static final class LinkSpec extends MessageNano
  {
    public static final LinkSpec[] EMPTY_ARRAY = new LinkSpec[0];
    private int cachedSize = -1;
    public Integer end;
    public Integer start;
    public String url;

    public static LinkSpec parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LinkSpec().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LinkSpec parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LinkSpec)MessageNano.mergeFrom(new LinkSpec(), paramArrayOfByte);
    }

    public final LinkSpec clear()
    {
      this.start = null;
      this.end = null;
      this.url = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LinkSpec localLinkSpec;
      label49: 
      do
      {
        return true;
        if (!(paramObject instanceof LinkSpec))
          return false;
        localLinkSpec = (LinkSpec)paramObject;
        if (this.start != null)
          break label65;
        if (localLinkSpec.start != null)
          break;
        if (this.end != null)
          break label82;
        if (localLinkSpec.end != null)
          break;
        if (this.url != null)
          break label99;
      }
      while (localLinkSpec.url == null);
      label65: label82: label99: 
      while (!this.url.equals(localLinkSpec.url))
      {
        do
        {
          do
            return false;
          while (!this.start.equals(localLinkSpec.start));
          break;
        }
        while (!this.end.equals(localLinkSpec.end));
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
      Integer localInteger = this.start;
      int i = 0;
      if (localInteger != null)
        i = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.start.intValue());
      if (this.end != null)
        i += CodedOutputByteBufferNano.computeUInt32Size(2, this.end.intValue());
      if (this.url != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.url);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int m;
      int n;
      if (this.start == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.end != null)
          break label66;
        k = 0;
        m = 31 * (j + k);
        String str = this.url;
        n = 0;
        if (str != null)
          break label77;
      }
      while (true)
      {
        return m + n;
        i = this.start.intValue();
        break;
        label66: k = this.end.intValue();
        break label27;
        label77: n = this.url.hashCode();
      }
    }

    public LinkSpec mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.start = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
          break;
        case 16:
          this.end = Integer.valueOf(paramCodedInputByteBufferNano.readUInt32());
          break;
        case 26:
        }
        this.url = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.start != null)
        paramCodedOutputByteBufferNano.writeUInt32(1, this.start.intValue());
      if (this.end != null)
        paramCodedOutputByteBufferNano.writeUInt32(2, this.end.intValue());
      if (this.url != null)
        paramCodedOutputByteBufferNano.writeString(3, this.url);
    }
  }

  public static final class Location extends MessageNano
  {
    public static final Location[] EMPTY_ARRAY = new Location[0];
    public Double accuracy;
    public String address;
    private int cachedSize = -1;
    public String displayName;
    public String id;
    public Double latitude;
    public String levelId;
    public Float levelNumber;
    public Double longitude;
    public String source;
    public Long timestamp;

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
      this.id = null;
      this.source = null;
      this.timestamp = null;
      this.latitude = null;
      this.longitude = null;
      this.accuracy = null;
      this.levelId = null;
      this.levelNumber = null;
      this.displayName = null;
      this.address = null;
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
        if (this.id != null)
          break label163;
        if (localLocation.id != null)
          break;
        if (this.source != null)
          break label180;
        if (localLocation.source != null)
          break;
        if (this.timestamp != null)
          break label197;
        if (localLocation.timestamp != null)
          break;
        if (this.latitude != null)
          break label214;
        if (localLocation.latitude != null)
          break;
        if (this.longitude != null)
          break label231;
        if (localLocation.longitude != null)
          break;
        if (this.accuracy != null)
          break label248;
        if (localLocation.accuracy != null)
          break;
        if (this.levelId != null)
          break label265;
        if (localLocation.levelId != null)
          break;
        if (this.levelNumber != null)
          break label282;
        if (localLocation.levelNumber != null)
          break;
        if (this.displayName != null)
          break label299;
        if (localLocation.displayName != null)
          break;
        if (this.address != null)
          break label316;
      }
      while (localLocation.address == null);
      label133: label147: label163: label180: label197: label214: label231: label248: 
      while (!this.address.equals(localLocation.address))
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
                        while (!this.id.equals(localLocation.id));
                        break;
                      }
                      while (!this.source.equals(localLocation.source));
                      break label49;
                    }
                    while (!this.timestamp.equals(localLocation.timestamp));
                    break label63;
                  }
                  while (!this.latitude.equals(localLocation.latitude));
                  break label77;
                }
                while (!this.longitude.equals(localLocation.longitude));
                break label91;
              }
              while (!this.accuracy.equals(localLocation.accuracy));
              break label105;
            }
            while (!this.levelId.equals(localLocation.levelId));
            break label119;
          }
          while (!this.levelNumber.equals(localLocation.levelNumber));
          break label133;
        }
        while (!this.displayName.equals(localLocation.displayName));
        break label147;
      }
      label265: label282: label299: label316: return true;
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
      if (this.displayName != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.displayName);
      if (this.address != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.address);
      if (this.timestamp != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(5, this.timestamp.longValue());
      if (this.accuracy != null)
        i += CodedOutputByteBufferNano.computeDoubleSize(6, this.accuracy.doubleValue());
      if (this.id != null)
        i += CodedOutputByteBufferNano.computeStringSize(7, this.id);
      if (this.levelId != null)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.levelId);
      if (this.levelNumber != null)
        i += CodedOutputByteBufferNano.computeFloatSize(9, this.levelNumber.floatValue());
      if (this.source != null)
        i += CodedOutputByteBufferNano.computeStringSize(10, this.source);
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
      label165: int i13;
      int i14;
      if (this.id == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.source != null)
          break label206;
        k = 0;
        int m = 31 * (j + k);
        if (this.timestamp != null)
          break label217;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.latitude != null)
          break label241;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.longitude != null)
          break label271;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.accuracy != null)
          break label301;
        i6 = 0;
        int i7 = 31 * (i5 + i6);
        if (this.levelId != null)
          break label331;
        i8 = 0;
        int i9 = 31 * (i7 + i8);
        if (this.levelNumber != null)
          break label343;
        i10 = 0;
        int i11 = 31 * (i9 + i10);
        if (this.displayName != null)
          break label358;
        i12 = 0;
        i13 = 31 * (i11 + i12);
        String str = this.address;
        i14 = 0;
        if (str != null)
          break label370;
      }
      while (true)
      {
        return i13 + i14;
        i = this.id.hashCode();
        break;
        label206: k = this.source.hashCode();
        break label27;
        label217: n = (int)(this.timestamp.longValue() ^ this.timestamp.longValue() >>> 32);
        break label45;
        label241: i2 = (int)(Double.doubleToLongBits(this.latitude.doubleValue()) ^ Double.doubleToLongBits(this.latitude.doubleValue()) >>> 32);
        break label65;
        label271: i4 = (int)(Double.doubleToLongBits(this.longitude.doubleValue()) ^ Double.doubleToLongBits(this.longitude.doubleValue()) >>> 32);
        break label85;
        label301: i6 = (int)(Double.doubleToLongBits(this.accuracy.doubleValue()) ^ Double.doubleToLongBits(this.accuracy.doubleValue()) >>> 32);
        break label105;
        label331: i8 = this.levelId.hashCode();
        break label125;
        label343: i10 = Float.floatToIntBits(this.levelNumber.floatValue());
        break label145;
        label358: i12 = this.displayName.hashCode();
        break label165;
        label370: i14 = this.address.hashCode();
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
        case 26:
          this.displayName = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.address = paramCodedInputByteBufferNano.readString();
          break;
        case 40:
          this.timestamp = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 49:
          this.accuracy = Double.valueOf(paramCodedInputByteBufferNano.readDouble());
          break;
        case 58:
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 66:
          this.levelId = paramCodedInputByteBufferNano.readString();
          break;
        case 77:
          this.levelNumber = Float.valueOf(paramCodedInputByteBufferNano.readFloat());
          break;
        case 82:
        }
        this.source = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.latitude != null)
        paramCodedOutputByteBufferNano.writeDouble(1, this.latitude.doubleValue());
      if (this.longitude != null)
        paramCodedOutputByteBufferNano.writeDouble(2, this.longitude.doubleValue());
      if (this.displayName != null)
        paramCodedOutputByteBufferNano.writeString(3, this.displayName);
      if (this.address != null)
        paramCodedOutputByteBufferNano.writeString(4, this.address);
      if (this.timestamp != null)
        paramCodedOutputByteBufferNano.writeUInt64(5, this.timestamp.longValue());
      if (this.accuracy != null)
        paramCodedOutputByteBufferNano.writeDouble(6, this.accuracy.doubleValue());
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(7, this.id);
      if (this.levelId != null)
        paramCodedOutputByteBufferNano.writeString(8, this.levelId);
      if (this.levelNumber != null)
        paramCodedOutputByteBufferNano.writeFloat(9, this.levelNumber.floatValue());
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeString(10, this.source);
    }
  }

  public static final class MenuItem extends MessageNano
  {
    public static final MenuItem[] EMPTY_ARRAY = new MenuItem[0];
    public int action = -2147483648;
    public String broadcastAction;
    private int cachedSize = -1;
    public String id;
    public String payload;
    public TimelineNano.Entity recipient = null;
    public Boolean removeWhenSelected;
    public int travelMode = -2147483648;
    public TimelineNano.MenuValue[] value = TimelineNano.MenuValue.EMPTY_ARRAY;

    public static MenuItem parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MenuItem().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MenuItem parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MenuItem)MessageNano.mergeFrom(new MenuItem(), paramArrayOfByte);
    }

    public final MenuItem clear()
    {
      this.id = null;
      this.action = -2147483648;
      this.value = TimelineNano.MenuValue.EMPTY_ARRAY;
      this.broadcastAction = null;
      this.removeWhenSelected = null;
      this.travelMode = -2147483648;
      this.recipient = null;
      this.payload = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MenuItem localMenuItem;
      label74: label88: label113: 
      do
      {
        return true;
        if (!(paramObject instanceof MenuItem))
          return false;
        localMenuItem = (MenuItem)paramObject;
        if (this.id != null)
          break label129;
        if (localMenuItem.id != null)
          break;
        if ((this.action != localMenuItem.action) || (!Arrays.equals(this.value, localMenuItem.value)))
          break;
        if (this.broadcastAction != null)
          break label146;
        if (localMenuItem.broadcastAction != null)
          break;
        if (this.removeWhenSelected != null)
          break label163;
        if (localMenuItem.removeWhenSelected != null)
          break;
        if (this.travelMode != localMenuItem.travelMode)
          break;
        if (this.recipient != null)
          break label180;
        if (localMenuItem.recipient != null)
          break;
        if (this.payload != null)
          break label197;
      }
      while (localMenuItem.payload == null);
      label129: label146: label163: label180: label197: 
      while (!this.payload.equals(localMenuItem.payload))
      {
        do
        {
          do
          {
            do
            {
              do
                return false;
              while (!this.id.equals(localMenuItem.id));
              break;
            }
            while (!this.broadcastAction.equals(localMenuItem.broadcastAction));
            break label74;
          }
          while (!this.removeWhenSelected.equals(localMenuItem.removeWhenSelected));
          break label88;
        }
        while (!this.recipient.equals(localMenuItem.recipient));
        break label113;
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
      String str = this.id;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.action != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(2, this.action);
      if (this.value != null)
      {
        TimelineNano.MenuValue[] arrayOfMenuValue = this.value;
        int j = arrayOfMenuValue.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfMenuValue[k]);
      }
      if (this.broadcastAction != null)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.broadcastAction);
      if (this.removeWhenSelected != null)
        i += CodedOutputByteBufferNano.computeBoolSize(7, this.removeWhenSelected.booleanValue());
      if (this.travelMode != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(8, this.travelMode);
      if (this.recipient != null)
        i += CodedOutputByteBufferNano.computeMessageSize(9, this.recipient);
      if (this.payload != null)
        i += CodedOutputByteBufferNano.computeStringSize(10, this.payload);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      int i2;
      label51: int i4;
      label71: int i6;
      label99: int i7;
      int i8;
      if (this.id == null)
      {
        i = 0;
        j = 31 * (i + 527) + this.action;
        if (this.value != null)
          break label140;
        j *= 31;
        int i1 = j * 31;
        if (this.broadcastAction != null)
          break label195;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.removeWhenSelected != null)
          break label207;
        i4 = 0;
        int i5 = 31 * (31 * (i3 + i4) + this.travelMode);
        if (this.recipient != null)
          break label229;
        i6 = 0;
        i7 = 31 * (i5 + i6);
        String str = this.payload;
        i8 = 0;
        if (str != null)
          break label241;
      }
      while (true)
      {
        return i7 + i8;
        i = this.id.hashCode();
        break;
        label140: int k = 0;
        label142: int m;
        if (k < this.value.length)
        {
          m = j * 31;
          if (this.value[k] != null)
            break label181;
        }
        label181: for (int n = 0; ; n = this.value[k].hashCode())
        {
          j = m + n;
          k++;
          break label142;
          break;
        }
        label195: i2 = this.broadcastAction.hashCode();
        break label51;
        label207: if (this.removeWhenSelected.booleanValue())
        {
          i4 = 1;
          break label71;
        }
        i4 = 2;
        break label71;
        label229: i6 = this.recipient.hashCode();
        break label99;
        label241: i8 = this.payload.hashCode();
      }
    }

    public MenuItem mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.action = paramCodedInputByteBufferNano.readInt32();
          break;
        case 26:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          if (this.value == null);
          for (int k = 0; ; k = this.value.length)
          {
            TimelineNano.MenuValue[] arrayOfMenuValue = new TimelineNano.MenuValue[k + j];
            if (this.value != null)
              System.arraycopy(this.value, 0, arrayOfMenuValue, 0, k);
            this.value = arrayOfMenuValue;
            while (k < -1 + this.value.length)
            {
              this.value[k] = new TimelineNano.MenuValue();
              paramCodedInputByteBufferNano.readMessage(this.value[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.value[k] = new TimelineNano.MenuValue();
          paramCodedInputByteBufferNano.readMessage(this.value[k]);
          break;
        case 42:
          this.broadcastAction = paramCodedInputByteBufferNano.readString();
          break;
        case 56:
          this.removeWhenSelected = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 64:
          this.travelMode = paramCodedInputByteBufferNano.readInt32();
          break;
        case 74:
          this.recipient = new TimelineNano.Entity();
          paramCodedInputByteBufferNano.readMessage(this.recipient);
          break;
        case 82:
        }
        this.payload = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.action != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(2, this.action);
      if (this.value != null)
      {
        TimelineNano.MenuValue[] arrayOfMenuValue = this.value;
        int i = arrayOfMenuValue.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfMenuValue[j]);
      }
      if (this.broadcastAction != null)
        paramCodedOutputByteBufferNano.writeString(5, this.broadcastAction);
      if (this.removeWhenSelected != null)
        paramCodedOutputByteBufferNano.writeBool(7, this.removeWhenSelected.booleanValue());
      if (this.travelMode != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(8, this.travelMode);
      if (this.recipient != null)
        paramCodedOutputByteBufferNano.writeMessage(9, this.recipient);
      if (this.payload != null)
        paramCodedOutputByteBufferNano.writeString(10, this.payload);
    }

    public final class Action
    {
      public static final int BROADCAST = 7;
      public static final int CUSTOM = 0;
      public static final int DELETE = 3;
      public static final int HANGOUT = 14;
      public static final int MUTE_MIC = 11;
      public static final int NAVIGATE = 9;
      public static final int OPEN_URI = 13;
      public static final int PLAY_VIDEO = 17;
      public static final int READ_ALOUD = 5;
      public static final int READ_MORE = 16;
      public static final int REPLY = 2;
      public static final int REPLY_ALL = 6;
      public static final int SEARCH = 10;
      public static final int SEND = 21;
      public static final int SEND_MESSAGE = 18;
      public static final int SEND_TO_PHONE = 12;
      public static final int SHARE = 4;
      public static final int SHOW_RECIPIENTS = 20;
      public static final int TOGGLE_PINNED = 15;
      public static final int VIEW_WEBSITE = 13;
      public static final int VOICE_CALL = 8;
      public static final int VOLUME = 19;

      public Action()
      {
      }
    }

    public final class State
    {
      public static final int CONFIRMED = 2;
      public static final int DEFAULT = 0;
      public static final int PENDING = 1;

      public State()
      {
      }
    }

    public final class TravelMode
    {
      public static final int BICYCLING = 3;
      public static final int DRIVING = 1;
      public static final int MOST_RECENTLY_USED = 0;
      public static final int TRANSIT = 4;
      public static final int WALKING = 2;

      public TravelMode()
      {
      }
    }
  }

  public static final class MenuValue extends MessageNano
  {
    public static final MenuValue[] EMPTY_ARRAY = new MenuValue[0];
    private int cachedSize = -1;
    public String displayName;
    public String iconUrl;
    public int state = -2147483648;

    public static MenuValue parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MenuValue().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MenuValue parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MenuValue)MessageNano.mergeFrom(new MenuValue(), paramArrayOfByte);
    }

    public final MenuValue clear()
    {
      this.state = -2147483648;
      this.displayName = null;
      this.iconUrl = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MenuValue localMenuValue;
      do
      {
        return true;
        if (!(paramObject instanceof MenuValue))
          return false;
        localMenuValue = (MenuValue)paramObject;
        if (this.state != localMenuValue.state)
          break;
        if (this.displayName != null)
          break label62;
        if (localMenuValue.displayName != null)
          break;
        if (this.iconUrl != null)
          break label79;
      }
      while (localMenuValue.iconUrl == null);
      label62: label79: 
      while (!this.iconUrl.equals(localMenuValue.iconUrl))
      {
        do
          return false;
        while (!this.displayName.equals(localMenuValue.displayName));
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
      String str = this.displayName;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.displayName);
      if (this.iconUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.iconUrl);
      if (this.state != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.state);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.state);
      int j;
      int k;
      int m;
      if (this.displayName == null)
      {
        j = 0;
        k = 31 * (i + j);
        String str = this.iconUrl;
        m = 0;
        if (str != null)
          break label58;
      }
      while (true)
      {
        return k + m;
        j = this.displayName.hashCode();
        break;
        label58: m = this.iconUrl.hashCode();
      }
    }

    public MenuValue mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.displayName = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.iconUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 24:
        }
        this.state = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.displayName != null)
        paramCodedOutputByteBufferNano.writeString(1, this.displayName);
      if (this.iconUrl != null)
        paramCodedOutputByteBufferNano.writeString(2, this.iconUrl);
      if (this.state != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(3, this.state);
    }
  }

  public static final class MessagingPersona extends MessageNano
  {
    public static final MessagingPersona[] EMPTY_ARRAY = new MessagingPersona[0];
    public String[] acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
    private int cachedSize = -1;
    public Boolean isDefault;
    public String personaId;
    public String source;

    public static MessagingPersona parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MessagingPersona().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MessagingPersona parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MessagingPersona)MessageNano.mergeFrom(new MessagingPersona(), paramArrayOfByte);
    }

    public final MessagingPersona clear()
    {
      this.source = null;
      this.personaId = null;
      this.isDefault = null;
      this.acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label128: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof MessagingPersona))
          return false;
        MessagingPersona localMessagingPersona = (MessagingPersona)paramObject;
        if (this.source == null)
          if (localMessagingPersona.source == null)
          {
            if (this.personaId != null)
              break label96;
            if (localMessagingPersona.personaId == null)
            {
              label49: if (this.isDefault != null)
                break label113;
              if (localMessagingPersona.isDefault != null);
            }
          }
        while (true)
        {
          if (Arrays.equals(this.acceptType, localMessagingPersona.acceptType))
            break label128;
          label96: label113: 
          do
          {
            do
            {
              do
                return false;
              while (!this.source.equals(localMessagingPersona.source));
              break;
            }
            while (!this.personaId.equals(localMessagingPersona.personaId));
            break label49;
          }
          while (!this.isDefault.equals(localMessagingPersona.isDefault));
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
      String str = this.source;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.source);
      if (this.personaId != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.personaId);
      if (this.isDefault != null)
        i += CodedOutputByteBufferNano.computeBoolSize(3, this.isDefault.booleanValue());
      if ((this.acceptType != null) && (this.acceptType.length > 0))
      {
        int j = 0;
        String[] arrayOfString = this.acceptType;
        int k = arrayOfString.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString[m]);
        i = i + j + 1 * this.acceptType.length;
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int m;
      int n;
      if (this.source == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.personaId != null)
          break label80;
        k = 0;
        m = 31 * (j + k);
        if (this.isDefault != null)
          break label91;
        n = 0;
      }
      int i1;
      while (true)
      {
        i1 = m + n;
        if (this.acceptType != null)
          break label113;
        i1 *= 31;
        return i1;
        i = this.source.hashCode();
        break;
        label80: k = this.personaId.hashCode();
        break label27;
        label91: if (this.isDefault.booleanValue())
          n = 1;
        else
          n = 2;
      }
      label113: int i2 = 0;
      label116: int i3;
      if (i2 < this.acceptType.length)
      {
        i3 = i1 * 31;
        if (this.acceptType[i2] != null)
          break label159;
      }
      label159: for (int i4 = 0; ; i4 = this.acceptType[i2].hashCode())
      {
        i1 = i3 + i4;
        i2++;
        break label116;
        break;
      }
    }

    public MessagingPersona mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.source = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.personaId = paramCodedInputByteBufferNano.readString();
          break;
        case 24:
          this.isDefault = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 34:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 34);
        int k = this.acceptType.length;
        String[] arrayOfString = new String[k + j];
        System.arraycopy(this.acceptType, 0, arrayOfString, 0, k);
        this.acceptType = arrayOfString;
        while (k < -1 + this.acceptType.length)
        {
          this.acceptType[k] = paramCodedInputByteBufferNano.readString();
          paramCodedInputByteBufferNano.readTag();
          k++;
        }
        this.acceptType[k] = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeString(1, this.source);
      if (this.personaId != null)
        paramCodedOutputByteBufferNano.writeString(2, this.personaId);
      if (this.isDefault != null)
        paramCodedOutputByteBufferNano.writeBool(3, this.isDefault.booleanValue());
      if (this.acceptType != null)
      {
        String[] arrayOfString = this.acceptType;
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeString(4, arrayOfString[j]);
      }
    }
  }

  public static final class NotificationConfig extends MessageNano
  {
    public static final NotificationConfig[] EMPTY_ARRAY = new NotificationConfig[0];
    private int cachedSize = -1;
    public Long deliveryTime;
    public int level = -2147483648;

    public static NotificationConfig parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new NotificationConfig().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static NotificationConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (NotificationConfig)MessageNano.mergeFrom(new NotificationConfig(), paramArrayOfByte);
    }

    public final NotificationConfig clear()
    {
      this.level = -2147483648;
      this.deliveryTime = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      NotificationConfig localNotificationConfig;
      do
      {
        return true;
        if (!(paramObject instanceof NotificationConfig))
          return false;
        localNotificationConfig = (NotificationConfig)paramObject;
        if (this.level != localNotificationConfig.level)
          break;
        if (this.deliveryTime != null)
          break label48;
      }
      while (localNotificationConfig.deliveryTime == null);
      label48: 
      while (!this.deliveryTime.equals(localNotificationConfig.deliveryTime))
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
      int i = this.level;
      int j = 0;
      if (i != -2147483648)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.level);
      if (this.deliveryTime != null)
        j += CodedOutputByteBufferNano.computeUInt64Size(2, this.deliveryTime.longValue());
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.level);
      if (this.deliveryTime == null);
      for (int j = 0; ; j = (int)(this.deliveryTime.longValue() ^ this.deliveryTime.longValue() >>> 32))
        return i + j;
    }

    public NotificationConfig mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.level = paramCodedInputByteBufferNano.readInt32();
          break;
        case 16:
        }
        this.deliveryTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.level != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.level);
      if (this.deliveryTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.deliveryTime.longValue());
    }

    public final class Level
    {
      public static final int DEFAULT = 10;

      public Level()
      {
      }
    }
  }

  public final class SharingFeature
  {
    public static final int ADD_CAPTION;

    public SharingFeature()
    {
    }
  }

  public static final class TimelineItem extends MessageNano
  {
    public static final TimelineItem[] EMPTY_ARRAY = new TimelineItem[0];
    public TimelineNano.Attachment[] attachment = TimelineNano.Attachment.EMPTY_ARRAY;
    public String bundleId;
    private int cachedSize = -1;
    public String canonicalUrl;
    public int cloudSyncProtocol = -2147483648;
    public int cloudSyncStatus = -2147483648;
    public int companionSyncProtocol = -2147483648;
    public int companionSyncStatus = -2147483648;
    public Long creationTime;
    public TimelineNano.Entity creator = null;
    public Long displayTime;
    public Long expirationTime;
    public String html;
    public String id;
    public String inReplyTo;
    public Boolean isBundleCover;
    public Boolean isDeleted;
    public Boolean isPinned;
    public TimelineNano.LinkSpec[] linkSpec = TimelineNano.LinkSpec.EMPTY_ARRAY;
    public TimelineNano.Location location = null;
    public TimelineNano.MenuItem[] menuItem = TimelineNano.MenuItem.EMPTY_ARRAY;
    public Long modifiedTime;
    public TimelineNano.NotificationConfig notification = null;
    public TimelineNano.MenuItem[] pendingAction = TimelineNano.MenuItem.EMPTY_ARRAY;
    public Integer pinScore;
    public Long pinTime;
    public ProgressStatus progressStatus = null;
    public String sendToPhoneUrl;
    public TimelineNano.Entity[] shareTarget = TimelineNano.Entity.EMPTY_ARRAY;
    public int[] sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
    public int smsType = -2147483648;
    public String source;
    public String sourceAccountId;
    public String sourceItemId;
    public int sourceType = -2147483648;
    public String speakableText;
    public String speakableType;
    public String text;
    public String title;
    public int viewType = -2147483648;

    public static TimelineItem parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new TimelineItem().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static TimelineItem parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (TimelineItem)MessageNano.mergeFrom(new TimelineItem(), paramArrayOfByte);
    }

    public final TimelineItem clear()
    {
      this.id = null;
      this.bundleId = null;
      this.isBundleCover = null;
      this.creationTime = null;
      this.modifiedTime = null;
      this.displayTime = null;
      this.pinTime = null;
      this.expirationTime = null;
      this.pinScore = null;
      this.isPinned = null;
      this.isDeleted = null;
      this.source = null;
      this.sourceType = -2147483648;
      this.sourceItemId = null;
      this.sourceAccountId = null;
      this.canonicalUrl = null;
      this.creator = null;
      this.shareTarget = TimelineNano.Entity.EMPTY_ARRAY;
      this.inReplyTo = null;
      this.title = null;
      this.text = null;
      this.html = null;
      this.speakableType = null;
      this.speakableText = null;
      this.attachment = TimelineNano.Attachment.EMPTY_ARRAY;
      this.location = null;
      this.menuItem = TimelineNano.MenuItem.EMPTY_ARRAY;
      this.pendingAction = TimelineNano.MenuItem.EMPTY_ARRAY;
      this.notification = null;
      this.cloudSyncStatus = -2147483648;
      this.companionSyncStatus = -2147483648;
      this.cloudSyncProtocol = -2147483648;
      this.companionSyncProtocol = -2147483648;
      this.smsType = -2147483648;
      this.sendToPhoneUrl = null;
      this.viewType = -2147483648;
      this.sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
      this.progressStatus = null;
      this.linkSpec = TimelineNano.LinkSpec.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label49: label63: label77: label91: label228: label871: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof TimelineItem))
          return false;
        TimelineItem localTimelineItem = (TimelineItem)paramObject;
        if (this.id == null)
          if (localTimelineItem.id == null)
          {
            if (this.bundleId != null)
              break label565;
            if (localTimelineItem.bundleId == null)
            {
              if (this.isBundleCover != null)
                break label582;
              if (localTimelineItem.isBundleCover == null)
              {
                if (this.creationTime != null)
                  break label599;
                if (localTimelineItem.creationTime == null)
                {
                  if (this.modifiedTime != null)
                    break label616;
                  if (localTimelineItem.modifiedTime == null)
                  {
                    if (this.displayTime != null)
                      break label633;
                    if (localTimelineItem.displayTime == null)
                    {
                      label105: if (this.pinTime != null)
                        break label650;
                      if (localTimelineItem.pinTime == null)
                      {
                        label119: if (this.expirationTime != null)
                          break label667;
                        if (localTimelineItem.expirationTime == null)
                        {
                          if (this.pinScore != null)
                            break label684;
                          if (localTimelineItem.pinScore == null)
                          {
                            if (this.isPinned != null)
                              break label701;
                            if (localTimelineItem.isPinned == null)
                            {
                              if (this.isDeleted != null)
                                break label718;
                              if (localTimelineItem.isDeleted == null)
                              {
                                if (this.source != null)
                                  break label735;
                                if (localTimelineItem.source == null)
                                  if (this.sourceType == localTimelineItem.sourceType)
                                  {
                                    if (this.sourceItemId != null)
                                      break label752;
                                    if (localTimelineItem.sourceItemId == null)
                                    {
                                      if (this.sourceAccountId != null)
                                        break label769;
                                      if (localTimelineItem.sourceAccountId == null)
                                      {
                                        if (this.canonicalUrl != null)
                                          break label786;
                                        if (localTimelineItem.canonicalUrl == null)
                                        {
                                          label242: if (this.creator != null)
                                            break label803;
                                          if (localTimelineItem.creator == null)
                                            if (Arrays.equals(this.shareTarget, localTimelineItem.shareTarget))
                                            {
                                              if (this.inReplyTo != null)
                                                break label820;
                                              if (localTimelineItem.inReplyTo == null)
                                              {
                                                if (this.title != null)
                                                  break label837;
                                                if (localTimelineItem.title == null)
                                                {
                                                  if (this.text != null)
                                                    break label854;
                                                  if (localTimelineItem.text == null)
                                                  {
                                                    if (this.html != null)
                                                      break label871;
                                                    if (localTimelineItem.html == null)
                                                    {
                                                      if (this.speakableType != null)
                                                        break label888;
                                                      if (localTimelineItem.speakableType == null)
                                                      {
                                                        if (this.speakableText != null)
                                                          break label905;
                                                        if (localTimelineItem.speakableText == null)
                                                          if (Arrays.equals(this.attachment, localTimelineItem.attachment))
                                                          {
                                                            if (this.location != null)
                                                              break label922;
                                                            label493: if (localTimelineItem.location == null)
                                                              label382: if ((Arrays.equals(this.menuItem, localTimelineItem.menuItem)) && (Arrays.equals(this.pendingAction, localTimelineItem.pendingAction)))
                                                              {
                                                                if (this.notification != null)
                                                                  break label939;
                                                                if (localTimelineItem.notification == null)
                                                                  if ((this.cloudSyncStatus == localTimelineItem.cloudSyncStatus) && (this.companionSyncStatus == localTimelineItem.companionSyncStatus) && (this.cloudSyncProtocol == localTimelineItem.cloudSyncProtocol) && (this.companionSyncProtocol == localTimelineItem.companionSyncProtocol) && (this.smsType == localTimelineItem.smsType))
                                                                  {
                                                                    if (this.sendToPhoneUrl != null)
                                                                      break label956;
                                                                    if (localTimelineItem.sendToPhoneUrl == null)
                                                                      if ((this.viewType == localTimelineItem.viewType) && (Arrays.equals(this.sharingFeature, localTimelineItem.sharingFeature)))
                                                                      {
                                                                        if (this.progressStatus != null)
                                                                          break label973;
                                                                        if (localTimelineItem.progressStatus != null);
                                                                      }
                                                                  }
                                                              }
                                                          }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                        }
                                      }
                                    }
                                  }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        label616: label752: label888: 
        while (true)
        {
          if (Arrays.equals(this.linkSpec, localTimelineItem.linkSpec))
            break label988;
          label633: 
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
                                                      {
                                                        do
                                                        {
                                                          do
                                                          {
                                                            do
                                                              return false;
                                                            while (!this.id.equals(localTimelineItem.id));
                                                            break;
                                                          }
                                                          while (!this.bundleId.equals(localTimelineItem.bundleId));
                                                          break label49;
                                                        }
                                                        while (!this.isBundleCover.equals(localTimelineItem.isBundleCover));
                                                        break label63;
                                                      }
                                                      while (!this.creationTime.equals(localTimelineItem.creationTime));
                                                      break label77;
                                                    }
                                                    while (!this.modifiedTime.equals(localTimelineItem.modifiedTime));
                                                    break label91;
                                                  }
                                                  while (!this.displayTime.equals(localTimelineItem.displayTime));
                                                  break label105;
                                                }
                                                while (!this.pinTime.equals(localTimelineItem.pinTime));
                                                break label119;
                                              }
                                              while (!this.expirationTime.equals(localTimelineItem.expirationTime));
                                              break label133;
                                            }
                                            while (!this.pinScore.equals(localTimelineItem.pinScore));
                                            break label147;
                                          }
                                          while (!this.isPinned.equals(localTimelineItem.isPinned));
                                          break label161;
                                        }
                                        while (!this.isDeleted.equals(localTimelineItem.isDeleted));
                                        break label175;
                                      }
                                      while (!this.source.equals(localTimelineItem.source));
                                      break label189;
                                    }
                                    while (!this.sourceItemId.equals(localTimelineItem.sourceItemId));
                                    break label214;
                                  }
                                  while (!this.sourceAccountId.equals(localTimelineItem.sourceAccountId));
                                  break label228;
                                }
                                while (!this.canonicalUrl.equals(localTimelineItem.canonicalUrl));
                                break label242;
                              }
                              while (!this.creator.equals(localTimelineItem.creator));
                              break label256;
                            }
                            while (!this.inReplyTo.equals(localTimelineItem.inReplyTo));
                            break label284;
                          }
                          while (!this.title.equals(localTimelineItem.title));
                          break label298;
                        }
                        while (!this.text.equals(localTimelineItem.text));
                        break label312;
                      }
                      while (!this.html.equals(localTimelineItem.html));
                      break label326;
                    }
                    while (!this.speakableType.equals(localTimelineItem.speakableType));
                    break label340;
                  }
                  while (!this.speakableText.equals(localTimelineItem.speakableText));
                  break label354;
                }
                while (!this.location.equals(localTimelineItem.location));
                break label382;
              }
              while (!this.notification.equals(localTimelineItem.notification));
              break label424;
            }
            while (!this.sendToPhoneUrl.equals(localTimelineItem.sendToPhoneUrl));
            break label493;
          }
          while (!this.progressStatus.equals(localTimelineItem.progressStatus));
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
      String str = this.id;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.creationTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(2, this.creationTime.longValue());
      if (this.modifiedTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(3, this.modifiedTime.longValue());
      if (this.source != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.source);
      if (this.creator != null)
        i += CodedOutputByteBufferNano.computeMessageSize(5, this.creator);
      if (this.shareTarget != null)
      {
        TimelineNano.Entity[] arrayOfEntity = this.shareTarget;
        int i8 = arrayOfEntity.length;
        for (int i9 = 0; i9 < i8; i9++)
          i += CodedOutputByteBufferNano.computeMessageSize(6, arrayOfEntity[i9]);
      }
      if (this.inReplyTo != null)
        i += CodedOutputByteBufferNano.computeStringSize(7, this.inReplyTo);
      if (this.text != null)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.text);
      if (this.attachment != null)
      {
        TimelineNano.Attachment[] arrayOfAttachment = this.attachment;
        int i6 = arrayOfAttachment.length;
        for (int i7 = 0; i7 < i6; i7++)
          i += CodedOutputByteBufferNano.computeMessageSize(9, arrayOfAttachment[i7]);
      }
      if (this.location != null)
        i += CodedOutputByteBufferNano.computeMessageSize(10, this.location);
      if (this.menuItem != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem2 = this.menuItem;
        int i4 = arrayOfMenuItem2.length;
        for (int i5 = 0; i5 < i4; i5++)
          i += CodedOutputByteBufferNano.computeMessageSize(11, arrayOfMenuItem2[i5]);
      }
      if (this.cloudSyncStatus != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(12, this.cloudSyncStatus);
      if (this.cloudSyncProtocol != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(13, this.cloudSyncProtocol);
      if (this.sourceType != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(14, this.sourceType);
      if (this.isDeleted != null)
        i += CodedOutputByteBufferNano.computeBoolSize(15, this.isDeleted.booleanValue());
      if (this.notification != null)
        i += CodedOutputByteBufferNano.computeMessageSize(16, this.notification);
      if (this.displayTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(17, this.displayTime.longValue());
      if (this.pendingAction != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem1 = this.pendingAction;
        int i2 = arrayOfMenuItem1.length;
        for (int i3 = 0; i3 < i2; i3++)
          i += CodedOutputByteBufferNano.computeMessageSize(18, arrayOfMenuItem1[i3]);
      }
      if (this.speakableText != null)
        i += CodedOutputByteBufferNano.computeStringSize(19, this.speakableText);
      if (this.smsType != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(20, this.smsType);
      if (this.isPinned != null)
        i += CodedOutputByteBufferNano.computeBoolSize(21, this.isPinned.booleanValue());
      if (this.title != null)
        i += CodedOutputByteBufferNano.computeStringSize(23, this.title);
      if (this.html != null)
        i += CodedOutputByteBufferNano.computeStringSize(24, this.html);
      if (this.bundleId != null)
        i += CodedOutputByteBufferNano.computeStringSize(25, this.bundleId);
      if (this.sendToPhoneUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(28, this.sendToPhoneUrl);
      if (this.isBundleCover != null)
        i += CodedOutputByteBufferNano.computeBoolSize(29, this.isBundleCover.booleanValue());
      if (this.sourceItemId != null)
        i += CodedOutputByteBufferNano.computeStringSize(30, this.sourceItemId);
      if (this.canonicalUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(31, this.canonicalUrl);
      if (this.companionSyncStatus != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(33, this.companionSyncStatus);
      if (this.companionSyncProtocol != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(34, this.companionSyncProtocol);
      if (this.pinTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(35, this.pinTime.longValue());
      if (this.pinScore != null)
        i += CodedOutputByteBufferNano.computeInt32Size(36, this.pinScore.intValue());
      if (this.sourceAccountId != null)
        i += CodedOutputByteBufferNano.computeStringSize(37, this.sourceAccountId);
      if (this.speakableType != null)
        i += CodedOutputByteBufferNano.computeStringSize(38, this.speakableType);
      if (this.expirationTime != null)
        i += CodedOutputByteBufferNano.computeUInt64Size(39, this.expirationTime.longValue());
      if (this.viewType != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(40, this.viewType);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int m = 0;
        int[] arrayOfInt = this.sharingFeature;
        int n = arrayOfInt.length;
        for (int i1 = 0; i1 < n; i1++)
          m += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt[i1]);
        i = i + m + 2 * this.sharingFeature.length;
      }
      if (this.progressStatus != null)
        i += CodedOutputByteBufferNano.computeMessageSize(42, this.progressStatus);
      if (this.linkSpec != null)
      {
        TimelineNano.LinkSpec[] arrayOfLinkSpec = this.linkSpec;
        int j = arrayOfLinkSpec.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(43, arrayOfLinkSpec[k]);
      }
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
      label69: int i5;
      label89: int i7;
      label109: int i9;
      label129: int i11;
      label149: int i13;
      label169: int i15;
      label189: label208: int i18;
      label227: int i20;
      label255: int i22;
      label275: int i24;
      label295: int i26;
      label315: int i27;
      int i32;
      label353: int i34;
      label373: int i36;
      label393: int i38;
      label413: int i40;
      label433: int i42;
      label453: int i43;
      int i48;
      label491: int i49;
      int i57;
      label543: int i59;
      label603: int i60;
      label632: int i62;
      if (this.id == null)
      {
        j = 0;
        int k = 31 * (j + 527);
        if (this.bundleId != null)
          break label684;
        m = 0;
        int n = 31 * (k + m);
        if (this.isBundleCover != null)
          break label696;
        i1 = 0;
        int i2 = 31 * (n + i1);
        if (this.creationTime != null)
          break label718;
        i3 = 0;
        int i4 = 31 * (i2 + i3);
        if (this.modifiedTime != null)
          break label742;
        i5 = 0;
        int i6 = 31 * (i4 + i5);
        if (this.displayTime != null)
          break label766;
        i7 = 0;
        int i8 = 31 * (i6 + i7);
        if (this.pinTime != null)
          break label790;
        i9 = 0;
        int i10 = 31 * (i8 + i9);
        if (this.expirationTime != null)
          break label814;
        i11 = 0;
        int i12 = 31 * (i10 + i11);
        if (this.pinScore != null)
          break label838;
        i13 = 0;
        int i14 = 31 * (i12 + i13);
        if (this.isPinned != null)
          break label850;
        i15 = 0;
        int i16 = 31 * (i14 + i15);
        if (this.isDeleted != null)
          break label872;
        i = 0;
        int i17 = 31 * (i16 + i);
        if (this.source != null)
          break label887;
        i18 = 0;
        int i19 = 31 * (31 * (i17 + i18) + this.sourceType);
        if (this.sourceItemId != null)
          break label899;
        i20 = 0;
        int i21 = 31 * (i19 + i20);
        if (this.sourceAccountId != null)
          break label911;
        i22 = 0;
        int i23 = 31 * (i21 + i22);
        if (this.canonicalUrl != null)
          break label923;
        i24 = 0;
        int i25 = 31 * (i23 + i24);
        if (this.creator != null)
          break label935;
        i26 = 0;
        i27 = i25 + i26;
        if (this.shareTarget != null)
          break label947;
        i27 *= 31;
        int i31 = i27 * 31;
        if (this.inReplyTo != null)
          break label1008;
        i32 = 0;
        int i33 = 31 * (i31 + i32);
        if (this.title != null)
          break label1020;
        i34 = 0;
        int i35 = 31 * (i33 + i34);
        if (this.text != null)
          break label1032;
        i36 = 0;
        int i37 = 31 * (i35 + i36);
        if (this.html != null)
          break label1044;
        i38 = 0;
        int i39 = 31 * (i37 + i38);
        if (this.speakableType != null)
          break label1056;
        i40 = 0;
        int i41 = 31 * (i39 + i40);
        if (this.speakableText != null)
          break label1068;
        i42 = 0;
        i43 = i41 + i42;
        if (this.attachment != null)
          break label1080;
        i43 *= 31;
        int i47 = i43 * 31;
        if (this.location != null)
          break label1141;
        i48 = 0;
        i49 = i47 + i48;
        if (this.menuItem != null)
          break label1153;
        i49 *= 31;
        if (this.pendingAction != null)
          break label1214;
        i49 *= 31;
        int i56 = i49 * 31;
        if (this.notification != null)
          break label1275;
        i57 = 0;
        int i58 = 31 * (31 * (31 * (31 * (31 * (31 * (i56 + i57) + this.cloudSyncStatus) + this.companionSyncStatus) + this.cloudSyncProtocol) + this.companionSyncProtocol) + this.smsType);
        if (this.sendToPhoneUrl != null)
          break label1287;
        i59 = 0;
        i60 = 31 * (i58 + i59) + this.viewType;
        if (this.sharingFeature != null)
          break label1299;
        i60 *= 31;
        i62 = i60 * 31;
        if (this.progressStatus != null)
          break label1333;
      }
      int i64;
      label684: label814: label947: label1333: for (int i63 = 0; ; i63 = this.progressStatus.hashCode())
      {
        i64 = i62 + i63;
        if (this.linkSpec != null)
          break label1345;
        i64 *= 31;
        return i64;
        j = this.id.hashCode();
        break;
        m = this.bundleId.hashCode();
        break label30;
        label696: if (this.isBundleCover.booleanValue())
        {
          i1 = i;
          break label49;
        }
        i1 = 2;
        break label49;
        label718: i3 = (int)(this.creationTime.longValue() ^ this.creationTime.longValue() >>> 32);
        break label69;
        label742: i5 = (int)(this.modifiedTime.longValue() ^ this.modifiedTime.longValue() >>> 32);
        break label89;
        label766: i7 = (int)(this.displayTime.longValue() ^ this.displayTime.longValue() >>> 32);
        break label109;
        i9 = (int)(this.pinTime.longValue() ^ this.pinTime.longValue() >>> 32);
        break label129;
        i11 = (int)(this.expirationTime.longValue() ^ this.expirationTime.longValue() >>> 32);
        break label149;
        label838: i13 = this.pinScore.intValue();
        break label169;
        label850: if (this.isPinned.booleanValue())
        {
          i15 = i;
          break label189;
        }
        i15 = 2;
        break label189;
        label872: if (this.isDeleted.booleanValue())
          break label208;
        i = 2;
        break label208;
        label887: i18 = this.source.hashCode();
        break label227;
        i20 = this.sourceItemId.hashCode();
        break label255;
        i22 = this.sourceAccountId.hashCode();
        break label275;
        i24 = this.canonicalUrl.hashCode();
        break label295;
        i26 = this.creator.hashCode();
        break label315;
        int i28 = 0;
        label950: int i29;
        if (i28 < this.shareTarget.length)
        {
          i29 = i27 * 31;
          if (this.shareTarget[i28] != null)
            break label993;
        }
        label993: for (int i30 = 0; ; i30 = this.shareTarget[i28].hashCode())
        {
          i27 = i29 + i30;
          i28++;
          break label950;
          break;
        }
        label1008: i32 = this.inReplyTo.hashCode();
        break label353;
        label1020: i34 = this.title.hashCode();
        break label373;
        i36 = this.text.hashCode();
        break label393;
        i38 = this.html.hashCode();
        break label413;
        i40 = this.speakableType.hashCode();
        break label433;
        i42 = this.speakableText.hashCode();
        break label453;
        label1080: int i44 = 0;
        label1083: int i45;
        if (i44 < this.attachment.length)
        {
          i45 = i43 * 31;
          if (this.attachment[i44] != null)
            break label1126;
        }
        label1126: for (int i46 = 0; ; i46 = this.attachment[i44].hashCode())
        {
          i43 = i45 + i46;
          i44++;
          break label1083;
          break;
        }
        label1141: i48 = this.location.hashCode();
        break label491;
        int i50 = 0;
        int i51;
        if (i50 < this.menuItem.length)
        {
          i51 = i49 * 31;
          if (this.menuItem[i50] != null)
            break label1199;
        }
        for (int i52 = 0; ; i52 = this.menuItem[i50].hashCode())
        {
          i49 = i51 + i52;
          i50++;
          break label1156;
          break;
        }
        label1214: int i53 = 0;
        label1217: int i54;
        if (i53 < this.pendingAction.length)
        {
          i54 = i49 * 31;
          if (this.pendingAction[i53] != null)
            break label1260;
        }
        label1260: for (int i55 = 0; ; i55 = this.pendingAction[i53].hashCode())
        {
          i49 = i54 + i55;
          i53++;
          break label1217;
          break;
        }
        label1275: i57 = this.notification.hashCode();
        break label543;
        i59 = this.sendToPhoneUrl.hashCode();
        break label603;
        for (int i61 = 0; i61 < this.sharingFeature.length; i61++)
          i60 = i60 * 31 + this.sharingFeature[i61];
        break label632;
      }
      label790: label923: label935: label1068: label1199: label1345: int i65 = 0;
      label899: label911: label1044: label1056: label1348: int i66;
      label1032: label1299: if (i65 < this.linkSpec.length)
      {
        i66 = i64 * 31;
        if (this.linkSpec[i65] != null)
          break label1391;
      }
      label1153: label1156: label1287: label1391: for (int i67 = 0; ; i67 = this.linkSpec[i65].hashCode())
      {
        i64 = i66 + i67;
        i65++;
        break label1348;
        break;
      }
    }

    public TimelineItem mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.creationTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 24:
          this.modifiedTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 34:
          this.source = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          this.creator = new TimelineNano.Entity();
          paramCodedInputByteBufferNano.readMessage(this.creator);
          break;
        case 50:
          int i7 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 50);
          if (this.shareTarget == null);
          for (int i8 = 0; ; i8 = this.shareTarget.length)
          {
            TimelineNano.Entity[] arrayOfEntity = new TimelineNano.Entity[i8 + i7];
            if (this.shareTarget != null)
              System.arraycopy(this.shareTarget, 0, arrayOfEntity, 0, i8);
            this.shareTarget = arrayOfEntity;
            while (i8 < -1 + this.shareTarget.length)
            {
              this.shareTarget[i8] = new TimelineNano.Entity();
              paramCodedInputByteBufferNano.readMessage(this.shareTarget[i8]);
              paramCodedInputByteBufferNano.readTag();
              i8++;
            }
          }
          this.shareTarget[i8] = new TimelineNano.Entity();
          paramCodedInputByteBufferNano.readMessage(this.shareTarget[i8]);
          break;
        case 58:
          this.inReplyTo = paramCodedInputByteBufferNano.readString();
          break;
        case 66:
          this.text = paramCodedInputByteBufferNano.readString();
          break;
        case 74:
          int i5 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 74);
          if (this.attachment == null);
          for (int i6 = 0; ; i6 = this.attachment.length)
          {
            TimelineNano.Attachment[] arrayOfAttachment = new TimelineNano.Attachment[i6 + i5];
            if (this.attachment != null)
              System.arraycopy(this.attachment, 0, arrayOfAttachment, 0, i6);
            this.attachment = arrayOfAttachment;
            while (i6 < -1 + this.attachment.length)
            {
              this.attachment[i6] = new TimelineNano.Attachment();
              paramCodedInputByteBufferNano.readMessage(this.attachment[i6]);
              paramCodedInputByteBufferNano.readTag();
              i6++;
            }
          }
          this.attachment[i6] = new TimelineNano.Attachment();
          paramCodedInputByteBufferNano.readMessage(this.attachment[i6]);
          break;
        case 82:
          this.location = new TimelineNano.Location();
          paramCodedInputByteBufferNano.readMessage(this.location);
          break;
        case 90:
          int i3 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 90);
          if (this.menuItem == null);
          for (int i4 = 0; ; i4 = this.menuItem.length)
          {
            TimelineNano.MenuItem[] arrayOfMenuItem2 = new TimelineNano.MenuItem[i4 + i3];
            if (this.menuItem != null)
              System.arraycopy(this.menuItem, 0, arrayOfMenuItem2, 0, i4);
            this.menuItem = arrayOfMenuItem2;
            while (i4 < -1 + this.menuItem.length)
            {
              this.menuItem[i4] = new TimelineNano.MenuItem();
              paramCodedInputByteBufferNano.readMessage(this.menuItem[i4]);
              paramCodedInputByteBufferNano.readTag();
              i4++;
            }
          }
          this.menuItem[i4] = new TimelineNano.MenuItem();
          paramCodedInputByteBufferNano.readMessage(this.menuItem[i4]);
          break;
        case 96:
          this.cloudSyncStatus = paramCodedInputByteBufferNano.readInt32();
          break;
        case 104:
          this.cloudSyncProtocol = paramCodedInputByteBufferNano.readInt32();
          break;
        case 112:
          this.sourceType = paramCodedInputByteBufferNano.readInt32();
          break;
        case 120:
          this.isDeleted = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 130:
          this.notification = new TimelineNano.NotificationConfig();
          paramCodedInputByteBufferNano.readMessage(this.notification);
          break;
        case 136:
          this.displayTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 146:
          int i1 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 146);
          if (this.pendingAction == null);
          for (int i2 = 0; ; i2 = this.pendingAction.length)
          {
            TimelineNano.MenuItem[] arrayOfMenuItem1 = new TimelineNano.MenuItem[i2 + i1];
            if (this.pendingAction != null)
              System.arraycopy(this.pendingAction, 0, arrayOfMenuItem1, 0, i2);
            this.pendingAction = arrayOfMenuItem1;
            while (i2 < -1 + this.pendingAction.length)
            {
              this.pendingAction[i2] = new TimelineNano.MenuItem();
              paramCodedInputByteBufferNano.readMessage(this.pendingAction[i2]);
              paramCodedInputByteBufferNano.readTag();
              i2++;
            }
          }
          this.pendingAction[i2] = new TimelineNano.MenuItem();
          paramCodedInputByteBufferNano.readMessage(this.pendingAction[i2]);
          break;
        case 154:
          this.speakableText = paramCodedInputByteBufferNano.readString();
          break;
        case 160:
          this.smsType = paramCodedInputByteBufferNano.readInt32();
          break;
        case 168:
          this.isPinned = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 186:
          this.title = paramCodedInputByteBufferNano.readString();
          break;
        case 194:
          this.html = paramCodedInputByteBufferNano.readString();
          break;
        case 202:
          this.bundleId = paramCodedInputByteBufferNano.readString();
          break;
        case 226:
          this.sendToPhoneUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 232:
          this.isBundleCover = Boolean.valueOf(paramCodedInputByteBufferNano.readBool());
          break;
        case 242:
          this.sourceItemId = paramCodedInputByteBufferNano.readString();
          break;
        case 250:
          this.canonicalUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 264:
          this.companionSyncStatus = paramCodedInputByteBufferNano.readInt32();
          break;
        case 272:
          this.companionSyncProtocol = paramCodedInputByteBufferNano.readInt32();
          break;
        case 280:
          this.pinTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 288:
          this.pinScore = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 298:
          this.sourceAccountId = paramCodedInputByteBufferNano.readString();
          break;
        case 306:
          this.speakableType = paramCodedInputByteBufferNano.readString();
          break;
        case 312:
          this.expirationTime = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 320:
          this.viewType = paramCodedInputByteBufferNano.readInt32();
          break;
        case 328:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 328);
          int n = this.sharingFeature.length;
          int[] arrayOfInt = new int[n + m];
          System.arraycopy(this.sharingFeature, 0, arrayOfInt, 0, n);
          this.sharingFeature = arrayOfInt;
          while (n < -1 + this.sharingFeature.length)
          {
            this.sharingFeature[n] = paramCodedInputByteBufferNano.readInt32();
            paramCodedInputByteBufferNano.readTag();
            n++;
          }
          this.sharingFeature[n] = paramCodedInputByteBufferNano.readInt32();
          break;
        case 338:
          this.progressStatus = new ProgressStatus();
          paramCodedInputByteBufferNano.readMessage(this.progressStatus);
          break;
        case 346:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 346);
        if (this.linkSpec == null);
        for (int k = 0; ; k = this.linkSpec.length)
        {
          TimelineNano.LinkSpec[] arrayOfLinkSpec = new TimelineNano.LinkSpec[k + j];
          if (this.linkSpec != null)
            System.arraycopy(this.linkSpec, 0, arrayOfLinkSpec, 0, k);
          this.linkSpec = arrayOfLinkSpec;
          while (k < -1 + this.linkSpec.length)
          {
            this.linkSpec[k] = new TimelineNano.LinkSpec();
            paramCodedInputByteBufferNano.readMessage(this.linkSpec[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.linkSpec[k] = new TimelineNano.LinkSpec();
        paramCodedInputByteBufferNano.readMessage(this.linkSpec[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.id != null)
        paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.creationTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.creationTime.longValue());
      if (this.modifiedTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(3, this.modifiedTime.longValue());
      if (this.source != null)
        paramCodedOutputByteBufferNano.writeString(4, this.source);
      if (this.creator != null)
        paramCodedOutputByteBufferNano.writeMessage(5, this.creator);
      if (this.shareTarget != null)
      {
        TimelineNano.Entity[] arrayOfEntity = this.shareTarget;
        int i6 = arrayOfEntity.length;
        for (int i7 = 0; i7 < i6; i7++)
          paramCodedOutputByteBufferNano.writeMessage(6, arrayOfEntity[i7]);
      }
      if (this.inReplyTo != null)
        paramCodedOutputByteBufferNano.writeString(7, this.inReplyTo);
      if (this.text != null)
        paramCodedOutputByteBufferNano.writeString(8, this.text);
      if (this.attachment != null)
      {
        TimelineNano.Attachment[] arrayOfAttachment = this.attachment;
        int i4 = arrayOfAttachment.length;
        for (int i5 = 0; i5 < i4; i5++)
          paramCodedOutputByteBufferNano.writeMessage(9, arrayOfAttachment[i5]);
      }
      if (this.location != null)
        paramCodedOutputByteBufferNano.writeMessage(10, this.location);
      if (this.menuItem != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem2 = this.menuItem;
        int i2 = arrayOfMenuItem2.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramCodedOutputByteBufferNano.writeMessage(11, arrayOfMenuItem2[i3]);
      }
      if (this.cloudSyncStatus != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(12, this.cloudSyncStatus);
      if (this.cloudSyncProtocol != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(13, this.cloudSyncProtocol);
      if (this.sourceType != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(14, this.sourceType);
      if (this.isDeleted != null)
        paramCodedOutputByteBufferNano.writeBool(15, this.isDeleted.booleanValue());
      if (this.notification != null)
        paramCodedOutputByteBufferNano.writeMessage(16, this.notification);
      if (this.displayTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(17, this.displayTime.longValue());
      if (this.pendingAction != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem1 = this.pendingAction;
        int n = arrayOfMenuItem1.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeMessage(18, arrayOfMenuItem1[i1]);
      }
      if (this.speakableText != null)
        paramCodedOutputByteBufferNano.writeString(19, this.speakableText);
      if (this.smsType != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(20, this.smsType);
      if (this.isPinned != null)
        paramCodedOutputByteBufferNano.writeBool(21, this.isPinned.booleanValue());
      if (this.title != null)
        paramCodedOutputByteBufferNano.writeString(23, this.title);
      if (this.html != null)
        paramCodedOutputByteBufferNano.writeString(24, this.html);
      if (this.bundleId != null)
        paramCodedOutputByteBufferNano.writeString(25, this.bundleId);
      if (this.sendToPhoneUrl != null)
        paramCodedOutputByteBufferNano.writeString(28, this.sendToPhoneUrl);
      if (this.isBundleCover != null)
        paramCodedOutputByteBufferNano.writeBool(29, this.isBundleCover.booleanValue());
      if (this.sourceItemId != null)
        paramCodedOutputByteBufferNano.writeString(30, this.sourceItemId);
      if (this.canonicalUrl != null)
        paramCodedOutputByteBufferNano.writeString(31, this.canonicalUrl);
      if (this.companionSyncStatus != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(33, this.companionSyncStatus);
      if (this.companionSyncProtocol != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(34, this.companionSyncProtocol);
      if (this.pinTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(35, this.pinTime.longValue());
      if (this.pinScore != null)
        paramCodedOutputByteBufferNano.writeInt32(36, this.pinScore.intValue());
      if (this.sourceAccountId != null)
        paramCodedOutputByteBufferNano.writeString(37, this.sourceAccountId);
      if (this.speakableType != null)
        paramCodedOutputByteBufferNano.writeString(38, this.speakableType);
      if (this.expirationTime != null)
        paramCodedOutputByteBufferNano.writeUInt64(39, this.expirationTime.longValue());
      if (this.viewType != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(40, this.viewType);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int[] arrayOfInt = this.sharingFeature;
        int k = arrayOfInt.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeInt32(41, arrayOfInt[m]);
      }
      if (this.progressStatus != null)
        paramCodedOutputByteBufferNano.writeMessage(42, this.progressStatus);
      if (this.linkSpec != null)
      {
        TimelineNano.LinkSpec[] arrayOfLinkSpec = this.linkSpec;
        int i = arrayOfLinkSpec.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(43, arrayOfLinkSpec[j]);
      }
    }

    public static final class ProgressStatus extends MessageNano
    {
      public static final ProgressStatus[] EMPTY_ARRAY = new ProgressStatus[0];
      private int cachedSize = -1;
      public String label;

      public final ProgressStatus clear()
      {
        this.label = null;
        this.cachedSize = -1;
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        ProgressStatus localProgressStatus;
        do
        {
          return true;
          if (!(paramObject instanceof ProgressStatus))
            return false;
          localProgressStatus = (ProgressStatus)paramObject;
          if (this.label != null)
            break;
        }
        while (localProgressStatus.label == null);
        return false;
        return this.label.equals(localProgressStatus.label);
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getSerializedSize()
      {
        String str = this.label;
        int i = 0;
        if (str != null)
          i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.label);
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        if (this.label == null);
        for (int i = 0; ; i = this.label.hashCode())
          return i + 527;
      }

      public ProgressStatus mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.label = paramCodedInputByteBufferNano.readString();
        }
      }

      public ProgressStatus parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new ProgressStatus().mergeFrom(paramCodedInputByteBufferNano);
      }

      public ProgressStatus parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (ProgressStatus)MessageNano.mergeFrom(new ProgressStatus(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.label != null)
          paramCodedOutputByteBufferNano.writeString(1, this.label);
      }
    }

    public final class SmsType
    {
      public static final int COMPANION_DECIDES = 2;
      public static final int GOOGLE_VOICE = 1;
      public static final int NATIVE;

      public SmsType()
      {
      }
    }

    public final class SourceType
    {
      public static final int COMPANIONWARE = 2;
      public static final int GLASSWARE = 0;
      public static final int GLASS_DEVICE = 1;

      public SourceType()
      {
      }
    }

    public final class SyncProtocol
    {
      public static final int ALWAYS = 0;
      public static final int NEVER = 2;
      public static final int OPPORTUNISTIC = 1;

      public SyncProtocol()
      {
      }
    }

    public final class SyncStatus
    {
      public static final int NOT_SYNCED = 0;
      public static final int SYNCED = 1;
      public static final int SYNC_FAILED = 2;

      public SyncStatus()
      {
      }
    }

    public final class ViewType
    {
      public static final int CALL = 6;
      public static final int HANGOUT = 7;
      public static final int HTML = 4;
      public static final int IMAGE = 2;
      public static final int MESSAGE = 1;
      public static final int MUSIC = 9;
      public static final int SEARCH = 5;
      public static final int SOUND_SEARCH = 8;
      public static final int TEXT = 0;
      public static final int VIDEO = 3;

      public ViewType()
      {
      }
    }
  }

  public static final class UserAction extends MessageNano
  {
    public static final UserAction[] EMPTY_ARRAY = new UserAction[0];
    private int cachedSize = -1;
    public String payload;
    public int type = -2147483648;

    public static UserAction parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new UserAction().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static UserAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (UserAction)MessageNano.mergeFrom(new UserAction(), paramArrayOfByte);
    }

    public final UserAction clear()
    {
      this.type = -2147483648;
      this.payload = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      UserAction localUserAction;
      do
      {
        return true;
        if (!(paramObject instanceof UserAction))
          return false;
        localUserAction = (UserAction)paramObject;
        if (this.type != localUserAction.type)
          break;
        if (this.payload != null)
          break label48;
      }
      while (localUserAction.payload == null);
      label48: 
      while (!this.payload.equals(localUserAction.payload))
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
      if (this.payload != null)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.payload);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      if (this.payload == null);
      for (int j = 0; ; j = this.payload.hashCode())
        return i + j;
    }

    public UserAction mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.payload = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.type != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      if (this.payload != null)
        paramCodedOutputByteBufferNano.writeString(2, this.payload);
    }

    public final class Type
    {
      public static final int CUSTOM = 5;
      public static final int DELETE = 6;
      public static final int LAUNCH = 7;
      public static final int NEW_MESSAGE = 1;
      public static final int PIN = 8;
      public static final int REPLY = 3;
      public static final int REPLY_ALL = 4;
      public static final int SHARE = 2;
      public static final int UNPIN = 9;

      public Type()
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.TimelineNano
 * JD-Core Version:    0.6.2
 */