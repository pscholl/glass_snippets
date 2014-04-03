package com.google.speech.speech.s3;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class Majel
{
  public static final class MajelClientInfo extends MessageMicro
  {
    public static final int CLIENT_FIELD_NUMBER = 10;
    public static final int CLIENT_NAME_FIELD_NUMBER = 11;
    public static final int GSERVICES_COUNTRY_CODE_FIELD_NUMBER = 12;
    public static final int SYSTEM_TIME_MS_FIELD_NUMBER = 7;
    public static final int TIME_ZONE_FIELD_NUMBER = 8;
    public static final int USE_COMPRESSED_RESPONSE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private String clientName_ = "";
    private int client_ = 0;
    private String gservicesCountryCode_ = "";
    private boolean hasClient;
    private boolean hasClientName;
    private boolean hasGservicesCountryCode;
    private boolean hasSystemTimeMs;
    private boolean hasTimeZone;
    private boolean hasUseCompressedResponse;
    private long systemTimeMs_ = 0L;
    private String timeZone_ = "";
    private boolean useCompressedResponse_ = false;

    public static MajelClientInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MajelClientInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MajelClientInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MajelClientInfo)new MajelClientInfo().mergeFrom(paramArrayOfByte);
    }

    public final MajelClientInfo clear()
    {
      clearUseCompressedResponse();
      clearSystemTimeMs();
      clearTimeZone();
      clearClient();
      clearClientName();
      clearGservicesCountryCode();
      this.cachedSize = -1;
      return this;
    }

    public MajelClientInfo clearClient()
    {
      this.hasClient = false;
      this.client_ = 0;
      return this;
    }

    public MajelClientInfo clearClientName()
    {
      this.hasClientName = false;
      this.clientName_ = "";
      return this;
    }

    public MajelClientInfo clearGservicesCountryCode()
    {
      this.hasGservicesCountryCode = false;
      this.gservicesCountryCode_ = "";
      return this;
    }

    public MajelClientInfo clearSystemTimeMs()
    {
      this.hasSystemTimeMs = false;
      this.systemTimeMs_ = 0L;
      return this;
    }

    public MajelClientInfo clearTimeZone()
    {
      this.hasTimeZone = false;
      this.timeZone_ = "";
      return this;
    }

    public MajelClientInfo clearUseCompressedResponse()
    {
      this.hasUseCompressedResponse = false;
      this.useCompressedResponse_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getClient()
    {
      return this.client_;
    }

    public String getClientName()
    {
      return this.clientName_;
    }

    public String getGservicesCountryCode()
    {
      return this.gservicesCountryCode_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUseCompressedResponse();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBoolSize(1, getUseCompressedResponse());
      if (hasSystemTimeMs())
        i += CodedOutputStreamMicro.computeInt64Size(7, getSystemTimeMs());
      if (hasTimeZone())
        i += CodedOutputStreamMicro.computeStringSize(8, getTimeZone());
      if (hasClient())
        i += CodedOutputStreamMicro.computeInt32Size(10, getClient());
      if (hasClientName())
        i += CodedOutputStreamMicro.computeStringSize(11, getClientName());
      if (hasGservicesCountryCode())
        i += CodedOutputStreamMicro.computeStringSize(12, getGservicesCountryCode());
      this.cachedSize = i;
      return i;
    }

    public long getSystemTimeMs()
    {
      return this.systemTimeMs_;
    }

    public String getTimeZone()
    {
      return this.timeZone_;
    }

    public boolean getUseCompressedResponse()
    {
      return this.useCompressedResponse_;
    }

    public boolean hasClient()
    {
      return this.hasClient;
    }

    public boolean hasClientName()
    {
      return this.hasClientName;
    }

    public boolean hasGservicesCountryCode()
    {
      return this.hasGservicesCountryCode;
    }

    public boolean hasSystemTimeMs()
    {
      return this.hasSystemTimeMs;
    }

    public boolean hasTimeZone()
    {
      return this.hasTimeZone;
    }

    public boolean hasUseCompressedResponse()
    {
      return this.hasUseCompressedResponse;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MajelClientInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 8:
          setUseCompressedResponse(paramCodedInputStreamMicro.readBool());
          break;
        case 56:
          setSystemTimeMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 66:
          setTimeZone(paramCodedInputStreamMicro.readString());
          break;
        case 80:
          setClient(paramCodedInputStreamMicro.readInt32());
          break;
        case 90:
          setClientName(paramCodedInputStreamMicro.readString());
          break;
        case 98:
        }
        setGservicesCountryCode(paramCodedInputStreamMicro.readString());
      }
    }

    public MajelClientInfo setClient(int paramInt)
    {
      this.hasClient = true;
      this.client_ = paramInt;
      return this;
    }

    public MajelClientInfo setClientName(String paramString)
    {
      this.hasClientName = true;
      this.clientName_ = paramString;
      return this;
    }

    public MajelClientInfo setGservicesCountryCode(String paramString)
    {
      this.hasGservicesCountryCode = true;
      this.gservicesCountryCode_ = paramString;
      return this;
    }

    public MajelClientInfo setSystemTimeMs(long paramLong)
    {
      this.hasSystemTimeMs = true;
      this.systemTimeMs_ = paramLong;
      return this;
    }

    public MajelClientInfo setTimeZone(String paramString)
    {
      this.hasTimeZone = true;
      this.timeZone_ = paramString;
      return this;
    }

    public MajelClientInfo setUseCompressedResponse(boolean paramBoolean)
    {
      this.hasUseCompressedResponse = true;
      this.useCompressedResponse_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUseCompressedResponse())
        paramCodedOutputStreamMicro.writeBool(1, getUseCompressedResponse());
      if (hasSystemTimeMs())
        paramCodedOutputStreamMicro.writeInt64(7, getSystemTimeMs());
      if (hasTimeZone())
        paramCodedOutputStreamMicro.writeString(8, getTimeZone());
      if (hasClient())
        paramCodedOutputStreamMicro.writeInt32(10, getClient());
      if (hasClientName())
        paramCodedOutputStreamMicro.writeString(11, getClientName());
      if (hasGservicesCountryCode())
        paramCodedOutputStreamMicro.writeString(12, getGservicesCountryCode());
    }
  }

  public static final class MajelServiceEvent extends MessageMicro
  {
    public static final int COMPRESSED_MAJEL_RESPONSE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private ByteStringMicro compressedMajelResponse_ = ByteStringMicro.EMPTY;
    private boolean hasCompressedMajelResponse;

    public static MajelServiceEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MajelServiceEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MajelServiceEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MajelServiceEvent)new MajelServiceEvent().mergeFrom(paramArrayOfByte);
    }

    public final MajelServiceEvent clear()
    {
      clearCompressedMajelResponse();
      this.cachedSize = -1;
      return this;
    }

    public MajelServiceEvent clearCompressedMajelResponse()
    {
      this.hasCompressedMajelResponse = false;
      this.compressedMajelResponse_ = ByteStringMicro.EMPTY;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ByteStringMicro getCompressedMajelResponse()
    {
      return this.compressedMajelResponse_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCompressedMajelResponse();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBytesSize(2, getCompressedMajelResponse());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCompressedMajelResponse()
    {
      return this.hasCompressedMajelResponse;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MajelServiceEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 18:
        }
        setCompressedMajelResponse(paramCodedInputStreamMicro.readBytes());
      }
    }

    public MajelServiceEvent setCompressedMajelResponse(ByteStringMicro paramByteStringMicro)
    {
      this.hasCompressedMajelResponse = true;
      this.compressedMajelResponse_ = paramByteStringMicro;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCompressedMajelResponse())
        paramCodedOutputStreamMicro.writeBytes(2, getCompressedMajelResponse());
    }
  }

  public static final class MajelServiceRequest extends MessageMicro
  {
    public static final int ORIGINAL_QUERY_FIELD_NUMBER = 2;
    public static final int QUERY_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasOriginalQuery;
    private boolean hasQuery;
    private String originalQuery_ = "";
    private String query_ = "";

    public static MajelServiceRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MajelServiceRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MajelServiceRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MajelServiceRequest)new MajelServiceRequest().mergeFrom(paramArrayOfByte);
    }

    public final MajelServiceRequest clear()
    {
      clearQuery();
      clearOriginalQuery();
      this.cachedSize = -1;
      return this;
    }

    public MajelServiceRequest clearOriginalQuery()
    {
      this.hasOriginalQuery = false;
      this.originalQuery_ = "";
      return this;
    }

    public MajelServiceRequest clearQuery()
    {
      this.hasQuery = false;
      this.query_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getOriginalQuery()
    {
      return this.originalQuery_;
    }

    public String getQuery()
    {
      return this.query_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasQuery();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getQuery());
      if (hasOriginalQuery())
        i += CodedOutputStreamMicro.computeStringSize(2, getOriginalQuery());
      this.cachedSize = i;
      return i;
    }

    public boolean hasOriginalQuery()
    {
      return this.hasOriginalQuery;
    }

    public boolean hasQuery()
    {
      return this.hasQuery;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MajelServiceRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
          if (parseUnknownField(paramCodedInputStreamMicro, i))
            continue;
        case 0:
          return this;
        case 10:
          setQuery(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setOriginalQuery(paramCodedInputStreamMicro.readString());
      }
    }

    public MajelServiceRequest setOriginalQuery(String paramString)
    {
      this.hasOriginalQuery = true;
      this.originalQuery_ = paramString;
      return this;
    }

    public MajelServiceRequest setQuery(String paramString)
    {
      this.hasQuery = true;
      this.query_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasQuery())
        paramCodedOutputStreamMicro.writeString(1, getQuery());
      if (hasOriginalQuery())
        paramCodedOutputStreamMicro.writeString(2, getOriginalQuery());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.speech.s3.Majel
 * JD-Core Version:    0.6.2
 */