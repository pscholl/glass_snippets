package com.google.speech.speech.s3;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.synthesizer.EngineSpecific.SynthesisEngineSpecificRequest;
import java.io.IOException;

public final class Synthesis
{
  public static final class TtsServiceEvent extends MessageMicro
  {
    public static final int AUDIO_FIELD_NUMBER = 1;
    public static final int END_OF_DATA_FIELD_NUMBER = 2;
    private ByteStringMicro audio_ = ByteStringMicro.EMPTY;
    private int cachedSize = -1;
    private boolean endOfData_ = false;
    private boolean hasAudio;
    private boolean hasEndOfData;

    public static TtsServiceEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TtsServiceEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TtsServiceEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TtsServiceEvent)new TtsServiceEvent().mergeFrom(paramArrayOfByte);
    }

    public final TtsServiceEvent clear()
    {
      clearAudio();
      clearEndOfData();
      this.cachedSize = -1;
      return this;
    }

    public TtsServiceEvent clearAudio()
    {
      this.hasAudio = false;
      this.audio_ = ByteStringMicro.EMPTY;
      return this;
    }

    public TtsServiceEvent clearEndOfData()
    {
      this.hasEndOfData = false;
      this.endOfData_ = false;
      return this;
    }

    public ByteStringMicro getAudio()
    {
      return this.audio_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public boolean getEndOfData()
    {
      return this.endOfData_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasAudio();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBytesSize(1, getAudio());
      if (hasEndOfData())
        i += CodedOutputStreamMicro.computeBoolSize(2, getEndOfData());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAudio()
    {
      return this.hasAudio;
    }

    public boolean hasEndOfData()
    {
      return this.hasEndOfData;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TtsServiceEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setAudio(paramCodedInputStreamMicro.readBytes());
          break;
        case 16:
        }
        setEndOfData(paramCodedInputStreamMicro.readBool());
      }
    }

    public TtsServiceEvent setAudio(ByteStringMicro paramByteStringMicro)
    {
      this.hasAudio = true;
      this.audio_ = paramByteStringMicro;
      return this;
    }

    public TtsServiceEvent setEndOfData(boolean paramBoolean)
    {
      this.hasEndOfData = true;
      this.endOfData_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasAudio())
        paramCodedOutputStreamMicro.writeBytes(1, getAudio());
      if (hasEndOfData())
        paramCodedOutputStreamMicro.writeBool(2, getEndOfData());
    }
  }

  public static final class TtsServiceRequest extends MessageMicro
  {
    public static final int AUDIO_CHUNK_SIZE_FIELD_NUMBER = 11;
    public static final int AUDIO_ENCODING_FIELD_NUMBER = 10;
    public static final int ENCODING_ANY = 0;
    public static final int ENCODING_LINEAR_16BIT = 1;
    public static final int ENCODING_MP3 = 4;
    public static final int ENCODING_MULAW = 2;
    public static final int ENCODING_SPEEX = 3;
    public static final int ENCODING_SPEEX_IN_OGG = 6;
    public static final int ENCODING_SPEEX_WITH_HEADER_BYTE = 5;
    public static final int ENGINE_SPECIFIC_REQUEST_FIELD_NUMBER = 13;
    public static final int INPUT_IS_LOGGABLE_FIELD_NUMBER = 12;
    public static final int SSML_FIELD_NUMBER = 2;
    public static final int SYNTHESIS_PITCH_FIELD_NUMBER = 8;
    public static final int SYNTHESIS_SPEED_FIELD_NUMBER = 7;
    public static final int SYNTHESIS_TEXT_FIELD_NUMBER = 1;
    public static final int SYNTHESIS_VOLUME_FIELD_NUMBER = 9;
    public static final int VOICE_ENGINE_FIELD_NUMBER = 6;
    public static final int VOICE_LANGUAGE_FIELD_NUMBER = 3;
    public static final int VOICE_NAME_FIELD_NUMBER = 4;
    public static final int VOICE_SAMPLE_RATE_FIELD_NUMBER = 5;
    private int audioChunkSize_ = 1024;
    private int audioEncoding_ = 0;
    private int cachedSize = -1;
    private EngineSpecific.SynthesisEngineSpecificRequest engineSpecificRequest_ = null;
    private boolean hasAudioChunkSize;
    private boolean hasAudioEncoding;
    private boolean hasEngineSpecificRequest;
    private boolean hasInputIsLoggable;
    private boolean hasSsml;
    private boolean hasSynthesisPitch;
    private boolean hasSynthesisSpeed;
    private boolean hasSynthesisText;
    private boolean hasSynthesisVolume;
    private boolean hasVoiceEngine;
    private boolean hasVoiceLanguage;
    private boolean hasVoiceName;
    private boolean hasVoiceSampleRate;
    private boolean inputIsLoggable_ = false;
    private String ssml_ = "";
    private double synthesisPitch_ = 0.0D;
    private double synthesisSpeed_ = 0.0D;
    private String synthesisText_ = "";
    private double synthesisVolume_ = 0.0D;
    private String voiceEngine_ = "";
    private String voiceLanguage_ = "";
    private String voiceName_ = "";
    private int voiceSampleRate_ = 0;

    public static TtsServiceRequest parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new TtsServiceRequest().mergeFrom(paramCodedInputStreamMicro);
    }

    public static TtsServiceRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (TtsServiceRequest)new TtsServiceRequest().mergeFrom(paramArrayOfByte);
    }

    public final TtsServiceRequest clear()
    {
      clearSynthesisText();
      clearSsml();
      clearEngineSpecificRequest();
      clearInputIsLoggable();
      clearVoiceLanguage();
      clearVoiceName();
      clearVoiceSampleRate();
      clearVoiceEngine();
      clearSynthesisSpeed();
      clearSynthesisPitch();
      clearSynthesisVolume();
      clearAudioEncoding();
      clearAudioChunkSize();
      this.cachedSize = -1;
      return this;
    }

    public TtsServiceRequest clearAudioChunkSize()
    {
      this.hasAudioChunkSize = false;
      this.audioChunkSize_ = 1024;
      return this;
    }

    public TtsServiceRequest clearAudioEncoding()
    {
      this.hasAudioEncoding = false;
      this.audioEncoding_ = 0;
      return this;
    }

    public TtsServiceRequest clearEngineSpecificRequest()
    {
      this.hasEngineSpecificRequest = false;
      this.engineSpecificRequest_ = null;
      return this;
    }

    public TtsServiceRequest clearInputIsLoggable()
    {
      this.hasInputIsLoggable = false;
      this.inputIsLoggable_ = false;
      return this;
    }

    public TtsServiceRequest clearSsml()
    {
      this.hasSsml = false;
      this.ssml_ = "";
      return this;
    }

    public TtsServiceRequest clearSynthesisPitch()
    {
      this.hasSynthesisPitch = false;
      this.synthesisPitch_ = 0.0D;
      return this;
    }

    public TtsServiceRequest clearSynthesisSpeed()
    {
      this.hasSynthesisSpeed = false;
      this.synthesisSpeed_ = 0.0D;
      return this;
    }

    public TtsServiceRequest clearSynthesisText()
    {
      this.hasSynthesisText = false;
      this.synthesisText_ = "";
      return this;
    }

    public TtsServiceRequest clearSynthesisVolume()
    {
      this.hasSynthesisVolume = false;
      this.synthesisVolume_ = 0.0D;
      return this;
    }

    public TtsServiceRequest clearVoiceEngine()
    {
      this.hasVoiceEngine = false;
      this.voiceEngine_ = "";
      return this;
    }

    public TtsServiceRequest clearVoiceLanguage()
    {
      this.hasVoiceLanguage = false;
      this.voiceLanguage_ = "";
      return this;
    }

    public TtsServiceRequest clearVoiceName()
    {
      this.hasVoiceName = false;
      this.voiceName_ = "";
      return this;
    }

    public TtsServiceRequest clearVoiceSampleRate()
    {
      this.hasVoiceSampleRate = false;
      this.voiceSampleRate_ = 0;
      return this;
    }

    public int getAudioChunkSize()
    {
      return this.audioChunkSize_;
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

    public EngineSpecific.SynthesisEngineSpecificRequest getEngineSpecificRequest()
    {
      return this.engineSpecificRequest_;
    }

    public boolean getInputIsLoggable()
    {
      return this.inputIsLoggable_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSynthesisText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSynthesisText());
      if (hasSsml())
        i += CodedOutputStreamMicro.computeStringSize(2, getSsml());
      if (hasVoiceLanguage())
        i += CodedOutputStreamMicro.computeStringSize(3, getVoiceLanguage());
      if (hasVoiceName())
        i += CodedOutputStreamMicro.computeStringSize(4, getVoiceName());
      if (hasVoiceSampleRate())
        i += CodedOutputStreamMicro.computeInt32Size(5, getVoiceSampleRate());
      if (hasVoiceEngine())
        i += CodedOutputStreamMicro.computeStringSize(6, getVoiceEngine());
      if (hasSynthesisSpeed())
        i += CodedOutputStreamMicro.computeDoubleSize(7, getSynthesisSpeed());
      if (hasSynthesisPitch())
        i += CodedOutputStreamMicro.computeDoubleSize(8, getSynthesisPitch());
      if (hasSynthesisVolume())
        i += CodedOutputStreamMicro.computeDoubleSize(9, getSynthesisVolume());
      if (hasAudioEncoding())
        i += CodedOutputStreamMicro.computeInt32Size(10, getAudioEncoding());
      if (hasAudioChunkSize())
        i += CodedOutputStreamMicro.computeInt32Size(11, getAudioChunkSize());
      if (hasInputIsLoggable())
        i += CodedOutputStreamMicro.computeBoolSize(12, getInputIsLoggable());
      if (hasEngineSpecificRequest())
        i += CodedOutputStreamMicro.computeMessageSize(13, getEngineSpecificRequest());
      this.cachedSize = i;
      return i;
    }

    public String getSsml()
    {
      return this.ssml_;
    }

    public double getSynthesisPitch()
    {
      return this.synthesisPitch_;
    }

    public double getSynthesisSpeed()
    {
      return this.synthesisSpeed_;
    }

    public String getSynthesisText()
    {
      return this.synthesisText_;
    }

    public double getSynthesisVolume()
    {
      return this.synthesisVolume_;
    }

    public String getVoiceEngine()
    {
      return this.voiceEngine_;
    }

    public String getVoiceLanguage()
    {
      return this.voiceLanguage_;
    }

    public String getVoiceName()
    {
      return this.voiceName_;
    }

    public int getVoiceSampleRate()
    {
      return this.voiceSampleRate_;
    }

    public boolean hasAudioChunkSize()
    {
      return this.hasAudioChunkSize;
    }

    public boolean hasAudioEncoding()
    {
      return this.hasAudioEncoding;
    }

    public boolean hasEngineSpecificRequest()
    {
      return this.hasEngineSpecificRequest;
    }

    public boolean hasInputIsLoggable()
    {
      return this.hasInputIsLoggable;
    }

    public boolean hasSsml()
    {
      return this.hasSsml;
    }

    public boolean hasSynthesisPitch()
    {
      return this.hasSynthesisPitch;
    }

    public boolean hasSynthesisSpeed()
    {
      return this.hasSynthesisSpeed;
    }

    public boolean hasSynthesisText()
    {
      return this.hasSynthesisText;
    }

    public boolean hasSynthesisVolume()
    {
      return this.hasSynthesisVolume;
    }

    public boolean hasVoiceEngine()
    {
      return this.hasVoiceEngine;
    }

    public boolean hasVoiceLanguage()
    {
      return this.hasVoiceLanguage;
    }

    public boolean hasVoiceName()
    {
      return this.hasVoiceName;
    }

    public boolean hasVoiceSampleRate()
    {
      return this.hasVoiceSampleRate;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public TtsServiceRequest mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSynthesisText(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setSsml(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setVoiceLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 34:
          setVoiceName(paramCodedInputStreamMicro.readString());
          break;
        case 40:
          setVoiceSampleRate(paramCodedInputStreamMicro.readInt32());
          break;
        case 50:
          setVoiceEngine(paramCodedInputStreamMicro.readString());
          break;
        case 57:
          setSynthesisSpeed(paramCodedInputStreamMicro.readDouble());
          break;
        case 65:
          setSynthesisPitch(paramCodedInputStreamMicro.readDouble());
          break;
        case 73:
          setSynthesisVolume(paramCodedInputStreamMicro.readDouble());
          break;
        case 80:
          setAudioEncoding(paramCodedInputStreamMicro.readInt32());
          break;
        case 88:
          setAudioChunkSize(paramCodedInputStreamMicro.readInt32());
          break;
        case 96:
          setInputIsLoggable(paramCodedInputStreamMicro.readBool());
          break;
        case 106:
        }
        EngineSpecific.SynthesisEngineSpecificRequest localSynthesisEngineSpecificRequest = new EngineSpecific.SynthesisEngineSpecificRequest();
        paramCodedInputStreamMicro.readMessage(localSynthesisEngineSpecificRequest);
        setEngineSpecificRequest(localSynthesisEngineSpecificRequest);
      }
    }

    public TtsServiceRequest setAudioChunkSize(int paramInt)
    {
      this.hasAudioChunkSize = true;
      this.audioChunkSize_ = paramInt;
      return this;
    }

    public TtsServiceRequest setAudioEncoding(int paramInt)
    {
      this.hasAudioEncoding = true;
      this.audioEncoding_ = paramInt;
      return this;
    }

    public TtsServiceRequest setEngineSpecificRequest(EngineSpecific.SynthesisEngineSpecificRequest paramSynthesisEngineSpecificRequest)
    {
      if (paramSynthesisEngineSpecificRequest == null)
        throw new NullPointerException();
      this.hasEngineSpecificRequest = true;
      this.engineSpecificRequest_ = paramSynthesisEngineSpecificRequest;
      return this;
    }

    public TtsServiceRequest setInputIsLoggable(boolean paramBoolean)
    {
      this.hasInputIsLoggable = true;
      this.inputIsLoggable_ = paramBoolean;
      return this;
    }

    public TtsServiceRequest setSsml(String paramString)
    {
      this.hasSsml = true;
      this.ssml_ = paramString;
      return this;
    }

    public TtsServiceRequest setSynthesisPitch(double paramDouble)
    {
      this.hasSynthesisPitch = true;
      this.synthesisPitch_ = paramDouble;
      return this;
    }

    public TtsServiceRequest setSynthesisSpeed(double paramDouble)
    {
      this.hasSynthesisSpeed = true;
      this.synthesisSpeed_ = paramDouble;
      return this;
    }

    public TtsServiceRequest setSynthesisText(String paramString)
    {
      this.hasSynthesisText = true;
      this.synthesisText_ = paramString;
      return this;
    }

    public TtsServiceRequest setSynthesisVolume(double paramDouble)
    {
      this.hasSynthesisVolume = true;
      this.synthesisVolume_ = paramDouble;
      return this;
    }

    public TtsServiceRequest setVoiceEngine(String paramString)
    {
      this.hasVoiceEngine = true;
      this.voiceEngine_ = paramString;
      return this;
    }

    public TtsServiceRequest setVoiceLanguage(String paramString)
    {
      this.hasVoiceLanguage = true;
      this.voiceLanguage_ = paramString;
      return this;
    }

    public TtsServiceRequest setVoiceName(String paramString)
    {
      this.hasVoiceName = true;
      this.voiceName_ = paramString;
      return this;
    }

    public TtsServiceRequest setVoiceSampleRate(int paramInt)
    {
      this.hasVoiceSampleRate = true;
      this.voiceSampleRate_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSynthesisText())
        paramCodedOutputStreamMicro.writeString(1, getSynthesisText());
      if (hasSsml())
        paramCodedOutputStreamMicro.writeString(2, getSsml());
      if (hasVoiceLanguage())
        paramCodedOutputStreamMicro.writeString(3, getVoiceLanguage());
      if (hasVoiceName())
        paramCodedOutputStreamMicro.writeString(4, getVoiceName());
      if (hasVoiceSampleRate())
        paramCodedOutputStreamMicro.writeInt32(5, getVoiceSampleRate());
      if (hasVoiceEngine())
        paramCodedOutputStreamMicro.writeString(6, getVoiceEngine());
      if (hasSynthesisSpeed())
        paramCodedOutputStreamMicro.writeDouble(7, getSynthesisSpeed());
      if (hasSynthesisPitch())
        paramCodedOutputStreamMicro.writeDouble(8, getSynthesisPitch());
      if (hasSynthesisVolume())
        paramCodedOutputStreamMicro.writeDouble(9, getSynthesisVolume());
      if (hasAudioEncoding())
        paramCodedOutputStreamMicro.writeInt32(10, getAudioEncoding());
      if (hasAudioChunkSize())
        paramCodedOutputStreamMicro.writeInt32(11, getAudioChunkSize());
      if (hasInputIsLoggable())
        paramCodedOutputStreamMicro.writeBool(12, getInputIsLoggable());
      if (hasEngineSpecificRequest())
        paramCodedOutputStreamMicro.writeMessage(13, getEngineSpecificRequest());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.speech.s3.Synthesis
 * JD-Core Version:    0.6.2
 */