package com.google.speech.recognizer.api;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.common.Alternates.AlternateParams;
import java.io.IOException;

public final class RecognizerSessionParamsProto
{
  public static final class RecognizerSessionParams extends MessageMicro
  {
    public static final int ALTERNATE_PARAMS_FIELD_NUMBER = 5;
    public static final int AUDIO_TYPE_AMR = 3;
    public static final int AUDIO_TYPE_FLAC = 2;
    public static final int AUDIO_TYPE_FLOAT32 = 1;
    public static final int AUDIO_TYPE_LINEAR16 = 0;
    public static final int AUDIO_TYPE_MULAW = 4;
    public static final int AUDIO_TYPE_OGG_VORBIS = 7;
    public static final int AUDIO_TYPE_SPEEX_NB = 5;
    public static final int AUDIO_TYPE_SPEEX_WB = 6;
    public static final int CHANNEL_COUNT_FIELD_NUMBER = 10;
    public static final int ENABLE_ALTERNATES_FIELD_NUMBER = 4;
    public static final int ENABLE_FRAME_LOGGING_FIELD_NUMBER = 11;
    public static final int ENABLE_PARTIAL_RESULTS_FIELD_NUMBER = 7;
    public static final int FORCE_TRANSCRIPT_FIELD_NUMBER = 12;
    public static final int HOTWORD_DECISION_THRESHOLD_FIELD_NUMBER = 9;
    public static final int MASK_OFFENSIVE_WORDS_FIELD_NUMBER = 3;
    public static final int NUM_NBEST_FIELD_NUMBER = 6;
    public static final int RESET_INTERVAL_MS_FIELD_NUMBER = 8;
    public static final int SAMPLE_RATE_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private Alternates.AlternateParams alternateParams_ = null;
    private int cachedSize = -1;
    private int channelCount_ = 1;
    private boolean enableAlternates_ = false;
    private boolean enableFrameLogging_ = false;
    private boolean enablePartialResults_ = true;
    private String forceTranscript_ = "";
    private boolean hasAlternateParams;
    private boolean hasChannelCount;
    private boolean hasEnableAlternates;
    private boolean hasEnableFrameLogging;
    private boolean hasEnablePartialResults;
    private boolean hasForceTranscript;
    private boolean hasHotwordDecisionThreshold;
    private boolean hasMaskOffensiveWords;
    private boolean hasNumNbest;
    private boolean hasResetIntervalMs;
    private boolean hasSampleRate;
    private boolean hasType;
    private float hotwordDecisionThreshold_ = 0.0F;
    private boolean maskOffensiveWords_ = true;
    private int numNbest_ = 0;
    private int resetIntervalMs_ = 0;
    private float sampleRate_ = 8000.0F;
    private int type_ = 0;

