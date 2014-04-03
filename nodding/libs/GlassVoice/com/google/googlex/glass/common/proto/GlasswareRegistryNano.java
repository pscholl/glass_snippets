package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class GlasswareRegistryNano
{
  public final class ApprovalStatus
  {
    public static final int APPROVED = 1;
    public static final int REJECTED = 2;
    public static final int UNREVIEWED;

    public ApprovalStatus()
    {
    }
  }

  public static final class GlasswareMessages extends MessageNano
  {
    public static final GlasswareMessages[] EMPTY_ARRAY = new GlasswareMessages[0];
    private static final String LOCALE_DEFAULT = "en_US";
    private int cachedSize = -1;
    public String description;
    public String locale;
    public String moreInfoTitle;
    public String name;
    public String permissions;
    public String shortDescription;
    public String speakableName;

    public static GlasswareMessages parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlasswareMessages().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlasswareMessages parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlasswareMessages)MessageNano.mergeFrom(new GlasswareMessages(), paramArrayOfByte);
    }

    public final GlasswareMessages clear()
    {
      this.locale = null;
      this.name = null;
      this.description = null;
      this.shortDescription = null;
      this.moreInfoTitle = null;
      this.permissions = null;
      this.speakableName = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlasswareMessages localGlasswareMessages;
      label49: label63: label77: label91: label105: 
      do
      {
        return true;
        if (!(paramObject instanceof GlasswareMessages))
          return false;
        localGlasswareMessages = (GlasswareMessages)paramObject;
        if (this.locale != null)
          break label121;
        if (localGlasswareMessages.locale != null)
          break;
        if (this.name != null)
          break label138;
        if (localGlasswareMessages.name != null)
          break;
        if (this.description != null)
          break label155;
        if (localGlasswareMessages.description != null)
          break;
        if (this.shortDescription != null)
          break label172;
        if (localGlasswareMessages.shortDescription != null)
          break;
        if (this.moreInfoTitle != null)
          break label189;
        if (localGlasswareMessages.moreInfoTitle != null)
          break;
        if (this.permissions != null)
          break label206;
        if (localGlasswareMessages.permissions != null)
          break;
        if (this.speakableName != null)
          break label223;
      }
      while (localGlasswareMessages.speakableName == null);
      label121: 
      while (!this.speakableName.equals(localGlasswareMessages.speakableName))
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
                  while (!this.locale.equals(localGlasswareMessages.locale));
                  break;
                }
                while (!this.name.equals(localGlasswareMessages.name));
                break label49;
              }
              while (!this.description.equals(localGlasswareMessages.description));
              break label63;
            }
            while (!this.shortDescription.equals(localGlasswareMessages.shortDescription));
            break label77;
          }
          while (!this.moreInfoTitle.equals(localGlasswareMessages.moreInfoTitle));
          break label91;
        }
        while (!this.permissions.equals(localGlasswareMessages.permissions));
        break label105;
      }
      label138: label155: label172: label189: label206: label223: return true;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      String str = this.locale;
      int i = 0;
      if (str != null)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.locale);
      if (this.name != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.name);
      if (this.description != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.description);
      if (this.shortDescription != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.shortDescription);
      if (this.moreInfoTitle != null)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.moreInfoTitle);
      if (this.permissions != null)
        i += CodedOutputByteBufferNano.computeStringSize(6, this.permissions);
      if (this.speakableName != null)
        i += CodedOutputByteBufferNano.computeStringSize(7, this.speakableName);
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
      label105: int i7;
      int i8;
      if (this.locale == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.name != null)
          break label146;
        k = 0;
        int m = 31 * (j + k);
        if (this.description != null)
          break label157;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.shortDescription != null)
          break label169;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.moreInfoTitle != null)
          break label181;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.permissions != null)
          break label193;
        i6 = 0;
        i7 = 31 * (i5 + i6);
        String str = this.speakableName;
        i8 = 0;
        if (str != null)
          break label205;
      }
      while (true)
      {
        return i7 + i8;
        i = this.locale.hashCode();
        break;
        label146: k = this.name.hashCode();
        break label27;
        label157: n = this.description.hashCode();
        break label45;
        label169: i2 = this.shortDescription.hashCode();
        break label65;
        label181: i4 = this.moreInfoTitle.hashCode();
        break label85;
        label193: i6 = this.permissions.hashCode();
        break label105;
        label205: i8 = this.speakableName.hashCode();
      }
    }

    public GlasswareMessages mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.locale = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.name = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.description = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.shortDescription = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          this.moreInfoTitle = paramCodedInputByteBufferNano.readString();
          break;
        case 50:
          this.permissions = paramCodedInputByteBufferNano.readString();
          break;
        case 58:
        }
        this.speakableName = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.locale != null)
        paramCodedOutputByteBufferNano.writeString(1, this.locale);
      if (this.name != null)
        paramCodedOutputByteBufferNano.writeString(2, this.name);
      if (this.description != null)
        paramCodedOutputByteBufferNano.writeString(3, this.description);
      if (this.shortDescription != null)
        paramCodedOutputByteBufferNano.writeString(4, this.shortDescription);
      if (this.moreInfoTitle != null)
        paramCodedOutputByteBufferNano.writeString(5, this.moreInfoTitle);
      if (this.permissions != null)
        paramCodedOutputByteBufferNano.writeString(6, this.permissions);
      if (this.speakableName != null)
        paramCodedOutputByteBufferNano.writeString(7, this.speakableName);
    }
  }

  public static final class GlasswareRegistry extends MessageNano
  {
    public static final GlasswareRegistry[] EMPTY_ARRAY = new GlasswareRegistry[0];
    private int cachedSize = -1;
    public GlasswareRegistryNano.GlasswareRegistryEntry[] registryEntries = GlasswareRegistryNano.GlasswareRegistryEntry.EMPTY_ARRAY;

    public static GlasswareRegistry parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlasswareRegistry().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlasswareRegistry parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlasswareRegistry)MessageNano.mergeFrom(new GlasswareRegistry(), paramArrayOfByte);
    }

    public final GlasswareRegistry clear()
    {
      this.registryEntries = GlasswareRegistryNano.GlasswareRegistryEntry.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      if (!(paramObject instanceof GlasswareRegistry))
        return false;
      GlasswareRegistry localGlasswareRegistry = (GlasswareRegistry)paramObject;
      return Arrays.equals(this.registryEntries, localGlasswareRegistry.registryEntries);
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      GlasswareRegistryNano.GlasswareRegistryEntry[] arrayOfGlasswareRegistryEntry1 = this.registryEntries;
      int i = 0;
      if (arrayOfGlasswareRegistryEntry1 != null)
      {
        GlasswareRegistryNano.GlasswareRegistryEntry[] arrayOfGlasswareRegistryEntry2 = this.registryEntries;
        int j = arrayOfGlasswareRegistryEntry2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfGlasswareRegistryEntry2[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.registryEntries == null)
      {
        i *= 31;
        return i;
      }
      int j = 0;
      label19: int k;
      if (j < this.registryEntries.length)
      {
        k = i * 31;
        if (this.registryEntries[j] != null)
          break label56;
      }
      label56: for (int m = 0; ; m = this.registryEntries[j].hashCode())
      {
        i = k + m;
        j++;
        break label19;
        break;
      }
    }

    public GlasswareRegistry mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        if (this.registryEntries == null);
        for (int k = 0; ; k = this.registryEntries.length)
        {
          GlasswareRegistryNano.GlasswareRegistryEntry[] arrayOfGlasswareRegistryEntry = new GlasswareRegistryNano.GlasswareRegistryEntry[k + j];
          if (this.registryEntries != null)
            System.arraycopy(this.registryEntries, 0, arrayOfGlasswareRegistryEntry, 0, k);
          this.registryEntries = arrayOfGlasswareRegistryEntry;
          while (k < -1 + this.registryEntries.length)
          {
            this.registryEntries[k] = new GlasswareRegistryNano.GlasswareRegistryEntry();
            paramCodedInputByteBufferNano.readMessage(this.registryEntries[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.registryEntries[k] = new GlasswareRegistryNano.GlasswareRegistryEntry();
        paramCodedInputByteBufferNano.readMessage(this.registryEntries[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.registryEntries != null)
      {
        GlasswareRegistryNano.GlasswareRegistryEntry[] arrayOfGlasswareRegistryEntry = this.registryEntries;
        int i = arrayOfGlasswareRegistryEntry.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfGlasswareRegistryEntry[j]);
      }
    }
  }

  public static final class GlasswareRegistryEntry extends MessageNano
  {
    public static final GlasswareRegistryEntry[] EMPTY_ARRAY = new GlasswareRegistryEntry[0];
    public String authUrl;
    private int cachedSize = -1;
    public String feedbackUrl;
    public String iconGlass160Url;
    public String iconGlass30Url;
    public String iconGlass50Url;
    public String iconWeb40Url;
    public String iconWeb85Url;
    public Integer internalGlassware;
    public GlasswareRegistryNano.GlasswareMessages[] messages = GlasswareRegistryNano.GlasswareMessages.EMPTY_ARRAY;
    public String moreInfoUrl;
    public String nameTextColor;
    public Long projectId;
    public String settingsUrl;
    public int visibility = -2147483648;

    public static GlasswareRegistryEntry parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlasswareRegistryEntry().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlasswareRegistryEntry parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlasswareRegistryEntry)MessageNano.mergeFrom(new GlasswareRegistryEntry(), paramArrayOfByte);
    }

    public final GlasswareRegistryEntry clear()
    {
      this.projectId = null;
      this.iconGlass30Url = null;
      this.iconGlass50Url = null;
      this.iconGlass160Url = null;
      this.iconWeb40Url = null;
      this.iconWeb85Url = null;
      this.messages = GlasswareRegistryNano.GlasswareMessages.EMPTY_ARRAY;
      this.authUrl = null;
      this.settingsUrl = null;
      this.moreInfoUrl = null;
      this.feedbackUrl = null;
      this.internalGlassware = null;
      this.nameTextColor = null;
      this.visibility = -2147483648;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label49: label63: label77: label91: label352: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof GlasswareRegistryEntry))
          return false;
        GlasswareRegistryEntry localGlasswareRegistryEntry = (GlasswareRegistryEntry)paramObject;
        if (this.projectId == null)
          if (localGlasswareRegistryEntry.projectId == null)
          {
            if (this.iconGlass30Url != null)
              break label233;
            if (localGlasswareRegistryEntry.iconGlass30Url == null)
            {
              if (this.iconGlass50Url != null)
                break label250;
              if (localGlasswareRegistryEntry.iconGlass50Url == null)
              {
                if (this.iconGlass160Url != null)
                  break label267;
                if (localGlasswareRegistryEntry.iconGlass160Url == null)
                {
                  if (this.iconWeb40Url != null)
                    break label284;
                  if (localGlasswareRegistryEntry.iconWeb40Url == null)
                  {
                    if (this.iconWeb85Url != null)
                      break label301;
                    if (localGlasswareRegistryEntry.iconWeb85Url == null)
                      label105: if (Arrays.equals(this.messages, localGlasswareRegistryEntry.messages))
                      {
                        if (this.authUrl != null)
                          break label318;
                        if (localGlasswareRegistryEntry.authUrl == null)
                        {
                          if (this.settingsUrl != null)
                            break label335;
                          if (localGlasswareRegistryEntry.settingsUrl == null)
                          {
                            if (this.moreInfoUrl != null)
                              break label352;
                            if (localGlasswareRegistryEntry.moreInfoUrl == null)
                            {
                              if (this.feedbackUrl != null)
                                break label369;
                              if (localGlasswareRegistryEntry.feedbackUrl == null)
                              {
                                if (this.internalGlassware != null)
                                  break label386;
                                if (localGlasswareRegistryEntry.internalGlassware == null)
                                {
                                  if (this.nameTextColor != null)
                                    break label403;
                                  if (localGlasswareRegistryEntry.nameTextColor != null);
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
        label233: label369: 
        while (true)
        {
          if (this.visibility == localGlasswareRegistryEntry.visibility)
            break label418;
          label250: 
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
                                while (!this.projectId.equals(localGlasswareRegistryEntry.projectId));
                                break;
                              }
                              while (!this.iconGlass30Url.equals(localGlasswareRegistryEntry.iconGlass30Url));
                              break label49;
                            }
                            while (!this.iconGlass50Url.equals(localGlasswareRegistryEntry.iconGlass50Url));
                            break label63;
                          }
                          while (!this.iconGlass160Url.equals(localGlasswareRegistryEntry.iconGlass160Url));
                          break label77;
                        }
                        while (!this.iconWeb40Url.equals(localGlasswareRegistryEntry.iconWeb40Url));
                        break label91;
                      }
                      while (!this.iconWeb85Url.equals(localGlasswareRegistryEntry.iconWeb85Url));
                      break label105;
                    }
                    while (!this.authUrl.equals(localGlasswareRegistryEntry.authUrl));
                    break label133;
                  }
                  while (!this.settingsUrl.equals(localGlasswareRegistryEntry.settingsUrl));
                  break label147;
                }
                while (!this.moreInfoUrl.equals(localGlasswareRegistryEntry.moreInfoUrl));
                break label161;
              }
              while (!this.feedbackUrl.equals(localGlasswareRegistryEntry.feedbackUrl));
              break label175;
            }
            while (!this.internalGlassware.equals(localGlasswareRegistryEntry.internalGlassware));
            break label189;
          }
          while (!this.nameTextColor.equals(localGlasswareRegistryEntry.nameTextColor));
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
      Long localLong = this.projectId;
      int i = 0;
      if (localLong != null)
        i = 0 + CodedOutputByteBufferNano.computeUInt64Size(1, this.projectId.longValue());
      if (this.iconGlass30Url != null)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.iconGlass30Url);
      if (this.iconGlass50Url != null)
        i += CodedOutputByteBufferNano.computeStringSize(3, this.iconGlass50Url);
      if (this.iconGlass160Url != null)
        i += CodedOutputByteBufferNano.computeStringSize(4, this.iconGlass160Url);
      if (this.messages != null)
      {
        GlasswareRegistryNano.GlasswareMessages[] arrayOfGlasswareMessages = this.messages;
        int j = arrayOfGlasswareMessages.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(5, arrayOfGlasswareMessages[k]);
      }
      if (this.authUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(6, this.authUrl);
      if (this.settingsUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(7, this.settingsUrl);
      if (this.moreInfoUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.moreInfoUrl);
      if (this.internalGlassware != null)
        i += CodedOutputByteBufferNano.computeInt32Size(9, this.internalGlassware.intValue());
      if (this.nameTextColor != null)
        i += CodedOutputByteBufferNano.computeStringSize(11, this.nameTextColor);
      if (this.iconWeb40Url != null)
        i += CodedOutputByteBufferNano.computeStringSize(12, this.iconWeb40Url);
      if (this.iconWeb85Url != null)
        i += CodedOutputByteBufferNano.computeStringSize(13, this.iconWeb85Url);
      if (this.visibility != -2147483648)
        i += CodedOutputByteBufferNano.computeInt32Size(14, this.visibility);
      if (this.feedbackUrl != null)
        i += CodedOutputByteBufferNano.computeStringSize(15, this.feedbackUrl);
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
      label105: int i7;
      int i12;
      label143: int i14;
      label163: int i16;
      label183: int i18;
      label203: int i20;
      label223: int i21;
      int i22;
      if (this.projectId == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.iconGlass30Url != null)
          break label284;
        k = 0;
        int m = 31 * (j + k);
        if (this.iconGlass50Url != null)
          break label295;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.iconGlass160Url != null)
          break label307;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.iconWeb40Url != null)
          break label319;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.iconWeb85Url != null)
          break label331;
        i6 = 0;
        i7 = i5 + i6;
        if (this.messages != null)
          break label343;
        i7 *= 31;
        int i11 = i7 * 31;
        if (this.authUrl != null)
          break label404;
        i12 = 0;
        int i13 = 31 * (i11 + i12);
        if (this.settingsUrl != null)
          break label416;
        i14 = 0;
        int i15 = 31 * (i13 + i14);
        if (this.moreInfoUrl != null)
          break label428;
        i16 = 0;
        int i17 = 31 * (i15 + i16);
        if (this.feedbackUrl != null)
          break label440;
        i18 = 0;
        int i19 = 31 * (i17 + i18);
        if (this.internalGlassware != null)
          break label452;
        i20 = 0;
        i21 = 31 * (i19 + i20);
        String str = this.nameTextColor;
        i22 = 0;
        if (str != null)
          break label464;
      }
      while (true)
      {
        return 31 * (i21 + i22) + this.visibility;
        i = (int)(this.projectId.longValue() ^ this.projectId.longValue() >>> 32);
        break;
        label284: k = this.iconGlass30Url.hashCode();
        break label27;
        label295: n = this.iconGlass50Url.hashCode();
        break label45;
        label307: i2 = this.iconGlass160Url.hashCode();
        break label65;
        label319: i4 = this.iconWeb40Url.hashCode();
        break label85;
        label331: i6 = this.iconWeb85Url.hashCode();
        break label105;
        label343: int i8 = 0;
        label346: int i9;
        if (i8 < this.messages.length)
        {
          i9 = i7 * 31;
          if (this.messages[i8] != null)
            break label389;
        }
        label389: for (int i10 = 0; ; i10 = this.messages[i8].hashCode())
        {
          i7 = i9 + i10;
          i8++;
          break label346;
          break;
        }
        label404: i12 = this.authUrl.hashCode();
        break label143;
        label416: i14 = this.settingsUrl.hashCode();
        break label163;
        label428: i16 = this.moreInfoUrl.hashCode();
        break label183;
        label440: i18 = this.feedbackUrl.hashCode();
        break label203;
        label452: i20 = this.internalGlassware.intValue();
        break label223;
        label464: i22 = this.nameTextColor.hashCode();
      }
    }

    public GlasswareRegistryEntry mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.projectId = Long.valueOf(paramCodedInputByteBufferNano.readUInt64());
          break;
        case 18:
          this.iconGlass30Url = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.iconGlass50Url = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.iconGlass160Url = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          if (this.messages == null);
          for (int k = 0; ; k = this.messages.length)
          {
            GlasswareRegistryNano.GlasswareMessages[] arrayOfGlasswareMessages = new GlasswareRegistryNano.GlasswareMessages[k + j];
            if (this.messages != null)
              System.arraycopy(this.messages, 0, arrayOfGlasswareMessages, 0, k);
            this.messages = arrayOfGlasswareMessages;
            while (k < -1 + this.messages.length)
            {
              this.messages[k] = new GlasswareRegistryNano.GlasswareMessages();
              paramCodedInputByteBufferNano.readMessage(this.messages[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.messages[k] = new GlasswareRegistryNano.GlasswareMessages();
          paramCodedInputByteBufferNano.readMessage(this.messages[k]);
          break;
        case 50:
          this.authUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 58:
          this.settingsUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 66:
          this.moreInfoUrl = paramCodedInputByteBufferNano.readString();
          break;
        case 72:
          this.internalGlassware = Integer.valueOf(paramCodedInputByteBufferNano.readInt32());
          break;
        case 90:
          this.nameTextColor = paramCodedInputByteBufferNano.readString();
          break;
        case 98:
          this.iconWeb40Url = paramCodedInputByteBufferNano.readString();
          break;
        case 106:
          this.iconWeb85Url = paramCodedInputByteBufferNano.readString();
          break;
        case 112:
          this.visibility = paramCodedInputByteBufferNano.readInt32();
          break;
        case 122:
        }
        this.feedbackUrl = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.projectId != null)
        paramCodedOutputByteBufferNano.writeUInt64(1, this.projectId.longValue());
      if (this.iconGlass30Url != null)
        paramCodedOutputByteBufferNano.writeString(2, this.iconGlass30Url);
      if (this.iconGlass50Url != null)
        paramCodedOutputByteBufferNano.writeString(3, this.iconGlass50Url);
      if (this.iconGlass160Url != null)
        paramCodedOutputByteBufferNano.writeString(4, this.iconGlass160Url);
      if (this.messages != null)
      {
        GlasswareRegistryNano.GlasswareMessages[] arrayOfGlasswareMessages = this.messages;
        int i = arrayOfGlasswareMessages.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(5, arrayOfGlasswareMessages[j]);
      }
      if (this.authUrl != null)
        paramCodedOutputByteBufferNano.writeString(6, this.authUrl);
      if (this.settingsUrl != null)
        paramCodedOutputByteBufferNano.writeString(7, this.settingsUrl);
      if (this.moreInfoUrl != null)
        paramCodedOutputByteBufferNano.writeString(8, this.moreInfoUrl);
      if (this.internalGlassware != null)
        paramCodedOutputByteBufferNano.writeInt32(9, this.internalGlassware.intValue());
      if (this.nameTextColor != null)
        paramCodedOutputByteBufferNano.writeString(11, this.nameTextColor);
      if (this.iconWeb40Url != null)
        paramCodedOutputByteBufferNano.writeString(12, this.iconWeb40Url);
      if (this.iconWeb85Url != null)
        paramCodedOutputByteBufferNano.writeString(13, this.iconWeb85Url);
      if (this.visibility != -2147483648)
        paramCodedOutputByteBufferNano.writeInt32(14, this.visibility);
      if (this.feedbackUrl != null)
        paramCodedOutputByteBufferNano.writeString(15, this.feedbackUrl);
    }

    public final class Visibility
    {
      public static final int CONFIDENTIAL = 1;
      public static final int HIDDEN = 3;
      public static final int HIDDEN_WHEN_DISABLED = 2;
      public static final int PUBLIC = 0;
      public static final int TEAM_ONLY = 4;

      public Visibility()
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.GlasswareRegistryNano
 * JD-Core Version:    0.6.2
 */