package com.google.speech.speech.s3;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.common.Alternates.AlternateParams;
import com.google.speech.common.proto.RecognitionContextProto.RecognitionContext;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import java.io.IOException;

public final class Recognizer
{
  public static final class RecognizerEvent extends MessageMicro
  {
    public static final int ENDPOINTER_EVENT_FIELD_NUMBER = 2;
    public static final int RECOGNITION_EVENT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private RecognizerProtos.EndpointerEvent endpointerEvent_ = null;
    private boolean hasEndpointerEvent;
    private boolean hasRecognitionEvent;
    private RecognizerProtos.RecognitionEvent recognitionEvent_ = null;

    public static RecognizerEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizerEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizerEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizerEvent)new RecognizerEvent().mergeFrom(paramArrayOfByte);
    }

    public final RecognizerEvent clear()
    {
      clearRecognitionEvent();
      clearEndpointerEvent();
      this.cachedSize = -1;
      return this;
    }

    public RecognizerEvent clearEndpointerEvent()
    {
      this.hasEndpointerEvent = false;
      this.endpointerEvent_ = null;
      return this;
    }

    public RecognizerEvent clearRecognitionEvent()
    {
      this.hasRecognitionEvent = false;
      this.recognitionEvent_ = null;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public RecognizerProtos.EndpointerEvent getEndpointerEvent()
    {
      return this.endpointerEvent_;
    }

    public RecognizerProtos.RecognitionEvent getRecognitionEvent()
    {
      return this.recognitionEvent_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRecognitionEvent();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getRecognitionEvent());
      if (hasEndpointerEvent())
        i += CodedOutputStreamMicro.computeMessageSize(2, getEndpointerEvent());
      this.cachedSize = i;
      return i;
    }

    public boolean hasEndpointerEvent()
    {
      return this.hasEndpointerEvent;
    }

    public boolean hasRecognitionEvent()
    {
      return this.hasRecognitionEvent;
    }

    public final boolean isInitialized()
    {
      return (!hasRecognitionEvent()) || (getRecognitionEvent().isInitialized());
    }

    public RecognizerEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          RecognizerProtos.RecognitionEvent localRecognitionEvent = new RecognizerProtos.RecognitionEvent();
          paramCodedInputStreamMicro.readMessage(localRecognitionEvent);
          setRecognitionEvent(localRecognitionEvent);
          break;
        case 18:
        }
        RecognizerProtos.EndpointerEvent localEndpointerEvent = new RecognizerProtos.EndpointerEvent();
        paramCodedInputStreamMicro.readMessage(localEndpointerEvent);
        setEndpointerEvent(localEndpointerEvent);
      }
    }

    public RecognizerEvent setEndpointerEvent(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
    {
      if (paramEndpointerEvent == null)
        throw new NullPointerException();
      this.hasEndpointerEvent = true;
      this.endpointerEvent_ = paramEndpointerEvent;
      return this;
    }

    public RecognizerEvent setRecognitionEvent(RecognizerProtos.RecognitionEvent paramRecognitionEvent)
    {
      if (paramRecognitionEvent == null)
        throw new NullPointerException();
      this.hasRecognitionEvent = true;
      this.recognitionEvent_ = paramRecognitionEvent;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRecognitionEvent())
        paramCodedOutputStreamMicro.writeMessage(1, getRecognitionEvent());
      if (hasEndpointerEvent())
        paramCodedOutputStreamMicro.writeMessage(2, getEndpointerEvent());
    }
  }

  public static final class S3RecognizerInfo extends MessageMicro
  {
    public static final int ALTERNATE_PARAMS_FIELD_NUMBER = 4;
    public static final int CONDITION_FIELD_NUMBER = 10;
    public static final int CONFIDENCE_THRESHOLD_FIELD_NUMBER = 8;
    public static final int DICTATION_MODE_FIELD_NUMBER = 11;
    public static final int ENABLE_ALTERNATES_FIELD_NUMBER = 13;
    public static final int ENABLE_COMBINED_NBEST_FIELD_NUMBER = 14;
    public static final int ENABLE_ENDPOINTER_EVENTS_FIELD_NUMBER = 20;
    public static final int ENABLE_LATTICE_FIELD_NUMBER = 6;
    public static final int ENABLE_PARTIAL_RESULTS_FIELD_NUMBER = 5;
    public static final int ENABLE_PERSONALIZATION_FIELD_NUMBER = 16;
    public static final int ENABLE_SEMANTIC_RESULTS_FIELD_NUMBER = 12;
    public static final int GRAMMAR_PARAMS_FIELD_NUMBER = 9;
    public static final int GRECO2_COMPAT_MODE_FIELD_NUMBER = 15;
    public static final int LOGGING_DATA_REQUESTED_FIELD_NUMBER = 17;
    public static final int LOG_FEATURES_FIELD_NUMBER = 18;
    public static final int MAX_NBEST_FIELD_NUMBER = 3;
    public static final int PROFANITY_FILTER_FIELD_NUMBER = 7;
    public static final int PROFANITY_FILTER_TYPES_FSTARS = 2;
    public static final int PROFANITY_FILTER_TYPES_HASHES = 1;
    public static final int PROFANITY_FILTER_TYPES_NONE = 0;
    public static final int RECOGNITION_CONTEXT_FIELD_NUMBER = 1;
    public static final int RESET_INTERVAL_MS_FIELD_NUMBER = 19;
    private Alternates.AlternateParams alternateParams_ = null;
    private int cachedSize = -1;
    private String condition_ = "";
    private float confidenceThreshold_ = 0.0F;
    private boolean dictationMode_ = false;
    private boolean enableAlternates_ = false;
    private boolean enableCombinedNbest_ = false;
    private boolean enableEndpointerEvents_ = false;
    private boolean enableLattice_ = false;
    private boolean enablePartialResults_ = false;
    private boolean enablePersonalization_ = false;
    private boolean enableSemanticResults_ = false;
    private GrammarSelectorParams grammarParams_ = null;
    private boolean greco2CompatMode_ = false;
    private boolean hasAlternateParams;
    private boolean hasCondition;
    private boolean hasConfidenceThreshold;
    private boolean hasDictationMode;
    private boolean hasEnableAlternates;
    private boolean hasEnableCombinedNbest;
    private boolean hasEnableEndpointerEvents;
    private boolean hasEnableLattice;
    private boolean hasEnablePartialResults;
    private boolean hasEnablePersonalization;
    private boolean hasEnableSemanticResults;
    private boolean hasGrammarParams;
    private boolean hasGreco2CompatMode;
    private boolean hasLogFeatures;
    private boolean hasLoggingDataRequested;
    private boolean hasMaxNbest;
    private boolean hasProfanityFilter;
    private boolean hasRecognitionContext;
    private boolean hasResetIntervalMs;
    private boolean logFeatures_ = false;
    private boolean loggingDataRequested_ = false;
    private int maxNbest_ = 1;
    private int profanityFilter_ = 2;
    private RecognitionContextProto.RecognitionContext recognitionContext_ = null;
    private int resetIntervalMs_ = 0;

    public static S3RecognizerInfo parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new S3RecognizerInfo().mergeFrom(paramCodedInputStreamMicro);
    }

    public static S3RecognizerInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (S3RecognizerInfo)new S3RecognizerInfo().mergeFrom(paramArrayOfByte);
    }

    public final S3RecognizerInfo clear()
    {
      clearRecognitionContext();
      clearMaxNbest();
      clearAlternateParams();
      clearEnablePartialResults();
      clearEnableLattice();
      clearProfanityFilter();
      clearConfidenceThreshold();
      clearGrammarParams();
      clearCondition();
      clearDictationMode();
      clearEnableSemanticResults();
      clearEnableAlternates();
      clearEnableCombinedNbest();
      clearGreco2CompatMode();
      clearEnablePersonalization();
      clearLoggingDataRequested();
      clearLogFeatures();
      clearResetIntervalMs();
      clearEnableEndpointerEvents();
      this.cachedSize = -1;
      return this;
    }

    public S3RecognizerInfo clearAlternateParams()
    {
      this.hasAlternateParams = false;
      this.alternateParams_ = null;
      return this;
    }

    public S3RecognizerInfo clearCondition()
    {
      this.hasCondition = false;
      this.condition_ = "";
      return this;
    }

    public S3RecognizerInfo clearConfidenceThreshold()
    {
      this.hasConfidenceThreshold = false;
      this.confidenceThreshold_ = 0.0F;
      return this;
    }

    public S3RecognizerInfo clearDictationMode()
    {
      this.hasDictationMode = false;
      this.dictationMode_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnableAlternates()
    {
      this.hasEnableAlternates = false;
      this.enableAlternates_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnableCombinedNbest()
    {
      this.hasEnableCombinedNbest = false;
      this.enableCombinedNbest_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnableEndpointerEvents()
    {
      this.hasEnableEndpointerEvents = false;
      this.enableEndpointerEvents_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnableLattice()
    {
      this.hasEnableLattice = false;
      this.enableLattice_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnablePartialResults()
    {
      this.hasEnablePartialResults = false;
      this.enablePartialResults_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnablePersonalization()
    {
      this.hasEnablePersonalization = false;
      this.enablePersonalization_ = false;
      return this;
    }

    public S3RecognizerInfo clearEnableSemanticResults()
    {
      this.hasEnableSemanticResults = false;
      this.enableSemanticResults_ = false;
      return this;
    }

    public S3RecognizerInfo clearGrammarParams()
    {
      this.hasGrammarParams = false;
      this.grammarParams_ = null;
      return this;
    }

    public S3RecognizerInfo clearGreco2CompatMode()
    {
      this.hasGreco2CompatMode = false;
      this.greco2CompatMode_ = false;
      return this;
    }

    public S3RecognizerInfo clearLogFeatures()
    {
      this.hasLogFeatures = false;
      this.logFeatures_ = false;
      return this;
    }

    public S3RecognizerInfo clearLoggingDataRequested()
    {
      this.hasLoggingDataRequested = false;
      this.loggingDataRequested_ = false;
      return this;
    }

    public S3RecognizerInfo clearMaxNbest()
    {
      this.hasMaxNbest = false;
      this.maxNbest_ = 1;
      return this;
    }

    public S3RecognizerInfo clearProfanityFilter()
    {
      this.hasProfanityFilter = false;
      this.profanityFilter_ = 2;
      return this;
    }

    public S3RecognizerInfo clearRecognitionContext()
    {
      this.hasRecognitionContext = false;
      this.recognitionContext_ = null;
      return this;
    }

    public S3RecognizerInfo clearResetIntervalMs()
    {
      this.hasResetIntervalMs = false;
      this.resetIntervalMs_ = 0;
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

    public String getCondition()
    {
      return this.condition_;
    }

    public float getConfidenceThreshold()
    {
      return this.confidenceThreshold_;
    }

    public boolean getDictationMode()
    {
      return this.dictationMode_;
    }

    public boolean getEnableAlternates()
    {
      return this.enableAlternates_;
    }

    public boolean getEnableCombinedNbest()
    {
      return this.enableCombinedNbest_;
    }

    public boolean getEnableEndpointerEvents()
    {
      return this.enableEndpointerEvents_;
    }

    public boolean getEnableLattice()
    {
      return this.enableLattice_;
    }

    public boolean getEnablePartialResults()
    {
      return this.enablePartialResults_;
    }

    public boolean getEnablePersonalization()
    {
      return this.enablePersonalization_;
    }

    public boolean getEnableSemanticResults()
    {
      return this.enableSemanticResults_;
    }

    public GrammarSelectorParams getGrammarParams()
    {
      return this.grammarParams_;
    }

    public boolean getGreco2CompatMode()
    {
      return this.greco2CompatMode_;
    }

    public boolean getLogFeatures()
    {
      return this.logFeatures_;
    }

    public boolean getLoggingDataRequested()
    {
      return this.loggingDataRequested_;
    }

    public int getMaxNbest()
    {
      return this.maxNbest_;
    }

    public int getProfanityFilter()
    {
      return this.profanityFilter_;
    }

    public RecognitionContextProto.RecognitionContext getRecognitionContext()
    {
      return this.recognitionContext_;
    }

    public int getResetIntervalMs()
    {
      return this.resetIntervalMs_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRecognitionContext();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeMessageSize(1, getRecognitionContext());
      if (hasMaxNbest())
        i += CodedOutputStreamMicro.computeInt32Size(3, getMaxNbest());
      if (hasAlternateParams())
        i += CodedOutputStreamMicro.computeMessageSize(4, getAlternateParams());
      if (hasEnablePartialResults())
        i += CodedOutputStreamMicro.computeBoolSize(5, getEnablePartialResults());
      if (hasEnableLattice())
        i += CodedOutputStreamMicro.computeBoolSize(6, getEnableLattice());
      if (hasProfanityFilter())
        i += CodedOutputStreamMicro.computeInt32Size(7, getProfanityFilter());
      if (hasConfidenceThreshold())
        i += CodedOutputStreamMicro.computeFloatSize(8, getConfidenceThreshold());
      if (hasGrammarParams())
        i += CodedOutputStreamMicro.computeMessageSize(9, getGrammarParams());
      if (hasCondition())
        i += CodedOutputStreamMicro.computeStringSize(10, getCondition());
      if (hasDictationMode())
        i += CodedOutputStreamMicro.computeBoolSize(11, getDictationMode());
      if (hasEnableSemanticResults())
        i += CodedOutputStreamMicro.computeBoolSize(12, getEnableSemanticResults());
      if (hasEnableAlternates())
        i += CodedOutputStreamMicro.computeBoolSize(13, getEnableAlternates());
      if (hasEnableCombinedNbest())
        i += CodedOutputStreamMicro.computeBoolSize(14, getEnableCombinedNbest());
      if (hasGreco2CompatMode())
        i += CodedOutputStreamMicro.computeBoolSize(15, getGreco2CompatMode());
      if (hasEnablePersonalization())
        i += CodedOutputStreamMicro.computeBoolSize(16, getEnablePersonalization());
      if (hasLoggingDataRequested())
        i += CodedOutputStreamMicro.computeBoolSize(17, getLoggingDataRequested());
      if (hasLogFeatures())
        i += CodedOutputStreamMicro.computeBoolSize(18, getLogFeatures());
      if (hasResetIntervalMs())
        i += CodedOutputStreamMicro.computeInt32Size(19, getResetIntervalMs());
      if (hasEnableEndpointerEvents())
        i += CodedOutputStreamMicro.computeBoolSize(20, getEnableEndpointerEvents());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAlternateParams()
    {
      return this.hasAlternateParams;
    }

    public boolean hasCondition()
    {
      return this.hasCondition;
    }

    public boolean hasConfidenceThreshold()
    {
      return this.hasConfidenceThreshold;
    }

    public boolean hasDictationMode()
    {
      return this.hasDictationMode;
    }

    public boolean hasEnableAlternates()
    {
      return this.hasEnableAlternates;
    }

    public boolean hasEnableCombinedNbest()
    {
      return this.hasEnableCombinedNbest;
    }

    public boolean hasEnableEndpointerEvents()
    {
      return this.hasEnableEndpointerEvents;
    }

    public boolean hasEnableLattice()
    {
      return this.hasEnableLattice;
    }

    public boolean hasEnablePartialResults()
    {
      return this.hasEnablePartialResults;
    }

    public boolean hasEnablePersonalization()
    {
      return this.hasEnablePersonalization;
    }

    public boolean hasEnableSemanticResults()
    {
      return this.hasEnableSemanticResults;
    }

    public boolean hasGrammarParams()
    {
      return this.hasGrammarParams;
    }

    public boolean hasGreco2CompatMode()
    {
      return this.hasGreco2CompatMode;
    }

    public boolean hasLogFeatures()
    {
      return this.hasLogFeatures;
    }

    public boolean hasLoggingDataRequested()
    {
      return this.hasLoggingDataRequested;
    }

    public boolean hasMaxNbest()
    {
      return this.hasMaxNbest;
    }

    public boolean hasProfanityFilter()
    {
      return this.hasProfanityFilter;
    }

    public boolean hasRecognitionContext()
    {
      return this.hasRecognitionContext;
    }

    public boolean hasResetIntervalMs()
    {
      return this.hasResetIntervalMs;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public S3RecognizerInfo mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          RecognitionContextProto.RecognitionContext localRecognitionContext = new RecognitionContextProto.RecognitionContext();
          paramCodedInputStreamMicro.readMessage(localRecognitionContext);
          setRecognitionContext(localRecognitionContext);
          break;
        case 24:
          setMaxNbest(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
          Alternates.AlternateParams localAlternateParams = new Alternates.AlternateParams();
          paramCodedInputStreamMicro.readMessage(localAlternateParams);
          setAlternateParams(localAlternateParams);
          break;
        case 40:
          setEnablePartialResults(paramCodedInputStreamMicro.readBool());
          break;
        case 48:
          setEnableLattice(paramCodedInputStreamMicro.readBool());
          break;
        case 56:
          setProfanityFilter(paramCodedInputStreamMicro.readInt32());
          break;
        case 69:
          setConfidenceThreshold(paramCodedInputStreamMicro.readFloat());
          break;
        case 74:
          GrammarSelectorParams localGrammarSelectorParams = new GrammarSelectorParams();
          paramCodedInputStreamMicro.readMessage(localGrammarSelectorParams);
          setGrammarParams(localGrammarSelectorParams);
          break;
        case 82:
          setCondition(paramCodedInputStreamMicro.readString());
          break;
        case 88:
          setDictationMode(paramCodedInputStreamMicro.readBool());
          break;
        case 96:
          setEnableSemanticResults(paramCodedInputStreamMicro.readBool());
          break;
        case 104:
          setEnableAlternates(paramCodedInputStreamMicro.readBool());
          break;
        case 112:
          setEnableCombinedNbest(paramCodedInputStreamMicro.readBool());
          break;
        case 120:
          setGreco2CompatMode(paramCodedInputStreamMicro.readBool());
          break;
        case 128:
          setEnablePersonalization(paramCodedInputStreamMicro.readBool());
          break;
        case 136:
          setLoggingDataRequested(paramCodedInputStreamMicro.readBool());
          break;
        case 144:
          setLogFeatures(paramCodedInputStreamMicro.readBool());
          break;
        case 152:
          setResetIntervalMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 160:
        }
        setEnableEndpointerEvents(paramCodedInputStreamMicro.readBool());
      }
    }

    public S3RecognizerInfo setAlternateParams(Alternates.AlternateParams paramAlternateParams)
    {
      if (paramAlternateParams == null)
        throw new NullPointerException();
      this.hasAlternateParams = true;
      this.alternateParams_ = paramAlternateParams;
      return this;
    }

    public S3RecognizerInfo setCondition(String paramString)
    {
      this.hasCondition = true;
      this.condition_ = paramString;
      return this;
    }

    public S3RecognizerInfo setConfidenceThreshold(float paramFloat)
    {
      this.hasConfidenceThreshold = true;
      this.confidenceThreshold_ = paramFloat;
      return this;
    }

    public S3RecognizerInfo setDictationMode(boolean paramBoolean)
    {
      this.hasDictationMode = true;
      this.dictationMode_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnableAlternates(boolean paramBoolean)
    {
      this.hasEnableAlternates = true;
      this.enableAlternates_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnableCombinedNbest(boolean paramBoolean)
    {
      this.hasEnableCombinedNbest = true;
      this.enableCombinedNbest_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnableEndpointerEvents(boolean paramBoolean)
    {
      this.hasEnableEndpointerEvents = true;
      this.enableEndpointerEvents_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnableLattice(boolean paramBoolean)
    {
      this.hasEnableLattice = true;
      this.enableLattice_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnablePartialResults(boolean paramBoolean)
    {
      this.hasEnablePartialResults = true;
      this.enablePartialResults_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnablePersonalization(boolean paramBoolean)
    {
      this.hasEnablePersonalization = true;
      this.enablePersonalization_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setEnableSemanticResults(boolean paramBoolean)
    {
      this.hasEnableSemanticResults = true;
      this.enableSemanticResults_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setGrammarParams(GrammarSelectorParams paramGrammarSelectorParams)
    {
      if (paramGrammarSelectorParams == null)
        throw new NullPointerException();
      this.hasGrammarParams = true;
      this.grammarParams_ = paramGrammarSelectorParams;
      return this;
    }

    public S3RecognizerInfo setGreco2CompatMode(boolean paramBoolean)
    {
      this.hasGreco2CompatMode = true;
      this.greco2CompatMode_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setLogFeatures(boolean paramBoolean)
    {
      this.hasLogFeatures = true;
      this.logFeatures_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setLoggingDataRequested(boolean paramBoolean)
    {
      this.hasLoggingDataRequested = true;
      this.loggingDataRequested_ = paramBoolean;
      return this;
    }

    public S3RecognizerInfo setMaxNbest(int paramInt)
    {
      this.hasMaxNbest = true;
      this.maxNbest_ = paramInt;
      return this;
    }

    public S3RecognizerInfo setProfanityFilter(int paramInt)
    {
      this.hasProfanityFilter = true;
      this.profanityFilter_ = paramInt;
      return this;
    }

    public S3RecognizerInfo setRecognitionContext(RecognitionContextProto.RecognitionContext paramRecognitionContext)
    {
      if (paramRecognitionContext == null)
        throw new NullPointerException();
      this.hasRecognitionContext = true;
      this.recognitionContext_ = paramRecognitionContext;
      return this;
    }

    public S3RecognizerInfo setResetIntervalMs(int paramInt)
    {
      this.hasResetIntervalMs = true;
      this.resetIntervalMs_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRecognitionContext())
        paramCodedOutputStreamMicro.writeMessage(1, getRecognitionContext());
      if (hasMaxNbest())
        paramCodedOutputStreamMicro.writeInt32(3, getMaxNbest());
      if (hasAlternateParams())
        paramCodedOutputStreamMicro.writeMessage(4, getAlternateParams());
      if (hasEnablePartialResults())
        paramCodedOutputStreamMicro.writeBool(5, getEnablePartialResults());
      if (hasEnableLattice())
        paramCodedOutputStreamMicro.writeBool(6, getEnableLattice());
      if (hasProfanityFilter())
        paramCodedOutputStreamMicro.writeInt32(7, getProfanityFilter());
      if (hasConfidenceThreshold())
        paramCodedOutputStreamMicro.writeFloat(8, getConfidenceThreshold());
      if (hasGrammarParams())
        paramCodedOutputStreamMicro.writeMessage(9, getGrammarParams());
      if (hasCondition())
        paramCodedOutputStreamMicro.writeString(10, getCondition());
      if (hasDictationMode())
        paramCodedOutputStreamMicro.writeBool(11, getDictationMode());
      if (hasEnableSemanticResults())
        paramCodedOutputStreamMicro.writeBool(12, getEnableSemanticResults());
      if (hasEnableAlternates())
        paramCodedOutputStreamMicro.writeBool(13, getEnableAlternates());
      if (hasEnableCombinedNbest())
        paramCodedOutputStreamMicro.writeBool(14, getEnableCombinedNbest());
      if (hasGreco2CompatMode())
        paramCodedOutputStreamMicro.writeBool(15, getGreco2CompatMode());
      if (hasEnablePersonalization())
        paramCodedOutputStreamMicro.writeBool(16, getEnablePersonalization());
      if (hasLoggingDataRequested())
        paramCodedOutputStreamMicro.writeBool(17, getLoggingDataRequested());
      if (hasLogFeatures())
        paramCodedOutputStreamMicro.writeBool(18, getLogFeatures());
      if (hasResetIntervalMs())
        paramCodedOutputStreamMicro.writeInt32(19, getResetIntervalMs());
      if (hasEnableEndpointerEvents())
        paramCodedOutputStreamMicro.writeBool(20, getEnableEndpointerEvents());
    }

    public static final class GrammarSelectorParams extends MessageMicro
    {
      public static final int SELECTED_APPLICATION_FIELD_NUMBER = 1;
      public static final int SELECTED_SLOT_FIELD_NUMBER = 2;
      private int cachedSize = -1;
      private boolean hasSelectedApplication;
      private boolean hasSelectedSlot;
      private String selectedApplication_ = "";
      private String selectedSlot_ = "";

      public final GrammarSelectorParams clear()
      {
        clearSelectedApplication();
        clearSelectedSlot();
        this.cachedSize = -1;
        return this;
      }

      public GrammarSelectorParams clearSelectedApplication()
      {
        this.hasSelectedApplication = false;
        this.selectedApplication_ = "";
        return this;
      }

      public GrammarSelectorParams clearSelectedSlot()
      {
        this.hasSelectedSlot = false;
        this.selectedSlot_ = "";
        return this;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public String getSelectedApplication()
      {
        return this.selectedApplication_;
      }

      public String getSelectedSlot()
      {
        return this.selectedSlot_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasSelectedApplication();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSelectedApplication());
        if (hasSelectedSlot())
          i += CodedOutputStreamMicro.computeStringSize(2, getSelectedSlot());
        this.cachedSize = i;
        return i;
      }

      public boolean hasSelectedApplication()
      {
        return this.hasSelectedApplication;
      }

      public boolean hasSelectedSlot()
      {
        return this.hasSelectedSlot;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public GrammarSelectorParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            setSelectedApplication(paramCodedInputStreamMicro.readString());
            break;
          case 18:
          }
          setSelectedSlot(paramCodedInputStreamMicro.readString());
        }
      }

      public GrammarSelectorParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new GrammarSelectorParams().mergeFrom(paramCodedInputStreamMicro);
      }

      public GrammarSelectorParams parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (GrammarSelectorParams)new GrammarSelectorParams().mergeFrom(paramArrayOfByte);
      }

      public GrammarSelectorParams setSelectedApplication(String paramString)
      {
        this.hasSelectedApplication = true;
        this.selectedApplication_ = paramString;
        return this;
      }

      public GrammarSelectorParams setSelectedSlot(String paramString)
      {
        this.hasSelectedSlot = true;
        this.selectedSlot_ = paramString;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasSelectedApplication())
          paramCodedOutputStreamMicro.writeString(1, getSelectedApplication());
        if (hasSelectedSlot())
          paramCodedOutputStreamMicro.writeString(2, getSelectedSlot());
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.speech.s3.Recognizer
 * JD-Core Version:    0.6.2
 */