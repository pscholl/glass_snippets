package com.google.speech.s3;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class PinholeStream
{
  public static final class PinholeCgiParam extends MessageMicro
  {
    public static final int KEY_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasKey;
    private boolean hasValue;
    private String key_ = "";
    private String value_ = "";

    public static PinholeCgiParam parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PinholeCgiParam().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PinholeCgiParam parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PinholeCgiParam)new PinholeCgiParam().mergeFrom(paramArrayOfByte);
    }

    public final PinholeCgiParam clear()
    {
      clearKey();
      clearValue();
      this.cachedSize = -1;
      return this;
    }

    public PinholeCgiParam clearKey()
    {
      this.hasKey = false;
      this.key_ = "";
      return this;
    }

    public PinholeCgiParam clearValue()
    {
      this.hasValue = false;
      this.value_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getKey()
    {
      return this.key_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasKey();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getKey());
      if (hasValue())
        i += CodedOutputStreamMicro.computeStringSize(2, getValue());
      this.cachedSize = i;
      return i;
    }

    public String getValue()
    {
      return this.value_;
    }

    public boolean hasKey()
    {
      return this.hasKey;
    }

    public boolean hasValue()
    {
      return this.hasValue;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PinholeCgiParam mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setKey(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setValue(paramCodedInputStreamMicro.readString());
      }
    }

    public PinholeCgiParam setKey(String paramString)
    {
      this.hasKey = true;
      this.key_ = paramString;
      return this;
    }

    public PinholeCgiParam setValue(String paramString)
    {
      this.hasValue = true;
      this.value_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasKey())
        paramCodedOutputStreamMicro.writeString(1, getKey());
      if (hasValue())
        paramCodedOutputStreamMicro.writeString(2, getValue());
    }
  }

  public static final class PinholeHeader extends MessageMicro
  {
    public static final int KEY_FIELD_NUMBER = 1;
    public static final int OVERWRITE_FIELD_NUMBER = 3;
    public static final int OVERWRITE_MODE_APPEND = 1;
    public static final int OVERWRITE_MODE_NO_OVERWRITE = 0;
    public static final int OVERWRITE_MODE_OVERWRITE = 2;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasKey;
    private boolean hasOverwrite;
    private boolean hasValue;
    private String key_ = "";
    private int overwrite_ = 0;
    private String value_ = "";

    public static PinholeHeader parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PinholeHeader().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PinholeHeader parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PinholeHeader)new PinholeHeader().mergeFrom(paramArrayOfByte);
    }

    public final PinholeHeader clear()
    {
      clearKey();
      clearValue();
      clearOverwrite();
      this.cachedSize = -1;
      return this;
    }

    public PinholeHeader clearKey()
    {
      this.hasKey = false;
      this.key_ = "";
      return this;
    }

    public PinholeHeader clearOverwrite()
    {
      this.hasOverwrite = false;
      this.overwrite_ = 0;
      return this;
    }

    public PinholeHeader clearValue()
    {
      this.hasValue = false;
      this.value_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getKey()
    {
      return this.key_;
    }

    public int getOverwrite()
    {
      return this.overwrite_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasKey();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getKey());
      if (hasValue())
        i += CodedOutputStreamMicro.computeStringSize(2, getValue());
      if (hasOverwrite())
        i += CodedOutputStreamMicro.computeInt32Size(3, getOverwrite());
      this.cachedSize = i;
      return i;
    }

    public String getValue()
    {
      return this.value_;
    }

    public boolean hasKey()
    {
      return this.hasKey;
    }

    public boolean hasOverwrite()
    {
      return this.hasOverwrite;
    }

    public boolean hasValue()
    {
      return this.hasValue;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PinholeHeader mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setKey(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setValue(paramCodedInputStreamMicro.readString());
          break;
        case 24:
        }
        setOverwrite(paramCodedInputStreamMicro.readInt32());
      }
    }

    public PinholeHeader setKey(String paramString)
    {
      this.hasKey = true;
      this.key_ = paramString;
      return this;
    }

    public PinholeHeader setOverwrite(int paramInt)
    {
      this.hasOverwrite = true;
      this.overwrite_ = paramInt;
      return this;
    }

    public PinholeHeader setValue(String paramString)
    {
      this.hasValue = true;
      this.value_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasKey())
        paramCodedOutputStreamMicro.writeString(1, getKey());
      if (hasValue())
        paramCodedOutputStreamMicro.writeString(2, getValue());
      if (hasOverwrite())
        paramCodedOutputStreamMicro.writeInt32(3, getOverwrite());
    }
  }

  public static final class PinholeOutput extends MessageMicro
  {
    public static final int GWS_BODY_FRAGMENT_FIELD_NUMBER = 3;
    public static final int GWS_HEADER_COMPLETE_FIELD_NUMBER = 2;
    public static final int GWS_HEADER_FRAGMENT_FIELD_NUMBER = 1;
    public static final int GWS_RESPONSE_COMPLETE_FIELD_NUMBER = 4;
    private int cachedSize = -1;
    private String gwsBodyFragment_ = "";
    private boolean gwsHeaderComplete_ = false;
    private String gwsHeaderFragment_ = "";
    private boolean gwsResponseComplete_ = false;
    private boolean hasGwsBodyFragment;
    private boolean hasGwsHeaderComplete;
    private boolean hasGwsHeaderFragment;
    private boolean hasGwsResponseComplete;

    public static PinholeOutput parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PinholeOutput().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PinholeOutput parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PinholeOutput)new PinholeOutput().mergeFrom(paramArrayOfByte);
    }

    public final PinholeOutput clear()
    {
      clearGwsHeaderFragment();
      clearGwsHeaderComplete();
      clearGwsBodyFragment();
      clearGwsResponseComplete();
      this.cachedSize = -1;
      return this;
    }

    public PinholeOutput clearGwsBodyFragment()
    {
      this.hasGwsBodyFragment = false;
      this.gwsBodyFragment_ = "";
      return this;
    }

    public PinholeOutput clearGwsHeaderComplete()
    {
      this.hasGwsHeaderComplete = false;
      this.gwsHeaderComplete_ = false;
      return this;
    }

    public PinholeOutput clearGwsHeaderFragment()
    {
      this.hasGwsHeaderFragment = false;
      this.gwsHeaderFragment_ = "";
      return this;
    }

    public PinholeOutput clearGwsResponseComplete()
    {
      this.hasGwsResponseComplete = false;
      this.gwsResponseComplete_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getGwsBodyFragment()
    {
      return this.gwsBodyFragment_;
    }

    public boolean getGwsHeaderComplete()
    {
      return this.gwsHeaderComplete_;
    }

    public String getGwsHeaderFragment()
    {
      return this.gwsHeaderFragment_;
    }

    public boolean getGwsResponseComplete()
    {
      return this.gwsResponseComplete_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasGwsHeaderFragment();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getGwsHeaderFragment());
      if (hasGwsHeaderComplete())
        i += CodedOutputStreamMicro.computeBoolSize(2, getGwsHeaderComplete());
      if (hasGwsBodyFragment())
        i += CodedOutputStreamMicro.computeStringSize(3, getGwsBodyFragment());
      if (hasGwsResponseComplete())
        i += CodedOutputStreamMicro.computeBoolSize(4, getGwsResponseComplete());
      this.cachedSize = i;
      return i;
    }

    public boolean hasGwsBodyFragment()
    {
      return this.hasGwsBodyFragment;
    }

    public boolean hasGwsHeaderComplete()
    {
      return this.hasGwsHeaderComplete;
    }

    public boolean hasGwsHeaderFragment()
    {
      return this.hasGwsHeaderFragment;
    }

    public boolean hasGwsResponseComplete()
    {
      return this.hasGwsResponseComplete;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PinholeOutput mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setGwsHeaderFragment(paramCodedInputStreamMicro.readString());
          break;
        case 16:
          setGwsHeaderComplete(paramCodedInputStreamMicro.readBool());
          break;
        case 26:
          setGwsBodyFragment(paramCodedInputStreamMicro.readString());
          break;
        case 32:
        }
        setGwsResponseComplete(paramCodedInputStreamMicro.readBool());
      }
    }

    public PinholeOutput setGwsBodyFragment(String paramString)
    {
      this.hasGwsBodyFragment = true;
      this.gwsBodyFragment_ = paramString;
      return this;
    }

    public PinholeOutput setGwsHeaderComplete(boolean paramBoolean)
    {
      this.hasGwsHeaderComplete = true;
      this.gwsHeaderComplete_ = paramBoolean;
      return this;
    }

    public PinholeOutput setGwsHeaderFragment(String paramString)
    {
      this.hasGwsHeaderFragment = true;
      this.gwsHeaderFragment_ = paramString;
      return this;
    }

    public PinholeOutput setGwsResponseComplete(boolean paramBoolean)
    {
      this.hasGwsResponseComplete = true;
      this.gwsResponseComplete_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasGwsHeaderFragment())
        paramCodedOutputStreamMicro.writeString(1, getGwsHeaderFragment());
      if (hasGwsHeaderComplete())
        paramCodedOutputStreamMicro.writeBool(2, getGwsHeaderComplete());
      if (hasGwsBodyFragment())
        paramCodedOutputStreamMicro.writeString(3, getGwsBodyFragment());
      if (hasGwsResponseComplete())
        paramCodedOutputStreamMicro.writeBool(4, getGwsResponseComplete());
    }
  }

  public static final class PinholeParams extends MessageMicro
  {
    public static final int CGI_PARAMS_FIELD_NUMBER = 1;
    public static final int HEADERS_FIELD_NUMBER = 2;
    public static final int URL_PATH_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private List<PinholeStream.PinholeCgiParam> cgiParams_ = Collections.emptyList();
    private boolean hasUrlPath;
    private List<PinholeStream.PinholeHeader> headers_ = Collections.emptyList();
    private String urlPath_ = "/search";

    public static PinholeParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PinholeParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PinholeParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PinholeParams)new PinholeParams().mergeFrom(paramArrayOfByte);
    }

    public PinholeParams addCgiParams(PinholeStream.PinholeCgiParam paramPinholeCgiParam)
    {
      if (paramPinholeCgiParam == null)
        throw new NullPointerException();
      if (this.cgiParams_.isEmpty())
        this.cgiParams_ = new ArrayList();
      this.cgiParams_.add(paramPinholeCgiParam);
      return this;
    }

    public PinholeParams addHeaders(PinholeStream.PinholeHeader paramPinholeHeader)
    {
      if (paramPinholeHeader == null)
        throw new NullPointerException();
      if (this.headers_.isEmpty())
        this.headers_ = new ArrayList();
      this.headers_.add(paramPinholeHeader);
      return this;
    }

    public final PinholeParams clear()
    {
      clearUrlPath();
      clearCgiParams();
      clearHeaders();
      this.cachedSize = -1;
      return this;
    }

    public PinholeParams clearCgiParams()
    {
      this.cgiParams_ = Collections.emptyList();
      return this;
    }

    public PinholeParams clearHeaders()
    {
      this.headers_ = Collections.emptyList();
      return this;
    }

    public PinholeParams clearUrlPath()
    {
      this.hasUrlPath = false;
      this.urlPath_ = "/search";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public PinholeStream.PinholeCgiParam getCgiParams(int paramInt)
    {
      return (PinholeStream.PinholeCgiParam)this.cgiParams_.get(paramInt);
    }

    public int getCgiParamsCount()
    {
      return this.cgiParams_.size();
    }

    public List<PinholeStream.PinholeCgiParam> getCgiParamsList()
    {
      return this.cgiParams_;
    }

    public PinholeStream.PinholeHeader getHeaders(int paramInt)
    {
      return (PinholeStream.PinholeHeader)this.headers_.get(paramInt);
    }

    public int getHeadersCount()
    {
      return this.headers_.size();
    }

    public List<PinholeStream.PinholeHeader> getHeadersList()
    {
      return this.headers_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getCgiParamsList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (PinholeStream.PinholeCgiParam)localIterator1.next());
      Iterator localIterator2 = getHeadersList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (PinholeStream.PinholeHeader)localIterator2.next());
      if (hasUrlPath())
        i += CodedOutputStreamMicro.computeStringSize(3, getUrlPath());
      this.cachedSize = i;
      return i;
    }

    public String getUrlPath()
    {
      return this.urlPath_;
    }

    public boolean hasUrlPath()
    {
      return this.hasUrlPath;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PinholeParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          PinholeStream.PinholeCgiParam localPinholeCgiParam = new PinholeStream.PinholeCgiParam();
          paramCodedInputStreamMicro.readMessage(localPinholeCgiParam);
          addCgiParams(localPinholeCgiParam);
          break;
        case 18:
          PinholeStream.PinholeHeader localPinholeHeader = new PinholeStream.PinholeHeader();
          paramCodedInputStreamMicro.readMessage(localPinholeHeader);
          addHeaders(localPinholeHeader);
          break;
        case 26:
        }
        setUrlPath(paramCodedInputStreamMicro.readString());
      }
    }

    public PinholeParams setCgiParams(int paramInt, PinholeStream.PinholeCgiParam paramPinholeCgiParam)
    {
      if (paramPinholeCgiParam == null)
        throw new NullPointerException();
      this.cgiParams_.set(paramInt, paramPinholeCgiParam);
      return this;
    }

    public PinholeParams setHeaders(int paramInt, PinholeStream.PinholeHeader paramPinholeHeader)
    {
      if (paramPinholeHeader == null)
        throw new NullPointerException();
      this.headers_.set(paramInt, paramPinholeHeader);
      return this;
    }

    public PinholeParams setUrlPath(String paramString)
    {
      this.hasUrlPath = true;
      this.urlPath_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getCgiParamsList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (PinholeStream.PinholeCgiParam)localIterator1.next());
      Iterator localIterator2 = getHeadersList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (PinholeStream.PinholeHeader)localIterator2.next());
      if (hasUrlPath())
        paramCodedOutputStreamMicro.writeString(3, getUrlPath());
    }
  }

  public static final class PinholeStreamParams extends MessageMicro
  {
    public static final int ADDITIONAL_INTERNAL_CGI_PARAMS_FIELD_NUMBER = 2;
    public static final int ADDITIONAL_INTERNAL_HEADERS_FIELD_NUMBER = 3;
    public static final int ADD_X_USER_IP_HEADER_FIELD_NUMBER = 4;
    public static final int SERVER_RESOURCE_FIELD_NUMBER = 1;
    private boolean addXUserIpHeader_ = false;
    private List<PinholeStream.PinholeCgiParam> additionalInternalCgiParams_ = Collections.emptyList();
    private List<PinholeStream.PinholeHeader> additionalInternalHeaders_ = Collections.emptyList();
    private int cachedSize = -1;
    private boolean hasAddXUserIpHeader;
    private boolean hasServerResource;
    private String serverResource_ = "";

    public static PinholeStreamParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PinholeStreamParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PinholeStreamParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PinholeStreamParams)new PinholeStreamParams().mergeFrom(paramArrayOfByte);
    }

    public PinholeStreamParams addAdditionalInternalCgiParams(PinholeStream.PinholeCgiParam paramPinholeCgiParam)
    {
      if (paramPinholeCgiParam == null)
        throw new NullPointerException();
      if (this.additionalInternalCgiParams_.isEmpty())
        this.additionalInternalCgiParams_ = new ArrayList();
      this.additionalInternalCgiParams_.add(paramPinholeCgiParam);
      return this;
    }

    public PinholeStreamParams addAdditionalInternalHeaders(PinholeStream.PinholeHeader paramPinholeHeader)
    {
      if (paramPinholeHeader == null)
        throw new NullPointerException();
      if (this.additionalInternalHeaders_.isEmpty())
        this.additionalInternalHeaders_ = new ArrayList();
      this.additionalInternalHeaders_.add(paramPinholeHeader);
      return this;
    }

    public final PinholeStreamParams clear()
    {
      clearServerResource();
      clearAdditionalInternalCgiParams();
      clearAdditionalInternalHeaders();
      clearAddXUserIpHeader();
      this.cachedSize = -1;
      return this;
    }

    public PinholeStreamParams clearAddXUserIpHeader()
    {
      this.hasAddXUserIpHeader = false;
      this.addXUserIpHeader_ = false;
      return this;
    }

    public PinholeStreamParams clearAdditionalInternalCgiParams()
    {
      this.additionalInternalCgiParams_ = Collections.emptyList();
      return this;
    }

    public PinholeStreamParams clearAdditionalInternalHeaders()
    {
      this.additionalInternalHeaders_ = Collections.emptyList();
      return this;
    }

    public PinholeStreamParams clearServerResource()
    {
      this.hasServerResource = false;
      this.serverResource_ = "";
      return this;
    }

    public boolean getAddXUserIpHeader()
    {
      return this.addXUserIpHeader_;
    }

    public PinholeStream.PinholeCgiParam getAdditionalInternalCgiParams(int paramInt)
    {
      return (PinholeStream.PinholeCgiParam)this.additionalInternalCgiParams_.get(paramInt);
    }

    public int getAdditionalInternalCgiParamsCount()
    {
      return this.additionalInternalCgiParams_.size();
    }

    public List<PinholeStream.PinholeCgiParam> getAdditionalInternalCgiParamsList()
    {
      return this.additionalInternalCgiParams_;
    }

    public PinholeStream.PinholeHeader getAdditionalInternalHeaders(int paramInt)
    {
      return (PinholeStream.PinholeHeader)this.additionalInternalHeaders_.get(paramInt);
    }

    public int getAdditionalInternalHeadersCount()
    {
      return this.additionalInternalHeaders_.size();
    }

    public List<PinholeStream.PinholeHeader> getAdditionalInternalHeadersList()
    {
      return this.additionalInternalHeaders_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getSerializedSize()
    {
      boolean bool = hasServerResource();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getServerResource());
      Iterator localIterator1 = getAdditionalInternalCgiParamsList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(2, (PinholeStream.PinholeCgiParam)localIterator1.next());
      Iterator localIterator2 = getAdditionalInternalHeadersList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (PinholeStream.PinholeHeader)localIterator2.next());
      if (hasAddXUserIpHeader())
        i += CodedOutputStreamMicro.computeBoolSize(4, getAddXUserIpHeader());
      this.cachedSize = i;
      return i;
    }

    public String getServerResource()
    {
      return this.serverResource_;
    }

    public boolean hasAddXUserIpHeader()
    {
      return this.hasAddXUserIpHeader;
    }

    public boolean hasServerResource()
    {
      return this.hasServerResource;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PinholeStreamParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setServerResource(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          PinholeStream.PinholeCgiParam localPinholeCgiParam = new PinholeStream.PinholeCgiParam();
          paramCodedInputStreamMicro.readMessage(localPinholeCgiParam);
          addAdditionalInternalCgiParams(localPinholeCgiParam);
          break;
        case 26:
          PinholeStream.PinholeHeader localPinholeHeader = new PinholeStream.PinholeHeader();
          paramCodedInputStreamMicro.readMessage(localPinholeHeader);
          addAdditionalInternalHeaders(localPinholeHeader);
          break;
        case 32:
        }
        setAddXUserIpHeader(paramCodedInputStreamMicro.readBool());
      }
    }

    public PinholeStreamParams setAddXUserIpHeader(boolean paramBoolean)
    {
      this.hasAddXUserIpHeader = true;
      this.addXUserIpHeader_ = paramBoolean;
      return this;
    }

    public PinholeStreamParams setAdditionalInternalCgiParams(int paramInt, PinholeStream.PinholeCgiParam paramPinholeCgiParam)
    {
      if (paramPinholeCgiParam == null)
        throw new NullPointerException();
      this.additionalInternalCgiParams_.set(paramInt, paramPinholeCgiParam);
      return this;
    }

    public PinholeStreamParams setAdditionalInternalHeaders(int paramInt, PinholeStream.PinholeHeader paramPinholeHeader)
    {
      if (paramPinholeHeader == null)
        throw new NullPointerException();
      this.additionalInternalHeaders_.set(paramInt, paramPinholeHeader);
      return this;
    }

    public PinholeStreamParams setServerResource(String paramString)
    {
      this.hasServerResource = true;
      this.serverResource_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasServerResource())
        paramCodedOutputStreamMicro.writeString(1, getServerResource());
      Iterator localIterator1 = getAdditionalInternalCgiParamsList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(2, (PinholeStream.PinholeCgiParam)localIterator1.next());
      Iterator localIterator2 = getAdditionalInternalHeadersList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (PinholeStream.PinholeHeader)localIterator2.next());
      if (hasAddXUserIpHeader())
        paramCodedOutputStreamMicro.writeBool(4, getAddXUserIpHeader());
    }
  }

  public static final class PinholeTtsBridgeParams extends MessageMicro
  {
    public static final int TTS_STRING_PREFIX_FIELD_NUMBER = 1;
    public static final int TTS_STRING_SUFFIX_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasTtsStringPrefix;
    private boolean hasTtsStringSuffix;
    private String ttsStringPrefix_ = "\\u003C!-- ectanstts ";
    private String ttsStringSuffix_ = " ectanstts --\\u003E";

    public static PinholeTtsBridgeParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PinholeTtsBridgeParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PinholeTtsBridgeParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PinholeTtsBridgeParams)new PinholeTtsBridgeParams().mergeFrom(paramArrayOfByte);
    }

    public final PinholeTtsBridgeParams clear()
    {
      clearTtsStringPrefix();
      clearTtsStringSuffix();
      this.cachedSize = -1;
      return this;
    }

    public PinholeTtsBridgeParams clearTtsStringPrefix()
    {
      this.hasTtsStringPrefix = false;
      this.ttsStringPrefix_ = "\\u003C!-- ectanstts ";
      return this;
    }

    public PinholeTtsBridgeParams clearTtsStringSuffix()
    {
      this.hasTtsStringSuffix = false;
      this.ttsStringSuffix_ = " ectanstts --\\u003E";
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
      boolean bool = hasTtsStringPrefix();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getTtsStringPrefix());
      if (hasTtsStringSuffix())
        i += CodedOutputStreamMicro.computeStringSize(2, getTtsStringSuffix());
      this.cachedSize = i;
      return i;
    }

    public String getTtsStringPrefix()
    {
      return this.ttsStringPrefix_;
    }

    public String getTtsStringSuffix()
    {
      return this.ttsStringSuffix_;
    }

    public boolean hasTtsStringPrefix()
    {
      return this.hasTtsStringPrefix;
    }

    public boolean hasTtsStringSuffix()
    {
      return this.hasTtsStringSuffix;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PinholeTtsBridgeParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setTtsStringPrefix(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setTtsStringSuffix(paramCodedInputStreamMicro.readString());
      }
    }

    public PinholeTtsBridgeParams setTtsStringPrefix(String paramString)
    {
      this.hasTtsStringPrefix = true;
      this.ttsStringPrefix_ = paramString;
      return this;
    }

    public PinholeTtsBridgeParams setTtsStringSuffix(String paramString)
    {
      this.hasTtsStringSuffix = true;
      this.ttsStringSuffix_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasTtsStringPrefix())
        paramCodedOutputStreamMicro.writeString(1, getTtsStringPrefix());
      if (hasTtsStringSuffix())
        paramCodedOutputStreamMicro.writeString(2, getTtsStringSuffix());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.s3.PinholeStream
 * JD-Core Version:    0.6.2
 */