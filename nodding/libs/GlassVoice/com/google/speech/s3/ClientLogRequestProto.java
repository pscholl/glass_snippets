package com.google.speech.s3;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.logs.VoicesearchClientLogProto.VoiceSearchClientLog;
import java.io.IOException;

public final class ClientLogRequestProto
{
  public static final class ClientLogRequest extends MessageMicro
  {
    public static final int VOICE_SEARCH_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasVoiceSearch;
    private VoicesearchClientLogProto.VoiceSearchClientLog voiceSearch_ = null;

    public static ClientLogRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new ClientLogRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static ClientLogRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (ClientLogRequest)new ClientLogRequest().mergeFrom(paramArrayOfByte);
    }

    public final ClientLogRequest clear()
    {
      clearVoiceSearch();
      this.cachedSize = -1;
      return this;
    }

    public ClientLogRequest clearVoiceSearch()
    {
      this.hasVoiceSearch = false;
      this.voiceSearch_ = null;
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
      boolean bool = hasVoiceSearch();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getVoiceSearch());
      this.cachedSize = i;
      return i;
    }

    public VoicesearchClientLogProto.VoiceSearchClientLog getVoiceSearch()
    {
      return this.voiceSearch_;
    }

    public boolean hasVoiceSearch()
    {
      return this.hasVoiceSearch;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public ClientLogRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        VoicesearchClientLogProto.VoiceSearchClientLog localVoiceSearchClientLog = new VoicesearchClientLogProto.VoiceSearchClientLog();
        paramCodedInputStreamMicro.readMessage(localVoiceSearchClientLog);
        setVoiceSearch(localVoiceSearchClientLog);
      }
    }

    public ClientLogRequest setVoiceSearch(VoicesearchClientLogProto.VoiceSearchClientLog paramVoiceSearchClientLog)
    {
      if (paramVoiceSearchClientLog == null)
        throw new NullPointerException();
      this.hasVoiceSearch = true;
      this.voiceSearch_ = paramVoiceSearchClientLog;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasVoiceSearch())
        paramCodedOutputStreamMicro.writeMessage(1, getVoiceSearch());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.s3.ClientLogRequestProto
 * JD-Core Version:    0.6.2
 */