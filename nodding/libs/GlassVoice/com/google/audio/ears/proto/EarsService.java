package com.google.audio.ears.proto;

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

public final class EarsService
{
  public static final int EARS_RESULT_TYPE_FAMOUS_SPEECH = 2;
  public static final int EARS_RESULT_TYPE_HUMMING = 3;
  public static final int EARS_RESULT_TYPE_MUSIC = 0;
  public static final int EARS_RESULT_TYPE_TV = 1;

  public static final class EarsLookupRequest extends MessageMicro
  {
    public static final int CLIENT_COUNTRY_CODE_FIELD_NUMBER = 7;
    public static final int CLIENT_ID_FIELD_NUMBER = 9;
    public static final int CLIENT_LOCALE_FIELD_NUMBER = 4;
    public static final int CLIENT_NAME_FIELD_NUMBER = 5;
    public static final int CLIENT_VERSION_FIELD_NUMBER = 6;
    public static final int DEBUG_FIELD_NUMBER = 3;
    public static final int DESIRED_RESULT_TYPE_FIELD_NUMBER = 2;
    public static final int MAX_RESULTS_FIELD_NUMBER = 8;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private String clientCountryCode_ = "";
    private String clientId_ = "";
    private String clientLocale_ = "";
    private String clientName_ = "";
    private String clientVersion_ = "";
    private boolean debug_ = false;
    private List<Integer> desiredResultType_ = Collections.emptyList();
    private boolean hasClientCountryCode;
    private boolean hasClientId;
    private boolean hasClientLocale;
    private boolean hasClientName;
    private boolean hasClientVersion;
    private boolean hasDebug;
    private boolean hasMaxResults;
    private boolean hasSessionId;
    private int maxResults_ = 0;
    private String sessionId_ = "";

