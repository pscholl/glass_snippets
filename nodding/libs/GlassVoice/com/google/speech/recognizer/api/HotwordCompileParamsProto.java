package com.google.speech.recognizer.api;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class HotwordCompileParamsProto
{
  public static final class HotwordCompileParams extends MessageMicro
  {
    public static final int OUTPUT_FILENAME_PREFIX_FIELD_NUMBER = 2;
    public static final int PATH_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasOutputFilenamePrefix;
    private String outputFilenamePrefix_ = "";
    private List<Network.PathParams> path_ = Collections.emptyList();

    public static HotwordCompileParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new HotwordCompileParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static HotwordCompileParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (HotwordCompileParams)new HotwordCompileParams().mergeFrom(paramArrayOfByte);
    }

    public HotwordCompileParams addPath(Network.PathParams paramPathParams)
    {
      if (paramPathParams == null)
        throw new NullPointerException();
      if (this.path_.isEmpty())
        this.path_ = new ArrayList();
      this.path_.add(paramPathParams);
      return this;
    }

    public final HotwordCompileParams clear()
    {
      clearPath();
      clearOutputFilenamePrefix();
      this.cachedSize = -1;
      return this;
    }

    public HotwordCompileParams clearOutputFilenamePrefix()
    {
      this.hasOutputFilenamePrefix = false;
      this.outputFilenamePrefix_ = "";
      return this;
    }

    public HotwordCompileParams clearPath()
    {
      this.path_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getOutputFilenamePrefix()
    {
      return this.outputFilenamePrefix_;
    }

    public Network.PathParams getPath(int paramInt)
    {
      return (Network.PathParams)this.path_.get(paramInt);
    }

    public int getPathCount()
    {
      return this.path_.size();
    }

    public List<Network.PathParams> getPathList()
    {
      return this.path_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getPathList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (Network.PathParams)localIterator.next());
      if (hasOutputFilenamePrefix())
        i += CodedOutputStreamMicro.computeStringSize(2, getOutputFilenamePrefix());
      this.cachedSize = i;
      return i;
    }

    public boolean hasOutputFilenamePrefix()
    {
      return this.hasOutputFilenamePrefix;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public HotwordCompileParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          Network.PathParams localPathParams = new Network.PathParams();
          paramCodedInputStreamMicro.readMessage(localPathParams);
          addPath(localPathParams);
          break;
        case 18:
        }
        setOutputFilenamePrefix(paramCodedInputStreamMicro.readString());
      }
    }

    public HotwordCompileParams setOutputFilenamePrefix(String paramString)
    {
      this.hasOutputFilenamePrefix = true;
      this.outputFilenamePrefix_ = paramString;
      return this;
    }

    public HotwordCompileParams setPath(int paramInt, Network.PathParams paramPathParams)
    {
      if (paramPathParams == null)
        throw new NullPointerException();
      this.path_.set(paramInt, paramPathParams);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getPathList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (Network.PathParams)localIterator.next());
      if (hasOutputFilenamePrefix())
        paramCodedOutputStreamMicro.writeString(2, getOutputFilenamePrefix());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.api.HotwordCompileParamsProto
 * JD-Core Version:    0.6.2
 */