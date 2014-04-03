package location.unified;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationDescriptorProto
{
  public static final int LOCATION_PRODUCER_ADS_CRITERIA_ID = 23;
  public static final int LOCATION_PRODUCER_ADS_GEO_PARAM = 38;
  public static final int LOCATION_PRODUCER_ADS_PARTNER_GEO_PARAM = 39;
  public static final int LOCATION_PRODUCER_CALENDAR = 28;
  public static final int LOCATION_PRODUCER_CARRIER_COUNTRY = 17;
  public static final int LOCATION_PRODUCER_CIRCULARS_FRONTEND = 33;
  public static final int LOCATION_PRODUCER_DEFAULT_LOCATION_OVERRIDE_PRODUCER = 32;
  public static final int LOCATION_PRODUCER_DEVICE_LOCATION = 12;
  public static final int LOCATION_PRODUCER_GMAIL_THEME = 26;
  public static final int LOCATION_PRODUCER_GOOGLE_HOST_DOMAIN = 4;
  public static final int LOCATION_PRODUCER_GWS_MOBILE_HISTORY_ZWIEBACK = 34;
  public static final int LOCATION_PRODUCER_IGOOGLE = 27;
  public static final int LOCATION_PRODUCER_IP_ADDRESS = 3;
  public static final int LOCATION_PRODUCER_IP_ADDRESS_REALTIME = 42;
  public static final int LOCATION_PRODUCER_LEGACY_GL_COOKIE = 35;
  public static final int LOCATION_PRODUCER_LEGACY_GL_PARAM = 30;
  public static final int LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_GLL = 10;
  public static final int LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_NEAR = 19;
  public static final int LOCATION_PRODUCER_LEGACY_NEAR_PARAM = 11;
  public static final int LOCATION_PRODUCER_LEGACY_PARTNER_GL_PARAM = 31;
  public static final int LOCATION_PRODUCER_LEGACY_TOOLBAR_HEADER = 9;
  public static final int LOCATION_PRODUCER_LOCAL_UNIVERSAL = 8;
  public static final int LOCATION_PRODUCER_LOGGED_IN_USER_SPECIFIED = 1;
  public static final int LOCATION_PRODUCER_MAPS_FRONTEND = 21;
  public static final int LOCATION_PRODUCER_MOBILE_APP = 24;
  public static final int LOCATION_PRODUCER_MOBILE_FE_HISTORY = 14;
  public static final int LOCATION_PRODUCER_MOBILE_SELECTED = 15;
  public static final int LOCATION_PRODUCER_OZ_FRONTEND = 37;
  public static final int LOCATION_PRODUCER_PARTNER = 16;
  public static final int LOCATION_PRODUCER_PREF_L_FIELD_ADDRESS = 2;
  public static final int LOCATION_PRODUCER_PRODUCT_SEARCH_FRONTEND = 22;
  public static final int LOCATION_PRODUCER_QUERY_HISTORY_INFERRED = 25;
  public static final int LOCATION_PRODUCER_QUERY_LOCATION_OVERRIDE_PRODUCER = 41;
  public static final int LOCATION_PRODUCER_RQUERY = 5;
  public static final int LOCATION_PRODUCER_SEARCH_TOOLBELT = 13;
  public static final int LOCATION_PRODUCER_SHOPPING_SEARCH_API = 36;
  public static final int LOCATION_PRODUCER_SHOWTIME_ONEBOX = 7;
  public static final int LOCATION_PRODUCER_SMS_SEARCH = 29;
  public static final int LOCATION_PRODUCER_SQUERY = 6;
  public static final int LOCATION_PRODUCER_UNKNOWN_PRODUCER = 0;
  public static final int LOCATION_PRODUCER_VIEWPORT_PARAMS = 40;
  public static final int LOCATION_PRODUCER_WEB_SEARCH_PREFERENCES_PAGE = 20;
  public static final int LOCATION_PRODUCER_WEB_SEARCH_RESULTS_PAGE_SHARED = 18;
  public static final int LOCATION_PROVENANCE_GWS_MOBILE_CLIENT = 6;
  public static final int LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_GLL_PARAM = 3;
  public static final int LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_NEAR_PARAM = 5;
  public static final int LOCATION_PROVENANCE_MAPS_FRONTEND_IL_DEBUG_IP = 4;
  public static final int LOCATION_PROVENANCE_MOBILE_FE = 2;
  public static final int LOCATION_PROVENANCE_TOOLBAR = 1;
  public static final int LOCATION_PROVENANCE_UNREMARKABLE = 0;
  public static final int LOCATION_PROVENANCE_XFF_HEADER = 7;
  public static final int LOCATION_ROLE_CURRENT_LOCATION = 1;
  public static final int LOCATION_ROLE_DEFAULT_LOCATION = 2;
  public static final int LOCATION_ROLE_HISTORICAL_LOCATION = 6;
  public static final int LOCATION_ROLE_HISTORICAL_QUERY = 5;
  public static final int LOCATION_ROLE_QUERY = 3;
  public static final int LOCATION_ROLE_UNKNOWN_ROLE = 0;
  public static final int LOCATION_ROLE_USER_SPECIFIED_FOR_REQUEST = 4;
  public static final int LOCATION_ROLE_VIEWPORT = 7;
  public static final int WILDCARD_PRODUCER = -1;
  public static final int WILDCARD_ROLE = -1;

  public static final class FeatureIdProto extends MessageMicro
  {
    public static final int CELL_ID_FIELD_NUMBER = 1;
    public static final int FPRINT_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private long cellId_ = 0L;
    private long fprint_ = 0L;
    private boolean hasCellId;
    private boolean hasFprint;

    public static FeatureIdProto parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new FeatureIdProto().mergeFrom(paramCodedInputStreamMicro);
    }

    public static FeatureIdProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (FeatureIdProto)new FeatureIdProto().mergeFrom(paramArrayOfByte);
    }

    public final FeatureIdProto clear()
    {
      clearCellId();
      clearFprint();
      this.cachedSize = -1;
      return this;
    }

    public FeatureIdProto clearCellId()
    {
      this.hasCellId = false;
      this.cellId_ = 0L;
      return this;
    }

    public FeatureIdProto clearFprint()
    {
      this.hasFprint = false;
      this.fprint_ = 0L;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public long getCellId()
    {
      return this.cellId_;
    }

    public long getFprint()
    {
      return this.fprint_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasCellId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFixed64Size(1, getCellId());
      if (hasFprint())
        i += CodedOutputStreamMicro.computeFixed64Size(2, getFprint());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCellId()
    {
      return this.hasCellId;
    }

    public boolean hasFprint()
    {
      return this.hasFprint;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public FeatureIdProto mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setCellId(paramCodedInputStreamMicro.readFixed64());
          break;
        case 17:
        }
        setFprint(paramCodedInputStreamMicro.readFixed64());
      }
    }

    public FeatureIdProto setCellId(long paramLong)
    {
      this.hasCellId = true;
      this.cellId_ = paramLong;
      return this;
    }

    public FeatureIdProto setFprint(long paramLong)
    {
      this.hasFprint = true;
      this.fprint_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasCellId())
        paramCodedOutputStreamMicro.writeFixed64(1, getCellId());
      if (hasFprint())
        paramCodedOutputStreamMicro.writeFixed64(2, getFprint());
    }
  }

  public static final class LatLng extends MessageMicro
  {
    public static final int LATITUDE_E7_FIELD_NUMBER = 1;
    public static final int LONGITUDE_E7_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLatitudeE7;
    private boolean hasLongitudeE7;
    private int latitudeE7_ = 0;
    private int longitudeE7_ = 0;

    public static LatLng parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LatLng().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LatLng parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LatLng)new LatLng().mergeFrom(paramArrayOfByte);
    }

    public final LatLng clear()
    {
      clearLatitudeE7();
      clearLongitudeE7();
      this.cachedSize = -1;
      return this;
    }

    public LatLng clearLatitudeE7()
    {
      this.hasLatitudeE7 = false;
      this.latitudeE7_ = 0;
      return this;
    }

    public LatLng clearLongitudeE7()
    {
      this.hasLongitudeE7 = false;
      this.longitudeE7_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getLatitudeE7()
    {
      return this.latitudeE7_;
    }

    public int getLongitudeE7()
    {
      return this.longitudeE7_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLatitudeE7();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeSFixed32Size(1, getLatitudeE7());
      if (hasLongitudeE7())
        i += CodedOutputStreamMicro.computeSFixed32Size(2, getLongitudeE7());
      this.cachedSize = i;
      return i;
    }

    public boolean hasLatitudeE7()
    {
      return this.hasLatitudeE7;
    }

    public boolean hasLongitudeE7()
    {
      return this.hasLongitudeE7;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LatLng mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 13:
          setLatitudeE7(paramCodedInputStreamMicro.readSFixed32());
          break;
        case 21:
        }
        setLongitudeE7(paramCodedInputStreamMicro.readSFixed32());
      }
    }

    public LatLng setLatitudeE7(int paramInt)
    {
      this.hasLatitudeE7 = true;
      this.latitudeE7_ = paramInt;
      return this;
    }

    public LatLng setLongitudeE7(int paramInt)
    {
      this.hasLongitudeE7 = true;
      this.longitudeE7_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLatitudeE7())
        paramCodedOutputStreamMicro.writeSFixed32(1, getLatitudeE7());
      if (hasLongitudeE7())
        paramCodedOutputStreamMicro.writeSFixed32(2, getLongitudeE7());
    }
  }

  public static final class LatLngRect extends MessageMicro
  {
    public static final int HI_FIELD_NUMBER = 2;
    public static final int LO_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasHi;
    private boolean hasLo;
    private LocationDescriptorProto.LatLng hi_ = null;
    private LocationDescriptorProto.LatLng lo_ = null;

    public static LatLngRect parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LatLngRect().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LatLngRect parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LatLngRect)new LatLngRect().mergeFrom(paramArrayOfByte);
    }

    public final LatLngRect clear()
    {
      clearLo();
      clearHi();
      this.cachedSize = -1;
      return this;
    }

    public LatLngRect clearHi()
    {
      this.hasHi = false;
      this.hi_ = null;
      return this;
    }

    public LatLngRect clearLo()
    {
      this.hasLo = false;
      this.lo_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public LocationDescriptorProto.LatLng getHi()
    {
      return this.hi_;
    }

    public LocationDescriptorProto.LatLng getLo()
    {
      return this.lo_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLo();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getLo());
      if (hasHi())
        i += CodedOutputStreamMicro.computeMessageSize(2, getHi());
      this.cachedSize = i;
      return i;
    }

    public boolean hasHi()
    {
      return this.hasHi;
    }

    public boolean hasLo()
    {
      return this.hasLo;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LatLngRect mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          LocationDescriptorProto.LatLng localLatLng2 = new LocationDescriptorProto.LatLng();
          paramCodedInputStreamMicro.readMessage(localLatLng2);
          setLo(localLatLng2);
          break;
        case 18:
        }
        LocationDescriptorProto.LatLng localLatLng1 = new LocationDescriptorProto.LatLng();
        paramCodedInputStreamMicro.readMessage(localLatLng1);
        setHi(localLatLng1);
      }
    }

    public LatLngRect setHi(LocationDescriptorProto.LatLng paramLatLng)
    {
      if (paramLatLng == null)
        throw new NullPointerException();
      this.hasHi = true;
      this.hi_ = paramLatLng;
      return this;
    }

    public LatLngRect setLo(LocationDescriptorProto.LatLng paramLatLng)
    {
      if (paramLatLng == null)
        throw new NullPointerException();
      this.hasLo = true;
      this.lo_ = paramLatLng;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLo())
        paramCodedOutputStreamMicro.writeMessage(1, getLo());
      if (hasHi())
        paramCodedOutputStreamMicro.writeMessage(2, getHi());
    }
  }

  public static final class LocationAttributesProto extends MessageMicro
  {
    public static final int ACTIVITY_TYPE_ACTIVITY_IN_VEHICLE = 2;
    public static final int ACTIVITY_TYPE_ACTIVITY_ON_BICYCLE = 3;
    public static final int ACTIVITY_TYPE_ACTIVITY_ON_FOOT = 4;
    public static final int ACTIVITY_TYPE_ACTIVITY_STILL = 1;
    public static final int ACTIVITY_TYPE_ACTIVITY_UNKNOWN = 0;
    public static final int DETECTED_ACTIVITY_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private int detectedActivity_ = 0;
    private boolean hasDetectedActivity;

    public static LocationAttributesProto parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationAttributesProto().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationAttributesProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationAttributesProto)new LocationAttributesProto().mergeFrom(paramArrayOfByte);
    }

    public final LocationAttributesProto clear()
    {
      clearDetectedActivity();
      this.cachedSize = -1;
      return this;
    }

    public LocationAttributesProto clearDetectedActivity()
    {
      this.hasDetectedActivity = false;
      this.detectedActivity_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDetectedActivity()
    {
      return this.detectedActivity_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasDetectedActivity();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getDetectedActivity());
      this.cachedSize = i;
      return i;
    }

    public boolean hasDetectedActivity()
    {
      return this.hasDetectedActivity;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocationAttributesProto mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        setDetectedActivity(paramCodedInputStreamMicro.readInt32());
      }
    }

    public LocationAttributesProto setDetectedActivity(int paramInt)
    {
      this.hasDetectedActivity = true;
      this.detectedActivity_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasDetectedActivity())
        paramCodedOutputStreamMicro.writeInt32(1, getDetectedActivity());
    }
  }

  public static final class LocationDescriptor extends MessageMicro
  {
    public static final int ATTRIBUTES_FIELD_NUMBER = 19;
    public static final int CONFIDENCE_FIELD_NUMBER = 8;
    public static final int FEATURE_ID_FIELD_NUMBER = 10;
    public static final int HISTORICAL_PRODUCER_FIELD_NUMBER = 13;
    public static final int HISTORICAL_PROMINENCE_FIELD_NUMBER = 15;
    public static final int HISTORICAL_ROLE_FIELD_NUMBER = 12;
    public static final int LANGUAGE_FIELD_NUMBER = 11;
    public static final int LATLNG_FIELD_NUMBER = 5;
    public static final int LATLNG_SPAN_FIELD_NUMBER = 6;
    public static final int LEVEL_FEATURE_ID_FIELD_NUMBER = 17;
    public static final int LEVEL_NUMBER_FIELD_NUMBER = 18;
    public static final int LOC_FIELD_NUMBER = 4;
    public static final int MID_FIELD_NUMBER = 16;
    public static final int PRODUCER_FIELD_NUMBER = 2;
    public static final int PROVENANCE_FIELD_NUMBER = 9;
    public static final int RADIUS_FIELD_NUMBER = 7;
    public static final int RECT_FIELD_NUMBER = 14;
    public static final int ROLE_FIELD_NUMBER = 1;
    public static final int TIMESTAMP_FIELD_NUMBER = 3;
    private LocationDescriptorProto.LocationAttributesProto attributes_ = null;
    private int cachedSize = -1;
    private int confidence_ = 100;
    private LocationDescriptorProto.FeatureIdProto featureId_ = null;
    private boolean hasAttributes;
    private boolean hasConfidence;
    private boolean hasFeatureId;
    private boolean hasHistoricalProducer;
    private boolean hasHistoricalProminence;
    private boolean hasHistoricalRole;
    private boolean hasLanguage;
    private boolean hasLatlng;
    private boolean hasLatlngSpan;
    private boolean hasLevelFeatureId;
    private boolean hasLevelNumber;
    private boolean hasLoc;
    private boolean hasMid;
    private boolean hasProducer;
    private boolean hasProvenance;
    private boolean hasRadius;
    private boolean hasRect;
    private boolean hasRole;
    private boolean hasTimestamp;
    private int historicalProducer_ = 0;
    private int historicalProminence_ = 0;
    private int historicalRole_ = 0;
    private String language_ = "";
    private LocationDescriptorProto.LatLng latlngSpan_ = null;
    private LocationDescriptorProto.LatLng latlng_ = null;
    private LocationDescriptorProto.FeatureIdProto levelFeatureId_ = null;
    private float levelNumber_ = 0.0F;
    private String loc_ = "";
    private long mid_ = 0L;
    private int producer_ = 0;
    private int provenance_ = 0;
    private float radius_ = 0.0F;
    private LocationDescriptorProto.LatLngRect rect_ = null;
    private int role_ = 0;
    private long timestamp_ = 0L;

    public static LocationDescriptor parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationDescriptor().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationDescriptor parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationDescriptor)new LocationDescriptor().mergeFrom(paramArrayOfByte);
    }

    public final LocationDescriptor clear()
    {
      clearRole();
      clearProducer();
      clearTimestamp();
      clearLoc();
      clearLatlng();
      clearLatlngSpan();
      clearRect();
      clearRadius();
      clearConfidence();
      clearFeatureId();
      clearMid();
      clearLevelFeatureId();
      clearLevelNumber();
      clearLanguage();
      clearProvenance();
      clearHistoricalRole();
      clearHistoricalProducer();
      clearHistoricalProminence();
      clearAttributes();
      this.cachedSize = -1;
      return this;
    }

    public LocationDescriptor clearAttributes()
    {
      this.hasAttributes = false;
      this.attributes_ = null;
      return this;
    }

    public LocationDescriptor clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 100;
      return this;
    }

    public LocationDescriptor clearFeatureId()
    {
      this.hasFeatureId = false;
      this.featureId_ = null;
      return this;
    }

    public LocationDescriptor clearHistoricalProducer()
    {
      this.hasHistoricalProducer = false;
      this.historicalProducer_ = 0;
      return this;
    }

    public LocationDescriptor clearHistoricalProminence()
    {
      this.hasHistoricalProminence = false;
      this.historicalProminence_ = 0;
      return this;
    }

    public LocationDescriptor clearHistoricalRole()
    {
      this.hasHistoricalRole = false;
      this.historicalRole_ = 0;
      return this;
    }

    public LocationDescriptor clearLanguage()
    {
      this.hasLanguage = false;
      this.language_ = "";
      return this;
    }

    public LocationDescriptor clearLatlng()
    {
      this.hasLatlng = false;
      this.latlng_ = null;
      return this;
    }

    public LocationDescriptor clearLatlngSpan()
    {
      this.hasLatlngSpan = false;
      this.latlngSpan_ = null;
      return this;
    }

    public LocationDescriptor clearLevelFeatureId()
    {
      this.hasLevelFeatureId = false;
      this.levelFeatureId_ = null;
      return this;
    }

    public LocationDescriptor clearLevelNumber()
    {
      this.hasLevelNumber = false;
      this.levelNumber_ = 0.0F;
      return this;
    }

    public LocationDescriptor clearLoc()
    {
      this.hasLoc = false;
      this.loc_ = "";
      return this;
    }

    public LocationDescriptor clearMid()
    {
      this.hasMid = false;
      this.mid_ = 0L;
      return this;
    }

    public LocationDescriptor clearProducer()
    {
      this.hasProducer = false;
      this.producer_ = 0;
      return this;
    }

    public LocationDescriptor clearProvenance()
    {
      this.hasProvenance = false;
      this.provenance_ = 0;
      return this;
    }

    public LocationDescriptor clearRadius()
    {
      this.hasRadius = false;
      this.radius_ = 0.0F;
      return this;
    }

    public LocationDescriptor clearRect()
    {
      this.hasRect = false;
      this.rect_ = null;
      return this;
    }

    public LocationDescriptor clearRole()
    {
      this.hasRole = false;
      this.role_ = 0;
      return this;
    }

    public LocationDescriptor clearTimestamp()
    {
      this.hasTimestamp = false;
      this.timestamp_ = 0L;
      return this;
    }

    public LocationDescriptorProto.LocationAttributesProto getAttributes()
    {
      return this.attributes_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getConfidence()
    {
      return this.confidence_;
    }

    public LocationDescriptorProto.FeatureIdProto getFeatureId()
    {
      return this.featureId_;
    }

    public int getHistoricalProducer()
    {
      return this.historicalProducer_;
    }

    public int getHistoricalProminence()
    {
      return this.historicalProminence_;
    }

    public int getHistoricalRole()
    {
      return this.historicalRole_;
    }

    public String getLanguage()
    {
      return this.language_;
    }

    public LocationDescriptorProto.LatLng getLatlng()
    {
      return this.latlng_;
    }

    public LocationDescriptorProto.LatLng getLatlngSpan()
    {
      return this.latlngSpan_;
    }

    public LocationDescriptorProto.FeatureIdProto getLevelFeatureId()
    {
      return this.levelFeatureId_;
    }

    public float getLevelNumber()
    {
      return this.levelNumber_;
    }

    public String getLoc()
    {
      return this.loc_;
    }

    public long getMid()
    {
      return this.mid_;
    }

    public int getProducer()
    {
      return this.producer_;
    }

    public int getProvenance()
    {
      return this.provenance_;
    }

    public float getRadius()
    {
      return this.radius_;
    }

    public LocationDescriptorProto.LatLngRect getRect()
    {
      return this.rect_;
    }

    public int getRole()
    {
      return this.role_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRole();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getRole());
      if (hasProducer())
        i += CodedOutputStreamMicro.computeInt32Size(2, getProducer());
      if (hasTimestamp())
        i += CodedOutputStreamMicro.computeInt64Size(3, getTimestamp());
      if (hasLoc())
        i += CodedOutputStreamMicro.computeStringSize(4, getLoc());
      if (hasLatlng())
        i += CodedOutputStreamMicro.computeMessageSize(5, getLatlng());
      if (hasLatlngSpan())
        i += CodedOutputStreamMicro.computeMessageSize(6, getLatlngSpan());
      if (hasRadius())
        i += CodedOutputStreamMicro.computeFloatSize(7, getRadius());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeInt32Size(8, getConfidence());
      if (hasProvenance())
        i += CodedOutputStreamMicro.computeInt32Size(9, getProvenance());
      if (hasFeatureId())
        i += CodedOutputStreamMicro.computeMessageSize(10, getFeatureId());
      if (hasLanguage())
        i += CodedOutputStreamMicro.computeStringSize(11, getLanguage());
      if (hasHistoricalRole())
        i += CodedOutputStreamMicro.computeInt32Size(12, getHistoricalRole());
      if (hasHistoricalProducer())
        i += CodedOutputStreamMicro.computeInt32Size(13, getHistoricalProducer());
      if (hasRect())
        i += CodedOutputStreamMicro.computeMessageSize(14, getRect());
      if (hasHistoricalProminence())
        i += CodedOutputStreamMicro.computeInt32Size(15, getHistoricalProminence());
      if (hasMid())
        i += CodedOutputStreamMicro.computeUInt64Size(16, getMid());
      if (hasLevelFeatureId())
        i += CodedOutputStreamMicro.computeMessageSize(17, getLevelFeatureId());
      if (hasLevelNumber())
        i += CodedOutputStreamMicro.computeFloatSize(18, getLevelNumber());
      if (hasAttributes())
        i += CodedOutputStreamMicro.computeMessageSize(19, getAttributes());
      this.cachedSize = i;
      return i;
    }

    public long getTimestamp()
    {
      return this.timestamp_;
    }

    public boolean hasAttributes()
    {
      return this.hasAttributes;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasFeatureId()
    {
      return this.hasFeatureId;
    }

    public boolean hasHistoricalProducer()
    {
      return this.hasHistoricalProducer;
    }

    public boolean hasHistoricalProminence()
    {
      return this.hasHistoricalProminence;
    }

    public boolean hasHistoricalRole()
    {
      return this.hasHistoricalRole;
    }

    public boolean hasLanguage()
    {
      return this.hasLanguage;
    }

    public boolean hasLatlng()
    {
      return this.hasLatlng;
    }

    public boolean hasLatlngSpan()
    {
      return this.hasLatlngSpan;
    }

    public boolean hasLevelFeatureId()
    {
      return this.hasLevelFeatureId;
    }

    public boolean hasLevelNumber()
    {
      return this.hasLevelNumber;
    }

    public boolean hasLoc()
    {
      return this.hasLoc;
    }

    public boolean hasMid()
    {
      return this.hasMid;
    }

    public boolean hasProducer()
    {
      return this.hasProducer;
    }

    public boolean hasProvenance()
    {
      return this.hasProvenance;
    }

    public boolean hasRadius()
    {
      return this.hasRadius;
    }

    public boolean hasRect()
    {
      return this.hasRect;
    }

    public boolean hasRole()
    {
      return this.hasRole;
    }

    public boolean hasTimestamp()
    {
      return this.hasTimestamp;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocationDescriptor mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setRole(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setProducer(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setTimestamp(paramCodedInputStreamMicro.readInt64());
          break;
        case 34:
          setLoc(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          LocationDescriptorProto.LatLng localLatLng2 = new LocationDescriptorProto.LatLng();
          paramCodedInputStreamMicro.readMessage(localLatLng2);
          setLatlng(localLatLng2);
          break;
        case 50:
          LocationDescriptorProto.LatLng localLatLng1 = new LocationDescriptorProto.LatLng();
          paramCodedInputStreamMicro.readMessage(localLatLng1);
          setLatlngSpan(localLatLng1);
          break;
        case 61:
          setRadius(paramCodedInputStreamMicro.readFloat());
          break;
        case 64:
          setConfidence(paramCodedInputStreamMicro.readInt32());
          break;
        case 72:
          setProvenance(paramCodedInputStreamMicro.readInt32());
          break;
        case 82:
          LocationDescriptorProto.FeatureIdProto localFeatureIdProto2 = new LocationDescriptorProto.FeatureIdProto();
          paramCodedInputStreamMicro.readMessage(localFeatureIdProto2);
          setFeatureId(localFeatureIdProto2);
          break;
        case 90:
          setLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 96:
          setHistoricalRole(paramCodedInputStreamMicro.readInt32());
          break;
        case 104:
          setHistoricalProducer(paramCodedInputStreamMicro.readInt32());
          break;
        case 114:
          LocationDescriptorProto.LatLngRect localLatLngRect = new LocationDescriptorProto.LatLngRect();
          paramCodedInputStreamMicro.readMessage(localLatLngRect);
          setRect(localLatLngRect);
          break;
        case 120:
          setHistoricalProminence(paramCodedInputStreamMicro.readInt32());
          break;
        case 128:
          setMid(paramCodedInputStreamMicro.readUInt64());
          break;
        case 138:
          LocationDescriptorProto.FeatureIdProto localFeatureIdProto1 = new LocationDescriptorProto.FeatureIdProto();
          paramCodedInputStreamMicro.readMessage(localFeatureIdProto1);
          setLevelFeatureId(localFeatureIdProto1);
          break;
        case 149:
          setLevelNumber(paramCodedInputStreamMicro.readFloat());
          break;
        case 154:
        }
        LocationDescriptorProto.LocationAttributesProto localLocationAttributesProto = new LocationDescriptorProto.LocationAttributesProto();
        paramCodedInputStreamMicro.readMessage(localLocationAttributesProto);
        setAttributes(localLocationAttributesProto);
      }
    }

    public LocationDescriptor setAttributes(LocationDescriptorProto.LocationAttributesProto paramLocationAttributesProto)
    {
      if (paramLocationAttributesProto == null)
        throw new NullPointerException();
      this.hasAttributes = true;
      this.attributes_ = paramLocationAttributesProto;
      return this;
    }

    public LocationDescriptor setConfidence(int paramInt)
    {
      this.hasConfidence = true;
      this.confidence_ = paramInt;
      return this;
    }

    public LocationDescriptor setFeatureId(LocationDescriptorProto.FeatureIdProto paramFeatureIdProto)
    {
      if (paramFeatureIdProto == null)
        throw new NullPointerException();
      this.hasFeatureId = true;
      this.featureId_ = paramFeatureIdProto;
      return this;
    }

    public LocationDescriptor setHistoricalProducer(int paramInt)
    {
      this.hasHistoricalProducer = true;
      this.historicalProducer_ = paramInt;
      return this;
    }

    public LocationDescriptor setHistoricalProminence(int paramInt)
    {
      this.hasHistoricalProminence = true;
      this.historicalProminence_ = paramInt;
      return this;
    }

    public LocationDescriptor setHistoricalRole(int paramInt)
    {
      this.hasHistoricalRole = true;
      this.historicalRole_ = paramInt;
      return this;
    }

    public LocationDescriptor setLanguage(String paramString)
    {
      this.hasLanguage = true;
      this.language_ = paramString;
      return this;
    }

    public LocationDescriptor setLatlng(LocationDescriptorProto.LatLng paramLatLng)
    {
      if (paramLatLng == null)
        throw new NullPointerException();
      this.hasLatlng = true;
      this.latlng_ = paramLatLng;
      return this;
    }

    public LocationDescriptor setLatlngSpan(LocationDescriptorProto.LatLng paramLatLng)
    {
      if (paramLatLng == null)
        throw new NullPointerException();
      this.hasLatlngSpan = true;
      this.latlngSpan_ = paramLatLng;
      return this;
    }

    public LocationDescriptor setLevelFeatureId(LocationDescriptorProto.FeatureIdProto paramFeatureIdProto)
    {
      if (paramFeatureIdProto == null)
        throw new NullPointerException();
      this.hasLevelFeatureId = true;
      this.levelFeatureId_ = paramFeatureIdProto;
      return this;
    }

    public LocationDescriptor setLevelNumber(float paramFloat)
    {
      this.hasLevelNumber = true;
      this.levelNumber_ = paramFloat;
      return this;
    }

    public LocationDescriptor setLoc(String paramString)
    {
      this.hasLoc = true;
      this.loc_ = paramString;
      return this;
    }

    public LocationDescriptor setMid(long paramLong)
    {
      this.hasMid = true;
      this.mid_ = paramLong;
      return this;
    }

    public LocationDescriptor setProducer(int paramInt)
    {
      this.hasProducer = true;
      this.producer_ = paramInt;
      return this;
    }

    public LocationDescriptor setProvenance(int paramInt)
    {
      this.hasProvenance = true;
      this.provenance_ = paramInt;
      return this;
    }

    public LocationDescriptor setRadius(float paramFloat)
    {
      this.hasRadius = true;
      this.radius_ = paramFloat;
      return this;
    }

    public LocationDescriptor setRect(LocationDescriptorProto.LatLngRect paramLatLngRect)
    {
      if (paramLatLngRect == null)
        throw new NullPointerException();
      this.hasRect = true;
      this.rect_ = paramLatLngRect;
      return this;
    }

    public LocationDescriptor setRole(int paramInt)
    {
      this.hasRole = true;
      this.role_ = paramInt;
      return this;
    }

    public LocationDescriptor setTimestamp(long paramLong)
    {
      this.hasTimestamp = true;
      this.timestamp_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRole())
        paramCodedOutputStreamMicro.writeInt32(1, getRole());
      if (hasProducer())
        paramCodedOutputStreamMicro.writeInt32(2, getProducer());
      if (hasTimestamp())
        paramCodedOutputStreamMicro.writeInt64(3, getTimestamp());
      if (hasLoc())
        paramCodedOutputStreamMicro.writeString(4, getLoc());
      if (hasLatlng())
        paramCodedOutputStreamMicro.writeMessage(5, getLatlng());
      if (hasLatlngSpan())
        paramCodedOutputStreamMicro.writeMessage(6, getLatlngSpan());
      if (hasRadius())
        paramCodedOutputStreamMicro.writeFloat(7, getRadius());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeInt32(8, getConfidence());
      if (hasProvenance())
        paramCodedOutputStreamMicro.writeInt32(9, getProvenance());
      if (hasFeatureId())
        paramCodedOutputStreamMicro.writeMessage(10, getFeatureId());
      if (hasLanguage())
        paramCodedOutputStreamMicro.writeString(11, getLanguage());
      if (hasHistoricalRole())
        paramCodedOutputStreamMicro.writeInt32(12, getHistoricalRole());
      if (hasHistoricalProducer())
        paramCodedOutputStreamMicro.writeInt32(13, getHistoricalProducer());
      if (hasRect())
        paramCodedOutputStreamMicro.writeMessage(14, getRect());
      if (hasHistoricalProminence())
        paramCodedOutputStreamMicro.writeInt32(15, getHistoricalProminence());
      if (hasMid())
        paramCodedOutputStreamMicro.writeUInt64(16, getMid());
      if (hasLevelFeatureId())
        paramCodedOutputStreamMicro.writeMessage(17, getLevelFeatureId());
      if (hasLevelNumber())
        paramCodedOutputStreamMicro.writeFloat(18, getLevelNumber());
      if (hasAttributes())
        paramCodedOutputStreamMicro.writeMessage(19, getAttributes());
    }
  }

  public static final class LocationDescriptorSet extends MessageMicro
  {
    public static final int DESCRIPTORS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<LocationDescriptorProto.LocationDescriptor> descriptors_ = Collections.emptyList();

    public static LocationDescriptorSet parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationDescriptorSet().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationDescriptorSet parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationDescriptorSet)new LocationDescriptorSet().mergeFrom(paramArrayOfByte);
    }

    public LocationDescriptorSet addDescriptors(LocationDescriptorProto.LocationDescriptor paramLocationDescriptor)
    {
      if (paramLocationDescriptor == null)
        throw new NullPointerException();
      if (this.descriptors_.isEmpty())
        this.descriptors_ = new ArrayList();
      this.descriptors_.add(paramLocationDescriptor);
      return this;
    }

    public final LocationDescriptorSet clear()
    {
      clearDescriptors();
      this.cachedSize = -1;
      return this;
    }

    public LocationDescriptorSet clearDescriptors()
    {
      this.descriptors_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public LocationDescriptorProto.LocationDescriptor getDescriptors(int paramInt)
    {
      return (LocationDescriptorProto.LocationDescriptor)this.descriptors_.get(paramInt);
    }

    public int getDescriptorsCount()
    {
      return this.descriptors_.size();
    }

    public List<LocationDescriptorProto.LocationDescriptor> getDescriptorsList()
    {
      return this.descriptors_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getDescriptorsList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (LocationDescriptorProto.LocationDescriptor)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LocationDescriptorSet mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        LocationDescriptorProto.LocationDescriptor localLocationDescriptor = new LocationDescriptorProto.LocationDescriptor();
        paramCodedInputStreamMicro.readMessage(localLocationDescriptor);
        addDescriptors(localLocationDescriptor);
      }
    }

    public LocationDescriptorSet setDescriptors(int paramInt, LocationDescriptorProto.LocationDescriptor paramLocationDescriptor)
    {
      if (paramLocationDescriptor == null)
        throw new NullPointerException();
      this.descriptors_.set(paramInt, paramLocationDescriptor);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getDescriptorsList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (LocationDescriptorProto.LocationDescriptor)localIterator.next());
    }
  }

  public static final class LocationProducerProto extends MessageMicro
  {
    public static final int LOCATION_PRODUCER_ADS_CRITERIA_ID = 23;
    public static final int LOCATION_PRODUCER_ADS_GEO_PARAM = 38;
    public static final int LOCATION_PRODUCER_ADS_PARTNER_GEO_PARAM = 39;
    public static final int LOCATION_PRODUCER_CALENDAR = 28;
    public static final int LOCATION_PRODUCER_CARRIER_COUNTRY = 17;
    public static final int LOCATION_PRODUCER_CIRCULARS_FRONTEND = 33;
    public static final int LOCATION_PRODUCER_DEFAULT_LOCATION_OVERRIDE_PRODUCER = 32;
    public static final int LOCATION_PRODUCER_DEVICE_LOCATION = 12;
    public static final int LOCATION_PRODUCER_GMAIL_THEME = 26;
    public static final int LOCATION_PRODUCER_GOOGLE_HOST_DOMAIN = 4;
    public static final int LOCATION_PRODUCER_GWS_MOBILE_HISTORY_ZWIEBACK = 34;
    public static final int LOCATION_PRODUCER_IGOOGLE = 27;
    public static final int LOCATION_PRODUCER_IP_ADDRESS = 3;
    public static final int LOCATION_PRODUCER_IP_ADDRESS_REALTIME = 42;
    public static final int LOCATION_PRODUCER_LEGACY_GL_COOKIE = 35;
    public static final int LOCATION_PRODUCER_LEGACY_GL_PARAM = 30;
    public static final int LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_GLL = 10;
    public static final int LOCATION_PRODUCER_LEGACY_MOBILE_FRONTEND_NEAR = 19;
    public static final int LOCATION_PRODUCER_LEGACY_NEAR_PARAM = 11;
    public static final int LOCATION_PRODUCER_LEGACY_PARTNER_GL_PARAM = 31;
    public static final int LOCATION_PRODUCER_LEGACY_TOOLBAR_HEADER = 9;
    public static final int LOCATION_PRODUCER_LOCAL_UNIVERSAL = 8;
    public static final int LOCATION_PRODUCER_LOGGED_IN_USER_SPECIFIED = 1;
    public static final int LOCATION_PRODUCER_MAPS_FRONTEND = 21;
    public static final int LOCATION_PRODUCER_MOBILE_APP = 24;
    public static final int LOCATION_PRODUCER_MOBILE_FE_HISTORY = 14;
    public static final int LOCATION_PRODUCER_MOBILE_SELECTED = 15;
    public static final int LOCATION_PRODUCER_OZ_FRONTEND = 37;
    public static final int LOCATION_PRODUCER_PARTNER = 16;
    public static final int LOCATION_PRODUCER_PREF_L_FIELD_ADDRESS = 2;
    public static final int LOCATION_PRODUCER_PRODUCT_SEARCH_FRONTEND = 22;
    public static final int LOCATION_PRODUCER_QUERY_HISTORY_INFERRED = 25;
    public static final int LOCATION_PRODUCER_QUERY_LOCATION_OVERRIDE_PRODUCER = 41;
    public static final int LOCATION_PRODUCER_RQUERY = 5;
    public static final int LOCATION_PRODUCER_SEARCH_TOOLBELT = 13;
    public static final int LOCATION_PRODUCER_SHOPPING_SEARCH_API = 36;
    public static final int LOCATION_PRODUCER_SHOWTIME_ONEBOX = 7;
    public static final int LOCATION_PRODUCER_SMS_SEARCH = 29;
    public static final int LOCATION_PRODUCER_SQUERY = 6;
    public static final int LOCATION_PRODUCER_UNKNOWN_PRODUCER = 0;
    public static final int LOCATION_PRODUCER_VIEWPORT_PARAMS = 40;
    public static final int LOCATION_PRODUCER_WEB_SEARCH_PREFERENCES_PAGE = 20;
    public static final int LOCATION_PRODUCER_WEB_SEARCH_RESULTS_PAGE_SHARED = 18;
    public static final int WILDCARD_PRODUCER = -1;
    private int cachedSize = -1;

    public static LocationProducerProto parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationProducerProto().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationProducerProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationProducerProto)new LocationProducerProto().mergeFrom(paramArrayOfByte);
    }

    public final LocationProducerProto clear()
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

    public LocationProducerProto mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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

  public static final class LocationProvenanceProto extends MessageMicro
  {
    public static final int LOCATION_PROVENANCE_GWS_MOBILE_CLIENT = 6;
    public static final int LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_GLL_PARAM = 3;
    public static final int LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_NEAR_PARAM = 5;
    public static final int LOCATION_PROVENANCE_MAPS_FRONTEND_IL_DEBUG_IP = 4;
    public static final int LOCATION_PROVENANCE_MOBILE_FE = 2;
    public static final int LOCATION_PROVENANCE_TOOLBAR = 1;
    public static final int LOCATION_PROVENANCE_UNREMARKABLE = 0;
    public static final int LOCATION_PROVENANCE_XFF_HEADER = 7;
    private int cachedSize = -1;

    public static LocationProvenanceProto parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationProvenanceProto().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationProvenanceProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationProvenanceProto)new LocationProvenanceProto().mergeFrom(paramArrayOfByte);
    }

    public final LocationProvenanceProto clear()
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

    public LocationProvenanceProto mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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

  public static final class LocationRoleProto extends MessageMicro
  {
    public static final int LOCATION_ROLE_CURRENT_LOCATION = 1;
    public static final int LOCATION_ROLE_DEFAULT_LOCATION = 2;
    public static final int LOCATION_ROLE_HISTORICAL_LOCATION = 6;
    public static final int LOCATION_ROLE_HISTORICAL_QUERY = 5;
    public static final int LOCATION_ROLE_QUERY = 3;
    public static final int LOCATION_ROLE_UNKNOWN_ROLE = 0;
    public static final int LOCATION_ROLE_USER_SPECIFIED_FOR_REQUEST = 4;
    public static final int LOCATION_ROLE_VIEWPORT = 7;
    public static final int WILDCARD_ROLE = -1;
    private int cachedSize = -1;

    public static LocationRoleProto parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LocationRoleProto().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LocationRoleProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LocationRoleProto)new LocationRoleProto().mergeFrom(paramArrayOfByte);
    }

    public final LocationRoleProto clear()
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

    public LocationRoleProto mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     location.unified.LocationDescriptorProto
 * JD-Core Version:    0.6.2
 */