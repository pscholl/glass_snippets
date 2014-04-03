package com.google.speech.synthesizer;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class EngineSpecific
{
  public static final class SynthesisEngineSpecificRequest extends MessageMicro
  {
    private int cachedSize = -1;

    public static SynthesisEngineSpecificRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SynthesisEngineSpecificRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SynthesisEngineSpecificRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SynthesisEngineSpecificRequest)new SynthesisEngineSpecificRequest().mergeFrom(paramArrayOfByte);
    }

    public final SynthesisEngineSpecificRequest clear()
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

    public SynthesisEngineSpecificRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
 * Qualified Name:     com.google.speech.synthesizer.EngineSpecific
 * JD-Core Version:    0.6.2
 */