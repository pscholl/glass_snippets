package com.google.bionics.goggles.api2;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class GogglesProtos
{
  public static final class BoundingBox extends MessageMicro
  {
    public static final int HEIGHT_FIELD_NUMBER = 4;
    public static final int WIDTH_FIELD_NUMBER = 3;
    public static final int X_FIELD_NUMBER = 1;
    public static final int Y_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasHeight;
    private boolean hasWidth;
    private boolean hasX;
    private boolean hasY;
    private int height_ = 0;
    private int width_ = 0;
    private int x_ = 0;
    private int y_ = 0;

    public static BoundingBox parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new BoundingBox().mergeFrom(paramCodedInputStreamMicro);
    }

    public static BoundingBox parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (BoundingBox)new BoundingBox().mergeFrom(paramArrayOfByte);
    }

    public final BoundingBox clear()
    {
      clearX();
      clearY();
      clearWidth();
      clearHeight();
      this.cachedSize = -1;
      return this;
    }

    public BoundingBox clearHeight()
    {
      this.hasHeight = false;
      this.height_ = 0;
      return this;
    }

    public BoundingBox clearWidth()
    {
      this.hasWidth = false;
      this.width_ = 0;
      return this;
    }

    public BoundingBox clearX()
    {
      this.hasX = false;
      this.x_ = 0;
      return this;
    }

    public BoundingBox clearY()
    {
      this.hasY = false;
      this.y_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getHeight()
    {
      return this.height_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasX();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getX());
      if (hasY())
        i += CodedOutputStreamMicro.computeInt32Size(2, getY());
      if (hasWidth())
        i += CodedOutputStreamMicro.computeInt32Size(3, getWidth());
      if (hasHeight())
        i += CodedOutputStreamMicro.computeInt32Size(4, getHeight());
      this.cachedSize = i;
      return i;
    }

    public int getWidth()
    {
      return this.width_;
    }

    public int getX()
    {
      return this.x_;
    }

    public int getY()
    {
      return this.y_;
    }

    public boolean hasHeight()
    {
      return this.hasHeight;
    }

    public boolean hasWidth()
    {
      return this.hasWidth;
    }

    public boolean hasX()
    {
      return this.hasX;
    }

    public boolean hasY()
    {
      return this.hasY;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public BoundingBox mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setX(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setY(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setWidth(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
        }
        setHeight(paramCodedInputStreamMicro.readInt32());
      }
    }

    public BoundingBox setHeight(int paramInt)
    {
      this.hasHeight = true;
      this.height_ = paramInt;
      return this;
    }

    public BoundingBox setWidth(int paramInt)
    {
      this.hasWidth = true;
      this.width_ = paramInt;
      return this;
    }

    public BoundingBox setX(int paramInt)
    {
      this.hasX = true;
      this.x_ = paramInt;
      return this;
    }

    public BoundingBox setY(int paramInt)
    {
      this.hasY = true;
      this.y_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasX())
        paramCodedOutputStreamMicro.writeInt32(1, getX());
      if (hasY())
        paramCodedOutputStreamMicro.writeInt32(2, getY());
      if (hasWidth())
        paramCodedOutputStreamMicro.writeInt32(3, getWidth());
      if (hasHeight())
        paramCodedOutputStreamMicro.writeInt32(4, getHeight());
    }
  }

  public static final class ClientEvent extends MessageMicro
  {
    public static final int EVENT_TYPE_EVENT_NEW_BARCODE_DETECTED = 5;
    public static final int EVENT_TYPE_EVENT_RECV_RESPONSE = 2;
    public static final int EVENT_TYPE_EVENT_SCENE_CHANGE_DETECTED = 3;
    public static final int EVENT_TYPE_EVENT_SEND_REQUEST = 1;
    public static final int EVENT_TYPE_EVENT_THUMBNAIL_FETCH = 4;
    public static final int FETCH_RESOURCE_BYTES_FIELD_NUMBER = 5;
    public static final int FETCH_SUCCEEDED_FIELD_NUMBER = 6;
    public static final int FETCH_URL_FIELD_NUMBER = 4;
    public static final int RESULT_SET_NUMBER_FIELD_NUMBER = 3;
    public static final int SEQUENCE_NUMBER_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private int fetchResourceBytes_ = 0;
    private boolean fetchSucceeded_ = false;
    private String fetchUrl_ = "";
    private boolean hasFetchResourceBytes;
    private boolean hasFetchSucceeded;
    private boolean hasFetchUrl;
    private boolean hasResultSetNumber;
    private boolean hasSequenceNumber;
    private boolean hasType;
    private int resultSetNumber_ = 0;
    private int sequenceNumber_ = 0;
    private int type_ = 1;

    public static ClientEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientEvent)new ClientEvent().mergeFrom(paramArrayOfByte);
    }

    public final ClientEvent clear()
    {
      clearType();
      clearSequenceNumber();
      clearResultSetNumber();
      clearFetchUrl();
      clearFetchSucceeded();
      clearFetchResourceBytes();
      this.cachedSize = -1;
      return this;
    }

    public ClientEvent clearFetchResourceBytes()
    {
      this.hasFetchResourceBytes = false;
      this.fetchResourceBytes_ = 0;
      return this;
    }

    public ClientEvent clearFetchSucceeded()
    {
      this.hasFetchSucceeded = false;
      this.fetchSucceeded_ = false;
      return this;
    }

    public ClientEvent clearFetchUrl()
    {
      this.hasFetchUrl = false;
      this.fetchUrl_ = "";
      return this;
    }

    public ClientEvent clearResultSetNumber()
    {
      this.hasResultSetNumber = false;
      this.resultSetNumber_ = 0;
      return this;
    }

    public ClientEvent clearSequenceNumber()
    {
      this.hasSequenceNumber = false;
      this.sequenceNumber_ = 0;
      return this;
    }

    public ClientEvent clearType()
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

    public int getFetchResourceBytes()
    {
      return this.fetchResourceBytes_;
    }

    public boolean getFetchSucceeded()
    {
      return this.fetchSucceeded_;
    }

    public String getFetchUrl()
    {
      return this.fetchUrl_;
    }

    public int getResultSetNumber()
    {
      return this.resultSetNumber_;
    }

    public int getSequenceNumber()
    {
      return this.sequenceNumber_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getType());
      if (hasSequenceNumber())
        i += CodedOutputStreamMicro.computeInt32Size(2, getSequenceNumber());
      if (hasResultSetNumber())
        i += CodedOutputStreamMicro.computeInt32Size(3, getResultSetNumber());
      if (hasFetchUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getFetchUrl());
      if (hasFetchResourceBytes())
        i += CodedOutputStreamMicro.computeInt32Size(5, getFetchResourceBytes());
      if (hasFetchSucceeded())
        i += CodedOutputStreamMicro.computeBoolSize(6, getFetchSucceeded());
      this.cachedSize = i;
      return i;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasFetchResourceBytes()
    {
      return this.hasFetchResourceBytes;
    }

    public boolean hasFetchSucceeded()
    {
      return this.hasFetchSucceeded;
    }

    public boolean hasFetchUrl()
    {
      return this.hasFetchUrl;
    }

    public boolean hasResultSetNumber()
    {
      return this.hasResultSetNumber;
    }

    public boolean hasSequenceNumber()
    {
      return this.hasSequenceNumber;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 16:
          setSequenceNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setResultSetNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
          setFetchUrl(paramCodedInputStreamMicro.readString());
          break;
        case 40:
          setFetchResourceBytes(paramCodedInputStreamMicro.readInt32());
          break;
        case 48:
        }
        setFetchSucceeded(paramCodedInputStreamMicro.readBool());
      }
    }

    public ClientEvent setFetchResourceBytes(int paramInt)
    {
      this.hasFetchResourceBytes = true;
      this.fetchResourceBytes_ = paramInt;
      return this;
    }

    public ClientEvent setFetchSucceeded(boolean paramBoolean)
    {
      this.hasFetchSucceeded = true;
      this.fetchSucceeded_ = paramBoolean;
      return this;
    }

    public ClientEvent setFetchUrl(String paramString)
    {
      this.hasFetchUrl = true;
      this.fetchUrl_ = paramString;
      return this;
    }

    public ClientEvent setResultSetNumber(int paramInt)
    {
      this.hasResultSetNumber = true;
      this.resultSetNumber_ = paramInt;
      return this;
    }

    public ClientEvent setSequenceNumber(int paramInt)
    {
      this.hasSequenceNumber = true;
      this.sequenceNumber_ = paramInt;
      return this;
    }

    public ClientEvent setType(int paramInt)
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
      if (hasSequenceNumber())
        paramCodedOutputStreamMicro.writeInt32(2, getSequenceNumber());
      if (hasResultSetNumber())
        paramCodedOutputStreamMicro.writeInt32(3, getResultSetNumber());
      if (hasFetchUrl())
        paramCodedOutputStreamMicro.writeString(4, getFetchUrl());
      if (hasFetchResourceBytes())
        paramCodedOutputStreamMicro.writeInt32(5, getFetchResourceBytes());
      if (hasFetchSucceeded())
        paramCodedOutputStreamMicro.writeBool(6, getFetchSucceeded());
    }
  }

  public static final class ClientInfo extends MessageMicro
  {
    public static final int APPLICATION_ID_FIELD_NUMBER = 5;
    public static final int APPLICATION_VERSION_FIELD_NUMBER = 6;
    public static final int CAN_LOG_IMAGE_FIELD_NUMBER = 13;
    public static final int CAN_LOG_LOCATION_FIELD_NUMBER = 14;
    public static final int DEVICE_MODEL_FIELD_NUMBER = 4;
    public static final int DISCLOSED_CAPABILITIES_FIELD_NUMBER = 16;
    public static final int DISCLOSED_CAPABILITY_CAPABILITY_ARTWORK = 1;
    public static final int DISCLOSED_CAPABILITY_CAPABILITY_SHOPPING = 0;
    public static final int FRONTEND_NAME_FIELD_NUMBER = 15;
    public static final int FRONTEND_NAME_FRONTEND_S3 = 1;
    public static final int FRONTEND_NAME_FRONTEND_UNKNOWN = 0;
    public static final int INSTALL_ID_FIELD_NUMBER = 1;
    public static final int IS_SPDY_FIELD_NUMBER = 9;
    public static final int IS_SSL_FIELD_NUMBER = 10;
    public static final int NETWORK_TYPE_FIELD_NUMBER = 8;
    public static final int NETWORK_TYPE_NETWORK_BLUETOOTH = 3;
    public static final int NETWORK_TYPE_NETWORK_MOBILE = 2;
    public static final int NETWORK_TYPE_NETWORK_UNKNOWN = 0;
    public static final int NETWORK_TYPE_NETWORK_WIFI = 1;
    public static final int NETWORK_TYPE_NETWORK_WIMAX = 5;
    public static final int NETWORK_TYPE_NETWORK_WIRED = 4;
    public static final int PLATFORM_ID_FIELD_NUMBER = 2;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 3;
    public static final int ROUND_TRIP_TIME_MS_FIELD_NUMBER = 11;
    public static final int TRIGGER_APPLICATION_ID_FIELD_NUMBER = 7;
    public static final int USER_IP_ADDRESS_FIELD_NUMBER = 17;
    private String applicationId_ = "";
    private String applicationVersion_ = "";
    private int cachedSize = -1;
    private boolean canLogImage_ = false;
    private boolean canLogLocation_ = false;
    private String deviceModel_ = "";
    private List<Integer> disclosedCapabilities_ = Collections.emptyList();
    private int frontendName_ = 0;
    private boolean hasApplicationId;
    private boolean hasApplicationVersion;
    private boolean hasCanLogImage;
    private boolean hasCanLogLocation;
    private boolean hasDeviceModel;
    private boolean hasFrontendName;
    private boolean hasInstallId;
    private boolean hasIsSpdy;
    private boolean hasIsSsl;
    private boolean hasNetworkType;
    private boolean hasPlatformId;
    private boolean hasPlatformVersion;
    private boolean hasRoundTripTimeMs;
    private boolean hasTriggerApplicationId;
    private boolean hasUserIpAddress;
    private String installId_ = "";
    private boolean isSpdy_ = false;
    private boolean isSsl_ = false;
    private int networkType_ = 0;
    private String platformId_ = "";
    private String platformVersion_ = "";
    private int roundTripTimeMs_ = -1;
    private String triggerApplicationId_ = "";
    private String userIpAddress_ = "";

    public static ClientInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientInfo)new ClientInfo().mergeFrom(paramArrayOfByte);
    }

    public ClientInfo addDisclosedCapabilities(int paramInt)
    {
      if (this.disclosedCapabilities_.isEmpty())
        this.disclosedCapabilities_ = new ArrayList();
      this.disclosedCapabilities_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final ClientInfo clear()
    {
      clearInstallId();
      clearPlatformId();
      clearPlatformVersion();
      clearDeviceModel();
      clearApplicationId();
      clearApplicationVersion();
      clearDisclosedCapabilities();
      clearTriggerApplicationId();
      clearNetworkType();
      clearIsSpdy();
      clearIsSsl();
      clearRoundTripTimeMs();
      clearFrontendName();
      clearCanLogImage();
      clearCanLogLocation();
      clearUserIpAddress();
      this.cachedSize = -1;
      return this;
    }

    public ClientInfo clearApplicationId()
    {
      this.hasApplicationId = false;
      this.applicationId_ = "";
      return this;
    }

    public ClientInfo clearApplicationVersion()
    {
      this.hasApplicationVersion = false;
      this.applicationVersion_ = "";
      return this;
    }

    public ClientInfo clearCanLogImage()
    {
      this.hasCanLogImage = false;
      this.canLogImage_ = false;
      return this;
    }

    public ClientInfo clearCanLogLocation()
    {
      this.hasCanLogLocation = false;
      this.canLogLocation_ = false;
      return this;
    }

    public ClientInfo clearDeviceModel()
    {
      this.hasDeviceModel = false;
      this.deviceModel_ = "";
      return this;
    }

    public ClientInfo clearDisclosedCapabilities()
    {
      this.disclosedCapabilities_ = Collections.emptyList();
      return this;
    }

    public ClientInfo clearFrontendName()
    {
      this.hasFrontendName = false;
      this.frontendName_ = 0;
      return this;
    }

    public ClientInfo clearInstallId()
    {
      this.hasInstallId = false;
      this.installId_ = "";
      return this;
    }

    public ClientInfo clearIsSpdy()
    {
      this.hasIsSpdy = false;
      this.isSpdy_ = false;
      return this;
    }

    public ClientInfo clearIsSsl()
    {
      this.hasIsSsl = false;
      this.isSsl_ = false;
      return this;
    }

    public ClientInfo clearNetworkType()
    {
      this.hasNetworkType = false;
      this.networkType_ = 0;
      return this;
    }

    public ClientInfo clearPlatformId()
    {
      this.hasPlatformId = false;
      this.platformId_ = "";
      return this;
    }

    public ClientInfo clearPlatformVersion()
    {
      this.hasPlatformVersion = false;
      this.platformVersion_ = "";
      return this;
    }

    public ClientInfo clearRoundTripTimeMs()
    {
      this.hasRoundTripTimeMs = false;
      this.roundTripTimeMs_ = -1;
      return this;
    }

    public ClientInfo clearTriggerApplicationId()
    {
      this.hasTriggerApplicationId = false;
      this.triggerApplicationId_ = "";
      return this;
    }

    public ClientInfo clearUserIpAddress()
    {
      this.hasUserIpAddress = false;
      this.userIpAddress_ = "";
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

    public boolean getCanLogImage()
    {
      return this.canLogImage_;
    }

    public boolean getCanLogLocation()
    {
      return this.canLogLocation_;
    }

    public String getDeviceModel()
    {
      return this.deviceModel_;
    }

    public int getDisclosedCapabilities(int paramInt)
    {
      return ((Integer)this.disclosedCapabilities_.get(paramInt)).intValue();
    }

    public int getDisclosedCapabilitiesCount()
    {
      return this.disclosedCapabilities_.size();
    }

    public List<Integer> getDisclosedCapabilitiesList()
    {
      return this.disclosedCapabilities_;
    }

    public int getFrontendName()
    {
      return this.frontendName_;
    }

    public String getInstallId()
    {
      return this.installId_;
    }

    public boolean getIsSpdy()
    {
      return this.isSpdy_;
    }

    public boolean getIsSsl()
    {
      return this.isSsl_;
    }

    public int getNetworkType()
    {
      return this.networkType_;
    }

    public String getPlatformId()
    {
      return this.platformId_;
    }

    public String getPlatformVersion()
    {
      return this.platformVersion_;
    }

    public int getRoundTripTimeMs()
    {
      return this.roundTripTimeMs_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasInstallId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getInstallId());
      if (hasPlatformId())
        i += CodedOutputStreamMicro.computeStringSize(2, getPlatformId());
      if (hasPlatformVersion())
        i += CodedOutputStreamMicro.computeStringSize(3, getPlatformVersion());
      if (hasDeviceModel())
        i += CodedOutputStreamMicro.computeStringSize(4, getDeviceModel());
      if (hasApplicationId())
        i += CodedOutputStreamMicro.computeStringSize(5, getApplicationId());
      if (hasApplicationVersion())
        i += CodedOutputStreamMicro.computeStringSize(6, getApplicationVersion());
      if (hasTriggerApplicationId())
        i += CodedOutputStreamMicro.computeStringSize(7, getTriggerApplicationId());
      if (hasNetworkType())
        i += CodedOutputStreamMicro.computeInt32Size(8, getNetworkType());
      if (hasIsSpdy())
        i += CodedOutputStreamMicro.computeBoolSize(9, getIsSpdy());
      if (hasIsSsl())
        i += CodedOutputStreamMicro.computeBoolSize(10, getIsSsl());
      if (hasRoundTripTimeMs())
        i += CodedOutputStreamMicro.computeInt32Size(11, getRoundTripTimeMs());
      if (hasCanLogImage())
        i += CodedOutputStreamMicro.computeBoolSize(13, getCanLogImage());
      if (hasCanLogLocation())
        i += CodedOutputStreamMicro.computeBoolSize(14, getCanLogLocation());
      if (hasFrontendName())
        i += CodedOutputStreamMicro.computeInt32Size(15, getFrontendName());
      int j = 0;
      Iterator localIterator = getDisclosedCapabilitiesList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int k = i + j + 2 * getDisclosedCapabilitiesList().size();
      if (hasUserIpAddress())
        k += CodedOutputStreamMicro.computeStringSize(17, getUserIpAddress());
      this.cachedSize = k;
      return k;
    }

    public String getTriggerApplicationId()
    {
      return this.triggerApplicationId_;
    }

    public String getUserIpAddress()
    {
      return this.userIpAddress_;
    }

    public boolean hasApplicationId()
    {
      return this.hasApplicationId;
    }

    public boolean hasApplicationVersion()
    {
      return this.hasApplicationVersion;
    }

    public boolean hasCanLogImage()
    {
      return this.hasCanLogImage;
    }

    public boolean hasCanLogLocation()
    {
      return this.hasCanLogLocation;
    }

    public boolean hasDeviceModel()
    {
      return this.hasDeviceModel;
    }

    public boolean hasFrontendName()
    {
      return this.hasFrontendName;
    }

    public boolean hasInstallId()
    {
      return this.hasInstallId;
    }

    public boolean hasIsSpdy()
    {
      return this.hasIsSpdy;
    }

    public boolean hasIsSsl()
    {
      return this.hasIsSsl;
    }

    public boolean hasNetworkType()
    {
      return this.hasNetworkType;
    }

    public boolean hasPlatformId()
    {
      return this.hasPlatformId;
    }

    public boolean hasPlatformVersion()
    {
      return this.hasPlatformVersion;
    }

    public boolean hasRoundTripTimeMs()
    {
      return this.hasRoundTripTimeMs;
    }

    public boolean hasTriggerApplicationId()
    {
      return this.hasTriggerApplicationId;
    }

    public boolean hasUserIpAddress()
    {
      return this.hasUserIpAddress;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setInstallId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setPlatformId(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setPlatformVersion(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setDeviceModel(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setApplicationId(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setApplicationVersion(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setTriggerApplicationId(paramCodedInputStreamMicro.readString());
          break;
        case 64:
          setNetworkType(paramCodedInputStreamMicro.readInt32());
          break;
        case 72:
          setIsSpdy(paramCodedInputStreamMicro.readBool());
          break;
        case 80:
          setIsSsl(paramCodedInputStreamMicro.readBool());
          break;
        case 88:
          setRoundTripTimeMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 104:
          setCanLogImage(paramCodedInputStreamMicro.readBool());
          break;
        case 112:
          setCanLogLocation(paramCodedInputStreamMicro.readBool());
          break;
        case 120:
          setFrontendName(paramCodedInputStreamMicro.readInt32());
          break;
        case 128:
          addDisclosedCapabilities(paramCodedInputStreamMicro.readInt32());
          break;
        case 138:
        }
        setUserIpAddress(paramCodedInputStreamMicro.readString());
      }
    }

    public ClientInfo setApplicationId(String paramString)
    {
      this.hasApplicationId = true;
      this.applicationId_ = paramString;
      return this;
    }

    public ClientInfo setApplicationVersion(String paramString)
    {
      this.hasApplicationVersion = true;
      this.applicationVersion_ = paramString;
      return this;
    }

    public ClientInfo setCanLogImage(boolean paramBoolean)
    {
      this.hasCanLogImage = true;
      this.canLogImage_ = paramBoolean;
      return this;
    }

    public ClientInfo setCanLogLocation(boolean paramBoolean)
    {
      this.hasCanLogLocation = true;
      this.canLogLocation_ = paramBoolean;
      return this;
    }

    public ClientInfo setDeviceModel(String paramString)
    {
      this.hasDeviceModel = true;
      this.deviceModel_ = paramString;
      return this;
    }

    public ClientInfo setDisclosedCapabilities(int paramInt1, int paramInt2)
    {
      this.disclosedCapabilities_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public ClientInfo setFrontendName(int paramInt)
    {
      this.hasFrontendName = true;
      this.frontendName_ = paramInt;
      return this;
    }

    public ClientInfo setInstallId(String paramString)
    {
      this.hasInstallId = true;
      this.installId_ = paramString;
      return this;
    }

    public ClientInfo setIsSpdy(boolean paramBoolean)
    {
      this.hasIsSpdy = true;
      this.isSpdy_ = paramBoolean;
      return this;
    }

    public ClientInfo setIsSsl(boolean paramBoolean)
    {
      this.hasIsSsl = true;
      this.isSsl_ = paramBoolean;
      return this;
    }

    public ClientInfo setNetworkType(int paramInt)
    {
      this.hasNetworkType = true;
      this.networkType_ = paramInt;
      return this;
    }

    public ClientInfo setPlatformId(String paramString)
    {
      this.hasPlatformId = true;
      this.platformId_ = paramString;
      return this;
    }

    public ClientInfo setPlatformVersion(String paramString)
    {
      this.hasPlatformVersion = true;
      this.platformVersion_ = paramString;
      return this;
    }

    public ClientInfo setRoundTripTimeMs(int paramInt)
    {
      this.hasRoundTripTimeMs = true;
      this.roundTripTimeMs_ = paramInt;
      return this;
    }

    public ClientInfo setTriggerApplicationId(String paramString)
    {
      this.hasTriggerApplicationId = true;
      this.triggerApplicationId_ = paramString;
      return this;
    }

    public ClientInfo setUserIpAddress(String paramString)
    {
      this.hasUserIpAddress = true;
      this.userIpAddress_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasInstallId())
        paramCodedOutputStreamMicro.writeString(1, getInstallId());
      if (hasPlatformId())
        paramCodedOutputStreamMicro.writeString(2, getPlatformId());
      if (hasPlatformVersion())
        paramCodedOutputStreamMicro.writeString(3, getPlatformVersion());
      if (hasDeviceModel())
        paramCodedOutputStreamMicro.writeString(4, getDeviceModel());
      if (hasApplicationId())
        paramCodedOutputStreamMicro.writeString(5, getApplicationId());
      if (hasApplicationVersion())
        paramCodedOutputStreamMicro.writeString(6, getApplicationVersion());
      if (hasTriggerApplicationId())
        paramCodedOutputStreamMicro.writeString(7, getTriggerApplicationId());
      if (hasNetworkType())
        paramCodedOutputStreamMicro.writeInt32(8, getNetworkType());
      if (hasIsSpdy())
        paramCodedOutputStreamMicro.writeBool(9, getIsSpdy());
      if (hasIsSsl())
        paramCodedOutputStreamMicro.writeBool(10, getIsSsl());
      if (hasRoundTripTimeMs())
        paramCodedOutputStreamMicro.writeInt32(11, getRoundTripTimeMs());
      if (hasCanLogImage())
        paramCodedOutputStreamMicro.writeBool(13, getCanLogImage());
      if (hasCanLogLocation())
        paramCodedOutputStreamMicro.writeBool(14, getCanLogLocation());
      if (hasFrontendName())
        paramCodedOutputStreamMicro.writeInt32(15, getFrontendName());
      Iterator localIterator = getDisclosedCapabilitiesList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(16, ((Integer)localIterator.next()).intValue());
      if (hasUserIpAddress())
        paramCodedOutputStreamMicro.writeString(17, getUserIpAddress());
    }
  }

  public static final class ClientLogEvent extends MessageMicro
  {
    public static final int CLIENT_EVENT_FIELD_NUMBER = 3;
    public static final int CLIENT_TIME_MS_FIELD_NUMBER = 1;
    public static final int IMPRESSION_FIELD_NUMBER = 4;
    public static final int USER_EVENT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private GogglesProtos.ClientEvent clientEvent_ = null;
    private long clientTimeMs_ = 0L;
    private boolean hasClientEvent;
    private boolean hasClientTimeMs;
    private boolean hasImpression;
    private boolean hasUserEvent;
    private GogglesProtos.Impression impression_ = null;
    private GogglesProtos.UserEvent userEvent_ = null;

    public static ClientLogEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientLogEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientLogEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientLogEvent)new ClientLogEvent().mergeFrom(paramArrayOfByte);
    }

    public final ClientLogEvent clear()
    {
      clearClientTimeMs();
      clearUserEvent();
      clearClientEvent();
      clearImpression();
      this.cachedSize = -1;
      return this;
    }

    public ClientLogEvent clearClientEvent()
    {
      this.hasClientEvent = false;
      this.clientEvent_ = null;
      return this;
    }

    public ClientLogEvent clearClientTimeMs()
    {
      this.hasClientTimeMs = false;
      this.clientTimeMs_ = 0L;
      return this;
    }

    public ClientLogEvent clearImpression()
    {
      this.hasImpression = false;
      this.impression_ = null;
      return this;
    }

    public ClientLogEvent clearUserEvent()
    {
      this.hasUserEvent = false;
      this.userEvent_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public GogglesProtos.ClientEvent getClientEvent()
    {
      return this.clientEvent_;
    }

    public long getClientTimeMs()
    {
      return this.clientTimeMs_;
    }

    public GogglesProtos.Impression getImpression()
    {
      return this.impression_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasClientTimeMs();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt64Size(1, getClientTimeMs());
      if (hasUserEvent())
        i += CodedOutputStreamMicro.computeMessageSize(2, getUserEvent());
      if (hasClientEvent())
        i += CodedOutputStreamMicro.computeMessageSize(3, getClientEvent());
      if (hasImpression())
        i += CodedOutputStreamMicro.computeMessageSize(4, getImpression());
      this.cachedSize = i;
      return i;
    }

    public GogglesProtos.UserEvent getUserEvent()
    {
      return this.userEvent_;
    }

    public boolean hasClientEvent()
    {
      return this.hasClientEvent;
    }

    public boolean hasClientTimeMs()
    {
      return this.hasClientTimeMs;
    }

    public boolean hasImpression()
    {
      return this.hasImpression;
    }

    public boolean hasUserEvent()
    {
      return this.hasUserEvent;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientLogEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setClientTimeMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 18:
          GogglesProtos.UserEvent localUserEvent = new GogglesProtos.UserEvent();
          paramCodedInputStreamMicro.readMessage(localUserEvent);
          setUserEvent(localUserEvent);
          break;
        case 26:
          GogglesProtos.ClientEvent localClientEvent = new GogglesProtos.ClientEvent();
          paramCodedInputStreamMicro.readMessage(localClientEvent);
          setClientEvent(localClientEvent);
          break;
        case 34:
        }
        GogglesProtos.Impression localImpression = new GogglesProtos.Impression();
        paramCodedInputStreamMicro.readMessage(localImpression);
        setImpression(localImpression);
      }
    }

    public ClientLogEvent setClientEvent(GogglesProtos.ClientEvent paramClientEvent)
    {
      if (paramClientEvent == null)
        throw new NullPointerException();
      this.hasClientEvent = true;
      this.clientEvent_ = paramClientEvent;
      return this;
    }

    public ClientLogEvent setClientTimeMs(long paramLong)
    {
      this.hasClientTimeMs = true;
      this.clientTimeMs_ = paramLong;
      return this;
    }

    public ClientLogEvent setImpression(GogglesProtos.Impression paramImpression)
    {
      if (paramImpression == null)
        throw new NullPointerException();
      this.hasImpression = true;
      this.impression_ = paramImpression;
      return this;
    }

    public ClientLogEvent setUserEvent(GogglesProtos.UserEvent paramUserEvent)
    {
      if (paramUserEvent == null)
        throw new NullPointerException();
      this.hasUserEvent = true;
      this.userEvent_ = paramUserEvent;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasClientTimeMs())
        paramCodedOutputStreamMicro.writeInt64(1, getClientTimeMs());
      if (hasUserEvent())
        paramCodedOutputStreamMicro.writeMessage(2, getUserEvent());
      if (hasClientEvent())
        paramCodedOutputStreamMicro.writeMessage(3, getClientEvent());
      if (hasImpression())
        paramCodedOutputStreamMicro.writeMessage(4, getImpression());
    }
  }

  public static final class ClientResultInfo extends MessageMicro
  {
    public static final int RESULT_DISPOSITIONS_FIELD_NUMBER = 1;
    public static final int RESULT_DISPOSITION_RESULT_FILTERED_SCENE_CHANGE = 1;
    private int cachedSize = -1;
    private List<Integer> resultDispositions_ = Collections.emptyList();

    public static ClientResultInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientResultInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientResultInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientResultInfo)new ClientResultInfo().mergeFrom(paramArrayOfByte);
    }

    public ClientResultInfo addResultDispositions(int paramInt)
    {
      if (this.resultDispositions_.isEmpty())
        this.resultDispositions_ = new ArrayList();
      this.resultDispositions_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final ClientResultInfo clear()
    {
      clearResultDispositions();
      this.cachedSize = -1;
      return this;
    }

    public ClientResultInfo clearResultDispositions()
    {
      this.resultDispositions_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getResultDispositions(int paramInt)
    {
      return ((Integer)this.resultDispositions_.get(paramInt)).intValue();
    }

    public int getResultDispositionsCount()
    {
      return this.resultDispositions_.size();
    }

    public List<Integer> getResultDispositionsList()
    {
      return this.resultDispositions_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getResultDispositionsList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int j = 0 + i + 1 * getResultDispositionsList().size();
      this.cachedSize = j;
      return j;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientResultInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        addResultDispositions(paramCodedInputStreamMicro.readInt32());
      }
    }

    public ClientResultInfo setResultDispositions(int paramInt1, int paramInt2)
    {
      this.resultDispositions_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getResultDispositionsList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(1, ((Integer)localIterator.next()).intValue());
    }
  }

  public static final class GogglesClientLog extends MessageMicro
  {
    public static final int EVENTS_FIELD_NUMBER = 2;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<GogglesProtos.ClientLogEvent> events_ = Collections.emptyList();
    private boolean hasSessionId;
    private String sessionId_ = "";

    public static GogglesClientLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GogglesClientLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GogglesClientLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GogglesClientLog)new GogglesClientLog().mergeFrom(paramArrayOfByte);
    }

    public GogglesClientLog addEvents(GogglesProtos.ClientLogEvent paramClientLogEvent)
    {
      if (paramClientLogEvent == null)
        throw new NullPointerException();
      if (this.events_.isEmpty())
        this.events_ = new ArrayList();
      this.events_.add(paramClientLogEvent);
      return this;
    }

    public final GogglesClientLog clear()
    {
      clearSessionId();
      clearEvents();
      this.cachedSize = -1;
      return this;
    }

    public GogglesClientLog clearEvents()
    {
      this.events_ = Collections.emptyList();
      return this;
    }

    public GogglesClientLog clearSessionId()
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

    public GogglesProtos.ClientLogEvent getEvents(int paramInt)
    {
      return (GogglesProtos.ClientLogEvent)this.events_.get(paramInt);
    }

    public int getEventsCount()
    {
      return this.events_.size();
    }

    public List<GogglesProtos.ClientLogEvent> getEventsList()
    {
      return this.events_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSessionId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSessionId());
      Iterator localIterator = getEventsList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (GogglesProtos.ClientLogEvent)localIterator.next());
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

    public GogglesClientLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSessionId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        GogglesProtos.ClientLogEvent localClientLogEvent = new GogglesProtos.ClientLogEvent();
        paramCodedInputStreamMicro.readMessage(localClientLogEvent);
        addEvents(localClientLogEvent);
      }
    }

    public GogglesClientLog setEvents(int paramInt, GogglesProtos.ClientLogEvent paramClientLogEvent)
    {
      if (paramClientLogEvent == null)
        throw new NullPointerException();
      this.events_.set(paramInt, paramClientLogEvent);
      return this;
    }

    public GogglesClientLog setSessionId(String paramString)
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
      Iterator localIterator = getEventsList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (GogglesProtos.ClientLogEvent)localIterator.next());
    }
  }

  public static final class GogglesStreamRequest extends MessageMicro
  {
    public static final int IMAGE_FIELD_NUMBER = 3;
    public static final int IMPORTANT_PAYLOAD_FIELD_NUMBER = 17;
    public static final int POSE_FIELD_NUMBER = 4;
    public static final int SEQUENCE_NUMBER_FIELD_NUMBER = 1;
    public static final int SESSION_OPTIONS_FIELD_NUMBER = 2;
    public static final int TEXT_FIELD_NUMBER = 16;
    private int cachedSize = -1;
    private boolean hasImage;
    private boolean hasImportantPayload;
    private boolean hasPose;
    private boolean hasSequenceNumber;
    private boolean hasSessionOptions;
    private boolean hasText;
    private GogglesProtos.Image image_ = null;
    private boolean importantPayload_ = false;
    private GogglesProtos.Pose pose_ = null;
    private int sequenceNumber_ = 0;
    private GogglesProtos.SessionOptions sessionOptions_ = null;
    private String text_ = "";

    public static GogglesStreamRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GogglesStreamRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GogglesStreamRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GogglesStreamRequest)new GogglesStreamRequest().mergeFrom(paramArrayOfByte);
    }

    public final GogglesStreamRequest clear()
    {
      clearSequenceNumber();
      clearSessionOptions();
      clearImage();
      clearPose();
      clearText();
      clearImportantPayload();
      this.cachedSize = -1;
      return this;
    }

    public GogglesStreamRequest clearImage()
    {
      this.hasImage = false;
      this.image_ = null;
      return this;
    }

    public GogglesStreamRequest clearImportantPayload()
    {
      this.hasImportantPayload = false;
      this.importantPayload_ = false;
      return this;
    }

    public GogglesStreamRequest clearPose()
    {
      this.hasPose = false;
      this.pose_ = null;
      return this;
    }

    public GogglesStreamRequest clearSequenceNumber()
    {
      this.hasSequenceNumber = false;
      this.sequenceNumber_ = 0;
      return this;
    }

    public GogglesStreamRequest clearSessionOptions()
    {
      this.hasSessionOptions = false;
      this.sessionOptions_ = null;
      return this;
    }

    public GogglesStreamRequest clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public GogglesProtos.Image getImage()
    {
      return this.image_;
    }

    public boolean getImportantPayload()
    {
      return this.importantPayload_;
    }

    public GogglesProtos.Pose getPose()
    {
      return this.pose_;
    }

    public int getSequenceNumber()
    {
      return this.sequenceNumber_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSequenceNumber();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getSequenceNumber());
      if (hasSessionOptions())
        i += CodedOutputStreamMicro.computeMessageSize(2, getSessionOptions());
      if (hasImage())
        i += CodedOutputStreamMicro.computeMessageSize(3, getImage());
      if (hasPose())
        i += CodedOutputStreamMicro.computeMessageSize(4, getPose());
      if (hasText())
        i += CodedOutputStreamMicro.computeStringSize(16, getText());
      if (hasImportantPayload())
        i += CodedOutputStreamMicro.computeBoolSize(17, getImportantPayload());
      this.cachedSize = i;
      return i;
    }

    public GogglesProtos.SessionOptions getSessionOptions()
    {
      return this.sessionOptions_;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasImage()
    {
      return this.hasImage;
    }

    public boolean hasImportantPayload()
    {
      return this.hasImportantPayload;
    }

    public boolean hasPose()
    {
      return this.hasPose;
    }

    public boolean hasSequenceNumber()
    {
      return this.hasSequenceNumber;
    }

    public boolean hasSessionOptions()
    {
      return this.hasSessionOptions;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public GogglesStreamRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSequenceNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          GogglesProtos.SessionOptions localSessionOptions = new GogglesProtos.SessionOptions();
          paramCodedInputStreamMicro.readMessage(localSessionOptions);
          setSessionOptions(localSessionOptions);
          break;
        case 26:
          GogglesProtos.Image localImage = new GogglesProtos.Image();
          paramCodedInputStreamMicro.readMessage(localImage);
          setImage(localImage);
          break;
        case 34:
          GogglesProtos.Pose localPose = new GogglesProtos.Pose();
          paramCodedInputStreamMicro.readMessage(localPose);
          setPose(localPose);
          break;
        case 130:
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 136:
        }
        setImportantPayload(paramCodedInputStreamMicro.readBool());
      }
    }

    public GogglesStreamRequest setImage(GogglesProtos.Image paramImage)
    {
      if (paramImage == null)
        throw new NullPointerException();
      this.hasImage = true;
      this.image_ = paramImage;
      return this;
    }

    public GogglesStreamRequest setImportantPayload(boolean paramBoolean)
    {
      this.hasImportantPayload = true;
      this.importantPayload_ = paramBoolean;
      return this;
    }

    public GogglesStreamRequest setPose(GogglesProtos.Pose paramPose)
    {
      if (paramPose == null)
        throw new NullPointerException();
      this.hasPose = true;
      this.pose_ = paramPose;
      return this;
    }

    public GogglesStreamRequest setSequenceNumber(int paramInt)
    {
      this.hasSequenceNumber = true;
      this.sequenceNumber_ = paramInt;
      return this;
    }

    public GogglesStreamRequest setSessionOptions(GogglesProtos.SessionOptions paramSessionOptions)
    {
      if (paramSessionOptions == null)
        throw new NullPointerException();
      this.hasSessionOptions = true;
      this.sessionOptions_ = paramSessionOptions;
      return this;
    }

    public GogglesStreamRequest setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSequenceNumber())
        paramCodedOutputStreamMicro.writeInt32(1, getSequenceNumber());
      if (hasSessionOptions())
        paramCodedOutputStreamMicro.writeMessage(2, getSessionOptions());
      if (hasImage())
        paramCodedOutputStreamMicro.writeMessage(3, getImage());
      if (hasPose())
        paramCodedOutputStreamMicro.writeMessage(4, getPose());
      if (hasText())
        paramCodedOutputStreamMicro.writeString(16, getText());
      if (hasImportantPayload())
        paramCodedOutputStreamMicro.writeBool(17, getImportantPayload());
    }
  }

  public static final class GogglesStreamResponse extends MessageMicro
  {
    public static final int HIGHEST_SEQUENCE_NUMBER_COMPLETE_FIELD_NUMBER = 5;
    public static final int HIGHEST_SEQUENCE_NUMBER_RECEIVED_FIELD_NUMBER = 4;
    public static final int RESULTS_FIELD_NUMBER = 3;
    public static final int RESULT_SET_NUMBER_FIELD_NUMBER = 1;
    public static final int SESSION_METADATA_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasHighestSequenceNumberComplete;
    private boolean hasHighestSequenceNumberReceived;
    private boolean hasResultSetNumber;
    private boolean hasSessionMetadata;
    private int highestSequenceNumberComplete_ = -1;
    private int highestSequenceNumberReceived_ = -1;
    private int resultSetNumber_ = 0;
    private List<GogglesProtos.Result> results_ = Collections.emptyList();
    private GogglesProtos.SessionMetadata sessionMetadata_ = null;

    public static GogglesStreamResponse parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new GogglesStreamResponse().mergeFrom(paramCodedInputStreamMicro);
    }

    public static GogglesStreamResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (GogglesStreamResponse)new GogglesStreamResponse().mergeFrom(paramArrayOfByte);
    }

    public GogglesStreamResponse addResults(GogglesProtos.Result paramResult)
    {
      if (paramResult == null)
        throw new NullPointerException();
      if (this.results_.isEmpty())
        this.results_ = new ArrayList();
      this.results_.add(paramResult);
      return this;
    }

    public final GogglesStreamResponse clear()
    {
      clearResultSetNumber();
      clearSessionMetadata();
      clearResults();
      clearHighestSequenceNumberReceived();
      clearHighestSequenceNumberComplete();
      this.cachedSize = -1;
      return this;
    }

    public GogglesStreamResponse clearHighestSequenceNumberComplete()
    {
      this.hasHighestSequenceNumberComplete = false;
      this.highestSequenceNumberComplete_ = -1;
      return this;
    }

    public GogglesStreamResponse clearHighestSequenceNumberReceived()
    {
      this.hasHighestSequenceNumberReceived = false;
      this.highestSequenceNumberReceived_ = -1;
      return this;
    }

    public GogglesStreamResponse clearResultSetNumber()
    {
      this.hasResultSetNumber = false;
      this.resultSetNumber_ = 0;
      return this;
    }

    public GogglesStreamResponse clearResults()
    {
      this.results_ = Collections.emptyList();
      return this;
    }

    public GogglesStreamResponse clearSessionMetadata()
    {
      this.hasSessionMetadata = false;
      this.sessionMetadata_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getHighestSequenceNumberComplete()
    {
      return this.highestSequenceNumberComplete_;
    }

    public int getHighestSequenceNumberReceived()
    {
      return this.highestSequenceNumberReceived_;
    }

    public int getResultSetNumber()
    {
      return this.resultSetNumber_;
    }

    public GogglesProtos.Result getResults(int paramInt)
    {
      return (GogglesProtos.Result)this.results_.get(paramInt);
    }

    public int getResultsCount()
    {
      return this.results_.size();
    }

    public List<GogglesProtos.Result> getResultsList()
    {
      return this.results_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasResultSetNumber();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getResultSetNumber());
      if (hasSessionMetadata())
        i += CodedOutputStreamMicro.computeMessageSize(2, getSessionMetadata());
      Iterator localIterator = getResultsList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (GogglesProtos.Result)localIterator.next());
      if (hasHighestSequenceNumberReceived())
        i += CodedOutputStreamMicro.computeInt32Size(4, getHighestSequenceNumberReceived());
      if (hasHighestSequenceNumberComplete())
        i += CodedOutputStreamMicro.computeInt32Size(5, getHighestSequenceNumberComplete());
      this.cachedSize = i;
      return i;
    }

    public GogglesProtos.SessionMetadata getSessionMetadata()
    {
      return this.sessionMetadata_;
    }

    public boolean hasHighestSequenceNumberComplete()
    {
      return this.hasHighestSequenceNumberComplete;
    }

    public boolean hasHighestSequenceNumberReceived()
    {
      return this.hasHighestSequenceNumberReceived;
    }

    public boolean hasResultSetNumber()
    {
      return this.hasResultSetNumber;
    }

    public boolean hasSessionMetadata()
    {
      return this.hasSessionMetadata;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public GogglesStreamResponse mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setResultSetNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          GogglesProtos.SessionMetadata localSessionMetadata = new GogglesProtos.SessionMetadata();
          paramCodedInputStreamMicro.readMessage(localSessionMetadata);
          setSessionMetadata(localSessionMetadata);
          break;
        case 26:
          GogglesProtos.Result localResult = new GogglesProtos.Result();
          paramCodedInputStreamMicro.readMessage(localResult);
          addResults(localResult);
          break;
        case 32:
          setHighestSequenceNumberReceived(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
        }
        setHighestSequenceNumberComplete(paramCodedInputStreamMicro.readInt32());
      }
    }

    public GogglesStreamResponse setHighestSequenceNumberComplete(int paramInt)
    {
      this.hasHighestSequenceNumberComplete = true;
      this.highestSequenceNumberComplete_ = paramInt;
      return this;
    }

    public GogglesStreamResponse setHighestSequenceNumberReceived(int paramInt)
    {
      this.hasHighestSequenceNumberReceived = true;
      this.highestSequenceNumberReceived_ = paramInt;
      return this;
    }

    public GogglesStreamResponse setResultSetNumber(int paramInt)
    {
      this.hasResultSetNumber = true;
      this.resultSetNumber_ = paramInt;
      return this;
    }

    public GogglesStreamResponse setResults(int paramInt, GogglesProtos.Result paramResult)
    {
      if (paramResult == null)
        throw new NullPointerException();
      this.results_.set(paramInt, paramResult);
      return this;
    }

    public GogglesStreamResponse setSessionMetadata(GogglesProtos.SessionMetadata paramSessionMetadata)
    {
      if (paramSessionMetadata == null)
        throw new NullPointerException();
      this.hasSessionMetadata = true;
      this.sessionMetadata_ = paramSessionMetadata;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasResultSetNumber())
        paramCodedOutputStreamMicro.writeInt32(1, getResultSetNumber());
      if (hasSessionMetadata())
        paramCodedOutputStreamMicro.writeMessage(2, getSessionMetadata());
      Iterator localIterator = getResultsList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (GogglesProtos.Result)localIterator.next());
      if (hasHighestSequenceNumberReceived())
        paramCodedOutputStreamMicro.writeInt32(4, getHighestSequenceNumberReceived());
      if (hasHighestSequenceNumberComplete())
        paramCodedOutputStreamMicro.writeInt32(5, getHighestSequenceNumberComplete());
    }
  }

  public static final class Image extends MessageMicro
  {
    public static final int ENCODED_IMAGE_FIELD_NUMBER = 2;
    public static final int IMAGE_ENCODING_FIELD_NUMBER = 1;
    public static final int IMAGE_ENCODING_JPEG = 1;
    public static final int IMAGE_ROTATION_C_W_DEGREES_180 = 2;
    public static final int IMAGE_ROTATION_C_W_DEGREES_270 = 3;
    public static final int IMAGE_ROTATION_C_W_DEGREES_90 = 1;
    public static final int IMAGE_ROTATION_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private ByteStringMicro encodedImage_ = ByteStringMicro.EMPTY;
    private boolean hasEncodedImage;
    private boolean hasImageEncoding;
    private boolean hasImageRotation;
    private int imageEncoding_ = 1;
    private int imageRotation_ = 1;

    public static Image parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Image().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Image parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Image)new Image().mergeFrom(paramArrayOfByte);
    }

    public final Image clear()
    {
      clearImageEncoding();
      clearEncodedImage();
      clearImageRotation();
      this.cachedSize = -1;
      return this;
    }

    public Image clearEncodedImage()
    {
      this.hasEncodedImage = false;
      this.encodedImage_ = ByteStringMicro.EMPTY;
      return this;
    }

    public Image clearImageEncoding()
    {
      this.hasImageEncoding = false;
      this.imageEncoding_ = 1;
      return this;
    }

    public Image clearImageRotation()
    {
      this.hasImageRotation = false;
      this.imageRotation_ = 1;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ByteStringMicro getEncodedImage()
    {
      return this.encodedImage_;
    }

    public int getImageEncoding()
    {
      return this.imageEncoding_;
    }

    public int getImageRotation()
    {
      return this.imageRotation_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasImageEncoding();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getImageEncoding());
      if (hasEncodedImage())
        i += CodedOutputStreamMicro.computeBytesSize(2, getEncodedImage());
      if (hasImageRotation())
        i += CodedOutputStreamMicro.computeInt32Size(3, getImageRotation());
      this.cachedSize = i;
      return i;
    }

    public boolean hasEncodedImage()
    {
      return this.hasEncodedImage;
    }

    public boolean hasImageEncoding()
    {
      return this.hasImageEncoding;
    }

    public boolean hasImageRotation()
    {
      return this.hasImageRotation;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Image mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setImageEncoding(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setEncodedImage(paramCodedInputStreamMicro.readBytes());
          break;
        case 24:
        }
        setImageRotation(paramCodedInputStreamMicro.readInt32());
      }
    }

    public Image setEncodedImage(ByteStringMicro paramByteStringMicro)
    {
      this.hasEncodedImage = true;
      this.encodedImage_ = paramByteStringMicro;
      return this;
    }

    public Image setImageEncoding(int paramInt)
    {
      this.hasImageEncoding = true;
      this.imageEncoding_ = paramInt;
      return this;
    }

    public Image setImageRotation(int paramInt)
    {
      this.hasImageRotation = true;
      this.imageRotation_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasImageEncoding())
        paramCodedOutputStreamMicro.writeInt32(1, getImageEncoding());
      if (hasEncodedImage())
        paramCodedOutputStreamMicro.writeBytes(2, getEncodedImage());
      if (hasImageRotation())
        paramCodedOutputStreamMicro.writeInt32(3, getImageRotation());
    }
  }

  public static final class Impression extends MessageMicro
  {
    public static final int RESULT_ID_FIELD_NUMBER = 2;
    public static final int RESULT_INFOS_FIELD_NUMBER = 3;
    public static final int RESULT_SET_NUMBER_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasResultId;
    private boolean hasResultSetNumber;
    private String resultId_ = "";
    private List<GogglesProtos.ClientResultInfo> resultInfos_ = Collections.emptyList();
    private int resultSetNumber_ = 0;

    public static Impression parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Impression().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Impression parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Impression)new Impression().mergeFrom(paramArrayOfByte);
    }

    public Impression addResultInfos(GogglesProtos.ClientResultInfo paramClientResultInfo)
    {
      if (paramClientResultInfo == null)
        throw new NullPointerException();
      if (this.resultInfos_.isEmpty())
        this.resultInfos_ = new ArrayList();
      this.resultInfos_.add(paramClientResultInfo);
      return this;
    }

    public final Impression clear()
    {
      clearResultSetNumber();
      clearResultId();
      clearResultInfos();
      this.cachedSize = -1;
      return this;
    }

    public Impression clearResultId()
    {
      this.hasResultId = false;
      this.resultId_ = "";
      return this;
    }

    public Impression clearResultInfos()
    {
      this.resultInfos_ = Collections.emptyList();
      return this;
    }

    public Impression clearResultSetNumber()
    {
      this.hasResultSetNumber = false;
      this.resultSetNumber_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getResultId()
    {
      return this.resultId_;
    }

    public GogglesProtos.ClientResultInfo getResultInfos(int paramInt)
    {
      return (GogglesProtos.ClientResultInfo)this.resultInfos_.get(paramInt);
    }

    public int getResultInfosCount()
    {
      return this.resultInfos_.size();
    }

    public List<GogglesProtos.ClientResultInfo> getResultInfosList()
    {
      return this.resultInfos_;
    }

    public int getResultSetNumber()
    {
      return this.resultSetNumber_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasResultSetNumber();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getResultSetNumber());
      if (hasResultId())
        i += CodedOutputStreamMicro.computeStringSize(2, getResultId());
      Iterator localIterator = getResultInfosList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (GogglesProtos.ClientResultInfo)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasResultId()
    {
      return this.hasResultId;
    }

    public boolean hasResultSetNumber()
    {
      return this.hasResultSetNumber;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Impression mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setResultSetNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setResultId(paramCodedInputStreamMicro.readString());
          break;
        case 26:
        }
        GogglesProtos.ClientResultInfo localClientResultInfo = new GogglesProtos.ClientResultInfo();
        paramCodedInputStreamMicro.readMessage(localClientResultInfo);
        addResultInfos(localClientResultInfo);
      }
    }

    public Impression setResultId(String paramString)
    {
      this.hasResultId = true;
      this.resultId_ = paramString;
      return this;
    }

    public Impression setResultInfos(int paramInt, GogglesProtos.ClientResultInfo paramClientResultInfo)
    {
      if (paramClientResultInfo == null)
        throw new NullPointerException();
      this.resultInfos_.set(paramInt, paramClientResultInfo);
      return this;
    }

    public Impression setResultSetNumber(int paramInt)
    {
      this.hasResultSetNumber = true;
      this.resultSetNumber_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasResultSetNumber())
        paramCodedOutputStreamMicro.writeInt32(1, getResultSetNumber());
      if (hasResultId())
        paramCodedOutputStreamMicro.writeString(2, getResultId());
      Iterator localIterator = getResultInfosList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (GogglesProtos.ClientResultInfo)localIterator.next());
    }
  }

  public static final class Pose extends MessageMicro
  {
    public static final int ALTITUDE_METERS_FIELD_NUMBER = 4;
    public static final int LAT_DEGREES_FIELD_NUMBER = 1;
    public static final int LAT_LNG_ACCURACY_METERS_FIELD_NUMBER = 3;
    public static final int LNG_DEGREES_FIELD_NUMBER = 2;
    private float altitudeMeters_ = 0.0F;
    private int cachedSize = -1;
    private boolean hasAltitudeMeters;
    private boolean hasLatDegrees;
    private boolean hasLatLngAccuracyMeters;
    private boolean hasLngDegrees;
    private double latDegrees_ = 0.0D;
    private float latLngAccuracyMeters_ = 0.0F;
    private double lngDegrees_ = 0.0D;

    public static Pose parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Pose().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Pose parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Pose)new Pose().mergeFrom(paramArrayOfByte);
    }

    public final Pose clear()
    {
      clearLatDegrees();
      clearLngDegrees();
      clearLatLngAccuracyMeters();
      clearAltitudeMeters();
      this.cachedSize = -1;
      return this;
    }

    public Pose clearAltitudeMeters()
    {
      this.hasAltitudeMeters = false;
      this.altitudeMeters_ = 0.0F;
      return this;
    }

    public Pose clearLatDegrees()
    {
      this.hasLatDegrees = false;
      this.latDegrees_ = 0.0D;
      return this;
    }

    public Pose clearLatLngAccuracyMeters()
    {
      this.hasLatLngAccuracyMeters = false;
      this.latLngAccuracyMeters_ = 0.0F;
      return this;
    }

    public Pose clearLngDegrees()
    {
      this.hasLngDegrees = false;
      this.lngDegrees_ = 0.0D;
      return this;
    }

    public float getAltitudeMeters()
    {
      return this.altitudeMeters_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public double getLatDegrees()
    {
      return this.latDegrees_;
    }

    public float getLatLngAccuracyMeters()
    {
      return this.latLngAccuracyMeters_;
    }

    public double getLngDegrees()
    {
      return this.lngDegrees_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLatDegrees();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeDoubleSize(1, getLatDegrees());
      if (hasLngDegrees())
        i += CodedOutputStreamMicro.computeDoubleSize(2, getLngDegrees());
      if (hasLatLngAccuracyMeters())
        i += CodedOutputStreamMicro.computeFloatSize(3, getLatLngAccuracyMeters());
      if (hasAltitudeMeters())
        i += CodedOutputStreamMicro.computeFloatSize(4, getAltitudeMeters());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAltitudeMeters()
    {
      return this.hasAltitudeMeters;
    }

    public boolean hasLatDegrees()
    {
      return this.hasLatDegrees;
    }

    public boolean hasLatLngAccuracyMeters()
    {
      return this.hasLatLngAccuracyMeters;
    }

    public boolean hasLngDegrees()
    {
      return this.hasLngDegrees;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Pose mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 9:
          setLatDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 17:
          setLngDegrees(paramCodedInputStreamMicro.readDouble());
          break;
        case 29:
          setLatLngAccuracyMeters(paramCodedInputStreamMicro.readFloat());
          break;
        case 37:
        }
        setAltitudeMeters(paramCodedInputStreamMicro.readFloat());
      }
    }

    public Pose setAltitudeMeters(float paramFloat)
    {
      this.hasAltitudeMeters = true;
      this.altitudeMeters_ = paramFloat;
      return this;
    }

    public Pose setLatDegrees(double paramDouble)
    {
      this.hasLatDegrees = true;
      this.latDegrees_ = paramDouble;
      return this;
    }

    public Pose setLatLngAccuracyMeters(float paramFloat)
    {
      this.hasLatLngAccuracyMeters = true;
      this.latLngAccuracyMeters_ = paramFloat;
      return this;
    }

    public Pose setLngDegrees(double paramDouble)
    {
      this.hasLngDegrees = true;
      this.lngDegrees_ = paramDouble;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLatDegrees())
        paramCodedOutputStreamMicro.writeDouble(1, getLatDegrees());
      if (hasLngDegrees())
        paramCodedOutputStreamMicro.writeDouble(2, getLngDegrees());
      if (hasLatLngAccuracyMeters())
        paramCodedOutputStreamMicro.writeFloat(3, getLatLngAccuracyMeters());
      if (hasAltitudeMeters())
        paramCodedOutputStreamMicro.writeFloat(4, getAltitudeMeters());
    }
  }

  public static final class Result extends MessageMicro
  {
    public static final int BOUNDING_BOX_FIELD_NUMBER = 6;
    public static final int FIFE_IMAGE_URL_FIELD_NUMBER = 4;
    public static final int HIGHEST_SEQUENCE_NUMBER_MATCHED_FIELD_NUMBER = 7;
    public static final int RESULT_ID_FIELD_NUMBER = 1;
    public static final int SEARCH_CORPUS_FIELD_NUMBER = 11;
    public static final int SEARCH_QUERY_FIELD_NUMBER = 5;
    public static final int SUBTITLE_FIELD_NUMBER = 3;
    public static final int TITLE_FIELD_NUMBER = 2;
    private GogglesProtos.BoundingBox boundingBox_ = null;
    private int cachedSize = -1;
    private String fifeImageUrl_ = "";
    private boolean hasBoundingBox;
    private boolean hasFifeImageUrl;
    private boolean hasHighestSequenceNumberMatched;
    private boolean hasResultId;
    private boolean hasSearchCorpus;
    private boolean hasSearchQuery;
    private boolean hasSubtitle;
    private boolean hasTitle;
    private int highestSequenceNumberMatched_ = 0;
    private String resultId_ = "";
    private String searchCorpus_ = "";
    private String searchQuery_ = "";
    private String subtitle_ = "";
    private String title_ = "";

    public static Result parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Result().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Result parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Result)new Result().mergeFrom(paramArrayOfByte);
    }

    public final Result clear()
    {
      clearResultId();
      clearTitle();
      clearSubtitle();
      clearFifeImageUrl();
      clearSearchQuery();
      clearSearchCorpus();
      clearBoundingBox();
      clearHighestSequenceNumberMatched();
      this.cachedSize = -1;
      return this;
    }

    public Result clearBoundingBox()
    {
      this.hasBoundingBox = false;
      this.boundingBox_ = null;
      return this;
    }

    public Result clearFifeImageUrl()
    {
      this.hasFifeImageUrl = false;
      this.fifeImageUrl_ = "";
      return this;
    }

    public Result clearHighestSequenceNumberMatched()
    {
      this.hasHighestSequenceNumberMatched = false;
      this.highestSequenceNumberMatched_ = 0;
      return this;
    }

    public Result clearResultId()
    {
      this.hasResultId = false;
      this.resultId_ = "";
      return this;
    }

    public Result clearSearchCorpus()
    {
      this.hasSearchCorpus = false;
      this.searchCorpus_ = "";
      return this;
    }

    public Result clearSearchQuery()
    {
      this.hasSearchQuery = false;
      this.searchQuery_ = "";
      return this;
    }

    public Result clearSubtitle()
    {
      this.hasSubtitle = false;
      this.subtitle_ = "";
      return this;
    }

    public Result clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public GogglesProtos.BoundingBox getBoundingBox()
    {
      return this.boundingBox_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getFifeImageUrl()
    {
      return this.fifeImageUrl_;
    }

    public int getHighestSequenceNumberMatched()
    {
      return this.highestSequenceNumberMatched_;
    }

    public String getResultId()
    {
      return this.resultId_;
    }

    public String getSearchCorpus()
    {
      return this.searchCorpus_;
    }

    public String getSearchQuery()
    {
      return this.searchQuery_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasResultId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getResultId());
      if (hasTitle())
        i += CodedOutputStreamMicro.computeStringSize(2, getTitle());
      if (hasSubtitle())
        i += CodedOutputStreamMicro.computeStringSize(3, getSubtitle());
      if (hasFifeImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(4, getFifeImageUrl());
      if (hasSearchQuery())
        i += CodedOutputStreamMicro.computeStringSize(5, getSearchQuery());
      if (hasBoundingBox())
        i += CodedOutputStreamMicro.computeMessageSize(6, getBoundingBox());
      if (hasHighestSequenceNumberMatched())
        i += CodedOutputStreamMicro.computeInt32Size(7, getHighestSequenceNumberMatched());
      if (hasSearchCorpus())
        i += CodedOutputStreamMicro.computeStringSize(11, getSearchCorpus());
      this.cachedSize = i;
      return i;
    }

    public String getSubtitle()
    {
      return this.subtitle_;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public boolean hasBoundingBox()
    {
      return this.hasBoundingBox;
    }

    public boolean hasFifeImageUrl()
    {
      return this.hasFifeImageUrl;
    }

    public boolean hasHighestSequenceNumberMatched()
    {
      return this.hasHighestSequenceNumberMatched;
    }

    public boolean hasResultId()
    {
      return this.hasResultId;
    }

    public boolean hasSearchCorpus()
    {
      return this.hasSearchCorpus;
    }

    public boolean hasSearchQuery()
    {
      return this.hasSearchQuery;
    }

    public boolean hasSubtitle()
    {
      return this.hasSubtitle;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Result mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setResultId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setSubtitle(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setFifeImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setSearchQuery(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          GogglesProtos.BoundingBox localBoundingBox = new GogglesProtos.BoundingBox();
          paramCodedInputStreamMicro.readMessage(localBoundingBox);
          setBoundingBox(localBoundingBox);
          break;
        case 56:
          setHighestSequenceNumberMatched(paramCodedInputStreamMicro.readInt32());
          break;
        case 90:
        }
        setSearchCorpus(paramCodedInputStreamMicro.readString());
      }
    }

    public Result setBoundingBox(GogglesProtos.BoundingBox paramBoundingBox)
    {
      if (paramBoundingBox == null)
        throw new NullPointerException();
      this.hasBoundingBox = true;
      this.boundingBox_ = paramBoundingBox;
      return this;
    }

    public Result setFifeImageUrl(String paramString)
    {
      this.hasFifeImageUrl = true;
      this.fifeImageUrl_ = paramString;
      return this;
    }

    public Result setHighestSequenceNumberMatched(int paramInt)
    {
      this.hasHighestSequenceNumberMatched = true;
      this.highestSequenceNumberMatched_ = paramInt;
      return this;
    }

    public Result setResultId(String paramString)
    {
      this.hasResultId = true;
      this.resultId_ = paramString;
      return this;
    }

    public Result setSearchCorpus(String paramString)
    {
      this.hasSearchCorpus = true;
      this.searchCorpus_ = paramString;
      return this;
    }

    public Result setSearchQuery(String paramString)
    {
      this.hasSearchQuery = true;
      this.searchQuery_ = paramString;
      return this;
    }

    public Result setSubtitle(String paramString)
    {
      this.hasSubtitle = true;
      this.subtitle_ = paramString;
      return this;
    }

    public Result setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasResultId())
        paramCodedOutputStreamMicro.writeString(1, getResultId());
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(2, getTitle());
      if (hasSubtitle())
        paramCodedOutputStreamMicro.writeString(3, getSubtitle());
      if (hasFifeImageUrl())
        paramCodedOutputStreamMicro.writeString(4, getFifeImageUrl());
      if (hasSearchQuery())
        paramCodedOutputStreamMicro.writeString(5, getSearchQuery());
      if (hasBoundingBox())
        paramCodedOutputStreamMicro.writeMessage(6, getBoundingBox());
      if (hasHighestSequenceNumberMatched())
        paramCodedOutputStreamMicro.writeInt32(7, getHighestSequenceNumberMatched());
      if (hasSearchCorpus())
        paramCodedOutputStreamMicro.writeString(11, getSearchCorpus());
    }
  }

  public static final class SessionMetadata extends MessageMicro
  {
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasSessionId;
    private String sessionId_ = "";

    public static SessionMetadata parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SessionMetadata().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SessionMetadata parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SessionMetadata)new SessionMetadata().mergeFrom(paramArrayOfByte);
    }

    public final SessionMetadata clear()
    {
      clearSessionId();
      this.cachedSize = -1;
      return this;
    }

    public SessionMetadata clearSessionId()
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

    public SessionMetadata mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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

    public SessionMetadata setSessionId(String paramString)
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

  public static final class SessionOptions extends MessageMicro
  {
    public static final int ANNOTATION_FIELD_NUMBER = 2;
    public static final int CLIENT_INFO_FIELD_NUMBER = 3;
    public static final int LOCALE_FIELD_NUMBER = 5;
    private String annotation_ = "";
    private int cachedSize = -1;
    private GogglesProtos.ClientInfo clientInfo_ = null;
    private boolean hasAnnotation;
    private boolean hasClientInfo;
    private boolean hasLocale;
    private String locale_ = "en-US";

    public static SessionOptions parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SessionOptions().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SessionOptions parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SessionOptions)new SessionOptions().mergeFrom(paramArrayOfByte);
    }

    public final SessionOptions clear()
    {
      clearAnnotation();
      clearClientInfo();
      clearLocale();
      this.cachedSize = -1;
      return this;
    }

    public SessionOptions clearAnnotation()
    {
      this.hasAnnotation = false;
      this.annotation_ = "";
      return this;
    }

    public SessionOptions clearClientInfo()
    {
      this.hasClientInfo = false;
      this.clientInfo_ = null;
      return this;
    }

    public SessionOptions clearLocale()
    {
      this.hasLocale = false;
      this.locale_ = "en-US";
      return this;
    }

    public String getAnnotation()
    {
      return this.annotation_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public GogglesProtos.ClientInfo getClientInfo()
    {
      return this.clientInfo_;
    }

    public String getLocale()
    {
      return this.locale_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAnnotation();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(2, getAnnotation());
      if (hasClientInfo())
        i += CodedOutputStreamMicro.computeMessageSize(3, getClientInfo());
      if (hasLocale())
        i += CodedOutputStreamMicro.computeStringSize(5, getLocale());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAnnotation()
    {
      return this.hasAnnotation;
    }

    public boolean hasClientInfo()
    {
      return this.hasClientInfo;
    }

    public boolean hasLocale()
    {
      return this.hasLocale;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SessionOptions mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAnnotation(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          GogglesProtos.ClientInfo localClientInfo = new GogglesProtos.ClientInfo();
          paramCodedInputStreamMicro.readMessage(localClientInfo);
          setClientInfo(localClientInfo);
          break;
        case 42:
        }
        setLocale(paramCodedInputStreamMicro.readString());
      }
    }

    public SessionOptions setAnnotation(String paramString)
    {
      this.hasAnnotation = true;
      this.annotation_ = paramString;
      return this;
    }

    public SessionOptions setClientInfo(GogglesProtos.ClientInfo paramClientInfo)
    {
      if (paramClientInfo == null)
        throw new NullPointerException();
      this.hasClientInfo = true;
      this.clientInfo_ = paramClientInfo;
      return this;
    }

    public SessionOptions setLocale(String paramString)
    {
      this.hasLocale = true;
      this.locale_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAnnotation())
        paramCodedOutputStreamMicro.writeString(2, getAnnotation());
      if (hasClientInfo())
        paramCodedOutputStreamMicro.writeMessage(3, getClientInfo());
      if (hasLocale())
        paramCodedOutputStreamMicro.writeString(5, getLocale());
    }
  }

  public static final class UserEvent extends MessageMicro
  {
    public static final int ENTRY_POINT_ENTRY_CORPUS_SELECTOR_TOOLBAR = 10;
    public static final int ENTRY_POINT_ENTRY_DISAMBIG_DISMISSAL = 4;
    public static final int ENTRY_POINT_ENTRY_ERROR_RETRY = 7;
    public static final int ENTRY_POINT_ENTRY_HOMESCREEN = 8;
    public static final int ENTRY_POINT_ENTRY_KEYBOARD = 9;
    public static final int ENTRY_POINT_ENTRY_MENU_ITEM = 2;
    public static final int ENTRY_POINT_ENTRY_OTHER = 1;
    public static final int ENTRY_POINT_ENTRY_PREDICTIVE_CARD = 5;
    public static final int ENTRY_POINT_ENTRY_RESULT_PAGE = 3;
    public static final int ENTRY_POINT_ENTRY_VOICE_ACTION = 6;
    public static final int ENTRY_POINT_FIELD_NUMBER = 2;
    public static final int EVENT_TYPE_EVENT_CLOSED_SEARCH = 7;
    public static final int EVENT_TYPE_EVENT_DISAMBIG_CLICK = 3;
    public static final int EVENT_TYPE_EVENT_FURTHER_RESULT_DETAILS = 6;
    public static final int EVENT_TYPE_EVENT_GO_BACK = 4;
    public static final int EVENT_TYPE_EVENT_REQUEST_RESULTS = 2;
    public static final int EVENT_TYPE_EVENT_START_SEARCH = 1;
    public static final int EVENT_TYPE_EVENT_TEXT_REFINEMENT = 5;
    public static final int RESULT_ID_FIELD_NUMBER = 4;
    public static final int RESULT_SET_NUMBER_FIELD_NUMBER = 3;
    public static final int TYPE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private int entryPoint_ = 1;
    private boolean hasEntryPoint;
    private boolean hasResultId;
    private boolean hasResultSetNumber;
    private boolean hasType;
    private String resultId_ = "";
    private int resultSetNumber_ = 0;
    private int type_ = 1;

    public static UserEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new UserEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static UserEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (UserEvent)new UserEvent().mergeFrom(paramArrayOfByte);
    }

    public final UserEvent clear()
    {
      clearType();
      clearEntryPoint();
      clearResultSetNumber();
      clearResultId();
      this.cachedSize = -1;
      return this;
    }

    public UserEvent clearEntryPoint()
    {
      this.hasEntryPoint = false;
      this.entryPoint_ = 1;
      return this;
    }

    public UserEvent clearResultId()
    {
      this.hasResultId = false;
      this.resultId_ = "";
      return this;
    }

    public UserEvent clearResultSetNumber()
    {
      this.hasResultSetNumber = false;
      this.resultSetNumber_ = 0;
      return this;
    }

    public UserEvent clearType()
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

    public int getEntryPoint()
    {
      return this.entryPoint_;
    }

    public String getResultId()
    {
      return this.resultId_;
    }

    public int getResultSetNumber()
    {
      return this.resultSetNumber_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getType());
      if (hasEntryPoint())
        i += CodedOutputStreamMicro.computeInt32Size(2, getEntryPoint());
      if (hasResultSetNumber())
        i += CodedOutputStreamMicro.computeInt32Size(3, getResultSetNumber());
      if (hasResultId())
        i += CodedOutputStreamMicro.computeStringSize(4, getResultId());
      this.cachedSize = i;
      return i;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasEntryPoint()
    {
      return this.hasEntryPoint;
    }

    public boolean hasResultId()
    {
      return this.hasResultId;
    }

    public boolean hasResultSetNumber()
    {
      return this.hasResultSetNumber;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public UserEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 16:
          setEntryPoint(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setResultSetNumber(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
        }
        setResultId(paramCodedInputStreamMicro.readString());
      }
    }

    public UserEvent setEntryPoint(int paramInt)
    {
      this.hasEntryPoint = true;
      this.entryPoint_ = paramInt;
      return this;
    }

    public UserEvent setResultId(String paramString)
    {
      this.hasResultId = true;
      this.resultId_ = paramString;
      return this;
    }

    public UserEvent setResultSetNumber(int paramInt)
    {
      this.hasResultSetNumber = true;
      this.resultSetNumber_ = paramInt;
      return this;
    }

    public UserEvent setType(int paramInt)
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
      if (hasEntryPoint())
        paramCodedOutputStreamMicro.writeInt32(2, getEntryPoint());
      if (hasResultSetNumber())
        paramCodedOutputStreamMicro.writeInt32(3, getResultSetNumber());
      if (hasResultId())
        paramCodedOutputStreamMicro.writeString(4, getResultId());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.bionics.goggles.api2.GogglesProtos
 * JD-Core Version:    0.6.2
 */