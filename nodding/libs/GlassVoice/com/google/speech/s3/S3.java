package com.google.speech.s3;

import com.google.bionics.goggles.api2.GogglesProtos.GogglesClientLog;
import com.google.bionics.goggles.api2.GogglesProtos.GogglesStreamRequest;
import com.google.bionics.goggles.api2.GogglesProtos.GogglesStreamResponse;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.speech.s3.Majel.MajelClientInfo;
import com.google.speech.speech.s3.Majel.MajelServiceEvent;
import com.google.speech.speech.s3.Majel.MajelServiceRequest;
import com.google.speech.speech.s3.Recognizer.RecognizerEvent;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import com.google.speech.speech.s3.SoundSearch.SoundSearchInfo;
import com.google.speech.speech.s3.SoundSearch.SoundSearchServiceEvent;
import com.google.speech.speech.s3.Synthesis.TtsServiceEvent;
import com.google.speech.speech.s3.Synthesis.TtsServiceRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import location.unified.LocationDescriptorProto.LocationDescriptorSet;
import speech.s3.goggles.GogglesS3.GogglesS3SessionOptions;

public final class S3
{
  public static final class AuthToken extends MessageMicro
  {
    public static final int EMAIL_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int TOKEN_FIELD_NUMBER = 2;
    public static final int USER_ID_FIELD_NUMBER = 3;
    public static final int USER_ID_TYPE_FIELD_NUMBER = 4;
    public static final int USER_ID_TYPE_GAIA = 1;
    public static final int USER_ID_TYPE_ZWIEBACK = 2;
    private int cachedSize = -1;
    private String email_ = "";
    private boolean hasEmail;
    private boolean hasName;
    private boolean hasToken;
    private boolean hasUserId;
    private boolean hasUserIdType;
    private String name_ = "";
    private String token_ = "";
    private int userIdType_ = 0;
    private long userId_ = 0L;

