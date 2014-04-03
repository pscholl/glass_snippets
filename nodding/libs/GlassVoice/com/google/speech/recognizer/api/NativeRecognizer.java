package com.google.speech.recognizer.api;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.logs.RecognizerOuterClass.RecognizerLog;
import java.io.IOException;

public final class NativeRecognizer
{
  public static final class NativeRecognitionResult extends MessageMicro
  {
    public static final int RECOGNIZER_INFO_FIELD_NUMBER = 2;
    public static final int STATUS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasRecognizerInfo;
    private boolean hasStatus;
    private RecognizerOuterClass.RecognizerLog recognizerInfo_ = null;
    private int status_ = 0;

    public static NativeRecognitionResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new NativeRecognitionResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static NativeRecognitionResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (NativeRecognitionResult)new NativeRecognitionResult().mergeFrom(paramArrayOfByte);
    }

    public final NativeRecognitionResult clear()
    {
      clearStatus();
      clearRecognizerInfo();
      this.cachedSize = -1;
      return this;
    }

    public NativeRecognitionResult clearRecognizerInfo()
    {
      this.hasRecognizerInfo = false;
      this.recognizerInfo_ = null;
      return this;
    }

    public NativeRecognitionResult clearStatus()
    {
      this.hasStatus = false;
      this.status_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public RecognizerOuterClass.RecognizerLog getRecognizerInfo()
    {
      return this.recognizerInfo_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasStatus();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getStatus());
      if (hasRecognizerInfo())
        i += CodedOutputStreamMicro.computeMessageSize(2, getRecognizerInfo());
      this.cachedSize = i;
      return i;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public boolean hasRecognizerInfo()
    {
      return this.hasRecognizerInfo;
    }

    public boolean hasStatus()
    {
      return this.hasStatus;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public NativeRecognitionResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 18:
        }
        RecognizerOuterClass.RecognizerLog localRecognizerLog = new RecognizerOuterClass.RecognizerLog();
        paramCodedInputStreamMicro.readMessage(localRecognizerLog);
        setRecognizerInfo(localRecognizerLog);
      }
    }

    public NativeRecognitionResult setRecognizerInfo(RecognizerOuterClass.RecognizerLog paramRecognizerLog)
    {
      if (paramRecognizerLog == null)
        throw new NullPointerException();
      this.hasRecognizerInfo = true;
      this.recognizerInfo_ = paramRecognizerLog;
      return this;
    }

    public NativeRecognitionResult setStatus(int paramInt)
    {
      this.hasStatus = true;
      this.status_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStatus())
        paramCodedOutputStreamMicro.writeInt32(1, getStatus());
      if (hasRecognizerInfo())
        paramCodedOutputStreamMicro.writeMessage(2, getRecognizerInfo());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.api.NativeRecognizer
 * JD-Core Version:    0.6.2
 */