    public static RecognizerSessionParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizerSessionParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizerSessionParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizerSessionParams)new RecognizerSessionParams().mergeFrom(paramArrayOfByte);
    }

    public final RecognizerSessionParams clear()
    {
      clearType();
      clearSampleRate();
      clearMaskOffensiveWords();
      clearEnableAlternates();
      clearAlternateParams();
      clearNumNbest();
      clearEnablePartialResults();
      clearResetIntervalMs();
      clearHotwordDecisionThreshold();
      clearChannelCount();
      clearEnableFrameLogging();
      clearForceTranscript();
      this.cachedSize = -1;
      return this;
    }

    public RecognizerSessionParams clearAlternateParams()
    {
      this.hasAlternateParams = false;
      this.alternateParams_ = null;
      return this;
    }

    public RecognizerSessionParams clearChannelCount()
    {
      this.hasChannelCount = false;
      this.channelCount_ = 1;
      return this;
    }

    public RecognizerSessionParams clearEnableAlternates()
    {
      this.hasEnableAlternates = false;
      this.enableAlternates_ = false;
      return this;
    }

    public RecognizerSessionParams clearEnableFrameLogging()
    {
      this.hasEnableFrameLogging = false;
      this.enableFrameLogging_ = false;
      return this;
    }

    public RecognizerSessionParams clearEnablePartialResults()
    {
      this.hasEnablePartialResults = false;
      this.enablePartialResults_ = true;
      return this;
    }

    public RecognizerSessionParams clearForceTranscript()
    {
      this.hasForceTranscript = false;
      this.forceTranscript_ = "";
      return this;
    }

    public RecognizerSessionParams clearHotwordDecisionThreshold()
    {
      this.hasHotwordDecisionThreshold = false;
      this.hotwordDecisionThreshold_ = 0.0F;
      return this;
    }

    public RecognizerSessionParams clearMaskOffensiveWords()
    {
      this.hasMaskOffensiveWords = false;
      this.maskOffensiveWords_ = true;
      return this;
    }

    public RecognizerSessionParams clearNumNbest()
    {
      this.hasNumNbest = false;
      this.numNbest_ = 0;
      return this;
    }

    public RecognizerSessionParams clearResetIntervalMs()
    {
      this.hasResetIntervalMs = false;
      this.resetIntervalMs_ = 0;
      return this;
    }

    public RecognizerSessionParams clearSampleRate()
    {
      this.hasSampleRate = false;
      this.sampleRate_ = 8000.0F;
      return this;
    }

    public RecognizerSessionParams clearType()
    {
      this.hasType = false;
      this.type_ = 0;
      return this;
    }

    public Alternates.AlternateParams getAlternateParams()
    {
      return this.alternateParams_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getChannelCount()
    {
      return this.channelCount_;
    }

    public boolean getEnableAlternates()
    {
      return this.enableAlternates_;
    }

    public boolean getEnableFrameLogging()
    {
      return this.enableFrameLogging_;
    }

    public boolean getEnablePartialResults()
    {
      return this.enablePartialResults_;
    }

    public String getForceTranscript()
    {
      return this.forceTranscript_;
    }

    public float getHotwordDecisionThreshold()
    {
      return this.hotwordDecisionThreshold_;
    }

    public boolean getMaskOffensiveWords()
    {
      return this.maskOffensiveWords_;
    }

    public int getNumNbest()
    {
      return this.numNbest_;
    }

    public int getResetIntervalMs()
    {
      return this.resetIntervalMs_;
    }

    public float getSampleRate()
    {
      return this.sampleRate_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getType());
      if (hasSampleRate())
        i += CodedOutputStreamMicro.computeFloatSize(2, getSampleRate());
      if (hasMaskOffensiveWords())
        i += CodedOutputStreamMicro.computeBoolSize(3, getMaskOffensiveWords());
      if (hasEnableAlternates())
        i += CodedOutputStreamMicro.computeBoolSize(4, getEnableAlternates());
      if (hasAlternateParams())
        i += CodedOutputStreamMicro.computeMessageSize(5, getAlternateParams());
      if (hasNumNbest())
        i += CodedOutputStreamMicro.computeInt32Size(6, getNumNbest());
      if (hasEnablePartialResults())
        i += CodedOutputStreamMicro.computeBoolSize(7, getEnablePartialResults());
      if (hasResetIntervalMs())
        i += CodedOutputStreamMicro.computeInt32Size(8, getResetIntervalMs());
      if (hasHotwordDecisionThreshold())
        i += CodedOutputStreamMicro.computeFloatSize(9, getHotwordDecisionThreshold());
      if (hasChannelCount())
        i += CodedOutputStreamMicro.computeInt32Size(10, getChannelCount());
      if (hasEnableFrameLogging())
        i += CodedOutputStreamMicro.computeBoolSize(11, getEnableFrameLogging());
      if (hasForceTranscript())
        i += CodedOutputStreamMicro.computeStringSize(12, getForceTranscript());
      this.cachedSize = i;
      return i;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasAlternateParams()
    {
      return this.hasAlternateParams;
    }

    public boolean hasChannelCount()
    {
      return this.hasChannelCount;
    }

    public boolean hasEnableAlternates()
    {
      return this.hasEnableAlternates;
    }

    public boolean hasEnableFrameLogging()
    {
      return this.hasEnableFrameLogging;
    }

    public boolean hasEnablePartialResults()
    {
      return this.hasEnablePartialResults;
    }

    public boolean hasForceTranscript()
    {
      return this.hasForceTranscript;
    }

    public boolean hasHotwordDecisionThreshold()
    {
      return this.hasHotwordDecisionThreshold;
    }

    public boolean hasMaskOffensiveWords()
    {
      return this.hasMaskOffensiveWords;
    }

    public boolean hasNumNbest()
    {
      return this.hasNumNbest;
    }

    public boolean hasResetIntervalMs()
    {
      return this.hasResetIntervalMs;
    }

    public boolean hasSampleRate()
    {
      return this.hasSampleRate;
    }

    public boolean hasType()
    {
      return this.hasType;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RecognizerSessionParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 21:
          setSampleRate(paramCodedInputStreamMicro.readFloat());
          break;
        case 24:
          setMaskOffensiveWords(paramCodedInputStreamMicro.readBool());
          break;
        case 32:
          setEnableAlternates(paramCodedInputStreamMicro.readBool());
          break;
        case 42:
          Alternates.AlternateParams localAlternateParams = new Alternates.AlternateParams();
          paramCodedInputStreamMicro.readMessage(localAlternateParams);
          setAlternateParams(localAlternateParams);
          break;
        case 48:
          setNumNbest(paramCodedInputStreamMicro.readInt32());
          break;
        case 56:
          setEnablePartialResults(paramCodedInputStreamMicro.readBool());
          break;
        case 64:
          setResetIntervalMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 77:
          setHotwordDecisionThreshold(paramCodedInputStreamMicro.readFloat());
          break;
        case 80:
          setChannelCount(paramCodedInputStreamMicro.readInt32());
          break;
        case 88:
          setEnableFrameLogging(paramCodedInputStreamMicro.readBool());
          break;
        case 98:
        }
        setForceTranscript(paramCodedInputStreamMicro.readString());
      }
    }

    public RecognizerSessionParams setAlternateParams(Alternates.AlternateParams paramAlternateParams)
    {
      if (paramAlternateParams == null)
        throw new NullPointerException();
      this.hasAlternateParams = true;
      this.alternateParams_ = paramAlternateParams;
      return this;
    }

    public RecognizerSessionParams setChannelCount(int paramInt)
    {
      this.hasChannelCount = true;
      this.channelCount_ = paramInt;
      return this;
    }

    public RecognizerSessionParams setEnableAlternates(boolean paramBoolean)
    {
      this.hasEnableAlternates = true;
      this.enableAlternates_ = paramBoolean;
      return this;
    }

    public RecognizerSessionParams setEnableFrameLogging(boolean paramBoolean)
    {
      this.hasEnableFrameLogging = true;
      this.enableFrameLogging_ = paramBoolean;
      return this;
    }

    public RecognizerSessionParams setEnablePartialResults(boolean paramBoolean)
    {
      this.hasEnablePartialResults = true;
      this.enablePartialResults_ = paramBoolean;
      return this;
    }

    public RecognizerSessionParams setForceTranscript(String paramString)
    {
      this.hasForceTranscript = true;
      this.forceTranscript_ = paramString;
      return this;
    }

    public RecognizerSessionParams setHotwordDecisionThreshold(float paramFloat)
    {
      this.hasHotwordDecisionThreshold = true;
      this.hotwordDecisionThreshold_ = paramFloat;
      return this;
    }

    public RecognizerSessionParams setMaskOffensiveWords(boolean paramBoolean)
    {
      this.hasMaskOffensiveWords = true;
      this.maskOffensiveWords_ = paramBoolean;
      return this;
    }

    public RecognizerSessionParams setNumNbest(int paramInt)
    {
      this.hasNumNbest = true;
      this.numNbest_ = paramInt;
      return this;
    }

    public RecognizerSessionParams setResetIntervalMs(int paramInt)
    {
      this.hasResetIntervalMs = true;
      this.resetIntervalMs_ = paramInt;
      return this;
    }

    public RecognizerSessionParams setSampleRate(float paramFloat)
    {
      this.hasSampleRate = true;
      this.sampleRate_ = paramFloat;
      return this;
    }

    public RecognizerSessionParams setType(int paramInt)
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
      if (hasSampleRate())
        paramCodedOutputStreamMicro.writeFloat(2, getSampleRate());
      if (hasMaskOffensiveWords())
        paramCodedOutputStreamMicro.writeBool(3, getMaskOffensiveWords());
      if (hasEnableAlternates())
        paramCodedOutputStreamMicro.writeBool(4, getEnableAlternates());
      if (hasAlternateParams())
        paramCodedOutputStreamMicro.writeMessage(5, getAlternateParams());
      if (hasNumNbest())
        paramCodedOutputStreamMicro.writeInt32(6, getNumNbest());
      if (hasEnablePartialResults())
        paramCodedOutputStreamMicro.writeBool(7, getEnablePartialResults());
      if (hasResetIntervalMs())
        paramCodedOutputStreamMicro.writeInt32(8, getResetIntervalMs());
      if (hasHotwordDecisionThreshold())
        paramCodedOutputStreamMicro.writeFloat(9, getHotwordDecisionThreshold());
      if (hasChannelCount())
        paramCodedOutputStreamMicro.writeInt32(10, getChannelCount());
      if (hasEnableFrameLogging())
        paramCodedOutputStreamMicro.writeBool(11, getEnableFrameLogging());
      if (hasForceTranscript())
        paramCodedOutputStreamMicro.writeString(12, getForceTranscript());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.api.RecognizerSessionParamsProto
 * JD-Core Version:    0.6.2
 */