    public static AuthToken parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AuthToken().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AuthToken parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AuthToken)new AuthToken().mergeFrom(paramArrayOfByte);
    }

    public final AuthToken clear()
    {
      clearName();
      clearToken();
      clearUserId();
      clearEmail();
      clearUserIdType();
      this.cachedSize = -1;
      return this;
    }

    public AuthToken clearEmail()
    {
      this.hasEmail = false;
      this.email_ = "";
      return this;
    }

    public AuthToken clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public AuthToken clearToken()
    {
      this.hasToken = false;
      this.token_ = "";
      return this;
    }

    public AuthToken clearUserId()
    {
      this.hasUserId = false;
      this.userId_ = 0L;
      return this;
    }

    public AuthToken clearUserIdType()
    {
      this.hasUserIdType = false;
      this.userIdType_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getEmail()
    {
      return this.email_;
    }

    public String getName()
    {
      return this.name_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      if (hasToken())
        i += CodedOutputStreamMicro.computeStringSize(2, getToken());
      if (hasUserId())
        i += CodedOutputStreamMicro.computeInt64Size(3, getUserId());
      if (hasUserIdType())
        i += CodedOutputStreamMicro.computeInt32Size(4, getUserIdType());
      if (hasEmail())
        i += CodedOutputStreamMicro.computeStringSize(5, getEmail());
      this.cachedSize = i;
      return i;
    }

    public String getToken()
    {
      return this.token_;
    }

    public long getUserId()
    {
      return this.userId_;
    }

    public int getUserIdType()
    {
      return this.userIdType_;
    }

    public boolean hasEmail()
    {
      return this.hasEmail;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasToken()
    {
      return this.hasToken;
    }

    public boolean hasUserId()
    {
      return this.hasUserId;
    }

    public boolean hasUserIdType()
    {
      return this.hasUserIdType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AuthToken mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setToken(paramCodedInputStreamMicro.readString());
          break;
        case 24:
          setUserId(paramCodedInputStreamMicro.readInt64());
          break;
        case 32:
          setUserIdType(paramCodedInputStreamMicro.readInt32());
          break;
        case 42:
        }
        setEmail(paramCodedInputStreamMicro.readString());
      }
    }

    public AuthToken setEmail(String paramString)
    {
      this.hasEmail = true;
      this.email_ = paramString;
      return this;
    }

    public AuthToken setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public AuthToken setToken(String paramString)
    {
      this.hasToken = true;
      this.token_ = paramString;
      return this;
    }

    public AuthToken setUserId(long paramLong)
    {
      this.hasUserId = true;
      this.userId_ = paramLong;
      return this;
    }

    public AuthToken setUserIdType(int paramInt)
    {
      this.hasUserIdType = true;
      this.userIdType_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      if (hasToken())
        paramCodedOutputStreamMicro.writeString(2, getToken());
      if (hasUserId())
        paramCodedOutputStreamMicro.writeInt64(3, getUserId());
      if (hasUserIdType())
        paramCodedOutputStreamMicro.writeInt32(4, getUserIdType());
      if (hasEmail())
        paramCodedOutputStreamMicro.writeString(5, getEmail());
    }
  }

  public static final class Locale extends MessageMicro
  {
    public static final int FORMAT_FIELD_NUMBER = 2;
    public static final int LOCALE_FIELD_NUMBER = 1;
    public static final int LOCALE_FORMAT_BCP_47 = 1;
    public static final int LOCALE_FORMAT_JAVA = 2;
    private int cachedSize = -1;
    private int format_ = 0;
    private boolean hasFormat;
    private boolean hasLocale;
    private String locale_ = "";

    public static Locale parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Locale().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Locale parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Locale)new Locale().mergeFrom(paramArrayOfByte);
    }

    public final Locale clear()
    {
      clearLocale();
      clearFormat();
      this.cachedSize = -1;
      return this;
    }

    public Locale clearFormat()
    {
      this.hasFormat = false;
      this.format_ = 0;
      return this;
    }

    public Locale clearLocale()
    {
      this.hasLocale = false;
      this.locale_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getFormat()
    {
      return this.format_;
    }

    public String getLocale()
    {
      return this.locale_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLocale();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLocale());
      if (hasFormat())
        i += CodedOutputStreamMicro.computeInt32Size(2, getFormat());
      this.cachedSize = i;
      return i;
    }

    public boolean hasFormat()
    {
      return this.hasFormat;
    }

    public boolean hasLocale()
    {
      return this.hasLocale;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Locale mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLocale(paramCodedInputStreamMicro.readString());
          break;
        case 16:
        }
        setFormat(paramCodedInputStreamMicro.readInt32());
      }
    }

    public Locale setFormat(int paramInt)
    {
      this.hasFormat = true;
      this.format_ = paramInt;
      return this;
    }

    public Locale setLocale(String paramString)
    {
      this.hasLocale = true;
      this.locale_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLocale())
        paramCodedOutputStreamMicro.writeString(1, getLocale());
      if (hasFormat())
        paramCodedOutputStreamMicro.writeInt32(2, getFormat());
    }
  }

  public static final class S3Acknowledgement extends MessageMicro
  {
    private int cachedSize = -1;

    public static S3Acknowledgement parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3Acknowledgement().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3Acknowledgement parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3Acknowledgement)new S3Acknowledgement().mergeFrom(paramArrayOfByte);
    }

    public final S3Acknowledgement clear()
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

    public final boolean isInitialized()
    {
      return true;
    }

    public S3Acknowledgement mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      int i;
      do
      {
        i = paramCodedInputStreamMicro.readTag();
        switch (i)
        {
        default:
        case 0:
        }
      }
      while (parseUnknownField(paramCodedInputStreamMicro, i));
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
    {
    }
  }

  public static final class S3ClientInfo extends MessageMicro
  {
    public static final int APPLICATION_ID_FIELD_NUMBER = 2;
    public static final int APPLICATION_VERSION_FIELD_NUMBER = 10;
    public static final int CLIENT_ID_FIELD_NUMBER = 1;
    public static final int DEVICE_DISPLAY_DENSITY_DPI_FIELD_NUMBER = 14;
    public static final int DEVICE_DISPLAY_HEIGHT_PIXELS_FIELD_NUMBER = 13;
    public static final int DEVICE_DISPLAY_WIDTH_PIXELS_FIELD_NUMBER = 12;
    public static final int DEVICE_MODEL_FIELD_NUMBER = 11;
    public static final int EXPERIMENT_ID_FIELD_NUMBER = 5;
    public static final int NOISE_SUPPRESSOR_ID_FIELD_NUMBER = 15;
    public static final int PLATFORM_ID_FIELD_NUMBER = 8;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 9;
    public static final int TRIGGER_APPLICATION_ID_FIELD_NUMBER = 16;
    public static final int USER_AGENT_FIELD_NUMBER = 4;
    private String applicationId_ = "";
    private String applicationVersion_ = "";
    private int cachedSize = -1;
    private String clientId_ = "";
    private int deviceDisplayDensityDpi_ = 0;
    private int deviceDisplayHeightPixels_ = 0;
    private int deviceDisplayWidthPixels_ = 0;
    private String deviceModel_ = "";
    private List<String> experimentId_ = Collections.emptyList();
    private boolean hasApplicationId;
    private boolean hasApplicationVersion;
    private boolean hasClientId;
    private boolean hasDeviceDisplayDensityDpi;
    private boolean hasDeviceDisplayHeightPixels;
    private boolean hasDeviceDisplayWidthPixels;
    private boolean hasDeviceModel;
    private boolean hasPlatformId;
    private boolean hasPlatformVersion;
    private boolean hasTriggerApplicationId;
    private boolean hasUserAgent;
    private List<String> noiseSuppressorId_ = Collections.emptyList();
    private String platformId_ = "";
    private String platformVersion_ = "";
    private String triggerApplicationId_ = "";
    private String userAgent_ = "";

    public static S3ClientInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3ClientInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3ClientInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3ClientInfo)new S3ClientInfo().mergeFrom(paramArrayOfByte);
    }

    public S3ClientInfo addExperimentId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.experimentId_.isEmpty())
        this.experimentId_ = new ArrayList();
      this.experimentId_.add(paramString);
      return this;
    }

    public S3ClientInfo addNoiseSuppressorId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.noiseSuppressorId_.isEmpty())
        this.noiseSuppressorId_ = new ArrayList();
      this.noiseSuppressorId_.add(paramString);
      return this;
    }

    public final S3ClientInfo clear()
    {
      clearClientId();
      clearUserAgent();
      clearExperimentId();
      clearPlatformId();
      clearPlatformVersion();
      clearApplicationId();
      clearApplicationVersion();
      clearDeviceModel();
      clearDeviceDisplayWidthPixels();
      clearDeviceDisplayHeightPixels();
      clearDeviceDisplayDensityDpi();
      clearNoiseSuppressorId();
      clearTriggerApplicationId();
      this.cachedSize = -1;
      return this;
    }

    public S3ClientInfo clearApplicationId()
    {
      this.hasApplicationId = false;
      this.applicationId_ = "";
      return this;
    }

    public S3ClientInfo clearApplicationVersion()
    {
      this.hasApplicationVersion = false;
      this.applicationVersion_ = "";
      return this;
    }

    public S3ClientInfo clearClientId()
    {
      this.hasClientId = false;
      this.clientId_ = "";
      return this;
    }

    public S3ClientInfo clearDeviceDisplayDensityDpi()
    {
      this.hasDeviceDisplayDensityDpi = false;
      this.deviceDisplayDensityDpi_ = 0;
      return this;
    }

    public S3ClientInfo clearDeviceDisplayHeightPixels()
    {
      this.hasDeviceDisplayHeightPixels = false;
      this.deviceDisplayHeightPixels_ = 0;
      return this;
    }

    public S3ClientInfo clearDeviceDisplayWidthPixels()
    {
      this.hasDeviceDisplayWidthPixels = false;
      this.deviceDisplayWidthPixels_ = 0;
      return this;
    }

    public S3ClientInfo clearDeviceModel()
    {
      this.hasDeviceModel = false;
      this.deviceModel_ = "";
      return this;
    }

    public S3ClientInfo clearExperimentId()
    {
      this.experimentId_ = Collections.emptyList();
      return this;
    }

    public S3ClientInfo clearNoiseSuppressorId()
    {
      this.noiseSuppressorId_ = Collections.emptyList();
      return this;
    }

    public S3ClientInfo clearPlatformId()
    {
      this.hasPlatformId = false;
      this.platformId_ = "";
      return this;
    }

    public S3ClientInfo clearPlatformVersion()
    {
      this.hasPlatformVersion = false;
      this.platformVersion_ = "";
      return this;
    }

    public S3ClientInfo clearTriggerApplicationId()
    {
      this.hasTriggerApplicationId = false;
      this.triggerApplicationId_ = "";
      return this;
    }

    public S3ClientInfo clearUserAgent()
    {
      this.hasUserAgent = false;
      this.userAgent_ = "";
      return this;
    }

    public String getApplicationId()
    {
      return this.applicationId_;
    }

    public String getApplicationVersion()
    {
      return this.applicationVersion_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getClientId()
    {
      return this.clientId_;
    }

    public int getDeviceDisplayDensityDpi()
    {
      return this.deviceDisplayDensityDpi_;
    }

    public int getDeviceDisplayHeightPixels()
    {
      return this.deviceDisplayHeightPixels_;
    }

    public int getDeviceDisplayWidthPixels()
    {
      return this.deviceDisplayWidthPixels_;
    }

    public String getDeviceModel()
    {
      return this.deviceModel_;
    }

    public String getExperimentId(int paramInt)
    {
      return (String)this.experimentId_.get(paramInt);
    }

    public int getExperimentIdCount()
    {
      return this.experimentId_.size();
    }

    public List<String> getExperimentIdList()
    {
      return this.experimentId_;
    }

    public String getNoiseSuppressorId(int paramInt)
    {
      return (String)this.noiseSuppressorId_.get(paramInt);
    }

    public int getNoiseSuppressorIdCount()
    {
      return this.noiseSuppressorId_.size();
    }

    public List<String> getNoiseSuppressorIdList()
    {
      return this.noiseSuppressorId_;
    }

    public String getPlatformId()
    {
      return this.platformId_;
    }

    public String getPlatformVersion()
    {
      return this.platformVersion_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasClientId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getClientId());
      if (hasApplicationId())
        i += CodedOutputStreamMicro.computeStringSize(2, getApplicationId());
      if (hasUserAgent())
        i += CodedOutputStreamMicro.computeStringSize(4, getUserAgent());
      int j = 0;
      Iterator localIterator1 = getExperimentIdList().iterator();
      while (localIterator1.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator1.next());
      int k = i + j + 1 * getExperimentIdList().size();
      if (hasPlatformId())
        k += CodedOutputStreamMicro.computeStringSize(8, getPlatformId());
      if (hasPlatformVersion())
        k += CodedOutputStreamMicro.computeStringSize(9, getPlatformVersion());
      if (hasApplicationVersion())
        k += CodedOutputStreamMicro.computeStringSize(10, getApplicationVersion());
      if (hasDeviceModel())
        k += CodedOutputStreamMicro.computeStringSize(11, getDeviceModel());
      if (hasDeviceDisplayWidthPixels())
        k += CodedOutputStreamMicro.computeInt32Size(12, getDeviceDisplayWidthPixels());
      if (hasDeviceDisplayHeightPixels())
        k += CodedOutputStreamMicro.computeInt32Size(13, getDeviceDisplayHeightPixels());
      if (hasDeviceDisplayDensityDpi())
        k += CodedOutputStreamMicro.computeInt32Size(14, getDeviceDisplayDensityDpi());
      int m = 0;
      Iterator localIterator2 = getNoiseSuppressorIdList().iterator();
      while (localIterator2.hasNext())
        m += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator2.next());
      int n = k + m + 1 * getNoiseSuppressorIdList().size();
      if (hasTriggerApplicationId())
        n += CodedOutputStreamMicro.computeStringSize(16, getTriggerApplicationId());
      this.cachedSize = n;
      return n;
    }

    public String getTriggerApplicationId()
    {
      return this.triggerApplicationId_;
    }

    public String getUserAgent()
    {
      return this.userAgent_;
    }

    public boolean hasApplicationId()
    {
      return this.hasApplicationId;
    }

    public boolean hasApplicationVersion()
    {
      return this.hasApplicationVersion;
    }

    public boolean hasClientId()
    {
      return this.hasClientId;
    }

    public boolean hasDeviceDisplayDensityDpi()
    {
      return this.hasDeviceDisplayDensityDpi;
    }

    public boolean hasDeviceDisplayHeightPixels()
    {
      return this.hasDeviceDisplayHeightPixels;
    }

    public boolean hasDeviceDisplayWidthPixels()
    {
      return this.hasDeviceDisplayWidthPixels;
    }

    public boolean hasDeviceModel()
    {
      return this.hasDeviceModel;
    }

    public boolean hasPlatformId()
    {
      return this.hasPlatformId;
    }

    public boolean hasPlatformVersion()
    {
      return this.hasPlatformVersion;
    }

    public boolean hasTriggerApplicationId()
    {
      return this.hasTriggerApplicationId;
    }

    public boolean hasUserAgent()
    {
      return this.hasUserAgent;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3ClientInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setClientId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setApplicationId(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setUserAgent(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          addExperimentId(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setPlatformId(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setPlatformVersion(paramCodedInputStreamMicro.readString());
          break;
        case 82:
          setApplicationVersion(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          setDeviceModel(paramCodedInputStreamMicro.readString());
          break;
        case 96:
          setDeviceDisplayWidthPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 104:
          setDeviceDisplayHeightPixels(paramCodedInputStreamMicro.readInt32());
          break;
        case 112:
          setDeviceDisplayDensityDpi(paramCodedInputStreamMicro.readInt32());
          break;
        case 122:
          addNoiseSuppressorId(paramCodedInputStreamMicro.readString());
          break;
        case 130:
        }
        setTriggerApplicationId(paramCodedInputStreamMicro.readString());
      }
    }

    public S3ClientInfo setApplicationId(String paramString)
    {
      this.hasApplicationId = true;
      this.applicationId_ = paramString;
      return this;
    }

    public S3ClientInfo setApplicationVersion(String paramString)
    {
      this.hasApplicationVersion = true;
      this.applicationVersion_ = paramString;
      return this;
    }

    public S3ClientInfo setClientId(String paramString)
    {
      this.hasClientId = true;
      this.clientId_ = paramString;
      return this;
    }

    public S3ClientInfo setDeviceDisplayDensityDpi(int paramInt)
    {
      this.hasDeviceDisplayDensityDpi = true;
      this.deviceDisplayDensityDpi_ = paramInt;
      return this;
    }

    public S3ClientInfo setDeviceDisplayHeightPixels(int paramInt)
    {
      this.hasDeviceDisplayHeightPixels = true;
      this.deviceDisplayHeightPixels_ = paramInt;
      return this;
    }

    public S3ClientInfo setDeviceDisplayWidthPixels(int paramInt)
    {
      this.hasDeviceDisplayWidthPixels = true;
      this.deviceDisplayWidthPixels_ = paramInt;
      return this;
    }

    public S3ClientInfo setDeviceModel(String paramString)
    {
      this.hasDeviceModel = true;
      this.deviceModel_ = paramString;
      return this;
    }

    public S3ClientInfo setExperimentId(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.experimentId_.set(paramInt, paramString);
      return this;
    }

    public S3ClientInfo setNoiseSuppressorId(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.noiseSuppressorId_.set(paramInt, paramString);
      return this;
    }

    public S3ClientInfo setPlatformId(String paramString)
    {
      this.hasPlatformId = true;
      this.platformId_ = paramString;
      return this;
    }

    public S3ClientInfo setPlatformVersion(String paramString)
    {
      this.hasPlatformVersion = true;
      this.platformVersion_ = paramString;
      return this;
    }

    public S3ClientInfo setTriggerApplicationId(String paramString)
    {
      this.hasTriggerApplicationId = true;
      this.triggerApplicationId_ = paramString;
      return this;
    }

    public S3ClientInfo setUserAgent(String paramString)
    {
      this.hasUserAgent = true;
      this.userAgent_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasClientId())
        paramCodedOutputStreamMicro.writeString(1, getClientId());
      if (hasApplicationId())
        paramCodedOutputStreamMicro.writeString(2, getApplicationId());
      if (hasUserAgent())
        paramCodedOutputStreamMicro.writeString(4, getUserAgent());
      Iterator localIterator1 = getExperimentIdList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeString(5, (String)localIterator1.next());
      if (hasPlatformId())
        paramCodedOutputStreamMicro.writeString(8, getPlatformId());
      if (hasPlatformVersion())
        paramCodedOutputStreamMicro.writeString(9, getPlatformVersion());
      if (hasApplicationVersion())
        paramCodedOutputStreamMicro.writeString(10, getApplicationVersion());
      if (hasDeviceModel())
        paramCodedOutputStreamMicro.writeString(11, getDeviceModel());
      if (hasDeviceDisplayWidthPixels())
        paramCodedOutputStreamMicro.writeInt32(12, getDeviceDisplayWidthPixels());
      if (hasDeviceDisplayHeightPixels())
        paramCodedOutputStreamMicro.writeInt32(13, getDeviceDisplayHeightPixels());
      if (hasDeviceDisplayDensityDpi())
        paramCodedOutputStreamMicro.writeInt32(14, getDeviceDisplayDensityDpi());
      Iterator localIterator2 = getNoiseSuppressorIdList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeString(15, (String)localIterator2.next());
      if (hasTriggerApplicationId())
        paramCodedOutputStreamMicro.writeString(16, getTriggerApplicationId());
    }
  }

  public static final class S3ConnectionInfo extends MessageMicro
  {
    public static final int CLIENT_IP_FIELD_NUMBER = 2;
    public static final int CLIENT_PORT_FIELD_NUMBER = 3;
    public static final int DEBUG_IP_FIELD_NUMBER = 4;
    public static final int GFE_FRONTLINE_INFO_FIELD_NUMBER = 5;
    public static final int HOST_FIELD_NUMBER = 6;
    public static final int IMMEDIATE_CLIENT_IP_FIELD_NUMBER = 7;
    public static final int IMMEDIATE_CLIENT_PORT_FIELD_NUMBER = 8;
    public static final int LEGACY_CLIENT_TARGET_VIP_FIELD_NUMBER = 9;
    public static final int TYPE_BLOCKING_STUBBY = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int TYPE_PAIRED_HTTP = 4;
    public static final int TYPE_SINGLE_HTTP = 5;
    public static final int TYPE_STREAMING_STUBBY = 1;
    public static final int TYPE_TCP = 3;
    private int cachedSize = -1;
    private String clientIp_ = "";
    private int clientPort_ = 0;
    private boolean debugIp_ = false;
    private String gfeFrontlineInfo_ = "";
    private boolean hasClientIp;
    private boolean hasClientPort;
    private boolean hasDebugIp;
    private boolean hasGfeFrontlineInfo;
    private boolean hasHost;
    private boolean hasImmediateClientIp;
    private boolean hasImmediateClientPort;
    private boolean hasLegacyClientTargetVip;
    private boolean hasType;
    private String host_ = "";
    private String immediateClientIp_ = "";
    private int immediateClientPort_ = 0;
    private String legacyClientTargetVip_ = "";
    private int type_ = 1;

    public static S3ConnectionInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3ConnectionInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3ConnectionInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3ConnectionInfo)new S3ConnectionInfo().mergeFrom(paramArrayOfByte);
    }

    public final S3ConnectionInfo clear()
    {
      clearType();
      clearClientIp();
      clearClientPort();
      clearDebugIp();
      clearImmediateClientIp();
      clearImmediateClientPort();
      clearLegacyClientTargetVip();
      clearGfeFrontlineInfo();
      clearHost();
      this.cachedSize = -1;
      return this;
    }

    public S3ConnectionInfo clearClientIp()
    {
      this.hasClientIp = false;
      this.clientIp_ = "";
      return this;
    }

    public S3ConnectionInfo clearClientPort()
    {
      this.hasClientPort = false;
      this.clientPort_ = 0;
      return this;
    }

    public S3ConnectionInfo clearDebugIp()
    {
      this.hasDebugIp = false;
      this.debugIp_ = false;
      return this;
    }

    public S3ConnectionInfo clearGfeFrontlineInfo()
    {
      this.hasGfeFrontlineInfo = false;
      this.gfeFrontlineInfo_ = "";
      return this;
    }

    public S3ConnectionInfo clearHost()
    {
      this.hasHost = false;
      this.host_ = "";
      return this;
    }

    public S3ConnectionInfo clearImmediateClientIp()
    {
      this.hasImmediateClientIp = false;
      this.immediateClientIp_ = "";
      return this;
    }

    public S3ConnectionInfo clearImmediateClientPort()
    {
      this.hasImmediateClientPort = false;
      this.immediateClientPort_ = 0;
      return this;
    }

    public S3ConnectionInfo clearLegacyClientTargetVip()
    {
      this.hasLegacyClientTargetVip = false;
      this.legacyClientTargetVip_ = "";
      return this;
    }

    public S3ConnectionInfo clearType()
    {
      this.hasType = false;
      this.type_ = 1;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getClientIp()
    {
      return this.clientIp_;
    }

    public int getClientPort()
    {
      return this.clientPort_;
    }

    public boolean getDebugIp()
    {
      return this.debugIp_;
    }

    public String getGfeFrontlineInfo()
    {
      return this.gfeFrontlineInfo_;
    }

    public String getHost()
    {
      return this.host_;
    }

    public String getImmediateClientIp()
    {
      return this.immediateClientIp_;
    }

    public int getImmediateClientPort()
    {
      return this.immediateClientPort_;
    }

    public String getLegacyClientTargetVip()
    {
      return this.legacyClientTargetVip_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getType());
      if (hasClientIp())
        i += CodedOutputStreamMicro.computeStringSize(2, getClientIp());
      if (hasClientPort())
        i += CodedOutputStreamMicro.computeInt32Size(3, getClientPort());
      if (hasDebugIp())
        i += CodedOutputStreamMicro.computeBoolSize(4, getDebugIp());
      if (hasGfeFrontlineInfo())
        i += CodedOutputStreamMicro.computeStringSize(5, getGfeFrontlineInfo());
      if (hasHost())
        i += CodedOutputStreamMicro.computeStringSize(6, getHost());
      if (hasImmediateClientIp())
        i += CodedOutputStreamMicro.computeStringSize(7, getImmediateClientIp());
      if (hasImmediateClientPort())
        i += CodedOutputStreamMicro.computeInt32Size(8, getImmediateClientPort());
      if (hasLegacyClientTargetVip())
        i += CodedOutputStreamMicro.computeStringSize(9, getLegacyClientTargetVip());
      this.cachedSize = i;
      return i;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasClientIp()
    {
      return this.hasClientIp;
    }

    public boolean hasClientPort()
    {
      return this.hasClientPort;
    }

    public boolean hasDebugIp()
    {
      return this.hasDebugIp;
    }

    public boolean hasGfeFrontlineInfo()
    {
      return this.hasGfeFrontlineInfo;
    }

    public boolean hasHost()
    {
      return this.hasHost;
    }

    public boolean hasImmediateClientIp()
    {
      return this.hasImmediateClientIp;
    }

    public boolean hasImmediateClientPort()
    {
      return this.hasImmediateClientPort;
    }

    public boolean hasLegacyClientTargetVip()
    {
      return this.hasLegacyClientTargetVip;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3ConnectionInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setType(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setClientIp(paramCodedInputStreamMicro.readString());
          break;
        case 24:
          setClientPort(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setDebugIp(paramCodedInputStreamMicro.readBool());
          break;
        case 42:
          setGfeFrontlineInfo(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setHost(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setImmediateClientIp(paramCodedInputStreamMicro.readString());
          break;
        case 64:
          setImmediateClientPort(paramCodedInputStreamMicro.readInt32());
          break;
        case 74:
        }
        setLegacyClientTargetVip(paramCodedInputStreamMicro.readString());
      }
    }

    public S3ConnectionInfo setClientIp(String paramString)
    {
      this.hasClientIp = true;
      this.clientIp_ = paramString;
      return this;
    }

    public S3ConnectionInfo setClientPort(int paramInt)
    {
      this.hasClientPort = true;
      this.clientPort_ = paramInt;
      return this;
    }

    public S3ConnectionInfo setDebugIp(boolean paramBoolean)
    {
      this.hasDebugIp = true;
      this.debugIp_ = paramBoolean;
      return this;
    }

    public S3ConnectionInfo setGfeFrontlineInfo(String paramString)
    {
      this.hasGfeFrontlineInfo = true;
      this.gfeFrontlineInfo_ = paramString;
      return this;
    }

    public S3ConnectionInfo setHost(String paramString)
    {
      this.hasHost = true;
      this.host_ = paramString;
      return this;
    }

    public S3ConnectionInfo setImmediateClientIp(String paramString)
    {
      this.hasImmediateClientIp = true;
      this.immediateClientIp_ = paramString;
      return this;
    }

    public S3ConnectionInfo setImmediateClientPort(int paramInt)
    {
      this.hasImmediateClientPort = true;
      this.immediateClientPort_ = paramInt;
      return this;
    }

    public S3ConnectionInfo setLegacyClientTargetVip(String paramString)
    {
      this.hasLegacyClientTargetVip = true;
      this.legacyClientTargetVip_ = paramString;
      return this;
    }

    public S3ConnectionInfo setType(int paramInt)
    {
      this.hasType = true;
      this.type_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasType())
        paramCodedOutputStreamMicro.writeInt32(1, getType());
      if (hasClientIp())
        paramCodedOutputStreamMicro.writeString(2, getClientIp());
      if (hasClientPort())
        paramCodedOutputStreamMicro.writeInt32(3, getClientPort());
      if (hasDebugIp())
        paramCodedOutputStreamMicro.writeBool(4, getDebugIp());
      if (hasGfeFrontlineInfo())
        paramCodedOutputStreamMicro.writeString(5, getGfeFrontlineInfo());
      if (hasHost())
        paramCodedOutputStreamMicro.writeString(6, getHost());
      if (hasImmediateClientIp())
        paramCodedOutputStreamMicro.writeString(7, getImmediateClientIp());
      if (hasImmediateClientPort())
        paramCodedOutputStreamMicro.writeInt32(8, getImmediateClientPort());
      if (hasLegacyClientTargetVip())
        paramCodedOutputStreamMicro.writeString(9, getLegacyClientTargetVip());
    }
  }

  public static final class S3ExperimentInfo extends MessageMicro
  {
    public static final int APPLICABLE_EXPERIMENTS_FIELD_NUMBER = 1;
    public static final int ENABLED_EXPERIMENTS_FIELD_NUMBER = 2;
    private List<Integer> applicableExperiments_ = Collections.emptyList();
    private int cachedSize = -1;
    private List<Integer> enabledExperiments_ = Collections.emptyList();

    public static S3ExperimentInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3ExperimentInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3ExperimentInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3ExperimentInfo)new S3ExperimentInfo().mergeFrom(paramArrayOfByte);
    }

    public S3ExperimentInfo addApplicableExperiments(int paramInt)
    {
      if (this.applicableExperiments_.isEmpty())
        this.applicableExperiments_ = new ArrayList();
      this.applicableExperiments_.add(Integer.valueOf(paramInt));
      return this;
    }

    public S3ExperimentInfo addEnabledExperiments(int paramInt)
    {
      if (this.enabledExperiments_.isEmpty())
        this.enabledExperiments_ = new ArrayList();
      this.enabledExperiments_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final S3ExperimentInfo clear()
    {
      clearApplicableExperiments();
      clearEnabledExperiments();
      this.cachedSize = -1;
      return this;
    }

    public S3ExperimentInfo clearApplicableExperiments()
    {
      this.applicableExperiments_ = Collections.emptyList();
      return this;
    }

    public S3ExperimentInfo clearEnabledExperiments()
    {
      this.enabledExperiments_ = Collections.emptyList();
      return this;
    }

    public int getApplicableExperiments(int paramInt)
    {
      return ((Integer)this.applicableExperiments_.get(paramInt)).intValue();
    }

    public int getApplicableExperimentsCount()
    {
      return this.applicableExperiments_.size();
    }

    public List<Integer> getApplicableExperimentsList()
    {
      return this.applicableExperiments_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getEnabledExperiments(int paramInt)
    {
      return ((Integer)this.enabledExperiments_.get(paramInt)).intValue();
    }

    public int getEnabledExperimentsCount()
    {
      return this.enabledExperiments_.size();
    }

    public List<Integer> getEnabledExperimentsList()
    {
      return this.enabledExperiments_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getApplicableExperimentsList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator1.next()).intValue());
      int j = 0 + i + 1 * getApplicableExperimentsList().size();
      int k = 0;
      Iterator localIterator2 = getEnabledExperimentsList().iterator();
      while (localIterator2.hasNext())
        k += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator2.next()).intValue());
      int m = j + k + 1 * getEnabledExperimentsList().size();
      this.cachedSize = m;
      return m;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3ExperimentInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          addApplicableExperiments(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        addEnabledExperiments(paramCodedInputStreamMicro.readInt32());
      }
    }

    public S3ExperimentInfo setApplicableExperiments(int paramInt1, int paramInt2)
    {
      this.applicableExperiments_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public S3ExperimentInfo setEnabledExperiments(int paramInt1, int paramInt2)
    {
      this.enabledExperiments_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getApplicableExperimentsList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeInt32(1, ((Integer)localIterator1.next()).intValue());
      Iterator localIterator2 = getEnabledExperimentsList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeInt32(2, ((Integer)localIterator2.next()).intValue());
    }
  }

  public static final class S3Request extends MessageMicro
  {
    public static final int CLIENT_LOG_REQUEST_EXTENSION_FIELD_NUMBER = 27800551;
    public static final int DEBUGGING_ENABLED_FIELD_NUMBER = 4;
    public static final int END_OF_DATA_FIELD_NUMBER = 3;
    public static final int GOGGLES_CLIENT_LOG_EXTENSION_FIELD_NUMBER = 35379363;
    public static final int GOGGLES_S3_SESSION_OPTIONS_EXTENSION_FIELD_NUMBER = 35380122;
    public static final int GOGGLES_STREAM_REQUEST_EXTENSION_FIELD_NUMBER = 35570342;
    public static final int LOGGING_ENABLED_FIELD_NUMBER = 2;
    public static final int MAJEL_CLIENT_INFO_EXTENSION_FIELD_NUMBER = 29734512;
    public static final int MAJEL_SERVICE_REQUEST_EXTENSION_FIELD_NUMBER = 27834892;
    public static final int MOBILE_USER_INFO_EXTENSION_FIELD_NUMBER = 27301014;
    public static final int PINHOLE_PARAMS_EXTENSION_FIELD_NUMBER = 34352150;
    public static final int PINHOLE_TTS_BRIDGE_PARAMS_EXTENSION_FIELD_NUMBER = 40941187;
    public static final int S3_AUDIO_DATA_EXTENSION_FIELD_NUMBER = 293101;
    public static final int S3_AUDIO_INFO_EXTENSION_FIELD_NUMBER = 293100;
    public static final int S3_CLIENT_INFO_EXTENSION_FIELD_NUMBER = 294000;
    public static final int S3_CONNECTION_INFO_EXTENSION_FIELD_NUMBER = 34552679;
    public static final int S3_EXPERIMENT_INFO_EXTENSION_FIELD_NUMBER = 33357560;
    public static final int S3_RECOGNIZER_INFO_EXTENSION_FIELD_NUMBER = 294500;
    public static final int S3_SESSION_INFO_EXTENSION_FIELD_NUMBER = 27423252;
    public static final int S3_USER_INFO_EXTENSION_FIELD_NUMBER = 293000;
    public static final int SERVICE_FIELD_NUMBER = 1;
    public static final int SOUND_SEARCH_INFO_EXTENSION_FIELD_NUMBER = 35351945;
    public static final int TTS_SERVICE_REQUEST_EXTENSION_FIELD_NUMBER = 27801516;
    private int cachedSize = -1;
    private ClientLogRequestProto.ClientLogRequest clientLogRequestExtension_ = null;
    private boolean debuggingEnabled_ = false;
    private boolean endOfData_ = false;
    private GogglesProtos.GogglesClientLog gogglesClientLogExtension_ = null;
    private GogglesS3.GogglesS3SessionOptions gogglesS3SessionOptionsExtension_ = null;
    private GogglesProtos.GogglesStreamRequest gogglesStreamRequestExtension_ = null;
    private boolean hasClientLogRequestExtension;
    private boolean hasDebuggingEnabled;
    private boolean hasEndOfData;
    private boolean hasGogglesClientLogExtension;
    private boolean hasGogglesS3SessionOptionsExtension;
    private boolean hasGogglesStreamRequestExtension;
    private boolean hasLoggingEnabled;
    private boolean hasMajelClientInfoExtension;
    private boolean hasMajelServiceRequestExtension;
    private boolean hasMobileUserInfoExtension;
    private boolean hasPinholeParamsExtension;
    private boolean hasPinholeTtsBridgeParamsExtension;
    private boolean hasS3AudioDataExtension;
    private boolean hasS3AudioInfoExtension;
    private boolean hasS3ClientInfoExtension;
    private boolean hasS3ConnectionInfoExtension;
    private boolean hasS3ExperimentInfoExtension;
    private boolean hasS3RecognizerInfoExtension;
    private boolean hasS3SessionInfoExtension;
    private boolean hasS3UserInfoExtension;
    private boolean hasService;
    private boolean hasSoundSearchInfoExtension;
    private boolean hasTtsServiceRequestExtension;
    private boolean loggingEnabled_ = true;
    private Majel.MajelClientInfo majelClientInfoExtension_ = null;
    private Majel.MajelServiceRequest majelServiceRequestExtension_ = null;
    private MobileUser.MobileUserInfo mobileUserInfoExtension_ = null;
    private PinholeStream.PinholeParams pinholeParamsExtension_ = null;
    private PinholeStream.PinholeTtsBridgeParams pinholeTtsBridgeParamsExtension_ = null;
    private Audio.S3AudioData s3AudioDataExtension_ = null;
    private Audio.S3AudioInfo s3AudioInfoExtension_ = null;
    private S3.S3ClientInfo s3ClientInfoExtension_ = null;
    private S3.S3ConnectionInfo s3ConnectionInfoExtension_ = null;
    private S3.S3ExperimentInfo s3ExperimentInfoExtension_ = null;
    private Recognizer.S3RecognizerInfo s3RecognizerInfoExtension_ = null;
    private S3.S3SessionInfo s3SessionInfoExtension_ = null;
    private S3.S3UserInfo s3UserInfoExtension_ = null;
    private String service_ = "";
    private SoundSearch.SoundSearchInfo soundSearchInfoExtension_ = null;
    private Synthesis.TtsServiceRequest ttsServiceRequestExtension_ = null;

    public static S3Request parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3Request().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3Request parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3Request)new S3Request().mergeFrom(paramArrayOfByte);
    }

    public final S3Request clear()
    {
      clearService();
      clearLoggingEnabled();
      clearDebuggingEnabled();
      clearEndOfData();
      clearS3UserInfoExtension();
      clearS3AudioInfoExtension();
      clearS3AudioDataExtension();
      clearS3ClientInfoExtension();
      clearS3RecognizerInfoExtension();
      clearMobileUserInfoExtension();
      clearS3SessionInfoExtension();
      clearClientLogRequestExtension();
      clearTtsServiceRequestExtension();
      clearMajelServiceRequestExtension();
      clearMajelClientInfoExtension();
      clearS3ExperimentInfoExtension();
      clearPinholeParamsExtension();
      clearS3ConnectionInfoExtension();
      clearSoundSearchInfoExtension();
      clearGogglesClientLogExtension();
      clearGogglesS3SessionOptionsExtension();
      clearGogglesStreamRequestExtension();
      clearPinholeTtsBridgeParamsExtension();
      this.cachedSize = -1;
      return this;
    }

    public S3Request clearClientLogRequestExtension()
    {
      this.hasClientLogRequestExtension = false;
      this.clientLogRequestExtension_ = null;
      return this;
    }

    public S3Request clearDebuggingEnabled()
    {
      this.hasDebuggingEnabled = false;
      this.debuggingEnabled_ = false;
      return this;
    }

    public S3Request clearEndOfData()
    {
      this.hasEndOfData = false;
      this.endOfData_ = false;
      return this;
    }

    public S3Request clearGogglesClientLogExtension()
    {
      this.hasGogglesClientLogExtension = false;
      this.gogglesClientLogExtension_ = null;
      return this;
    }

    public S3Request clearGogglesS3SessionOptionsExtension()
    {
      this.hasGogglesS3SessionOptionsExtension = false;
      this.gogglesS3SessionOptionsExtension_ = null;
      return this;
    }

    public S3Request clearGogglesStreamRequestExtension()
    {
      this.hasGogglesStreamRequestExtension = false;
      this.gogglesStreamRequestExtension_ = null;
      return this;
    }

    public S3Request clearLoggingEnabled()
    {
      this.hasLoggingEnabled = false;
      this.loggingEnabled_ = true;
      return this;
    }

    public S3Request clearMajelClientInfoExtension()
    {
      this.hasMajelClientInfoExtension = false;
      this.majelClientInfoExtension_ = null;
      return this;
    }

    public S3Request clearMajelServiceRequestExtension()
    {
      this.hasMajelServiceRequestExtension = false;
      this.majelServiceRequestExtension_ = null;
      return this;
    }

    public S3Request clearMobileUserInfoExtension()
    {
      this.hasMobileUserInfoExtension = false;
      this.mobileUserInfoExtension_ = null;
      return this;
    }

    public S3Request clearPinholeParamsExtension()
    {
      this.hasPinholeParamsExtension = false;
      this.pinholeParamsExtension_ = null;
      return this;
    }

    public S3Request clearPinholeTtsBridgeParamsExtension()
    {
      this.hasPinholeTtsBridgeParamsExtension = false;
      this.pinholeTtsBridgeParamsExtension_ = null;
      return this;
    }

    public S3Request clearS3AudioDataExtension()
    {
      this.hasS3AudioDataExtension = false;
      this.s3AudioDataExtension_ = null;
      return this;
    }

    public S3Request clearS3AudioInfoExtension()
    {
      this.hasS3AudioInfoExtension = false;
      this.s3AudioInfoExtension_ = null;
      return this;
    }

    public S3Request clearS3ClientInfoExtension()
    {
      this.hasS3ClientInfoExtension = false;
      this.s3ClientInfoExtension_ = null;
      return this;
    }

    public S3Request clearS3ConnectionInfoExtension()
    {
      this.hasS3ConnectionInfoExtension = false;
      this.s3ConnectionInfoExtension_ = null;
      return this;
    }

    public S3Request clearS3ExperimentInfoExtension()
    {
      this.hasS3ExperimentInfoExtension = false;
      this.s3ExperimentInfoExtension_ = null;
      return this;
    }

    public S3Request clearS3RecognizerInfoExtension()
    {
      this.hasS3RecognizerInfoExtension = false;
      this.s3RecognizerInfoExtension_ = null;
      return this;
    }

    public S3Request clearS3SessionInfoExtension()
    {
      this.hasS3SessionInfoExtension = false;
      this.s3SessionInfoExtension_ = null;
      return this;
    }

    public S3Request clearS3UserInfoExtension()
    {
      this.hasS3UserInfoExtension = false;
      this.s3UserInfoExtension_ = null;
      return this;
    }

    public S3Request clearService()
    {
      this.hasService = false;
      this.service_ = "";
      return this;
    }

    public S3Request clearSoundSearchInfoExtension()
    {
      this.hasSoundSearchInfoExtension = false;
      this.soundSearchInfoExtension_ = null;
      return this;
    }

    public S3Request clearTtsServiceRequestExtension()
    {
      this.hasTtsServiceRequestExtension = false;
      this.ttsServiceRequestExtension_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ClientLogRequestProto.ClientLogRequest getClientLogRequestExtension()
    {
      return this.clientLogRequestExtension_;
    }

    public boolean getDebuggingEnabled()
    {
      return this.debuggingEnabled_;
    }

    public boolean getEndOfData()
    {
      return this.endOfData_;
    }

    public GogglesProtos.GogglesClientLog getGogglesClientLogExtension()
    {
      return this.gogglesClientLogExtension_;
    }

    public GogglesS3.GogglesS3SessionOptions getGogglesS3SessionOptionsExtension()
    {
      return this.gogglesS3SessionOptionsExtension_;
    }

    public GogglesProtos.GogglesStreamRequest getGogglesStreamRequestExtension()
    {
      return this.gogglesStreamRequestExtension_;
    }

    public boolean getLoggingEnabled()
    {
      return this.loggingEnabled_;
    }

    public Majel.MajelClientInfo getMajelClientInfoExtension()
    {
      return this.majelClientInfoExtension_;
    }

    public Majel.MajelServiceRequest getMajelServiceRequestExtension()
    {
      return this.majelServiceRequestExtension_;
    }

    public MobileUser.MobileUserInfo getMobileUserInfoExtension()
    {
      return this.mobileUserInfoExtension_;
    }

    public PinholeStream.PinholeParams getPinholeParamsExtension()
    {
      return this.pinholeParamsExtension_;
    }

    public PinholeStream.PinholeTtsBridgeParams getPinholeTtsBridgeParamsExtension()
    {
      return this.pinholeTtsBridgeParamsExtension_;
    }

    public Audio.S3AudioData getS3AudioDataExtension()
    {
      return this.s3AudioDataExtension_;
    }

    public Audio.S3AudioInfo getS3AudioInfoExtension()
    {
      return this.s3AudioInfoExtension_;
    }

    public S3.S3ClientInfo getS3ClientInfoExtension()
    {
      return this.s3ClientInfoExtension_;
    }

    public S3.S3ConnectionInfo getS3ConnectionInfoExtension()
    {
      return this.s3ConnectionInfoExtension_;
    }

    public S3.S3ExperimentInfo getS3ExperimentInfoExtension()
    {
      return this.s3ExperimentInfoExtension_;
    }

    public Recognizer.S3RecognizerInfo getS3RecognizerInfoExtension()
    {
      return this.s3RecognizerInfoExtension_;
    }

    public S3.S3SessionInfo getS3SessionInfoExtension()
    {
      return this.s3SessionInfoExtension_;
    }

    public S3.S3UserInfo getS3UserInfoExtension()
    {
      return this.s3UserInfoExtension_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasService();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getService());
      if (hasLoggingEnabled())
        i += CodedOutputStreamMicro.computeBoolSize(2, getLoggingEnabled());
      if (hasEndOfData())
        i += CodedOutputStreamMicro.computeBoolSize(3, getEndOfData());
      if (hasDebuggingEnabled())
        i += CodedOutputStreamMicro.computeBoolSize(4, getDebuggingEnabled());
      if (hasS3UserInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(293000, getS3UserInfoExtension());
      if (hasS3AudioInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(293100, getS3AudioInfoExtension());
      if (hasS3AudioDataExtension())
        i += CodedOutputStreamMicro.computeMessageSize(293101, getS3AudioDataExtension());
      if (hasS3ClientInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(294000, getS3ClientInfoExtension());
      if (hasS3RecognizerInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(294500, getS3RecognizerInfoExtension());
      if (hasMobileUserInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(27301014, getMobileUserInfoExtension());
      if (hasS3SessionInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(27423252, getS3SessionInfoExtension());
      if (hasClientLogRequestExtension())
        i += CodedOutputStreamMicro.computeMessageSize(27800551, getClientLogRequestExtension());
      if (hasTtsServiceRequestExtension())
        i += CodedOutputStreamMicro.computeMessageSize(27801516, getTtsServiceRequestExtension());
      if (hasMajelServiceRequestExtension())
        i += CodedOutputStreamMicro.computeMessageSize(27834892, getMajelServiceRequestExtension());
      if (hasMajelClientInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(29734512, getMajelClientInfoExtension());
      if (hasS3ExperimentInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(33357560, getS3ExperimentInfoExtension());
      if (hasPinholeParamsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(34352150, getPinholeParamsExtension());
      if (hasS3ConnectionInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(34552679, getS3ConnectionInfoExtension());
      if (hasSoundSearchInfoExtension())
        i += CodedOutputStreamMicro.computeMessageSize(35351945, getSoundSearchInfoExtension());
      if (hasGogglesClientLogExtension())
        i += CodedOutputStreamMicro.computeMessageSize(35379363, getGogglesClientLogExtension());
      if (hasGogglesS3SessionOptionsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(35380122, getGogglesS3SessionOptionsExtension());
      if (hasGogglesStreamRequestExtension())
        i += CodedOutputStreamMicro.computeMessageSize(35570342, getGogglesStreamRequestExtension());
      if (hasPinholeTtsBridgeParamsExtension())
        i += CodedOutputStreamMicro.computeMessageSize(40941187, getPinholeTtsBridgeParamsExtension());
      this.cachedSize = i;
      return i;
    }

    public String getService()
    {
      return this.service_;
    }

    public SoundSearch.SoundSearchInfo getSoundSearchInfoExtension()
    {
      return this.soundSearchInfoExtension_;
    }

    public Synthesis.TtsServiceRequest getTtsServiceRequestExtension()
    {
      return this.ttsServiceRequestExtension_;
    }

    public boolean hasClientLogRequestExtension()
    {
      return this.hasClientLogRequestExtension;
    }

    public boolean hasDebuggingEnabled()
    {
      return this.hasDebuggingEnabled;
    }

    public boolean hasEndOfData()
    {
      return this.hasEndOfData;
    }

    public boolean hasGogglesClientLogExtension()
    {
      return this.hasGogglesClientLogExtension;
    }

    public boolean hasGogglesS3SessionOptionsExtension()
    {
      return this.hasGogglesS3SessionOptionsExtension;
    }

    public boolean hasGogglesStreamRequestExtension()
    {
      return this.hasGogglesStreamRequestExtension;
    }

    public boolean hasLoggingEnabled()
    {
      return this.hasLoggingEnabled;
    }

    public boolean hasMajelClientInfoExtension()
    {
      return this.hasMajelClientInfoExtension;
    }

    public boolean hasMajelServiceRequestExtension()
    {
      return this.hasMajelServiceRequestExtension;
    }

    public boolean hasMobileUserInfoExtension()
    {
      return this.hasMobileUserInfoExtension;
    }

    public boolean hasPinholeParamsExtension()
    {
      return this.hasPinholeParamsExtension;
    }

    public boolean hasPinholeTtsBridgeParamsExtension()
    {
      return this.hasPinholeTtsBridgeParamsExtension;
    }

    public boolean hasS3AudioDataExtension()
    {
      return this.hasS3AudioDataExtension;
    }

    public boolean hasS3AudioInfoExtension()
    {
      return this.hasS3AudioInfoExtension;
    }

    public boolean hasS3ClientInfoExtension()
    {
      return this.hasS3ClientInfoExtension;
    }

    public boolean hasS3ConnectionInfoExtension()
    {
      return this.hasS3ConnectionInfoExtension;
    }

    public boolean hasS3ExperimentInfoExtension()
    {
      return this.hasS3ExperimentInfoExtension;
    }

    public boolean hasS3RecognizerInfoExtension()
    {
      return this.hasS3RecognizerInfoExtension;
    }

    public boolean hasS3SessionInfoExtension()
    {
      return this.hasS3SessionInfoExtension;
    }

    public boolean hasS3UserInfoExtension()
    {
      return this.hasS3UserInfoExtension;
    }

    public boolean hasService()
    {
      return this.hasService;
    }

    public boolean hasSoundSearchInfoExtension()
    {
      return this.hasSoundSearchInfoExtension;
    }

    public boolean hasTtsServiceRequestExtension()
    {
      return this.hasTtsServiceRequestExtension;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3Request mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setService(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setLoggingEnabled(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
          setEndOfData(paramCodedInputStreamMicro.readBool());
          break;
        case 32:
          setDebuggingEnabled(paramCodedInputStreamMicro.readBool());
          break;
        case 2344002:
          S3.S3UserInfo localS3UserInfo = new S3.S3UserInfo();
          paramCodedInputStreamMicro.readMessage(localS3UserInfo);
          setS3UserInfoExtension(localS3UserInfo);
          break;
        case 2344802:
          Audio.S3AudioInfo localS3AudioInfo = new Audio.S3AudioInfo();
          paramCodedInputStreamMicro.readMessage(localS3AudioInfo);
          setS3AudioInfoExtension(localS3AudioInfo);
          break;
        case 2344810:
          Audio.S3AudioData localS3AudioData = new Audio.S3AudioData();
          paramCodedInputStreamMicro.readMessage(localS3AudioData);
          setS3AudioDataExtension(localS3AudioData);
          break;
        case 2352002:
          S3.S3ClientInfo localS3ClientInfo = new S3.S3ClientInfo();
          paramCodedInputStreamMicro.readMessage(localS3ClientInfo);
          setS3ClientInfoExtension(localS3ClientInfo);
          break;
        case 2356002:
          Recognizer.S3RecognizerInfo localS3RecognizerInfo = new Recognizer.S3RecognizerInfo();
          paramCodedInputStreamMicro.readMessage(localS3RecognizerInfo);
          setS3RecognizerInfoExtension(localS3RecognizerInfo);
          break;
        case 218408114:
          MobileUser.MobileUserInfo localMobileUserInfo = new MobileUser.MobileUserInfo();
          paramCodedInputStreamMicro.readMessage(localMobileUserInfo);
          setMobileUserInfoExtension(localMobileUserInfo);
          break;
        case 219386018:
          S3.S3SessionInfo localS3SessionInfo = new S3.S3SessionInfo();
          paramCodedInputStreamMicro.readMessage(localS3SessionInfo);
          setS3SessionInfoExtension(localS3SessionInfo);
          break;
        case 222404410:
          ClientLogRequestProto.ClientLogRequest localClientLogRequest = new ClientLogRequestProto.ClientLogRequest();
          paramCodedInputStreamMicro.readMessage(localClientLogRequest);
          setClientLogRequestExtension(localClientLogRequest);
          break;
        case 222412130:
          Synthesis.TtsServiceRequest localTtsServiceRequest = new Synthesis.TtsServiceRequest();
          paramCodedInputStreamMicro.readMessage(localTtsServiceRequest);
          setTtsServiceRequestExtension(localTtsServiceRequest);
          break;
        case 222679138:
          Majel.MajelServiceRequest localMajelServiceRequest = new Majel.MajelServiceRequest();
          paramCodedInputStreamMicro.readMessage(localMajelServiceRequest);
          setMajelServiceRequestExtension(localMajelServiceRequest);
          break;
        case 237876098:
          Majel.MajelClientInfo localMajelClientInfo = new Majel.MajelClientInfo();
          paramCodedInputStreamMicro.readMessage(localMajelClientInfo);
          setMajelClientInfoExtension(localMajelClientInfo);
          break;
        case 266860482:
          S3.S3ExperimentInfo localS3ExperimentInfo = new S3.S3ExperimentInfo();
          paramCodedInputStreamMicro.readMessage(localS3ExperimentInfo);
          setS3ExperimentInfoExtension(localS3ExperimentInfo);
          break;
        case 274817202:
          PinholeStream.PinholeParams localPinholeParams = new PinholeStream.PinholeParams();
          paramCodedInputStreamMicro.readMessage(localPinholeParams);
          setPinholeParamsExtension(localPinholeParams);
          break;
        case 276421434:
          S3.S3ConnectionInfo localS3ConnectionInfo = new S3.S3ConnectionInfo();
          paramCodedInputStreamMicro.readMessage(localS3ConnectionInfo);
          setS3ConnectionInfoExtension(localS3ConnectionInfo);
          break;
        case 282815562:
          SoundSearch.SoundSearchInfo localSoundSearchInfo = new SoundSearch.SoundSearchInfo();
          paramCodedInputStreamMicro.readMessage(localSoundSearchInfo);
          setSoundSearchInfoExtension(localSoundSearchInfo);
          break;
        case 283034906:
          GogglesProtos.GogglesClientLog localGogglesClientLog = new GogglesProtos.GogglesClientLog();
          paramCodedInputStreamMicro.readMessage(localGogglesClientLog);
          setGogglesClientLogExtension(localGogglesClientLog);
          break;
        case 283040978:
          GogglesS3.GogglesS3SessionOptions localGogglesS3SessionOptions = new GogglesS3.GogglesS3SessionOptions();
          paramCodedInputStreamMicro.readMessage(localGogglesS3SessionOptions);
          setGogglesS3SessionOptionsExtension(localGogglesS3SessionOptions);
          break;
        case 284562738:
          GogglesProtos.GogglesStreamRequest localGogglesStreamRequest = new GogglesProtos.GogglesStreamRequest();
          paramCodedInputStreamMicro.readMessage(localGogglesStreamRequest);
          setGogglesStreamRequestExtension(localGogglesStreamRequest);
          break;
        case 327529498:
        }
        PinholeStream.PinholeTtsBridgeParams localPinholeTtsBridgeParams = new PinholeStream.PinholeTtsBridgeParams();
        paramCodedInputStreamMicro.readMessage(localPinholeTtsBridgeParams);
        setPinholeTtsBridgeParamsExtension(localPinholeTtsBridgeParams);
      }
    }

    public S3Request setClientLogRequestExtension(ClientLogRequestProto.ClientLogRequest paramClientLogRequest)
    {
      if (paramClientLogRequest == null)
        throw new NullPointerException();
      this.hasClientLogRequestExtension = true;
      this.clientLogRequestExtension_ = paramClientLogRequest;
      return this;
    }

    public S3Request setDebuggingEnabled(boolean paramBoolean)
    {
      this.hasDebuggingEnabled = true;
      this.debuggingEnabled_ = paramBoolean;
      return this;
    }

    public S3Request setEndOfData(boolean paramBoolean)
    {
      this.hasEndOfData = true;
      this.endOfData_ = paramBoolean;
      return this;
    }

    public S3Request setGogglesClientLogExtension(GogglesProtos.GogglesClientLog paramGogglesClientLog)
    {
      if (paramGogglesClientLog == null)
        throw new NullPointerException();
      this.hasGogglesClientLogExtension = true;
      this.gogglesClientLogExtension_ = paramGogglesClientLog;
      return this;
    }

    public S3Request setGogglesS3SessionOptionsExtension(GogglesS3.GogglesS3SessionOptions paramGogglesS3SessionOptions)
    {
      if (paramGogglesS3SessionOptions == null)
        throw new NullPointerException();
      this.hasGogglesS3SessionOptionsExtension = true;
      this.gogglesS3SessionOptionsExtension_ = paramGogglesS3SessionOptions;
      return this;
    }

    public S3Request setGogglesStreamRequestExtension(GogglesProtos.GogglesStreamRequest paramGogglesStreamRequest)
    {
      if (paramGogglesStreamRequest == null)
        throw new NullPointerException();
      this.hasGogglesStreamRequestExtension = true;
      this.gogglesStreamRequestExtension_ = paramGogglesStreamRequest;
      return this;
    }

    public S3Request setLoggingEnabled(boolean paramBoolean)
    {
      this.hasLoggingEnabled = true;
      this.loggingEnabled_ = paramBoolean;
      return this;
    }

    public S3Request setMajelClientInfoExtension(Majel.MajelClientInfo paramMajelClientInfo)
    {
      if (paramMajelClientInfo == null)
        throw new NullPointerException();
      this.hasMajelClientInfoExtension = true;
      this.majelClientInfoExtension_ = paramMajelClientInfo;
      return this;
    }

    public S3Request setMajelServiceRequestExtension(Majel.MajelServiceRequest paramMajelServiceRequest)
    {
      if (paramMajelServiceRequest == null)
        throw new NullPointerException();
      this.hasMajelServiceRequestExtension = true;
      this.majelServiceRequestExtension_ = paramMajelServiceRequest;
      return this;
    }

    public S3Request setMobileUserInfoExtension(MobileUser.MobileUserInfo paramMobileUserInfo)
    {
      if (paramMobileUserInfo == null)
        throw new NullPointerException();
      this.hasMobileUserInfoExtension = true;
      this.mobileUserInfoExtension_ = paramMobileUserInfo;
      return this;
    }

    public S3Request setPinholeParamsExtension(PinholeStream.PinholeParams paramPinholeParams)
    {
      if (paramPinholeParams == null)
        throw new NullPointerException();
      this.hasPinholeParamsExtension = true;
      this.pinholeParamsExtension_ = paramPinholeParams;
      return this;
    }

    public S3Request setPinholeTtsBridgeParamsExtension(PinholeStream.PinholeTtsBridgeParams paramPinholeTtsBridgeParams)
    {
      if (paramPinholeTtsBridgeParams == null)
        throw new NullPointerException();
      this.hasPinholeTtsBridgeParamsExtension = true;
      this.pinholeTtsBridgeParamsExtension_ = paramPinholeTtsBridgeParams;
      return this;
    }

    public S3Request setS3AudioDataExtension(Audio.S3AudioData paramS3AudioData)
    {
      if (paramS3AudioData == null)
        throw new NullPointerException();
      this.hasS3AudioDataExtension = true;
      this.s3AudioDataExtension_ = paramS3AudioData;
      return this;
    }

    public S3Request setS3AudioInfoExtension(Audio.S3AudioInfo paramS3AudioInfo)
    {
      if (paramS3AudioInfo == null)
        throw new NullPointerException();
      this.hasS3AudioInfoExtension = true;
      this.s3AudioInfoExtension_ = paramS3AudioInfo;
      return this;
    }

    public S3Request setS3ClientInfoExtension(S3.S3ClientInfo paramS3ClientInfo)
    {
      if (paramS3ClientInfo == null)
        throw new NullPointerException();
      this.hasS3ClientInfoExtension = true;
      this.s3ClientInfoExtension_ = paramS3ClientInfo;
      return this;
    }

    public S3Request setS3ConnectionInfoExtension(S3.S3ConnectionInfo paramS3ConnectionInfo)
    {
      if (paramS3ConnectionInfo == null)
        throw new NullPointerException();
      this.hasS3ConnectionInfoExtension = true;
      this.s3ConnectionInfoExtension_ = paramS3ConnectionInfo;
      return this;
    }

    public S3Request setS3ExperimentInfoExtension(S3.S3ExperimentInfo paramS3ExperimentInfo)
    {
      if (paramS3ExperimentInfo == null)
        throw new NullPointerException();
      this.hasS3ExperimentInfoExtension = true;
      this.s3ExperimentInfoExtension_ = paramS3ExperimentInfo;
      return this;
    }

    public S3Request setS3RecognizerInfoExtension(Recognizer.S3RecognizerInfo paramS3RecognizerInfo)
    {
      if (paramS3RecognizerInfo == null)
        throw new NullPointerException();
      this.hasS3RecognizerInfoExtension = true;
      this.s3RecognizerInfoExtension_ = paramS3RecognizerInfo;
      return this;
    }

    public S3Request setS3SessionInfoExtension(S3.S3SessionInfo paramS3SessionInfo)
    {
      if (paramS3SessionInfo == null)
        throw new NullPointerException();
      this.hasS3SessionInfoExtension = true;
      this.s3SessionInfoExtension_ = paramS3SessionInfo;
      return this;
    }

    public S3Request setS3UserInfoExtension(S3.S3UserInfo paramS3UserInfo)
    {
      if (paramS3UserInfo == null)
        throw new NullPointerException();
      this.hasS3UserInfoExtension = true;
      this.s3UserInfoExtension_ = paramS3UserInfo;
      return this;
    }

    public S3Request setService(String paramString)
    {
      this.hasService = true;
      this.service_ = paramString;
      return this;
    }

    public S3Request setSoundSearchInfoExtension(SoundSearch.SoundSearchInfo paramSoundSearchInfo)
    {
      if (paramSoundSearchInfo == null)
        throw new NullPointerException();
      this.hasSoundSearchInfoExtension = true;
      this.soundSearchInfoExtension_ = paramSoundSearchInfo;
      return this;
    }

    public S3Request setTtsServiceRequestExtension(Synthesis.TtsServiceRequest paramTtsServiceRequest)
    {
      if (paramTtsServiceRequest == null)
        throw new NullPointerException();
      this.hasTtsServiceRequestExtension = true;
      this.ttsServiceRequestExtension_ = paramTtsServiceRequest;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasService())
        paramCodedOutputStreamMicro.writeString(1, getService());
      if (hasLoggingEnabled())
        paramCodedOutputStreamMicro.writeBool(2, getLoggingEnabled());
      if (hasEndOfData())
        paramCodedOutputStreamMicro.writeBool(3, getEndOfData());
      if (hasDebuggingEnabled())
        paramCodedOutputStreamMicro.writeBool(4, getDebuggingEnabled());
      if (hasS3UserInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(293000, getS3UserInfoExtension());
      if (hasS3AudioInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(293100, getS3AudioInfoExtension());
      if (hasS3AudioDataExtension())
        paramCodedOutputStreamMicro.writeMessage(293101, getS3AudioDataExtension());
      if (hasS3ClientInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(294000, getS3ClientInfoExtension());
      if (hasS3RecognizerInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(294500, getS3RecognizerInfoExtension());
      if (hasMobileUserInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(27301014, getMobileUserInfoExtension());
      if (hasS3SessionInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(27423252, getS3SessionInfoExtension());
      if (hasClientLogRequestExtension())
        paramCodedOutputStreamMicro.writeMessage(27800551, getClientLogRequestExtension());
      if (hasTtsServiceRequestExtension())
        paramCodedOutputStreamMicro.writeMessage(27801516, getTtsServiceRequestExtension());
      if (hasMajelServiceRequestExtension())
        paramCodedOutputStreamMicro.writeMessage(27834892, getMajelServiceRequestExtension());
      if (hasMajelClientInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(29734512, getMajelClientInfoExtension());
      if (hasS3ExperimentInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(33357560, getS3ExperimentInfoExtension());
      if (hasPinholeParamsExtension())
        paramCodedOutputStreamMicro.writeMessage(34352150, getPinholeParamsExtension());
      if (hasS3ConnectionInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(34552679, getS3ConnectionInfoExtension());
      if (hasSoundSearchInfoExtension())
        paramCodedOutputStreamMicro.writeMessage(35351945, getSoundSearchInfoExtension());
      if (hasGogglesClientLogExtension())
        paramCodedOutputStreamMicro.writeMessage(35379363, getGogglesClientLogExtension());
      if (hasGogglesS3SessionOptionsExtension())
        paramCodedOutputStreamMicro.writeMessage(35380122, getGogglesS3SessionOptionsExtension());
      if (hasGogglesStreamRequestExtension())
        paramCodedOutputStreamMicro.writeMessage(35570342, getGogglesStreamRequestExtension());
      if (hasPinholeTtsBridgeParamsExtension())
        paramCodedOutputStreamMicro.writeMessage(40941187, getPinholeTtsBridgeParamsExtension());
    }
  }

  public static final class S3RequestBatch extends MessageMicro
  {
    public static final int REQUESTS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<S3.S3Request> requests_ = Collections.emptyList();

    public static S3RequestBatch parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3RequestBatch().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3RequestBatch parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3RequestBatch)new S3RequestBatch().mergeFrom(paramArrayOfByte);
    }

    public S3RequestBatch addRequests(S3.S3Request paramS3Request)
    {
      if (paramS3Request == null)
        throw new NullPointerException();
      if (this.requests_.isEmpty())
        this.requests_ = new ArrayList();
      this.requests_.add(paramS3Request);
      return this;
    }

    public final S3RequestBatch clear()
    {
      clearRequests();
      this.cachedSize = -1;
      return this;
    }

    public S3RequestBatch clearRequests()
    {
      this.requests_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public S3.S3Request getRequests(int paramInt)
    {
      return (S3.S3Request)this.requests_.get(paramInt);
    }

    public int getRequestsCount()
    {
      return this.requests_.size();
    }

    public List<S3.S3Request> getRequestsList()
    {
      return this.requests_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getRequestsList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (S3.S3Request)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3RequestBatch mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        S3.S3Request localS3Request = new S3.S3Request();
        paramCodedInputStreamMicro.readMessage(localS3Request);
        addRequests(localS3Request);
      }
    }

    public S3RequestBatch setRequests(int paramInt, S3.S3Request paramS3Request)
    {
      if (paramS3Request == null)
        throw new NullPointerException();
      this.requests_.set(paramInt, paramS3Request);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getRequestsList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (S3.S3Request)localIterator.next());
    }
  }

  public static final class S3Response extends MessageMicro
  {
    public static final int DEBUG_LINE_FIELD_NUMBER = 4;
    public static final int ERROR_CODE_FIELD_NUMBER = 2;
    public static final int ERROR_DESCRIPTION_FIELD_NUMBER = 3;
    public static final int GOGGLES_STREAM_RESPONSE_EXTENSION_FIELD_NUMBER = 35419983;
    public static final int MAJEL_SERVICE_EVENT_EXTENSION_FIELD_NUMBER = 26599812;
    public static final int PINHOLE_OUTPUT_EXTENSION_FIELD_NUMBER = 39442181;
    public static final int RECOGNIZER_EVENT_EXTENSION_FIELD_NUMBER = 1253625;
    public static final int S3_STATUS_DONE_ERROR = 2;
    public static final int S3_STATUS_DONE_SUCCESS = 1;
    public static final int S3_STATUS_IN_PROGRESS = 0;
    public static final int S3_STATUS_NOT_STARTED = 3;
    public static final int SOUND_SEARCH_SERVICE_EVENT_EXTENSION_FIELD_NUMBER = 35351945;
    public static final int STATUS_FIELD_NUMBER = 1;
    public static final int TTS_SERVICE_EVENT_EXTENSION_FIELD_NUMBER = 28599812;
    private int cachedSize = -1;
    private List<String> debugLine_ = Collections.emptyList();
    private int errorCode_ = 0;
    private String errorDescription_ = "";
    private GogglesProtos.GogglesStreamResponse gogglesStreamResponseExtension_ = null;
    private boolean hasErrorCode;
    private boolean hasErrorDescription;
    private boolean hasGogglesStreamResponseExtension;
    private boolean hasMajelServiceEventExtension;
    private boolean hasPinholeOutputExtension;
    private boolean hasRecognizerEventExtension;
    private boolean hasSoundSearchServiceEventExtension;
    private boolean hasStatus;
    private boolean hasTtsServiceEventExtension;
    private Majel.MajelServiceEvent majelServiceEventExtension_ = null;
    private PinholeStream.PinholeOutput pinholeOutputExtension_ = null;
    private Recognizer.RecognizerEvent recognizerEventExtension_ = null;
    private SoundSearch.SoundSearchServiceEvent soundSearchServiceEventExtension_ = null;
    private int status_ = 0;
    private Synthesis.TtsServiceEvent ttsServiceEventExtension_ = null;

    public static S3Response parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3Response().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3Response parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3Response)new S3Response().mergeFrom(paramArrayOfByte);
    }

    public S3Response addDebugLine(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.debugLine_.isEmpty())
        this.debugLine_ = new ArrayList();
      this.debugLine_.add(paramString);
      return this;
    }

    public final S3Response clear()
    {
      clearStatus();
      clearErrorCode();
      clearErrorDescription();
      clearDebugLine();
      clearRecognizerEventExtension();
      clearMajelServiceEventExtension();
      clearTtsServiceEventExtension();
      clearSoundSearchServiceEventExtension();
      clearGogglesStreamResponseExtension();
      clearPinholeOutputExtension();
      this.cachedSize = -1;
      return this;
    }

    public S3Response clearDebugLine()
    {
      this.debugLine_ = Collections.emptyList();
      return this;
    }

    public S3Response clearErrorCode()
    {
      this.hasErrorCode = false;
      this.errorCode_ = 0;
      return this;
    }

    public S3Response clearErrorDescription()
    {
      this.hasErrorDescription = false;
      this.errorDescription_ = "";
      return this;
    }

    public S3Response clearGogglesStreamResponseExtension()
    {
      this.hasGogglesStreamResponseExtension = false;
      this.gogglesStreamResponseExtension_ = null;
      return this;
    }

    public S3Response clearMajelServiceEventExtension()
    {
      this.hasMajelServiceEventExtension = false;
      this.majelServiceEventExtension_ = null;
      return this;
    }

    public S3Response clearPinholeOutputExtension()
    {
      this.hasPinholeOutputExtension = false;
      this.pinholeOutputExtension_ = null;
      return this;
    }

    public S3Response clearRecognizerEventExtension()
    {
      this.hasRecognizerEventExtension = false;
      this.recognizerEventExtension_ = null;
      return this;
    }

    public S3Response clearSoundSearchServiceEventExtension()
    {
      this.hasSoundSearchServiceEventExtension = false;
      this.soundSearchServiceEventExtension_ = null;
      return this;
    }

    public S3Response clearStatus()
    {
      this.hasStatus = false;
      this.status_ = 0;
      return this;
    }

    public S3Response clearTtsServiceEventExtension()
    {
      this.hasTtsServiceEventExtension = false;
      this.ttsServiceEventExtension_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDebugLine(int paramInt)
    {
      return (String)this.debugLine_.get(paramInt);
    }

    public int getDebugLineCount()
    {
      return this.debugLine_.size();
    }

    public List<String> getDebugLineList()
    {
      return this.debugLine_;
    }

    public int getErrorCode()
    {
      return this.errorCode_;
    }

    public String getErrorDescription()
    {
      return this.errorDescription_;
    }

    public GogglesProtos.GogglesStreamResponse getGogglesStreamResponseExtension()
    {
      return this.gogglesStreamResponseExtension_;
    }

    public Majel.MajelServiceEvent getMajelServiceEventExtension()
    {
      return this.majelServiceEventExtension_;
    }

    public PinholeStream.PinholeOutput getPinholeOutputExtension()
    {
      return this.pinholeOutputExtension_;
    }

    public Recognizer.RecognizerEvent getRecognizerEventExtension()
    {
      return this.recognizerEventExtension_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasStatus();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getStatus());
      if (hasErrorCode())
        i += CodedOutputStreamMicro.computeInt32Size(2, getErrorCode());
      if (hasErrorDescription())
        i += CodedOutputStreamMicro.computeStringSize(3, getErrorDescription());
      int j = 0;
      Iterator localIterator = getDebugLineList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getDebugLineList().size();
      if (hasRecognizerEventExtension())
        k += CodedOutputStreamMicro.computeMessageSize(1253625, getRecognizerEventExtension());
      if (hasMajelServiceEventExtension())
        k += CodedOutputStreamMicro.computeMessageSize(26599812, getMajelServiceEventExtension());
      if (hasTtsServiceEventExtension())
        k += CodedOutputStreamMicro.computeMessageSize(28599812, getTtsServiceEventExtension());
      if (hasSoundSearchServiceEventExtension())
        k += CodedOutputStreamMicro.computeMessageSize(35351945, getSoundSearchServiceEventExtension());
      if (hasGogglesStreamResponseExtension())
        k += CodedOutputStreamMicro.computeMessageSize(35419983, getGogglesStreamResponseExtension());
      if (hasPinholeOutputExtension())
        k += CodedOutputStreamMicro.computeMessageSize(39442181, getPinholeOutputExtension());
      this.cachedSize = k;
      return k;
    }

    public SoundSearch.SoundSearchServiceEvent getSoundSearchServiceEventExtension()
    {
      return this.soundSearchServiceEventExtension_;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public Synthesis.TtsServiceEvent getTtsServiceEventExtension()
    {
      return this.ttsServiceEventExtension_;
    }

    public boolean hasErrorCode()
    {
      return this.hasErrorCode;
    }

    public boolean hasErrorDescription()
    {
      return this.hasErrorDescription;
    }

    public boolean hasGogglesStreamResponseExtension()
    {
      return this.hasGogglesStreamResponseExtension;
    }

    public boolean hasMajelServiceEventExtension()
    {
      return this.hasMajelServiceEventExtension;
    }

    public boolean hasPinholeOutputExtension()
    {
      return this.hasPinholeOutputExtension;
    }

    public boolean hasRecognizerEventExtension()
    {
      return this.hasRecognizerEventExtension;
    }

    public boolean hasSoundSearchServiceEventExtension()
    {
      return this.hasSoundSearchServiceEventExtension;
    }

    public boolean hasStatus()
    {
      return this.hasStatus;
    }

    public boolean hasTtsServiceEventExtension()
    {
      return this.hasTtsServiceEventExtension;
    }

    public final boolean isInitialized()
    {
      return (!hasRecognizerEventExtension()) || (getRecognizerEventExtension().isInitialized());
    }

    public S3Response mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setStatus(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setErrorCode(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          setErrorDescription(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          addDebugLine(paramCodedInputStreamMicro.readString());
          break;
        case 10029002:
          Recognizer.RecognizerEvent localRecognizerEvent = new Recognizer.RecognizerEvent();
          paramCodedInputStreamMicro.readMessage(localRecognizerEvent);
          setRecognizerEventExtension(localRecognizerEvent);
          break;
        case 212798498:
          Majel.MajelServiceEvent localMajelServiceEvent = new Majel.MajelServiceEvent();
          paramCodedInputStreamMicro.readMessage(localMajelServiceEvent);
          setMajelServiceEventExtension(localMajelServiceEvent);
          break;
        case 228798498:
          Synthesis.TtsServiceEvent localTtsServiceEvent = new Synthesis.TtsServiceEvent();
          paramCodedInputStreamMicro.readMessage(localTtsServiceEvent);
          setTtsServiceEventExtension(localTtsServiceEvent);
          break;
        case 282815562:
          SoundSearch.SoundSearchServiceEvent localSoundSearchServiceEvent = new SoundSearch.SoundSearchServiceEvent();
          paramCodedInputStreamMicro.readMessage(localSoundSearchServiceEvent);
          setSoundSearchServiceEventExtension(localSoundSearchServiceEvent);
          break;
        case 283359866:
          GogglesProtos.GogglesStreamResponse localGogglesStreamResponse = new GogglesProtos.GogglesStreamResponse();
          paramCodedInputStreamMicro.readMessage(localGogglesStreamResponse);
          setGogglesStreamResponseExtension(localGogglesStreamResponse);
          break;
        case 315537450:
        }
        PinholeStream.PinholeOutput localPinholeOutput = new PinholeStream.PinholeOutput();
        paramCodedInputStreamMicro.readMessage(localPinholeOutput);
        setPinholeOutputExtension(localPinholeOutput);
      }
    }

    public S3Response setDebugLine(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.debugLine_.set(paramInt, paramString);
      return this;
    }

    public S3Response setErrorCode(int paramInt)
    {
      this.hasErrorCode = true;
      this.errorCode_ = paramInt;
      return this;
    }

    public S3Response setErrorDescription(String paramString)
    {
      this.hasErrorDescription = true;
      this.errorDescription_ = paramString;
      return this;
    }

    public S3Response setGogglesStreamResponseExtension(GogglesProtos.GogglesStreamResponse paramGogglesStreamResponse)
    {
      if (paramGogglesStreamResponse == null)
        throw new NullPointerException();
      this.hasGogglesStreamResponseExtension = true;
      this.gogglesStreamResponseExtension_ = paramGogglesStreamResponse;
      return this;
    }

    public S3Response setMajelServiceEventExtension(Majel.MajelServiceEvent paramMajelServiceEvent)
    {
      if (paramMajelServiceEvent == null)
        throw new NullPointerException();
      this.hasMajelServiceEventExtension = true;
      this.majelServiceEventExtension_ = paramMajelServiceEvent;
      return this;
    }

    public S3Response setPinholeOutputExtension(PinholeStream.PinholeOutput paramPinholeOutput)
    {
      if (paramPinholeOutput == null)
        throw new NullPointerException();
      this.hasPinholeOutputExtension = true;
      this.pinholeOutputExtension_ = paramPinholeOutput;
      return this;
    }

    public S3Response setRecognizerEventExtension(Recognizer.RecognizerEvent paramRecognizerEvent)
    {
      if (paramRecognizerEvent == null)
        throw new NullPointerException();
      this.hasRecognizerEventExtension = true;
      this.recognizerEventExtension_ = paramRecognizerEvent;
      return this;
    }

    public S3Response setSoundSearchServiceEventExtension(SoundSearch.SoundSearchServiceEvent paramSoundSearchServiceEvent)
    {
      if (paramSoundSearchServiceEvent == null)
        throw new NullPointerException();
      this.hasSoundSearchServiceEventExtension = true;
      this.soundSearchServiceEventExtension_ = paramSoundSearchServiceEvent;
      return this;
    }

    public S3Response setStatus(int paramInt)
    {
      this.hasStatus = true;
      this.status_ = paramInt;
      return this;
    }

    public S3Response setTtsServiceEventExtension(Synthesis.TtsServiceEvent paramTtsServiceEvent)
    {
      if (paramTtsServiceEvent == null)
        throw new NullPointerException();
      this.hasTtsServiceEventExtension = true;
      this.ttsServiceEventExtension_ = paramTtsServiceEvent;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStatus())
        paramCodedOutputStreamMicro.writeInt32(1, getStatus());
      if (hasErrorCode())
        paramCodedOutputStreamMicro.writeInt32(2, getErrorCode());
      if (hasErrorDescription())
        paramCodedOutputStreamMicro.writeString(3, getErrorDescription());
      Iterator localIterator = getDebugLineList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(4, (String)localIterator.next());
      if (hasRecognizerEventExtension())
        paramCodedOutputStreamMicro.writeMessage(1253625, getRecognizerEventExtension());
      if (hasMajelServiceEventExtension())
        paramCodedOutputStreamMicro.writeMessage(26599812, getMajelServiceEventExtension());
      if (hasTtsServiceEventExtension())
        paramCodedOutputStreamMicro.writeMessage(28599812, getTtsServiceEventExtension());
      if (hasSoundSearchServiceEventExtension())
        paramCodedOutputStreamMicro.writeMessage(35351945, getSoundSearchServiceEventExtension());
      if (hasGogglesStreamResponseExtension())
        paramCodedOutputStreamMicro.writeMessage(35419983, getGogglesStreamResponseExtension());
      if (hasPinholeOutputExtension())
        paramCodedOutputStreamMicro.writeMessage(39442181, getPinholeOutputExtension());
    }
  }

  public static final class S3ResponseBatch extends MessageMicro
  {
    public static final int RESPONSES_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private List<S3.S3Response> responses_ = Collections.emptyList();

    public static S3ResponseBatch parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3ResponseBatch().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3ResponseBatch parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3ResponseBatch)new S3ResponseBatch().mergeFrom(paramArrayOfByte);
    }

    public S3ResponseBatch addResponses(S3.S3Response paramS3Response)
    {
      if (paramS3Response == null)
        throw new NullPointerException();
      if (this.responses_.isEmpty())
        this.responses_ = new ArrayList();
      this.responses_.add(paramS3Response);
      return this;
    }

    public final S3ResponseBatch clear()
    {
      clearResponses();
      this.cachedSize = -1;
      return this;
    }

    public S3ResponseBatch clearResponses()
    {
      this.responses_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public S3.S3Response getResponses(int paramInt)
    {
      return (S3.S3Response)this.responses_.get(paramInt);
    }

    public int getResponsesCount()
    {
      return this.responses_.size();
    }

    public List<S3.S3Response> getResponsesList()
    {
      return this.responses_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getResponsesList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (S3.S3Response)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      Iterator localIterator = getResponsesList().iterator();
      while (localIterator.hasNext())
        if (!((S3.S3Response)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public S3ResponseBatch mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        S3.S3Response localS3Response = new S3.S3Response();
        paramCodedInputStreamMicro.readMessage(localS3Response);
        addResponses(localS3Response);
      }
    }

    public S3ResponseBatch setResponses(int paramInt, S3.S3Response paramS3Response)
    {
      if (paramS3Response == null)
        throw new NullPointerException();
      this.responses_.set(paramInt, paramS3Response);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getResponsesList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (S3.S3Response)localIterator.next());
    }
  }

  public static final class S3SessionInfo extends MessageMicro
  {
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasSessionId;
    private String sessionId_ = "";

    public static S3SessionInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3SessionInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3SessionInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3SessionInfo)new S3SessionInfo().mergeFrom(paramArrayOfByte);
    }

    public final S3SessionInfo clear()
    {
      clearSessionId();
      this.cachedSize = -1;
      return this;
    }

    public S3SessionInfo clearSessionId()
    {
      this.hasSessionId = false;
      this.sessionId_ = "";
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
      boolean bool = hasSessionId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSessionId());
      this.cachedSize = i;
      return i;
    }

    public String getSessionId()
    {
      return this.sessionId_;
    }

    public boolean hasSessionId()
    {
      return this.hasSessionId;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3SessionInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        setSessionId(paramCodedInputStreamMicro.readString());
      }
    }

    public S3SessionInfo setSessionId(String paramString)
    {
      this.hasSessionId = true;
      this.sessionId_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSessionId())
        paramCodedOutputStreamMicro.writeString(1, getSessionId());
    }
  }

  public static final class S3UserInfo extends MessageMicro
  {
    public static final int ADAPTATION_ID_FIELD_NUMBER = 12;
    public static final int AUTH_TOKEN_FIELD_NUMBER = 9;
    public static final int INSTALL_ID_FIELD_NUMBER = 5;
    public static final int LAT_LONG_FIELD_NUMBER = 6;
    public static final int SPOKEN_LANGUAGE_FIELD_NUMBER = 2;
    public static final int TRUSTED_DESCRIPTORS_FIELD_NUMBER = 11;
    public static final int USER_LOCALE_FIELD_NUMBER = 3;
    public static final int USE_PRECISE_GEOLOCATION_FIELD_NUMBER = 13;
    public static final int X_GEO_LOCATION_FIELD_NUMBER = 8;
    private String adaptationId_ = "";
    private List<S3.AuthToken> authToken_ = Collections.emptyList();
    private int cachedSize = -1;
    private boolean hasAdaptationId;
    private boolean hasInstallId;
    private boolean hasLatLong;
    private boolean hasSpokenLanguage;
    private boolean hasTrustedDescriptors;
    private boolean hasUsePreciseGeolocation;
    private boolean hasUserLocale;
    private boolean hasXGeoLocation;
    private String installId_ = "";
    private String latLong_ = "";
    private S3.Locale spokenLanguage_ = null;
    private LocationDescriptorProto.LocationDescriptorSet trustedDescriptors_ = null;
    private boolean usePreciseGeolocation_ = true;
    private S3.Locale userLocale_ = null;
    private String xGeoLocation_ = "";

    public static S3UserInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3UserInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3UserInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3UserInfo)new S3UserInfo().mergeFrom(paramArrayOfByte);
    }

    public S3UserInfo addAuthToken(S3.AuthToken paramAuthToken)
    {
      if (paramAuthToken == null)
        throw new NullPointerException();
      if (this.authToken_.isEmpty())
        this.authToken_ = new ArrayList();
      this.authToken_.add(paramAuthToken);
      return this;
    }

    public final S3UserInfo clear()
    {
      clearAuthToken();
      clearSpokenLanguage();
      clearUserLocale();
      clearInstallId();
      clearAdaptationId();
      clearLatLong();
      clearXGeoLocation();
      clearTrustedDescriptors();
      clearUsePreciseGeolocation();
      this.cachedSize = -1;
      return this;
    }

    public S3UserInfo clearAdaptationId()
    {
      this.hasAdaptationId = false;
      this.adaptationId_ = "";
      return this;
    }

    public S3UserInfo clearAuthToken()
    {
      this.authToken_ = Collections.emptyList();
      return this;
    }

    public S3UserInfo clearInstallId()
    {
      this.hasInstallId = false;
      this.installId_ = "";
      return this;
    }

    public S3UserInfo clearLatLong()
    {
      this.hasLatLong = false;
      this.latLong_ = "";
      return this;
    }

    public S3UserInfo clearSpokenLanguage()
    {
      this.hasSpokenLanguage = false;
      this.spokenLanguage_ = null;
      return this;
    }

    public S3UserInfo clearTrustedDescriptors()
    {
      this.hasTrustedDescriptors = false;
      this.trustedDescriptors_ = null;
      return this;
    }

    public S3UserInfo clearUsePreciseGeolocation()
    {
      this.hasUsePreciseGeolocation = false;
      this.usePreciseGeolocation_ = true;
      return this;
    }

    public S3UserInfo clearUserLocale()
    {
      this.hasUserLocale = false;
      this.userLocale_ = null;
      return this;
    }

    public S3UserInfo clearXGeoLocation()
    {
      this.hasXGeoLocation = false;
      this.xGeoLocation_ = "";
      return this;
    }

    public String getAdaptationId()
    {
      return this.adaptationId_;
    }

    public S3.AuthToken getAuthToken(int paramInt)
    {
      return (S3.AuthToken)this.authToken_.get(paramInt);
    }

    public int getAuthTokenCount()
    {
      return this.authToken_.size();
    }

    public List<S3.AuthToken> getAuthTokenList()
    {
      return this.authToken_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getInstallId()
    {
      return this.installId_;
    }

    public String getLatLong()
    {
      return this.latLong_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSpokenLanguage();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(2, getSpokenLanguage());
      if (hasUserLocale())
        i += CodedOutputStreamMicro.computeMessageSize(3, getUserLocale());
      if (hasInstallId())
        i += CodedOutputStreamMicro.computeStringSize(5, getInstallId());
      if (hasLatLong())
        i += CodedOutputStreamMicro.computeStringSize(6, getLatLong());
      if (hasXGeoLocation())
        i += CodedOutputStreamMicro.computeStringSize(8, getXGeoLocation());
      Iterator localIterator = getAuthTokenList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(9, (S3.AuthToken)localIterator.next());
      if (hasTrustedDescriptors())
        i += CodedOutputStreamMicro.computeMessageSize(11, getTrustedDescriptors());
      if (hasAdaptationId())
        i += CodedOutputStreamMicro.computeStringSize(12, getAdaptationId());
      if (hasUsePreciseGeolocation())
        i += CodedOutputStreamMicro.computeBoolSize(13, getUsePreciseGeolocation());
      this.cachedSize = i;
      return i;
    }

    public S3.Locale getSpokenLanguage()
    {
      return this.spokenLanguage_;
    }

    public LocationDescriptorProto.LocationDescriptorSet getTrustedDescriptors()
    {
      return this.trustedDescriptors_;
    }

    public boolean getUsePreciseGeolocation()
    {
      return this.usePreciseGeolocation_;
    }

    public S3.Locale getUserLocale()
    {
      return this.userLocale_;
    }

    public String getXGeoLocation()
    {
      return this.xGeoLocation_;
    }

    public boolean hasAdaptationId()
    {
      return this.hasAdaptationId;
    }

    public boolean hasInstallId()
    {
      return this.hasInstallId;
    }

    public boolean hasLatLong()
    {
      return this.hasLatLong;
    }

    public boolean hasSpokenLanguage()
    {
      return this.hasSpokenLanguage;
    }

    public boolean hasTrustedDescriptors()
    {
      return this.hasTrustedDescriptors;
    }

    public boolean hasUsePreciseGeolocation()
    {
      return this.hasUsePreciseGeolocation;
    }

    public boolean hasUserLocale()
    {
      return this.hasUserLocale;
    }

    public boolean hasXGeoLocation()
    {
      return this.hasXGeoLocation;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3UserInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          S3.Locale localLocale2 = new S3.Locale();
          paramCodedInputStreamMicro.readMessage(localLocale2);
          setSpokenLanguage(localLocale2);
          break;
        case 26:
          S3.Locale localLocale1 = new S3.Locale();
          paramCodedInputStreamMicro.readMessage(localLocale1);
          setUserLocale(localLocale1);
          break;
        case 42:
          setInstallId(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setLatLong(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setXGeoLocation(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          S3.AuthToken localAuthToken = new S3.AuthToken();
          paramCodedInputStreamMicro.readMessage(localAuthToken);
          addAuthToken(localAuthToken);
          break;
        case 90:
          LocationDescriptorProto.LocationDescriptorSet localLocationDescriptorSet = new LocationDescriptorProto.LocationDescriptorSet();
          paramCodedInputStreamMicro.readMessage(localLocationDescriptorSet);
          setTrustedDescriptors(localLocationDescriptorSet);
          break;
        case 98:
          setAdaptationId(paramCodedInputStreamMicro.readString());
          break;
        case 104:
        }
        setUsePreciseGeolocation(paramCodedInputStreamMicro.readBool());
      }
    }

    public S3UserInfo setAdaptationId(String paramString)
    {
      this.hasAdaptationId = true;
      this.adaptationId_ = paramString;
      return this;
    }

    public S3UserInfo setAuthToken(int paramInt, S3.AuthToken paramAuthToken)
    {
      if (paramAuthToken == null)
        throw new NullPointerException();
      this.authToken_.set(paramInt, paramAuthToken);
      return this;
    }

    public S3UserInfo setInstallId(String paramString)
    {
      this.hasInstallId = true;
      this.installId_ = paramString;
      return this;
    }

    public S3UserInfo setLatLong(String paramString)
    {
      this.hasLatLong = true;
      this.latLong_ = paramString;
      return this;
    }

    public S3UserInfo setSpokenLanguage(S3.Locale paramLocale)
    {
      if (paramLocale == null)
        throw new NullPointerException();
      this.hasSpokenLanguage = true;
      this.spokenLanguage_ = paramLocale;
      return this;
    }

    public S3UserInfo setTrustedDescriptors(LocationDescriptorProto.LocationDescriptorSet paramLocationDescriptorSet)
    {
      if (paramLocationDescriptorSet == null)
        throw new NullPointerException();
      this.hasTrustedDescriptors = true;
      this.trustedDescriptors_ = paramLocationDescriptorSet;
      return this;
    }

    public S3UserInfo setUsePreciseGeolocation(boolean paramBoolean)
    {
      this.hasUsePreciseGeolocation = true;
      this.usePreciseGeolocation_ = paramBoolean;
      return this;
    }

    public S3UserInfo setUserLocale(S3.Locale paramLocale)
    {
      if (paramLocale == null)
        throw new NullPointerException();
      this.hasUserLocale = true;
      this.userLocale_ = paramLocale;
      return this;
    }

    public S3UserInfo setXGeoLocation(String paramString)
    {
      this.hasXGeoLocation = true;
      this.xGeoLocation_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSpokenLanguage())
        paramCodedOutputStreamMicro.writeMessage(2, getSpokenLanguage());
      if (hasUserLocale())
        paramCodedOutputStreamMicro.writeMessage(3, getUserLocale());
      if (hasInstallId())
        paramCodedOutputStreamMicro.writeString(5, getInstallId());
      if (hasLatLong())
        paramCodedOutputStreamMicro.writeString(6, getLatLong());
      if (hasXGeoLocation())
        paramCodedOutputStreamMicro.writeString(8, getXGeoLocation());
      Iterator localIterator = getAuthTokenList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(9, (S3.AuthToken)localIterator.next());
      if (hasTrustedDescriptors())
        paramCodedOutputStreamMicro.writeMessage(11, getTrustedDescriptors());
      if (hasAdaptationId())
        paramCodedOutputStreamMicro.writeString(12, getAdaptationId());
      if (hasUsePreciseGeolocation())
        paramCodedOutputStreamMicro.writeBool(13, getUsePreciseGeolocation());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.s3.S3
 * JD-Core Version:    0.6.2
 */