    public static EarsLookupRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EarsLookupRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EarsLookupRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EarsLookupRequest)new EarsLookupRequest().mergeFrom(paramArrayOfByte);
    }

    public EarsLookupRequest addDesiredResultType(int paramInt)
    {
      if (this.desiredResultType_.isEmpty())
        this.desiredResultType_ = new ArrayList();
      this.desiredResultType_.add(Integer.valueOf(paramInt));
      return this;
    }

    public final EarsLookupRequest clear()
    {
      clearSessionId();
      clearDesiredResultType();
      clearMaxResults();
      clearDebug();
      clearClientLocale();
      clearClientName();
      clearClientVersion();
      clearClientId();
      clearClientCountryCode();
      this.cachedSize = -1;
      return this;
    }

    public EarsLookupRequest clearClientCountryCode()
    {
      this.hasClientCountryCode = false;
      this.clientCountryCode_ = "";
      return this;
    }

    public EarsLookupRequest clearClientId()
    {
      this.hasClientId = false;
      this.clientId_ = "";
      return this;
    }

    public EarsLookupRequest clearClientLocale()
    {
      this.hasClientLocale = false;
      this.clientLocale_ = "";
      return this;
    }

    public EarsLookupRequest clearClientName()
    {
      this.hasClientName = false;
      this.clientName_ = "";
      return this;
    }

    public EarsLookupRequest clearClientVersion()
    {
      this.hasClientVersion = false;
      this.clientVersion_ = "";
      return this;
    }

    public EarsLookupRequest clearDebug()
    {
      this.hasDebug = false;
      this.debug_ = false;
      return this;
    }

    public EarsLookupRequest clearDesiredResultType()
    {
      this.desiredResultType_ = Collections.emptyList();
      return this;
    }

    public EarsLookupRequest clearMaxResults()
    {
      this.hasMaxResults = false;
      this.maxResults_ = 0;
      return this;
    }

    public EarsLookupRequest clearSessionId()
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

    public String getClientCountryCode()
    {
      return this.clientCountryCode_;
    }

    public String getClientId()
    {
      return this.clientId_;
    }

    public String getClientLocale()
    {
      return this.clientLocale_;
    }

    public String getClientName()
    {
      return this.clientName_;
    }

    public String getClientVersion()
    {
      return this.clientVersion_;
    }

    public boolean getDebug()
    {
      return this.debug_;
    }

    public int getDesiredResultType(int paramInt)
    {
      return ((Integer)this.desiredResultType_.get(paramInt)).intValue();
    }

    public int getDesiredResultTypeCount()
    {
      return this.desiredResultType_.size();
    }

    public List<Integer> getDesiredResultTypeList()
    {
      return this.desiredResultType_;
    }

    public int getMaxResults()
    {
      return this.maxResults_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSessionId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSessionId());
      int j = 0;
      Iterator localIterator = getDesiredResultTypeList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeInt32SizeNoTag(((Integer)localIterator.next()).intValue());
      int k = i + j + 1 * getDesiredResultTypeList().size();
      if (hasDebug())
        k += CodedOutputStreamMicro.computeBoolSize(3, getDebug());
      if (hasClientLocale())
        k += CodedOutputStreamMicro.computeStringSize(4, getClientLocale());
      if (hasClientName())
        k += CodedOutputStreamMicro.computeStringSize(5, getClientName());
      if (hasClientVersion())
        k += CodedOutputStreamMicro.computeStringSize(6, getClientVersion());
      if (hasClientCountryCode())
        k += CodedOutputStreamMicro.computeStringSize(7, getClientCountryCode());
      if (hasMaxResults())
        k += CodedOutputStreamMicro.computeInt32Size(8, getMaxResults());
      if (hasClientId())
        k += CodedOutputStreamMicro.computeStringSize(9, getClientId());
      this.cachedSize = k;
      return k;
    }

    public String getSessionId()
    {
      return this.sessionId_;
    }

    public boolean hasClientCountryCode()
    {
      return this.hasClientCountryCode;
    }

    public boolean hasClientId()
    {
      return this.hasClientId;
    }

    public boolean hasClientLocale()
    {
      return this.hasClientLocale;
    }

    public boolean hasClientName()
    {
      return this.hasClientName;
    }

    public boolean hasClientVersion()
    {
      return this.hasClientVersion;
    }

    public boolean hasDebug()
    {
      return this.hasDebug;
    }

    public boolean hasMaxResults()
    {
      return this.hasMaxResults;
    }

    public boolean hasSessionId()
    {
      return this.hasSessionId;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EarsLookupRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 16:
          addDesiredResultType(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setDebug(paramCodedInputStreamMicro.readBool());
          break;
        case 34:
          setClientLocale(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setClientName(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setClientVersion(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setClientCountryCode(paramCodedInputStreamMicro.readString());
          break;
        case 64:
          setMaxResults(paramCodedInputStreamMicro.readInt32());
          break;
        case 74:
        }
        setClientId(paramCodedInputStreamMicro.readString());
      }
    }

    public EarsLookupRequest setClientCountryCode(String paramString)
    {
      this.hasClientCountryCode = true;
      this.clientCountryCode_ = paramString;
      return this;
    }

    public EarsLookupRequest setClientId(String paramString)
    {
      this.hasClientId = true;
      this.clientId_ = paramString;
      return this;
    }

    public EarsLookupRequest setClientLocale(String paramString)
    {
      this.hasClientLocale = true;
      this.clientLocale_ = paramString;
      return this;
    }

    public EarsLookupRequest setClientName(String paramString)
    {
      this.hasClientName = true;
      this.clientName_ = paramString;
      return this;
    }

    public EarsLookupRequest setClientVersion(String paramString)
    {
      this.hasClientVersion = true;
      this.clientVersion_ = paramString;
      return this;
    }

    public EarsLookupRequest setDebug(boolean paramBoolean)
    {
      this.hasDebug = true;
      this.debug_ = paramBoolean;
      return this;
    }

    public EarsLookupRequest setDesiredResultType(int paramInt1, int paramInt2)
    {
      this.desiredResultType_.set(paramInt1, Integer.valueOf(paramInt2));
      return this;
    }

    public EarsLookupRequest setMaxResults(int paramInt)
    {
      this.hasMaxResults = true;
      this.maxResults_ = paramInt;
      return this;
    }

    public EarsLookupRequest setSessionId(String paramString)
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
      Iterator localIterator = getDesiredResultTypeList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeInt32(2, ((Integer)localIterator.next()).intValue());
      if (hasDebug())
        paramCodedOutputStreamMicro.writeBool(3, getDebug());
      if (hasClientLocale())
        paramCodedOutputStreamMicro.writeString(4, getClientLocale());
      if (hasClientName())
        paramCodedOutputStreamMicro.writeString(5, getClientName());
      if (hasClientVersion())
        paramCodedOutputStreamMicro.writeString(6, getClientVersion());
      if (hasClientCountryCode())
        paramCodedOutputStreamMicro.writeString(7, getClientCountryCode());
      if (hasMaxResults())
        paramCodedOutputStreamMicro.writeInt32(8, getMaxResults());
      if (hasClientId())
        paramCodedOutputStreamMicro.writeString(9, getClientId());
    }
  }

  public static final class EarsMessage extends MessageMicro
  {
    public static final int LOOKUP_REQUEST_FIELD_NUMBER = 1;
    public static final int MEDIA_PACKET_FIELD_NUMBER = 3;
    public static final int RESULTS_REQUEST_FIELD_NUMBER = 4;
    public static final int RESULTS_RESPONSE_FIELD_NUMBER = 5;
    public static final int STREAM_REQUEST_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLookupRequest;
    private boolean hasMediaPacket;
    private boolean hasResultsRequest;
    private boolean hasResultsResponse;
    private boolean hasStreamRequest;
    private EarsService.EarsLookupRequest lookupRequest_ = null;
    private EarsService.MediaPacket mediaPacket_ = null;
    private EarsService.EarsResultsRequest resultsRequest_ = null;
    private EarsService.EarsResultsResponse resultsResponse_ = null;
    private EarsService.EarsStreamRequest streamRequest_ = null;

    public static EarsMessage parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EarsMessage().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EarsMessage parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EarsMessage)new EarsMessage().mergeFrom(paramArrayOfByte);
    }

    public final EarsMessage clear()
    {
      clearLookupRequest();
      clearStreamRequest();
      clearMediaPacket();
      clearResultsRequest();
      clearResultsResponse();
      this.cachedSize = -1;
      return this;
    }

    public EarsMessage clearLookupRequest()
    {
      this.hasLookupRequest = false;
      this.lookupRequest_ = null;
      return this;
    }

    public EarsMessage clearMediaPacket()
    {
      this.hasMediaPacket = false;
      this.mediaPacket_ = null;
      return this;
    }

    public EarsMessage clearResultsRequest()
    {
      this.hasResultsRequest = false;
      this.resultsRequest_ = null;
      return this;
    }

    public EarsMessage clearResultsResponse()
    {
      this.hasResultsResponse = false;
      this.resultsResponse_ = null;
      return this;
    }

    public EarsMessage clearStreamRequest()
    {
      this.hasStreamRequest = false;
      this.streamRequest_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EarsService.EarsLookupRequest getLookupRequest()
    {
      return this.lookupRequest_;
    }

    public EarsService.MediaPacket getMediaPacket()
    {
      return this.mediaPacket_;
    }

    public EarsService.EarsResultsRequest getResultsRequest()
    {
      return this.resultsRequest_;
    }

    public EarsService.EarsResultsResponse getResultsResponse()
    {
      return this.resultsResponse_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLookupRequest();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getLookupRequest());
      if (hasStreamRequest())
        i += CodedOutputStreamMicro.computeMessageSize(2, getStreamRequest());
      if (hasMediaPacket())
        i += CodedOutputStreamMicro.computeMessageSize(3, getMediaPacket());
      if (hasResultsRequest())
        i += CodedOutputStreamMicro.computeMessageSize(4, getResultsRequest());
      if (hasResultsResponse())
        i += CodedOutputStreamMicro.computeMessageSize(5, getResultsResponse());
      this.cachedSize = i;
      return i;
    }

    public EarsService.EarsStreamRequest getStreamRequest()
    {
      return this.streamRequest_;
    }

    public boolean hasLookupRequest()
    {
      return this.hasLookupRequest;
    }

    public boolean hasMediaPacket()
    {
      return this.hasMediaPacket;
    }

    public boolean hasResultsRequest()
    {
      return this.hasResultsRequest;
    }

    public boolean hasResultsResponse()
    {
      return this.hasResultsResponse;
    }

    public boolean hasStreamRequest()
    {
      return this.hasStreamRequest;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EarsMessage mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EarsService.EarsLookupRequest localEarsLookupRequest = new EarsService.EarsLookupRequest();
          paramCodedInputStreamMicro.readMessage(localEarsLookupRequest);
          setLookupRequest(localEarsLookupRequest);
          break;
        case 18:
          EarsService.EarsStreamRequest localEarsStreamRequest = new EarsService.EarsStreamRequest();
          paramCodedInputStreamMicro.readMessage(localEarsStreamRequest);
          setStreamRequest(localEarsStreamRequest);
          break;
        case 26:
          EarsService.MediaPacket localMediaPacket = new EarsService.MediaPacket();
          paramCodedInputStreamMicro.readMessage(localMediaPacket);
          setMediaPacket(localMediaPacket);
          break;
        case 34:
          EarsService.EarsResultsRequest localEarsResultsRequest = new EarsService.EarsResultsRequest();
          paramCodedInputStreamMicro.readMessage(localEarsResultsRequest);
          setResultsRequest(localEarsResultsRequest);
          break;
        case 42:
        }
        EarsService.EarsResultsResponse localEarsResultsResponse = new EarsService.EarsResultsResponse();
        paramCodedInputStreamMicro.readMessage(localEarsResultsResponse);
        setResultsResponse(localEarsResultsResponse);
      }
    }

    public EarsMessage setLookupRequest(EarsService.EarsLookupRequest paramEarsLookupRequest)
    {
      if (paramEarsLookupRequest == null)
        throw new NullPointerException();
      this.hasLookupRequest = true;
      this.lookupRequest_ = paramEarsLookupRequest;
      return this;
    }

    public EarsMessage setMediaPacket(EarsService.MediaPacket paramMediaPacket)
    {
      if (paramMediaPacket == null)
        throw new NullPointerException();
      this.hasMediaPacket = true;
      this.mediaPacket_ = paramMediaPacket;
      return this;
    }

    public EarsMessage setResultsRequest(EarsService.EarsResultsRequest paramEarsResultsRequest)
    {
      if (paramEarsResultsRequest == null)
        throw new NullPointerException();
      this.hasResultsRequest = true;
      this.resultsRequest_ = paramEarsResultsRequest;
      return this;
    }

    public EarsMessage setResultsResponse(EarsService.EarsResultsResponse paramEarsResultsResponse)
    {
      if (paramEarsResultsResponse == null)
        throw new NullPointerException();
      this.hasResultsResponse = true;
      this.resultsResponse_ = paramEarsResultsResponse;
      return this;
    }

    public EarsMessage setStreamRequest(EarsService.EarsStreamRequest paramEarsStreamRequest)
    {
      if (paramEarsStreamRequest == null)
        throw new NullPointerException();
      this.hasStreamRequest = true;
      this.streamRequest_ = paramEarsStreamRequest;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLookupRequest())
        paramCodedOutputStreamMicro.writeMessage(1, getLookupRequest());
      if (hasStreamRequest())
        paramCodedOutputStreamMicro.writeMessage(2, getStreamRequest());
      if (hasMediaPacket())
        paramCodedOutputStreamMicro.writeMessage(3, getMediaPacket());
      if (hasResultsRequest())
        paramCodedOutputStreamMicro.writeMessage(4, getResultsRequest());
      if (hasResultsResponse())
        paramCodedOutputStreamMicro.writeMessage(5, getResultsResponse());
    }
  }

  public static final class EarsResult extends MessageMicro
  {
    public static final int CONFIDENCE_FIELD_NUMBER = 1;
    public static final int COUNTRY_FIELD_NUMBER = 10;
    public static final int DEBUG_FIELD_NUMBER = 2;
    public static final int ELAPSED_MS_FIELD_NUMBER = 5;
    public static final int FAMOUS_SPEECH_RESULT_FIELD_NUMBER = 9;
    public static final int MUSIC_RESULT_FIELD_NUMBER = 3;
    public static final int ORIGINAL_REFERENCE_ID_FIELD_NUMBER = 12;
    public static final int PROBE_RANGE_FIELD_NUMBER = 7;
    public static final int REFERENCE_ID_FIELD_NUMBER = 6;
    public static final int REF_RANGE_FIELD_NUMBER = 8;
    public static final int TTS_RESPONSE_FIELD_NUMBER = 11;
    public static final int TV_RESULT_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private float confidence_ = 0.0F;
    private List<String> country_ = Collections.emptyList();
    private String debug_ = "";
    private long elapsedMs_ = 0L;
    private EarsService.FamousSpeechResult famousSpeechResult_ = null;
    private boolean hasConfidence;
    private boolean hasDebug;
    private boolean hasElapsedMs;
    private boolean hasFamousSpeechResult;
    private boolean hasMusicResult;
    private boolean hasOriginalReferenceId;
    private boolean hasProbeRange;
    private boolean hasRefRange;
    private boolean hasReferenceId;
    private boolean hasTtsResponse;
    private boolean hasTvResult;
    private EarsService.MusicResult musicResult_ = null;
    private long originalReferenceId_ = 0L;
    private MatchRange probeRange_ = null;
    private MatchRange refRange_ = null;
    private long referenceId_ = 0L;
    private String ttsResponse_ = "";
    private EarsService.TvResult tvResult_ = null;

    public static EarsResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EarsResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EarsResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EarsResult)new EarsResult().mergeFrom(paramArrayOfByte);
    }

    public EarsResult addCountry(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.country_.isEmpty())
        this.country_ = new ArrayList();
      this.country_.add(paramString);
      return this;
    }

    public final EarsResult clear()
    {
      clearConfidence();
      clearDebug();
      clearElapsedMs();
      clearReferenceId();
      clearOriginalReferenceId();
      clearProbeRange();
      clearRefRange();
      clearCountry();
      clearTtsResponse();
      clearMusicResult();
      clearTvResult();
      clearFamousSpeechResult();
      this.cachedSize = -1;
      return this;
    }

    public EarsResult clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 0.0F;
      return this;
    }

    public EarsResult clearCountry()
    {
      this.country_ = Collections.emptyList();
      return this;
    }

    public EarsResult clearDebug()
    {
      this.hasDebug = false;
      this.debug_ = "";
      return this;
    }

    public EarsResult clearElapsedMs()
    {
      this.hasElapsedMs = false;
      this.elapsedMs_ = 0L;
      return this;
    }

    public EarsResult clearFamousSpeechResult()
    {
      this.hasFamousSpeechResult = false;
      this.famousSpeechResult_ = null;
      return this;
    }

    public EarsResult clearMusicResult()
    {
      this.hasMusicResult = false;
      this.musicResult_ = null;
      return this;
    }

    public EarsResult clearOriginalReferenceId()
    {
      this.hasOriginalReferenceId = false;
      this.originalReferenceId_ = 0L;
      return this;
    }

    public EarsResult clearProbeRange()
    {
      this.hasProbeRange = false;
      this.probeRange_ = null;
      return this;
    }

    public EarsResult clearRefRange()
    {
      this.hasRefRange = false;
      this.refRange_ = null;
      return this;
    }

    public EarsResult clearReferenceId()
    {
      this.hasReferenceId = false;
      this.referenceId_ = 0L;
      return this;
    }

    public EarsResult clearTtsResponse()
    {
      this.hasTtsResponse = false;
      this.ttsResponse_ = "";
      return this;
    }

    public EarsResult clearTvResult()
    {
      this.hasTvResult = false;
      this.tvResult_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public float getConfidence()
    {
      return this.confidence_;
    }

    public String getCountry(int paramInt)
    {
      return (String)this.country_.get(paramInt);
    }

    public int getCountryCount()
    {
      return this.country_.size();
    }

    public List<String> getCountryList()
    {
      return this.country_;
    }

    public String getDebug()
    {
      return this.debug_;
    }

    public long getElapsedMs()
    {
      return this.elapsedMs_;
    }

    public EarsService.FamousSpeechResult getFamousSpeechResult()
    {
      return this.famousSpeechResult_;
    }

    public EarsService.MusicResult getMusicResult()
    {
      return this.musicResult_;
    }

    public long getOriginalReferenceId()
    {
      return this.originalReferenceId_;
    }

    public MatchRange getProbeRange()
    {
      return this.probeRange_;
    }

    public MatchRange getRefRange()
    {
      return this.refRange_;
    }

    public long getReferenceId()
    {
      return this.referenceId_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasConfidence();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getConfidence());
      if (hasDebug())
        i += CodedOutputStreamMicro.computeStringSize(2, getDebug());
      if (hasMusicResult())
        i += CodedOutputStreamMicro.computeMessageSize(3, getMusicResult());
      if (hasTvResult())
        i += CodedOutputStreamMicro.computeMessageSize(4, getTvResult());
      if (hasElapsedMs())
        i += CodedOutputStreamMicro.computeInt64Size(5, getElapsedMs());
      if (hasReferenceId())
        i += CodedOutputStreamMicro.computeUInt64Size(6, getReferenceId());
      if (hasProbeRange())
        i += CodedOutputStreamMicro.computeMessageSize(7, getProbeRange());
      if (hasRefRange())
        i += CodedOutputStreamMicro.computeMessageSize(8, getRefRange());
      if (hasFamousSpeechResult())
        i += CodedOutputStreamMicro.computeMessageSize(9, getFamousSpeechResult());
      int j = 0;
      Iterator localIterator = getCountryList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getCountryList().size();
      if (hasTtsResponse())
        k += CodedOutputStreamMicro.computeStringSize(11, getTtsResponse());
      if (hasOriginalReferenceId())
        k += CodedOutputStreamMicro.computeUInt64Size(12, getOriginalReferenceId());
      this.cachedSize = k;
      return k;
    }

    public String getTtsResponse()
    {
      return this.ttsResponse_;
    }

    public EarsService.TvResult getTvResult()
    {
      return this.tvResult_;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasDebug()
    {
      return this.hasDebug;
    }

    public boolean hasElapsedMs()
    {
      return this.hasElapsedMs;
    }

    public boolean hasFamousSpeechResult()
    {
      return this.hasFamousSpeechResult;
    }

    public boolean hasMusicResult()
    {
      return this.hasMusicResult;
    }

    public boolean hasOriginalReferenceId()
    {
      return this.hasOriginalReferenceId;
    }

    public boolean hasProbeRange()
    {
      return this.hasProbeRange;
    }

    public boolean hasRefRange()
    {
      return this.hasRefRange;
    }

    public boolean hasReferenceId()
    {
      return this.hasReferenceId;
    }

    public boolean hasTtsResponse()
    {
      return this.hasTtsResponse;
    }

    public boolean hasTvResult()
    {
      return this.hasTvResult;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EarsResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 18:
          setDebug(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          EarsService.MusicResult localMusicResult = new EarsService.MusicResult();
          paramCodedInputStreamMicro.readMessage(localMusicResult);
          setMusicResult(localMusicResult);
          break;
        case 34:
          EarsService.TvResult localTvResult = new EarsService.TvResult();
          paramCodedInputStreamMicro.readMessage(localTvResult);
          setTvResult(localTvResult);
          break;
        case 40:
          setElapsedMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 48:
          setReferenceId(paramCodedInputStreamMicro.readUInt64());
          break;
        case 58:
          MatchRange localMatchRange2 = new MatchRange();
          paramCodedInputStreamMicro.readMessage(localMatchRange2);
          setProbeRange(localMatchRange2);
          break;
        case 66:
          MatchRange localMatchRange1 = new MatchRange();
          paramCodedInputStreamMicro.readMessage(localMatchRange1);
          setRefRange(localMatchRange1);
          break;
        case 74:
          EarsService.FamousSpeechResult localFamousSpeechResult = new EarsService.FamousSpeechResult();
          paramCodedInputStreamMicro.readMessage(localFamousSpeechResult);
          setFamousSpeechResult(localFamousSpeechResult);
          break;
        case 82:
          addCountry(paramCodedInputStreamMicro.readString());
          break;
        case 90:
          setTtsResponse(paramCodedInputStreamMicro.readString());
          break;
        case 96:
        }
        setOriginalReferenceId(paramCodedInputStreamMicro.readUInt64());
      }
    }

    public EarsResult setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public EarsResult setCountry(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.country_.set(paramInt, paramString);
      return this;
    }

    public EarsResult setDebug(String paramString)
    {
      this.hasDebug = true;
      this.debug_ = paramString;
      return this;
    }

    public EarsResult setElapsedMs(long paramLong)
    {
      this.hasElapsedMs = true;
      this.elapsedMs_ = paramLong;
      return this;
    }

    public EarsResult setFamousSpeechResult(EarsService.FamousSpeechResult paramFamousSpeechResult)
    {
      if (paramFamousSpeechResult == null)
        throw new NullPointerException();
      this.hasFamousSpeechResult = true;
      this.famousSpeechResult_ = paramFamousSpeechResult;
      return this;
    }

    public EarsResult setMusicResult(EarsService.MusicResult paramMusicResult)
    {
      if (paramMusicResult == null)
        throw new NullPointerException();
      this.hasMusicResult = true;
      this.musicResult_ = paramMusicResult;
      return this;
    }

    public EarsResult setOriginalReferenceId(long paramLong)
    {
      this.hasOriginalReferenceId = true;
      this.originalReferenceId_ = paramLong;
      return this;
    }

    public EarsResult setProbeRange(MatchRange paramMatchRange)
    {
      if (paramMatchRange == null)
        throw new NullPointerException();
      this.hasProbeRange = true;
      this.probeRange_ = paramMatchRange;
      return this;
    }

    public EarsResult setRefRange(MatchRange paramMatchRange)
    {
      if (paramMatchRange == null)
        throw new NullPointerException();
      this.hasRefRange = true;
      this.refRange_ = paramMatchRange;
      return this;
    }

    public EarsResult setReferenceId(long paramLong)
    {
      this.hasReferenceId = true;
      this.referenceId_ = paramLong;
      return this;
    }

    public EarsResult setTtsResponse(String paramString)
    {
      this.hasTtsResponse = true;
      this.ttsResponse_ = paramString;
      return this;
    }

    public EarsResult setTvResult(EarsService.TvResult paramTvResult)
    {
      if (paramTvResult == null)
        throw new NullPointerException();
      this.hasTvResult = true;
      this.tvResult_ = paramTvResult;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(1, getConfidence());
      if (hasDebug())
        paramCodedOutputStreamMicro.writeString(2, getDebug());
      if (hasMusicResult())
        paramCodedOutputStreamMicro.writeMessage(3, getMusicResult());
      if (hasTvResult())
        paramCodedOutputStreamMicro.writeMessage(4, getTvResult());
      if (hasElapsedMs())
        paramCodedOutputStreamMicro.writeInt64(5, getElapsedMs());
      if (hasReferenceId())
        paramCodedOutputStreamMicro.writeUInt64(6, getReferenceId());
      if (hasProbeRange())
        paramCodedOutputStreamMicro.writeMessage(7, getProbeRange());
      if (hasRefRange())
        paramCodedOutputStreamMicro.writeMessage(8, getRefRange());
      if (hasFamousSpeechResult())
        paramCodedOutputStreamMicro.writeMessage(9, getFamousSpeechResult());
      Iterator localIterator = getCountryList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(10, (String)localIterator.next());
      if (hasTtsResponse())
        paramCodedOutputStreamMicro.writeString(11, getTtsResponse());
      if (hasOriginalReferenceId())
        paramCodedOutputStreamMicro.writeUInt64(12, getOriginalReferenceId());
    }

    public static final class MatchRange extends MessageMicro
    {
      public static final int END_MS_FIELD_NUMBER = 2;
      public static final int START_MS_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private long endMs_ = 0L;
      private boolean hasEndMs;
      private boolean hasStartMs;
      private long startMs_ = 0L;

      public final MatchRange clear()
      {
        clearStartMs();
        clearEndMs();
        this.cachedSize = -1;
        return this;
      }

      public MatchRange clearEndMs()
      {
        this.hasEndMs = false;
        this.endMs_ = 0L;
        return this;
      }

      public MatchRange clearStartMs()
      {
        this.hasStartMs = false;
        this.startMs_ = 0L;
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public long getEndMs()
      {
        return this.endMs_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasStartMs();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeInt64Size(1, getStartMs());
        if (hasEndMs())
          i += CodedOutputStreamMicro.computeInt64Size(2, getEndMs());
        this.cachedSize = i;
        return i;
      }

      public long getStartMs()
      {
        return this.startMs_;
      }

      public boolean hasEndMs()
      {
        return this.hasEndMs;
      }

      public boolean hasStartMs()
      {
        return this.hasStartMs;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public MatchRange mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setStartMs(paramCodedInputStreamMicro.readInt64());
            break;
          case 16:
          }
          setEndMs(paramCodedInputStreamMicro.readInt64());
        }
      }

      public MatchRange parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new MatchRange().mergeFrom(paramCodedInputStreamMicro);
      }

      public MatchRange parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (MatchRange)new MatchRange().mergeFrom(paramArrayOfByte);
      }

      public MatchRange setEndMs(long paramLong)
      {
        this.hasEndMs = true;
        this.endMs_ = paramLong;
        return this;
      }

      public MatchRange setStartMs(long paramLong)
      {
        this.hasStartMs = true;
        this.startMs_ = paramLong;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasStartMs())
          paramCodedOutputStreamMicro.writeInt64(1, getStartMs());
        if (hasEndMs())
          paramCodedOutputStreamMicro.writeInt64(2, getEndMs());
      }
    }
  }

  public static final class EarsResultsRequest extends MessageMicro
  {
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasSessionId;
    private String sessionId_ = "";

    public static EarsResultsRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EarsResultsRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EarsResultsRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EarsResultsRequest)new EarsResultsRequest().mergeFrom(paramArrayOfByte);
    }

    public final EarsResultsRequest clear()
    {
      clearSessionId();
      this.cachedSize = -1;
      return this;
    }

    public EarsResultsRequest clearSessionId()
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

    public EarsResultsRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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

    public EarsResultsRequest setSessionId(String paramString)
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

  public static final class EarsResultsResponse extends MessageMicro
  {
    public static final int DETECTED_COUNTRY_CODE_FIELD_NUMBER = 3;
    public static final int RESULT_FIELD_NUMBER = 1;
    public static final int STATUS_CODE_COMPLETE = 1;
    public static final int STATUS_CODE_FAILURE = 2;
    public static final int STATUS_CODE_FIELD_NUMBER = 2;
    public static final int STATUS_CODE_IN_PROGRESS;
    private int cachedSize = -1;
    private String detectedCountryCode_ = "";
    private boolean hasDetectedCountryCode;
    private boolean hasStatusCode;
    private List<EarsService.EarsResult> result_ = Collections.emptyList();
    private int statusCode_ = 0;

    public static EarsResultsResponse parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EarsResultsResponse().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EarsResultsResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EarsResultsResponse)new EarsResultsResponse().mergeFrom(paramArrayOfByte);
    }

    public EarsResultsResponse addResult(EarsService.EarsResult paramEarsResult)
    {
      if (paramEarsResult == null)
        throw new NullPointerException();
      if (this.result_.isEmpty())
        this.result_ = new ArrayList();
      this.result_.add(paramEarsResult);
      return this;
    }

    public final EarsResultsResponse clear()
    {
      clearResult();
      clearStatusCode();
      clearDetectedCountryCode();
      this.cachedSize = -1;
      return this;
    }

    public EarsResultsResponse clearDetectedCountryCode()
    {
      this.hasDetectedCountryCode = false;
      this.detectedCountryCode_ = "";
      return this;
    }

    public EarsResultsResponse clearResult()
    {
      this.result_ = Collections.emptyList();
      return this;
    }

    public EarsResultsResponse clearStatusCode()
    {
      this.hasStatusCode = false;
      this.statusCode_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDetectedCountryCode()
    {
      return this.detectedCountryCode_;
    }

    public EarsService.EarsResult getResult(int paramInt)
    {
      return (EarsService.EarsResult)this.result_.get(paramInt);
    }

    public int getResultCount()
    {
      return this.result_.size();
    }

    public List<EarsService.EarsResult> getResultList()
    {
      return this.result_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getResultList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (EarsService.EarsResult)localIterator.next());
      if (hasStatusCode())
        i += CodedOutputStreamMicro.computeInt32Size(2, getStatusCode());
      if (hasDetectedCountryCode())
        i += CodedOutputStreamMicro.computeStringSize(3, getDetectedCountryCode());
      this.cachedSize = i;
      return i;
    }

    public int getStatusCode()
    {
      return this.statusCode_;
    }

    public boolean hasDetectedCountryCode()
    {
      return this.hasDetectedCountryCode;
    }

    public boolean hasStatusCode()
    {
      return this.hasStatusCode;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EarsResultsResponse mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          EarsService.EarsResult localEarsResult = new EarsService.EarsResult();
          paramCodedInputStreamMicro.readMessage(localEarsResult);
          addResult(localEarsResult);
          break;
        case 16:
          setStatusCode(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
        }
        setDetectedCountryCode(paramCodedInputStreamMicro.readString());
      }
    }

    public EarsResultsResponse setDetectedCountryCode(String paramString)
    {
      this.hasDetectedCountryCode = true;
      this.detectedCountryCode_ = paramString;
      return this;
    }

    public EarsResultsResponse setResult(int paramInt, EarsService.EarsResult paramEarsResult)
    {
      if (paramEarsResult == null)
        throw new NullPointerException();
      this.result_.set(paramInt, paramEarsResult);
      return this;
    }

    public EarsResultsResponse setStatusCode(int paramInt)
    {
      this.hasStatusCode = true;
      this.statusCode_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getResultList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (EarsService.EarsResult)localIterator.next());
      if (hasStatusCode())
        paramCodedOutputStreamMicro.writeInt32(2, getStatusCode());
      if (hasDetectedCountryCode())
        paramCodedOutputStreamMicro.writeString(3, getDetectedCountryCode());
    }
  }

  public static final class EarsStreamRequest extends MessageMicro
  {
    public static final int AUDIO_CONTAINER_ADTS = 4;
    public static final int AUDIO_CONTAINER_FIELD_NUMBER = 1;
    public static final int AUDIO_CONTAINER_OGG = 1;
    public static final int AUDIO_CONTAINER_PROTO = 3;
    public static final int AUDIO_CONTAINER_THREEGP = 2;
    public static final int AUDIO_CONTAINER_WAV = 0;
    public static final int AUDIO_ENCODING_AAC = 4;
    public static final int AUDIO_ENCODING_AMR = 2;
    public static final int AUDIO_ENCODING_FIELD_NUMBER = 2;
    public static final int AUDIO_ENCODING_FINGERPRINT = 3;
    public static final int AUDIO_ENCODING_PCM = 0;
    public static final int AUDIO_ENCODING_VORBIS = 1;
    private int audioContainer_ = 0;
    private int audioEncoding_ = 0;
    private int cachedSize = -1;
    private boolean hasAudioContainer;
    private boolean hasAudioEncoding;

    public static EarsStreamRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EarsStreamRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EarsStreamRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EarsStreamRequest)new EarsStreamRequest().mergeFrom(paramArrayOfByte);
    }

    public final EarsStreamRequest clear()
    {
      clearAudioContainer();
      clearAudioEncoding();
      this.cachedSize = -1;
      return this;
    }

    public EarsStreamRequest clearAudioContainer()
    {
      this.hasAudioContainer = false;
      this.audioContainer_ = 0;
      return this;
    }

    public EarsStreamRequest clearAudioEncoding()
    {
      this.hasAudioEncoding = false;
      this.audioEncoding_ = 0;
      return this;
    }

    public int getAudioContainer()
    {
      return this.audioContainer_;
    }

    public int getAudioEncoding()
    {
      return this.audioEncoding_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAudioContainer();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getAudioContainer());
      if (hasAudioEncoding())
        i += CodedOutputStreamMicro.computeInt32Size(2, getAudioEncoding());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAudioContainer()
    {
      return this.hasAudioContainer;
    }

    public boolean hasAudioEncoding()
    {
      return this.hasAudioEncoding;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EarsStreamRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAudioContainer(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        setAudioEncoding(paramCodedInputStreamMicro.readInt32());
      }
    }

    public EarsStreamRequest setAudioContainer(int paramInt)
    {
      this.hasAudioContainer = true;
      this.audioContainer_ = paramInt;
      return this;
    }

    public EarsStreamRequest setAudioEncoding(int paramInt)
    {
      this.hasAudioEncoding = true;
      this.audioEncoding_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAudioContainer())
        paramCodedOutputStreamMicro.writeInt32(1, getAudioContainer());
      if (hasAudioEncoding())
        paramCodedOutputStreamMicro.writeInt32(2, getAudioEncoding());
    }
  }

  public static final class FamousSpeechResult extends MessageMicro
  {
    public static final int SPEAKER_NAME_FIELD_NUMBER = 1;
    public static final int SPEECH_TITLE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasSpeakerName;
    private boolean hasSpeechTitle;
    private String speakerName_ = "";
    private String speechTitle_ = "";

    public static FamousSpeechResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new FamousSpeechResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static FamousSpeechResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (FamousSpeechResult)new FamousSpeechResult().mergeFrom(paramArrayOfByte);
    }

    public final FamousSpeechResult clear()
    {
      clearSpeakerName();
      clearSpeechTitle();
      this.cachedSize = -1;
      return this;
    }

    public FamousSpeechResult clearSpeakerName()
    {
      this.hasSpeakerName = false;
      this.speakerName_ = "";
      return this;
    }

    public FamousSpeechResult clearSpeechTitle()
    {
      this.hasSpeechTitle = false;
      this.speechTitle_ = "";
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
      boolean bool = hasSpeakerName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSpeakerName());
      if (hasSpeechTitle())
        i += CodedOutputStreamMicro.computeStringSize(2, getSpeechTitle());
      this.cachedSize = i;
      return i;
    }

    public String getSpeakerName()
    {
      return this.speakerName_;
    }

    public String getSpeechTitle()
    {
      return this.speechTitle_;
    }

    public boolean hasSpeakerName()
    {
      return this.hasSpeakerName;
    }

    public boolean hasSpeechTitle()
    {
      return this.hasSpeechTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public FamousSpeechResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSpeakerName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setSpeechTitle(paramCodedInputStreamMicro.readString());
      }
    }

    public FamousSpeechResult setSpeakerName(String paramString)
    {
      this.hasSpeakerName = true;
      this.speakerName_ = paramString;
      return this;
    }

    public FamousSpeechResult setSpeechTitle(String paramString)
    {
      this.hasSpeechTitle = true;
      this.speechTitle_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSpeakerName())
        paramCodedOutputStreamMicro.writeString(1, getSpeakerName());
      if (hasSpeechTitle())
        paramCodedOutputStreamMicro.writeString(2, getSpeechTitle());
    }
  }

  public static final class MediaPacket extends MessageMicro
  {
    public static final int DATA_FIELD_NUMBER = 1;
    public static final int IS_LAST_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private ByteStringMicro data_ = ByteStringMicro.EMPTY;
    private boolean hasData;
    private boolean hasIsLast;
    private boolean isLast_ = false;

    public static MediaPacket parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MediaPacket().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MediaPacket parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MediaPacket)new MediaPacket().mergeFrom(paramArrayOfByte);
    }

    public final MediaPacket clear()
    {
      clearData();
      clearIsLast();
      this.cachedSize = -1;
      return this;
    }

    public MediaPacket clearData()
    {
      this.hasData = false;
      this.data_ = ByteStringMicro.EMPTY;
      return this;
    }

    public MediaPacket clearIsLast()
    {
      this.hasIsLast = false;
      this.isLast_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public ByteStringMicro getData()
    {
      return this.data_;
    }

    public boolean getIsLast()
    {
      return this.isLast_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasData();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBytesSize(1, getData());
      if (hasIsLast())
        i += CodedOutputStreamMicro.computeBoolSize(2, getIsLast());
      this.cachedSize = i;
      return i;
    }

    public boolean hasData()
    {
      return this.hasData;
    }

    public boolean hasIsLast()
    {
      return this.hasIsLast;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MediaPacket mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setData(paramCodedInputStreamMicro.readBytes());
          break;
        case 16:
        }
        setIsLast(paramCodedInputStreamMicro.readBool());
      }
    }

    public MediaPacket setData(ByteStringMicro paramByteStringMicro)
    {
      this.hasData = true;
      this.data_ = paramByteStringMicro;
      return this;
    }

    public MediaPacket setIsLast(boolean paramBoolean)
    {
      this.hasIsLast = true;
      this.isLast_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasData())
        paramCodedOutputStreamMicro.writeBytes(1, getData());
      if (hasIsLast())
        paramCodedOutputStreamMicro.writeBool(2, getIsLast());
    }
  }

  public static final class MusicResult extends MessageMicro
  {
    public static final int ALBUM_ART_FIELD_NUMBER = 7;
    public static final int ALBUM_ART_URL_FIELD_NUMBER = 9;
    public static final int ALBUM_FIELD_NUMBER = 3;
    public static final int ARTIST_FIELD_NUMBER = 1;
    public static final int ARTIST_ID_FIELD_NUMBER = 12;
    public static final int ISRC_FIELD_NUMBER = 4;
    public static final int IS_EXPLICIT_FIELD_NUMBER = 14;
    public static final int LABEL_CODE_FIELD_NUMBER = 8;
    public static final int OFFER_FIELD_NUMBER = 6;
    public static final int POPULARITY_SCORE_FIELD_NUMBER = 10;
    public static final int PRERELEASE_FIELD_NUMBER = 13;
    public static final int SIGNED_IN_ALBUM_ART_URL_FIELD_NUMBER = 11;
    public static final int TRACK_FIELD_NUMBER = 2;
    public static final int VIDEO_FIELD_NUMBER = 5;
    private String albumArtUrl_ = "";
    private ByteStringMicro albumArt_ = ByteStringMicro.EMPTY;
    private String album_ = "";
    private String artistId_ = "";
    private String artist_ = "";
    private int cachedSize = -1;
    private boolean hasAlbum;
    private boolean hasAlbumArt;
    private boolean hasAlbumArtUrl;
    private boolean hasArtist;
    private boolean hasArtistId;
    private boolean hasIsExplicit;
    private boolean hasIsrc;
    private boolean hasLabelCode;
    private boolean hasPopularityScore;
    private boolean hasPrerelease;
    private boolean hasSignedInAlbumArtUrl;
    private boolean hasTrack;
    private boolean isExplicit_ = false;
    private String isrc_ = "";
    private String labelCode_ = "";
    private List<EarsService.ProductOffer> offer_ = Collections.emptyList();
    private double popularityScore_ = 0.0D;
    private boolean prerelease_ = false;
    private String signedInAlbumArtUrl_ = "";
    private String track_ = "";
    private List<EarsService.YouTubeVideo> video_ = Collections.emptyList();

    public static MusicResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new MusicResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static MusicResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (MusicResult)new MusicResult().mergeFrom(paramArrayOfByte);
    }

    public MusicResult addOffer(EarsService.ProductOffer paramProductOffer)
    {
      if (paramProductOffer == null)
        throw new NullPointerException();
      if (this.offer_.isEmpty())
        this.offer_ = new ArrayList();
      this.offer_.add(paramProductOffer);
      return this;
    }

    public MusicResult addVideo(EarsService.YouTubeVideo paramYouTubeVideo)
    {
      if (paramYouTubeVideo == null)
        throw new NullPointerException();
      if (this.video_.isEmpty())
        this.video_ = new ArrayList();
      this.video_.add(paramYouTubeVideo);
      return this;
    }

    public final MusicResult clear()
    {
      clearArtist();
      clearArtistId();
      clearTrack();
      clearAlbum();
      clearIsExplicit();
      clearIsrc();
      clearLabelCode();
      clearVideo();
      clearOffer();
      clearAlbumArt();
      clearAlbumArtUrl();
      clearSignedInAlbumArtUrl();
      clearPopularityScore();
      clearPrerelease();
      this.cachedSize = -1;
      return this;
    }

    public MusicResult clearAlbum()
    {
      this.hasAlbum = false;
      this.album_ = "";
      return this;
    }

    public MusicResult clearAlbumArt()
    {
      this.hasAlbumArt = false;
      this.albumArt_ = ByteStringMicro.EMPTY;
      return this;
    }

    public MusicResult clearAlbumArtUrl()
    {
      this.hasAlbumArtUrl = false;
      this.albumArtUrl_ = "";
      return this;
    }

    public MusicResult clearArtist()
    {
      this.hasArtist = false;
      this.artist_ = "";
      return this;
    }

    public MusicResult clearArtistId()
    {
      this.hasArtistId = false;
      this.artistId_ = "";
      return this;
    }

    public MusicResult clearIsExplicit()
    {
      this.hasIsExplicit = false;
      this.isExplicit_ = false;
      return this;
    }

    public MusicResult clearIsrc()
    {
      this.hasIsrc = false;
      this.isrc_ = "";
      return this;
    }

    public MusicResult clearLabelCode()
    {
      this.hasLabelCode = false;
      this.labelCode_ = "";
      return this;
    }

    public MusicResult clearOffer()
    {
      this.offer_ = Collections.emptyList();
      return this;
    }

    public MusicResult clearPopularityScore()
    {
      this.hasPopularityScore = false;
      this.popularityScore_ = 0.0D;
      return this;
    }

    public MusicResult clearPrerelease()
    {
      this.hasPrerelease = false;
      this.prerelease_ = false;
      return this;
    }

    public MusicResult clearSignedInAlbumArtUrl()
    {
      this.hasSignedInAlbumArtUrl = false;
      this.signedInAlbumArtUrl_ = "";
      return this;
    }

    public MusicResult clearTrack()
    {
      this.hasTrack = false;
      this.track_ = "";
      return this;
    }

    public MusicResult clearVideo()
    {
      this.video_ = Collections.emptyList();
      return this;
    }

    public String getAlbum()
    {
      return this.album_;
    }

    public ByteStringMicro getAlbumArt()
    {
      return this.albumArt_;
    }

    public String getAlbumArtUrl()
    {
      return this.albumArtUrl_;
    }

    public String getArtist()
    {
      return this.artist_;
    }

    public String getArtistId()
    {
      return this.artistId_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public boolean getIsExplicit()
    {
      return this.isExplicit_;
    }

    public String getIsrc()
    {
      return this.isrc_;
    }

    public String getLabelCode()
    {
      return this.labelCode_;
    }

    public EarsService.ProductOffer getOffer(int paramInt)
    {
      return (EarsService.ProductOffer)this.offer_.get(paramInt);
    }

    public int getOfferCount()
    {
      return this.offer_.size();
    }

    public List<EarsService.ProductOffer> getOfferList()
    {
      return this.offer_;
    }

    public double getPopularityScore()
    {
      return this.popularityScore_;
    }

    public boolean getPrerelease()
    {
      return this.prerelease_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasArtist();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getArtist());
      if (hasTrack())
        i += CodedOutputStreamMicro.computeStringSize(2, getTrack());
      if (hasAlbum())
        i += CodedOutputStreamMicro.computeStringSize(3, getAlbum());
      if (hasIsrc())
        i += CodedOutputStreamMicro.computeStringSize(4, getIsrc());
      Iterator localIterator1 = getVideoList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (EarsService.YouTubeVideo)localIterator1.next());
      Iterator localIterator2 = getOfferList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(6, (EarsService.ProductOffer)localIterator2.next());
      if (hasAlbumArt())
        i += CodedOutputStreamMicro.computeBytesSize(7, getAlbumArt());
      if (hasLabelCode())
        i += CodedOutputStreamMicro.computeStringSize(8, getLabelCode());
      if (hasAlbumArtUrl())
        i += CodedOutputStreamMicro.computeStringSize(9, getAlbumArtUrl());
      if (hasPopularityScore())
        i += CodedOutputStreamMicro.computeDoubleSize(10, getPopularityScore());
      if (hasSignedInAlbumArtUrl())
        i += CodedOutputStreamMicro.computeStringSize(11, getSignedInAlbumArtUrl());
      if (hasArtistId())
        i += CodedOutputStreamMicro.computeStringSize(12, getArtistId());
      if (hasPrerelease())
        i += CodedOutputStreamMicro.computeBoolSize(13, getPrerelease());
      if (hasIsExplicit())
        i += CodedOutputStreamMicro.computeBoolSize(14, getIsExplicit());
      this.cachedSize = i;
      return i;
    }

    public String getSignedInAlbumArtUrl()
    {
      return this.signedInAlbumArtUrl_;
    }

    public String getTrack()
    {
      return this.track_;
    }

    public EarsService.YouTubeVideo getVideo(int paramInt)
    {
      return (EarsService.YouTubeVideo)this.video_.get(paramInt);
    }

    public int getVideoCount()
    {
      return this.video_.size();
    }

    public List<EarsService.YouTubeVideo> getVideoList()
    {
      return this.video_;
    }

    public boolean hasAlbum()
    {
      return this.hasAlbum;
    }

    public boolean hasAlbumArt()
    {
      return this.hasAlbumArt;
    }

    public boolean hasAlbumArtUrl()
    {
      return this.hasAlbumArtUrl;
    }

    public boolean hasArtist()
    {
      return this.hasArtist;
    }

    public boolean hasArtistId()
    {
      return this.hasArtistId;
    }

    public boolean hasIsExplicit()
    {
      return this.hasIsExplicit;
    }

    public boolean hasIsrc()
    {
      return this.hasIsrc;
    }

    public boolean hasLabelCode()
    {
      return this.hasLabelCode;
    }

    public boolean hasPopularityScore()
    {
      return this.hasPopularityScore;
    }

    public boolean hasPrerelease()
    {
      return this.hasPrerelease;
    }

    public boolean hasSignedInAlbumArtUrl()
    {
      return this.hasSignedInAlbumArtUrl;
    }

    public boolean hasTrack()
    {
      return this.hasTrack;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public MusicResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setArtist(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setTrack(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setAlbum(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setIsrc(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          EarsService.YouTubeVideo localYouTubeVideo = new EarsService.YouTubeVideo();
          paramCodedInputStreamMicro.readMessage(localYouTubeVideo);
          addVideo(localYouTubeVideo);
          break;
        case 50:
          EarsService.ProductOffer localProductOffer = new EarsService.ProductOffer();
          paramCodedInputStreamMicro.readMessage(localProductOffer);
          addOffer(localProductOffer);
          break;
        case 58:
          setAlbumArt(paramCodedInputStreamMicro.readBytes());
          break;
        case 66:
          setLabelCode(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setAlbumArtUrl(paramCodedInputStreamMicro.readString());
          break;
        case 81:
          setPopularityScore(paramCodedInputStreamMicro.readDouble());
          break;
        case 90:
          setSignedInAlbumArtUrl(paramCodedInputStreamMicro.readString());
          break;
        case 98:
          setArtistId(paramCodedInputStreamMicro.readString());
          break;
        case 104:
          setPrerelease(paramCodedInputStreamMicro.readBool());
          break;
        case 112:
        }
        setIsExplicit(paramCodedInputStreamMicro.readBool());
      }
    }

    public MusicResult setAlbum(String paramString)
    {
      this.hasAlbum = true;
      this.album_ = paramString;
      return this;
    }

    public MusicResult setAlbumArt(ByteStringMicro paramByteStringMicro)
    {
      this.hasAlbumArt = true;
      this.albumArt_ = paramByteStringMicro;
      return this;
    }

    public MusicResult setAlbumArtUrl(String paramString)
    {
      this.hasAlbumArtUrl = true;
      this.albumArtUrl_ = paramString;
      return this;
    }

    public MusicResult setArtist(String paramString)
    {
      this.hasArtist = true;
      this.artist_ = paramString;
      return this;
    }

    public MusicResult setArtistId(String paramString)
    {
      this.hasArtistId = true;
      this.artistId_ = paramString;
      return this;
    }

    public MusicResult setIsExplicit(boolean paramBoolean)
    {
      this.hasIsExplicit = true;
      this.isExplicit_ = paramBoolean;
      return this;
    }

    public MusicResult setIsrc(String paramString)
    {
      this.hasIsrc = true;
      this.isrc_ = paramString;
      return this;
    }

    public MusicResult setLabelCode(String paramString)
    {
      this.hasLabelCode = true;
      this.labelCode_ = paramString;
      return this;
    }

    public MusicResult setOffer(int paramInt, EarsService.ProductOffer paramProductOffer)
    {
      if (paramProductOffer == null)
        throw new NullPointerException();
      this.offer_.set(paramInt, paramProductOffer);
      return this;
    }

    public MusicResult setPopularityScore(double paramDouble)
    {
      this.hasPopularityScore = true;
      this.popularityScore_ = paramDouble;
      return this;
    }

    public MusicResult setPrerelease(boolean paramBoolean)
    {
      this.hasPrerelease = true;
      this.prerelease_ = paramBoolean;
      return this;
    }

    public MusicResult setSignedInAlbumArtUrl(String paramString)
    {
      this.hasSignedInAlbumArtUrl = true;
      this.signedInAlbumArtUrl_ = paramString;
      return this;
    }

    public MusicResult setTrack(String paramString)
    {
      this.hasTrack = true;
      this.track_ = paramString;
      return this;
    }

    public MusicResult setVideo(int paramInt, EarsService.YouTubeVideo paramYouTubeVideo)
    {
      if (paramYouTubeVideo == null)
        throw new NullPointerException();
      this.video_.set(paramInt, paramYouTubeVideo);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasArtist())
        paramCodedOutputStreamMicro.writeString(1, getArtist());
      if (hasTrack())
        paramCodedOutputStreamMicro.writeString(2, getTrack());
      if (hasAlbum())
        paramCodedOutputStreamMicro.writeString(3, getAlbum());
      if (hasIsrc())
        paramCodedOutputStreamMicro.writeString(4, getIsrc());
      Iterator localIterator1 = getVideoList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (EarsService.YouTubeVideo)localIterator1.next());
      Iterator localIterator2 = getOfferList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(6, (EarsService.ProductOffer)localIterator2.next());
      if (hasAlbumArt())
        paramCodedOutputStreamMicro.writeBytes(7, getAlbumArt());
      if (hasLabelCode())
        paramCodedOutputStreamMicro.writeString(8, getLabelCode());
      if (hasAlbumArtUrl())
        paramCodedOutputStreamMicro.writeString(9, getAlbumArtUrl());
      if (hasPopularityScore())
        paramCodedOutputStreamMicro.writeDouble(10, getPopularityScore());
      if (hasSignedInAlbumArtUrl())
        paramCodedOutputStreamMicro.writeString(11, getSignedInAlbumArtUrl());
      if (hasArtistId())
        paramCodedOutputStreamMicro.writeString(12, getArtistId());
      if (hasPrerelease())
        paramCodedOutputStreamMicro.writeBool(13, getPrerelease());
      if (hasIsExplicit())
        paramCodedOutputStreamMicro.writeBool(14, getIsExplicit());
    }
  }

  public static final class ProductOffer extends MessageMicro
  {
    public static final int IDENTIFIER_FIELD_NUMBER = 2;
    public static final int PARENT_IDENTIFIER_FIELD_NUMBER = 3;
    public static final int PARENT_PRICING_INFO_FIELD_NUMBER = 6;
    public static final int PREVIEW_URL_FIELD_NUMBER = 7;
    public static final int PRICING_INFO_FIELD_NUMBER = 4;
    public static final int URL_FIELD_NUMBER = 5;
    public static final int VENDOR_FIELD_NUMBER = 1;
    public static final int VENDOR_ID_AMAZON = 0;
    public static final int VENDOR_ID_GOOGLE_MUSIC = 2;
    public static final int VENDOR_ID_ITUNES = 1;
    private int cachedSize = -1;
    private boolean hasIdentifier;
    private boolean hasParentIdentifier;
    private boolean hasPreviewUrl;
    private boolean hasUrl;
    private boolean hasVendor;
    private String identifier_ = "";
    private String parentIdentifier_ = "";
    private List<PricingInfo> parentPricingInfo_ = Collections.emptyList();
    private String previewUrl_ = "";
    private List<PricingInfo> pricingInfo_ = Collections.emptyList();
    private String url_ = "";
    private int vendor_ = 0;

    public static ProductOffer parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ProductOffer().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ProductOffer parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ProductOffer)new ProductOffer().mergeFrom(paramArrayOfByte);
    }

    public ProductOffer addParentPricingInfo(PricingInfo paramPricingInfo)
    {
      if (paramPricingInfo == null)
        throw new NullPointerException();
      if (this.parentPricingInfo_.isEmpty())
        this.parentPricingInfo_ = new ArrayList();
      this.parentPricingInfo_.add(paramPricingInfo);
      return this;
    }

    public ProductOffer addPricingInfo(PricingInfo paramPricingInfo)
    {
      if (paramPricingInfo == null)
        throw new NullPointerException();
      if (this.pricingInfo_.isEmpty())
        this.pricingInfo_ = new ArrayList();
      this.pricingInfo_.add(paramPricingInfo);
      return this;
    }

    public final ProductOffer clear()
    {
      clearVendor();
      clearIdentifier();
      clearParentIdentifier();
      clearPricingInfo();
      clearParentPricingInfo();
      clearUrl();
      clearPreviewUrl();
      this.cachedSize = -1;
      return this;
    }

    public ProductOffer clearIdentifier()
    {
      this.hasIdentifier = false;
      this.identifier_ = "";
      return this;
    }

    public ProductOffer clearParentIdentifier()
    {
      this.hasParentIdentifier = false;
      this.parentIdentifier_ = "";
      return this;
    }

    public ProductOffer clearParentPricingInfo()
    {
      this.parentPricingInfo_ = Collections.emptyList();
      return this;
    }

    public ProductOffer clearPreviewUrl()
    {
      this.hasPreviewUrl = false;
      this.previewUrl_ = "";
      return this;
    }

    public ProductOffer clearPricingInfo()
    {
      this.pricingInfo_ = Collections.emptyList();
      return this;
    }

    public ProductOffer clearUrl()
    {
      this.hasUrl = false;
      this.url_ = "";
      return this;
    }

    public ProductOffer clearVendor()
    {
      this.hasVendor = false;
      this.vendor_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getIdentifier()
    {
      return this.identifier_;
    }

    public String getParentIdentifier()
    {
      return this.parentIdentifier_;
    }

    public PricingInfo getParentPricingInfo(int paramInt)
    {
      return (PricingInfo)this.parentPricingInfo_.get(paramInt);
    }

    public int getParentPricingInfoCount()
    {
      return this.parentPricingInfo_.size();
    }

    public List<PricingInfo> getParentPricingInfoList()
    {
      return this.parentPricingInfo_;
    }

    public String getPreviewUrl()
    {
      return this.previewUrl_;
    }

    public PricingInfo getPricingInfo(int paramInt)
    {
      return (PricingInfo)this.pricingInfo_.get(paramInt);
    }

    public int getPricingInfoCount()
    {
      return this.pricingInfo_.size();
    }

    public List<PricingInfo> getPricingInfoList()
    {
      return this.pricingInfo_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasVendor();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getVendor());
      if (hasIdentifier())
        i += CodedOutputStreamMicro.computeStringSize(2, getIdentifier());
      if (hasParentIdentifier())
        i += CodedOutputStreamMicro.computeStringSize(3, getParentIdentifier());
      Iterator localIterator1 = getPricingInfoList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (PricingInfo)localIterator1.next());
      if (hasUrl())
        i += CodedOutputStreamMicro.computeStringSize(5, getUrl());
      Iterator localIterator2 = getParentPricingInfoList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(6, (PricingInfo)localIterator2.next());
      if (hasPreviewUrl())
        i += CodedOutputStreamMicro.computeStringSize(7, getPreviewUrl());
      this.cachedSize = i;
      return i;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public int getVendor()
    {
      return this.vendor_;
    }

    public boolean hasIdentifier()
    {
      return this.hasIdentifier;
    }

    public boolean hasParentIdentifier()
    {
      return this.hasParentIdentifier;
    }

    public boolean hasPreviewUrl()
    {
      return this.hasPreviewUrl;
    }

    public boolean hasUrl()
    {
      return this.hasUrl;
    }

    public boolean hasVendor()
    {
      return this.hasVendor;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ProductOffer mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setVendor(paramCodedInputStreamMicro.readInt32());
          break;
        case 18:
          setIdentifier(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setParentIdentifier(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          PricingInfo localPricingInfo2 = new PricingInfo();
          paramCodedInputStreamMicro.readMessage(localPricingInfo2);
          addPricingInfo(localPricingInfo2);
          break;
        case 42:
          setUrl(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          PricingInfo localPricingInfo1 = new PricingInfo();
          paramCodedInputStreamMicro.readMessage(localPricingInfo1);
          addParentPricingInfo(localPricingInfo1);
          break;
        case 58:
        }
        setPreviewUrl(paramCodedInputStreamMicro.readString());
      }
    }

    public ProductOffer setIdentifier(String paramString)
    {
      this.hasIdentifier = true;
      this.identifier_ = paramString;
      return this;
    }

    public ProductOffer setParentIdentifier(String paramString)
    {
      this.hasParentIdentifier = true;
      this.parentIdentifier_ = paramString;
      return this;
    }

    public ProductOffer setParentPricingInfo(int paramInt, PricingInfo paramPricingInfo)
    {
      if (paramPricingInfo == null)
        throw new NullPointerException();
      this.parentPricingInfo_.set(paramInt, paramPricingInfo);
      return this;
    }

    public ProductOffer setPreviewUrl(String paramString)
    {
      this.hasPreviewUrl = true;
      this.previewUrl_ = paramString;
      return this;
    }

    public ProductOffer setPricingInfo(int paramInt, PricingInfo paramPricingInfo)
    {
      if (paramPricingInfo == null)
        throw new NullPointerException();
      this.pricingInfo_.set(paramInt, paramPricingInfo);
      return this;
    }

    public ProductOffer setUrl(String paramString)
    {
      this.hasUrl = true;
      this.url_ = paramString;
      return this;
    }

    public ProductOffer setVendor(int paramInt)
    {
      this.hasVendor = true;
      this.vendor_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasVendor())
        paramCodedOutputStreamMicro.writeInt32(1, getVendor());
      if (hasIdentifier())
        paramCodedOutputStreamMicro.writeString(2, getIdentifier());
      if (hasParentIdentifier())
        paramCodedOutputStreamMicro.writeString(3, getParentIdentifier());
      Iterator localIterator1 = getPricingInfoList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (PricingInfo)localIterator1.next());
      if (hasUrl())
        paramCodedOutputStreamMicro.writeString(5, getUrl());
      Iterator localIterator2 = getParentPricingInfoList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(6, (PricingInfo)localIterator2.next());
      if (hasPreviewUrl())
        paramCodedOutputStreamMicro.writeString(7, getPreviewUrl());
    }

    public static final class PricingInfo extends MessageMicro
    {
      public static final int COUNTRY_FIELD_NUMBER = 2;
      public static final int CURRENCY_CODE_FIELD_NUMBER = 4;
      public static final int PRICE_FIELD_NUMBER = 1;
      public static final int PRICE_MICROS_FIELD_NUMBER = 3;
      private int cachedSize = -1;
      private List<String> country_ = Collections.emptyList();
      private String currencyCode_ = "";
      private boolean hasCurrencyCode;
      private boolean hasPrice;
      private boolean hasPriceMicros;
      private long priceMicros_ = 0L;
      private String price_ = "";

      public PricingInfo addCountry(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        if (this.country_.isEmpty())
          this.country_ = new ArrayList();
        this.country_.add(paramString);
        return this;
      }

      public final PricingInfo clear()
      {
        clearPrice();
        clearCountry();
        clearPriceMicros();
        clearCurrencyCode();
        this.cachedSize = -1;
        return this;
      }

      public PricingInfo clearCountry()
      {
        this.country_ = Collections.emptyList();
        return this;
      }

      public PricingInfo clearCurrencyCode()
      {
        this.hasCurrencyCode = false;
        this.currencyCode_ = "";
        return this;
      }

      public PricingInfo clearPrice()
      {
        this.hasPrice = false;
        this.price_ = "";
        return this;
      }

      public PricingInfo clearPriceMicros()
      {
        this.hasPriceMicros = false;
        this.priceMicros_ = 0L;
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getCountry(int paramInt)
      {
        return (String)this.country_.get(paramInt);
      }

      public int getCountryCount()
      {
        return this.country_.size();
      }

      public List<String> getCountryList()
      {
        return this.country_;
      }

      public String getCurrencyCode()
      {
        return this.currencyCode_;
      }

      public String getPrice()
      {
        return this.price_;
      }

      public long getPriceMicros()
      {
        return this.priceMicros_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasPrice();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPrice());
        int j = 0;
        Iterator localIterator = getCountryList().iterator();
        while (localIterator.hasNext())
          j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
        int k = i + j + 1 * getCountryList().size();
        if (hasPriceMicros())
          k += CodedOutputStreamMicro.computeInt64Size(3, getPriceMicros());
        if (hasCurrencyCode())
          k += CodedOutputStreamMicro.computeStringSize(4, getCurrencyCode());
        this.cachedSize = k;
        return k;
      }

      public boolean hasCurrencyCode()
      {
        return this.hasCurrencyCode;
      }

      public boolean hasPrice()
      {
        return this.hasPrice;
      }

      public boolean hasPriceMicros()
      {
        return this.hasPriceMicros;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public PricingInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setPrice(paramCodedInputStreamMicro.readString());
            break;
          case 18:
            addCountry(paramCodedInputStreamMicro.readString());
            break;
          case 24:
            setPriceMicros(paramCodedInputStreamMicro.readInt64());
            break;
          case 34:
          }
          setCurrencyCode(paramCodedInputStreamMicro.readString());
        }
      }

      public PricingInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new PricingInfo().mergeFrom(paramCodedInputStreamMicro);
      }

      public PricingInfo parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (PricingInfo)new PricingInfo().mergeFrom(paramArrayOfByte);
      }

      public PricingInfo setCountry(int paramInt, String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.country_.set(paramInt, paramString);
        return this;
      }

      public PricingInfo setCurrencyCode(String paramString)
      {
        this.hasCurrencyCode = true;
        this.currencyCode_ = paramString;
        return this;
      }

      public PricingInfo setPrice(String paramString)
      {
        this.hasPrice = true;
        this.price_ = paramString;
        return this;
      }

      public PricingInfo setPriceMicros(long paramLong)
      {
        this.hasPriceMicros = true;
        this.priceMicros_ = paramLong;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasPrice())
          paramCodedOutputStreamMicro.writeString(1, getPrice());
        Iterator localIterator = getCountryList().iterator();
        while (localIterator.hasNext())
          paramCodedOutputStreamMicro.writeString(2, (String)localIterator.next());
        if (hasPriceMicros())
          paramCodedOutputStreamMicro.writeInt64(3, getPriceMicros());
        if (hasCurrencyCode())
          paramCodedOutputStreamMicro.writeString(4, getCurrencyCode());
      }
    }
  }

  public static final class TvResult extends MessageMicro
  {
    public static final int CACHED_SCREENSHOT_FIELD_NUMBER = 9;
    public static final int CHANNEL_ID_FIELD_NUMBER = 1;
    public static final int CHANNEL_LOGO_URL_FIELD_NUMBER = 3;
    public static final int CHANNEL_NAME_FIELD_NUMBER = 2;
    public static final int PROGRAM_END_MS_FIELD_NUMBER = 8;
    public static final int PROGRAM_ID_FIELD_NUMBER = 11;
    public static final int PROGRAM_IMAGE_URL_FIELD_NUMBER = 5;
    public static final int PROGRAM_SECONDARY_TITLE_FIELD_NUMBER = 10;
    public static final int PROGRAM_START_MS_FIELD_NUMBER = 7;
    public static final int PROGRAM_SYNOPSIS_FIELD_NUMBER = 6;
    public static final int PROGRAM_TITLE_FIELD_NUMBER = 4;
    private ByteStringMicro cachedScreenshot_ = ByteStringMicro.EMPTY;
    private int cachedSize = -1;
    private String channelId_ = "";
    private String channelLogoUrl_ = "";
    private String channelName_ = "";
    private boolean hasCachedScreenshot;
    private boolean hasChannelId;
    private boolean hasChannelLogoUrl;
    private boolean hasChannelName;
    private boolean hasProgramEndMs;
    private boolean hasProgramId;
    private boolean hasProgramImageUrl;
    private boolean hasProgramSecondaryTitle;
    private boolean hasProgramStartMs;
    private boolean hasProgramSynopsis;
    private boolean hasProgramTitle;
    private long programEndMs_ = 0L;
    private String programId_ = "";
    private String programImageUrl_ = "";
    private String programSecondaryTitle_ = "";
    private long programStartMs_ = 0L;
    private String programSynopsis_ = "";
    private String programTitle_ = "";

    public static TvResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TvResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TvResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TvResult)new TvResult().mergeFrom(paramArrayOfByte);
    }

    public final TvResult clear()
    {
      clearChannelId();
      clearChannelName();
      clearChannelLogoUrl();
      clearProgramId();
      clearProgramTitle();
      clearProgramSecondaryTitle();
      clearProgramImageUrl();
      clearProgramSynopsis();
      clearProgramStartMs();
      clearProgramEndMs();
      clearCachedScreenshot();
      this.cachedSize = -1;
      return this;
    }

    public TvResult clearCachedScreenshot()
    {
      this.hasCachedScreenshot = false;
      this.cachedScreenshot_ = ByteStringMicro.EMPTY;
      return this;
    }

    public TvResult clearChannelId()
    {
      this.hasChannelId = false;
      this.channelId_ = "";
      return this;
    }

    public TvResult clearChannelLogoUrl()
    {
      this.hasChannelLogoUrl = false;
      this.channelLogoUrl_ = "";
      return this;
    }

    public TvResult clearChannelName()
    {
      this.hasChannelName = false;
      this.channelName_ = "";
      return this;
    }

    public TvResult clearProgramEndMs()
    {
      this.hasProgramEndMs = false;
      this.programEndMs_ = 0L;
      return this;
    }

    public TvResult clearProgramId()
    {
      this.hasProgramId = false;
      this.programId_ = "";
      return this;
    }

    public TvResult clearProgramImageUrl()
    {
      this.hasProgramImageUrl = false;
      this.programImageUrl_ = "";
      return this;
    }

    public TvResult clearProgramSecondaryTitle()
    {
      this.hasProgramSecondaryTitle = false;
      this.programSecondaryTitle_ = "";
      return this;
    }

    public TvResult clearProgramStartMs()
    {
      this.hasProgramStartMs = false;
      this.programStartMs_ = 0L;
      return this;
    }

    public TvResult clearProgramSynopsis()
    {
      this.hasProgramSynopsis = false;
      this.programSynopsis_ = "";
      return this;
    }

    public TvResult clearProgramTitle()
    {
      this.hasProgramTitle = false;
      this.programTitle_ = "";
      return this;
    }

    public ByteStringMicro getCachedScreenshot()
    {
      return this.cachedScreenshot_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getChannelId()
    {
      return this.channelId_;
    }

    public String getChannelLogoUrl()
    {
      return this.channelLogoUrl_;
    }

    public String getChannelName()
    {
      return this.channelName_;
    }

    public long getProgramEndMs()
    {
      return this.programEndMs_;
    }

    public String getProgramId()
    {
      return this.programId_;
    }

    public String getProgramImageUrl()
    {
      return this.programImageUrl_;
    }

    public String getProgramSecondaryTitle()
    {
      return this.programSecondaryTitle_;
    }

    public long getProgramStartMs()
    {
      return this.programStartMs_;
    }

    public String getProgramSynopsis()
    {
      return this.programSynopsis_;
    }

    public String getProgramTitle()
    {
      return this.programTitle_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasChannelId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getChannelId());
      if (hasChannelName())
        i += CodedOutputStreamMicro.computeStringSize(2, getChannelName());
      if (hasChannelLogoUrl())
        i += CodedOutputStreamMicro.computeStringSize(3, getChannelLogoUrl());
      if (hasProgramTitle())
        i += CodedOutputStreamMicro.computeStringSize(4, getProgramTitle());
      if (hasProgramImageUrl())
        i += CodedOutputStreamMicro.computeStringSize(5, getProgramImageUrl());
      if (hasProgramSynopsis())
        i += CodedOutputStreamMicro.computeStringSize(6, getProgramSynopsis());
      if (hasProgramStartMs())
        i += CodedOutputStreamMicro.computeInt64Size(7, getProgramStartMs());
      if (hasProgramEndMs())
        i += CodedOutputStreamMicro.computeInt64Size(8, getProgramEndMs());
      if (hasCachedScreenshot())
        i += CodedOutputStreamMicro.computeBytesSize(9, getCachedScreenshot());
      if (hasProgramSecondaryTitle())
        i += CodedOutputStreamMicro.computeStringSize(10, getProgramSecondaryTitle());
      if (hasProgramId())
        i += CodedOutputStreamMicro.computeStringSize(11, getProgramId());
      this.cachedSize = i;
      return i;
    }

    public boolean hasCachedScreenshot()
    {
      return this.hasCachedScreenshot;
    }

    public boolean hasChannelId()
    {
      return this.hasChannelId;
    }

    public boolean hasChannelLogoUrl()
    {
      return this.hasChannelLogoUrl;
    }

    public boolean hasChannelName()
    {
      return this.hasChannelName;
    }

    public boolean hasProgramEndMs()
    {
      return this.hasProgramEndMs;
    }

    public boolean hasProgramId()
    {
      return this.hasProgramId;
    }

    public boolean hasProgramImageUrl()
    {
      return this.hasProgramImageUrl;
    }

    public boolean hasProgramSecondaryTitle()
    {
      return this.hasProgramSecondaryTitle;
    }

    public boolean hasProgramStartMs()
    {
      return this.hasProgramStartMs;
    }

    public boolean hasProgramSynopsis()
    {
      return this.hasProgramSynopsis;
    }

    public boolean hasProgramTitle()
    {
      return this.hasProgramTitle;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TvResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setChannelId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setChannelName(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setChannelLogoUrl(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setProgramTitle(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          setProgramImageUrl(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setProgramSynopsis(paramCodedInputStreamMicro.readString());
          break;
        case 56:
          setProgramStartMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 64:
          setProgramEndMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 74:
          setCachedScreenshot(paramCodedInputStreamMicro.readBytes());
          break;
        case 82:
          setProgramSecondaryTitle(paramCodedInputStreamMicro.readString());
          break;
        case 90:
        }
        setProgramId(paramCodedInputStreamMicro.readString());
      }
    }

    public TvResult setCachedScreenshot(ByteStringMicro paramByteStringMicro)
    {
      this.hasCachedScreenshot = true;
      this.cachedScreenshot_ = paramByteStringMicro;
      return this;
    }

    public TvResult setChannelId(String paramString)
    {
      this.hasChannelId = true;
      this.channelId_ = paramString;
      return this;
    }

    public TvResult setChannelLogoUrl(String paramString)
    {
      this.hasChannelLogoUrl = true;
      this.channelLogoUrl_ = paramString;
      return this;
    }

    public TvResult setChannelName(String paramString)
    {
      this.hasChannelName = true;
      this.channelName_ = paramString;
      return this;
    }

    public TvResult setProgramEndMs(long paramLong)
    {
      this.hasProgramEndMs = true;
      this.programEndMs_ = paramLong;
      return this;
    }

    public TvResult setProgramId(String paramString)
    {
      this.hasProgramId = true;
      this.programId_ = paramString;
      return this;
    }

    public TvResult setProgramImageUrl(String paramString)
    {
      this.hasProgramImageUrl = true;
      this.programImageUrl_ = paramString;
      return this;
    }

    public TvResult setProgramSecondaryTitle(String paramString)
    {
      this.hasProgramSecondaryTitle = true;
      this.programSecondaryTitle_ = paramString;
      return this;
    }

    public TvResult setProgramStartMs(long paramLong)
    {
      this.hasProgramStartMs = true;
      this.programStartMs_ = paramLong;
      return this;
    }

    public TvResult setProgramSynopsis(String paramString)
    {
      this.hasProgramSynopsis = true;
      this.programSynopsis_ = paramString;
      return this;
    }

    public TvResult setProgramTitle(String paramString)
    {
      this.hasProgramTitle = true;
      this.programTitle_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasChannelId())
        paramCodedOutputStreamMicro.writeString(1, getChannelId());
      if (hasChannelName())
        paramCodedOutputStreamMicro.writeString(2, getChannelName());
      if (hasChannelLogoUrl())
        paramCodedOutputStreamMicro.writeString(3, getChannelLogoUrl());
      if (hasProgramTitle())
        paramCodedOutputStreamMicro.writeString(4, getProgramTitle());
      if (hasProgramImageUrl())
        paramCodedOutputStreamMicro.writeString(5, getProgramImageUrl());
      if (hasProgramSynopsis())
        paramCodedOutputStreamMicro.writeString(6, getProgramSynopsis());
      if (hasProgramStartMs())
        paramCodedOutputStreamMicro.writeInt64(7, getProgramStartMs());
      if (hasProgramEndMs())
        paramCodedOutputStreamMicro.writeInt64(8, getProgramEndMs());
      if (hasCachedScreenshot())
        paramCodedOutputStreamMicro.writeBytes(9, getCachedScreenshot());
      if (hasProgramSecondaryTitle())
        paramCodedOutputStreamMicro.writeString(10, getProgramSecondaryTitle());
      if (hasProgramId())
        paramCodedOutputStreamMicro.writeString(11, getProgramId());
    }
  }

  public static final class YouTubeVideo extends MessageMicro
  {
    public static final int ALLOWED_COUNTRY_FIELD_NUMBER = 7;
    public static final int BLOCKED_COUNTRY_FIELD_NUMBER = 6;
    public static final int DURATION_FIELD_NUMBER = 4;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int THUMBNAIL_FIELD_NUMBER = 5;
    public static final int TITLE_FIELD_NUMBER = 3;
    public static final int WATCH_URL_FIELD_NUMBER = 2;
    private List<String> allowedCountry_ = Collections.emptyList();
    private List<String> blockedCountry_ = Collections.emptyList();
    private int cachedSize = -1;
    private int duration_ = 0;
    private boolean hasDuration;
    private boolean hasId;
    private boolean hasTitle;
    private boolean hasWatchUrl;
    private String id_ = "";
    private List<VideoThumbnail> thumbnail_ = Collections.emptyList();
    private String title_ = "";
    private String watchUrl_ = "";

    public static YouTubeVideo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new YouTubeVideo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static YouTubeVideo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (YouTubeVideo)new YouTubeVideo().mergeFrom(paramArrayOfByte);
    }

    public YouTubeVideo addAllowedCountry(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.allowedCountry_.isEmpty())
        this.allowedCountry_ = new ArrayList();
      this.allowedCountry_.add(paramString);
      return this;
    }

    public YouTubeVideo addBlockedCountry(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.blockedCountry_.isEmpty())
        this.blockedCountry_ = new ArrayList();
      this.blockedCountry_.add(paramString);
      return this;
    }

    public YouTubeVideo addThumbnail(VideoThumbnail paramVideoThumbnail)
    {
      if (paramVideoThumbnail == null)
        throw new NullPointerException();
      if (this.thumbnail_.isEmpty())
        this.thumbnail_ = new ArrayList();
      this.thumbnail_.add(paramVideoThumbnail);
      return this;
    }

    public final YouTubeVideo clear()
    {
      clearId();
      clearWatchUrl();
      clearTitle();
      clearDuration();
      clearThumbnail();
      clearBlockedCountry();
      clearAllowedCountry();
      this.cachedSize = -1;
      return this;
    }

    public YouTubeVideo clearAllowedCountry()
    {
      this.allowedCountry_ = Collections.emptyList();
      return this;
    }

    public YouTubeVideo clearBlockedCountry()
    {
      this.blockedCountry_ = Collections.emptyList();
      return this;
    }

    public YouTubeVideo clearDuration()
    {
      this.hasDuration = false;
      this.duration_ = 0;
      return this;
    }

    public YouTubeVideo clearId()
    {
      this.hasId = false;
      this.id_ = "";
      return this;
    }

    public YouTubeVideo clearThumbnail()
    {
      this.thumbnail_ = Collections.emptyList();
      return this;
    }

    public YouTubeVideo clearTitle()
    {
      this.hasTitle = false;
      this.title_ = "";
      return this;
    }

    public YouTubeVideo clearWatchUrl()
    {
      this.hasWatchUrl = false;
      this.watchUrl_ = "";
      return this;
    }

    public String getAllowedCountry(int paramInt)
    {
      return (String)this.allowedCountry_.get(paramInt);
    }

    public int getAllowedCountryCount()
    {
      return this.allowedCountry_.size();
    }

    public List<String> getAllowedCountryList()
    {
      return this.allowedCountry_;
    }

    public String getBlockedCountry(int paramInt)
    {
      return (String)this.blockedCountry_.get(paramInt);
    }

    public int getBlockedCountryCount()
    {
      return this.blockedCountry_.size();
    }

    public List<String> getBlockedCountryList()
    {
      return this.blockedCountry_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDuration()
    {
      return this.duration_;
    }

    public String getId()
    {
      return this.id_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getId());
      if (hasWatchUrl())
        i += CodedOutputStreamMicro.computeStringSize(2, getWatchUrl());
      if (hasTitle())
        i += CodedOutputStreamMicro.computeStringSize(3, getTitle());
      if (hasDuration())
        i += CodedOutputStreamMicro.computeInt32Size(4, getDuration());
      Iterator localIterator1 = getThumbnailList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (VideoThumbnail)localIterator1.next());
      int j = 0;
      Iterator localIterator2 = getBlockedCountryList().iterator();
      while (localIterator2.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator2.next());
      int k = i + j + 1 * getBlockedCountryList().size();
      int m = 0;
      Iterator localIterator3 = getAllowedCountryList().iterator();
      while (localIterator3.hasNext())
        m += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator3.next());
      int n = k + m + 1 * getAllowedCountryList().size();
      this.cachedSize = n;
      return n;
    }

    public VideoThumbnail getThumbnail(int paramInt)
    {
      return (VideoThumbnail)this.thumbnail_.get(paramInt);
    }

    public int getThumbnailCount()
    {
      return this.thumbnail_.size();
    }

    public List<VideoThumbnail> getThumbnailList()
    {
      return this.thumbnail_;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public String getWatchUrl()
    {
      return this.watchUrl_;
    }

    public boolean hasDuration()
    {
      return this.hasDuration;
    }

    public boolean hasId()
    {
      return this.hasId;
    }

    public boolean hasTitle()
    {
      return this.hasTitle;
    }

    public boolean hasWatchUrl()
    {
      return this.hasWatchUrl;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public YouTubeVideo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setWatchUrl(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setTitle(paramCodedInputStreamMicro.readString());
          break;
        case 32:
          setDuration(paramCodedInputStreamMicro.readInt32());
          break;
        case 42:
          VideoThumbnail localVideoThumbnail = new VideoThumbnail();
          paramCodedInputStreamMicro.readMessage(localVideoThumbnail);
          addThumbnail(localVideoThumbnail);
          break;
        case 50:
          addBlockedCountry(paramCodedInputStreamMicro.readString());
          break;
        case 58:
        }
        addAllowedCountry(paramCodedInputStreamMicro.readString());
      }
    }

    public YouTubeVideo setAllowedCountry(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.allowedCountry_.set(paramInt, paramString);
      return this;
    }

    public YouTubeVideo setBlockedCountry(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.blockedCountry_.set(paramInt, paramString);
      return this;
    }

    public YouTubeVideo setDuration(int paramInt)
    {
      this.hasDuration = true;
      this.duration_ = paramInt;
      return this;
    }

    public YouTubeVideo setId(String paramString)
    {
      this.hasId = true;
      this.id_ = paramString;
      return this;
    }

    public YouTubeVideo setThumbnail(int paramInt, VideoThumbnail paramVideoThumbnail)
    {
      if (paramVideoThumbnail == null)
        throw new NullPointerException();
      this.thumbnail_.set(paramInt, paramVideoThumbnail);
      return this;
    }

    public YouTubeVideo setTitle(String paramString)
    {
      this.hasTitle = true;
      this.title_ = paramString;
      return this;
    }

    public YouTubeVideo setWatchUrl(String paramString)
    {
      this.hasWatchUrl = true;
      this.watchUrl_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasId())
        paramCodedOutputStreamMicro.writeString(1, getId());
      if (hasWatchUrl())
        paramCodedOutputStreamMicro.writeString(2, getWatchUrl());
      if (hasTitle())
        paramCodedOutputStreamMicro.writeString(3, getTitle());
      if (hasDuration())
        paramCodedOutputStreamMicro.writeInt32(4, getDuration());
      Iterator localIterator1 = getThumbnailList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (VideoThumbnail)localIterator1.next());
      Iterator localIterator2 = getBlockedCountryList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeString(6, (String)localIterator2.next());
      Iterator localIterator3 = getAllowedCountryList().iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStreamMicro.writeString(7, (String)localIterator3.next());
    }

    public static final class VideoThumbnail extends MessageMicro
    {
      public static final int HEIGHT_FIELD_NUMBER = 3;
      public static final int URL_FIELD_NUMBER = 1;
      public static final int WIDTH_FIELD_NUMBER = 2;
      private int cachedSize = -1;
      private boolean hasHeight;
      private boolean hasUrl;
      private boolean hasWidth;
      private int height_ = 0;
      private String url_ = "";
      private int width_ = 0;

      public final VideoThumbnail clear()
      {
        clearUrl();
        clearWidth();
        clearHeight();
        this.cachedSize = -1;
        return this;
      }

      public VideoThumbnail clearHeight()
      {
        this.hasHeight = false;
        this.height_ = 0;
        return this;
      }

      public VideoThumbnail clearUrl()
      {
        this.hasUrl = false;
        this.url_ = "";
        return this;
      }

      public VideoThumbnail clearWidth()
      {
        this.hasWidth = false;
        this.width_ = 0;
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
        boolean bool = hasUrl();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUrl());
        if (hasWidth())
          i += CodedOutputStreamMicro.computeInt32Size(2, getWidth());
        if (hasHeight())
          i += CodedOutputStreamMicro.computeInt32Size(3, getHeight());
        this.cachedSize = i;
        return i;
      }

      public String getUrl()
      {
        return this.url_;
      }

      public int getWidth()
      {
        return this.width_;
      }

      public boolean hasHeight()
      {
        return this.hasHeight;
      }

      public boolean hasUrl()
      {
        return this.hasUrl;
      }

      public boolean hasWidth()
      {
        return this.hasWidth;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public VideoThumbnail mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setUrl(paramCodedInputStreamMicro.readString());
            break;
          case 16:
            setWidth(paramCodedInputStreamMicro.readInt32());
            break;
          case 24:
          }
          setHeight(paramCodedInputStreamMicro.readInt32());
        }
      }

      public VideoThumbnail parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new VideoThumbnail().mergeFrom(paramCodedInputStreamMicro);
      }

      public VideoThumbnail parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (VideoThumbnail)new VideoThumbnail().mergeFrom(paramArrayOfByte);
      }

      public VideoThumbnail setHeight(int paramInt)
      {
        this.hasHeight = true;
        this.height_ = paramInt;
        return this;
      }

      public VideoThumbnail setUrl(String paramString)
      {
        this.hasUrl = true;
        this.url_ = paramString;
        return this;
      }

      public VideoThumbnail setWidth(int paramInt)
      {
        this.hasWidth = true;
        this.width_ = paramInt;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasUrl())
          paramCodedOutputStreamMicro.writeString(1, getUrl());
        if (hasWidth())
          paramCodedOutputStreamMicro.writeInt32(2, getWidth());
        if (hasHeight())
          paramCodedOutputStreamMicro.writeInt32(3, getHeight());
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.audio.ears.proto.EarsService
 * JD-Core Version:    0.6.2
 */