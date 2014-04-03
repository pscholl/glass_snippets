package com.google.speech.speech.s3;

import com.google.audio.ears.proto.EarsService.EarsLookupRequest;
import com.google.audio.ears.proto.EarsService.EarsResultsResponse;
import com.google.audio.ears.proto.EarsService.EarsStreamRequest;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class SoundSearch
{
  public static final class SoundSearchInfo extends MessageMicro
  {
    public static final int LOOKUP_REQUEST_FIELD_NUMBER = 1;
    public static final int STREAM_REQUEST_FIELD_NUMBER = 2;
    public static final int TTS_OUTPUT_ENABLED_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private boolean hasLookupRequest;
    private boolean hasStreamRequest;
    private boolean hasTtsOutputEnabled;
    private EarsService.EarsLookupRequest lookupRequest_ = null;
    private EarsService.EarsStreamRequest streamRequest_ = null;
    private boolean ttsOutputEnabled_ = false;

    public static SoundSearchInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SoundSearchInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SoundSearchInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SoundSearchInfo)new SoundSearchInfo().mergeFrom(paramArrayOfByte);
    }

    public final SoundSearchInfo clear()
    {
      clearLookupRequest();
      clearStreamRequest();
      clearTtsOutputEnabled();
      this.cachedSize = -1;
      return this;
    }

    public SoundSearchInfo clearLookupRequest()
    {
      this.hasLookupRequest = false;
      this.lookupRequest_ = null;
      return this;
    }

    public SoundSearchInfo clearStreamRequest()
    {
      this.hasStreamRequest = false;
      this.streamRequest_ = null;
      return this;
    }

    public SoundSearchInfo clearTtsOutputEnabled()
    {
      this.hasTtsOutputEnabled = false;
      this.ttsOutputEnabled_ = false;
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

    public int getSerializedSize()
    {
      boolean bool = hasLookupRequest();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getLookupRequest());
      if (hasStreamRequest())
        i += CodedOutputStreamMicro.computeMessageSize(2, getStreamRequest());
      if (hasTtsOutputEnabled())
        i += CodedOutputStreamMicro.computeBoolSize(3, getTtsOutputEnabled());
      this.cachedSize = i;
      return i;
    }

    public EarsService.EarsStreamRequest getStreamRequest()
    {
      return this.streamRequest_;
    }

    public boolean getTtsOutputEnabled()
    {
      return this.ttsOutputEnabled_;
    }

    public boolean hasLookupRequest()
    {
      return this.hasLookupRequest;
    }

    public boolean hasStreamRequest()
    {
      return this.hasStreamRequest;
    }

    public boolean hasTtsOutputEnabled()
    {
      return this.hasTtsOutputEnabled;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SoundSearchInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 24:
        }
        setTtsOutputEnabled(paramCodedInputStreamMicro.readBool());
      }
    }

    public SoundSearchInfo setLookupRequest(EarsService.EarsLookupRequest paramEarsLookupRequest)
    {
      if (paramEarsLookupRequest == null)
        throw new NullPointerException();
      this.hasLookupRequest = true;
      this.lookupRequest_ = paramEarsLookupRequest;
      return this;
    }

    public SoundSearchInfo setStreamRequest(EarsService.EarsStreamRequest paramEarsStreamRequest)
    {
      if (paramEarsStreamRequest == null)
        throw new NullPointerException();
      this.hasStreamRequest = true;
      this.streamRequest_ = paramEarsStreamRequest;
      return this;
    }

    public SoundSearchInfo setTtsOutputEnabled(boolean paramBoolean)
    {
      this.hasTtsOutputEnabled = true;
      this.ttsOutputEnabled_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLookupRequest())
        paramCodedOutputStreamMicro.writeMessage(1, getLookupRequest());
      if (hasStreamRequest())
        paramCodedOutputStreamMicro.writeMessage(2, getStreamRequest());
      if (hasTtsOutputEnabled())
        paramCodedOutputStreamMicro.writeBool(3, getTtsOutputEnabled());
    }
  }

  public static final class SoundSearchServiceEvent extends MessageMicro
  {
    public static final int RESULTS_RESPONSE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasResultsResponse;
    private EarsService.EarsResultsResponse resultsResponse_ = null;

    public static SoundSearchServiceEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SoundSearchServiceEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SoundSearchServiceEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SoundSearchServiceEvent)new SoundSearchServiceEvent().mergeFrom(paramArrayOfByte);
    }

    public final SoundSearchServiceEvent clear()
    {
      clearResultsResponse();
      this.cachedSize = -1;
      return this;
    }

    public SoundSearchServiceEvent clearResultsResponse()
    {
      this.hasResultsResponse = false;
      this.resultsResponse_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public EarsService.EarsResultsResponse getResultsResponse()
    {
      return this.resultsResponse_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasResultsResponse();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getResultsResponse());
      this.cachedSize = i;
      return i;
    }

    public boolean hasResultsResponse()
    {
      return this.hasResultsResponse;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public SoundSearchServiceEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        EarsService.EarsResultsResponse localEarsResultsResponse = new EarsService.EarsResultsResponse();
        paramCodedInputStreamMicro.readMessage(localEarsResultsResponse);
        setResultsResponse(localEarsResultsResponse);
      }
    }

    public SoundSearchServiceEvent setResultsResponse(EarsService.EarsResultsResponse paramEarsResultsResponse)
    {
      if (paramEarsResultsResponse == null)
        throw new NullPointerException();
      this.hasResultsResponse = true;
      this.resultsResponse_ = paramEarsResultsResponse;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasResultsResponse())
        paramCodedOutputStreamMicro.writeMessage(1, getResultsResponse());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.speech.s3.SoundSearch
 * JD-Core Version:    0.6.2
 */