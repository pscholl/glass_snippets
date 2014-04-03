package com.google.speech.recognizer.api;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.common.Alternates.RecognitionClientAlternates;
import com.google.speech.decoder.common.Alignment.AlignmentProto;
import com.google.speech.decoder.confidence.ConfFeature.WordConfFeature;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import speech.InterpretationProto.Interpretation;

public final class RecognizerProtos
{
  public static final int STATUS_CODE_STATUS_CANCELED = 4;
  public static final int STATUS_CODE_STATUS_INITIALIZATION_ERROR = 1;
  public static final int STATUS_CODE_STATUS_RECOGNITION_ERROR = 2;
  public static final int STATUS_CODE_STATUS_STREAM_BROKEN = 3;
  public static final int STATUS_CODE_STATUS_SUCCESS;

  public static final class AudioEvent extends MessageMicro
  {
    public static final int DATA_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private ByteStringMicro data_ = ByteStringMicro.EMPTY;
    private boolean hasData;

    public static AudioEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AudioEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AudioEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AudioEvent)new AudioEvent().mergeFrom(paramArrayOfByte);
    }

    public final AudioEvent clear()
    {
      clearData();
      this.cachedSize = -1;
      return this;
    }

    public AudioEvent clearData()
    {
      this.hasData = false;
      this.data_ = ByteStringMicro.EMPTY;
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

    public int getSerializedSize()
    {
      boolean bool = hasData();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeBytesSize(1, getData());
      this.cachedSize = i;
      return i;
    }

    public boolean hasData()
    {
      return this.hasData;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AudioEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        setData(paramCodedInputStreamMicro.readBytes());
      }
    }

    public AudioEvent setData(ByteStringMicro paramByteStringMicro)
    {
      this.hasData = true;
      this.data_ = paramByteStringMicro;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasData())
        paramCodedOutputStreamMicro.writeBytes(1, getData());
    }
  }

  public static final class AudioLevelEvent extends MessageMicro
  {
    public static final int LEVEL_FIELD_NUMBER = 1;
    public static final int TIME_USEC_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLevel;
    private boolean hasTimeUsec;
    private float level_ = 0.0F;
    private long timeUsec_ = 0L;

    public static AudioLevelEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AudioLevelEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AudioLevelEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AudioLevelEvent)new AudioLevelEvent().mergeFrom(paramArrayOfByte);
    }

    public final AudioLevelEvent clear()
    {
      clearLevel();
      clearTimeUsec();
      this.cachedSize = -1;
      return this;
    }

    public AudioLevelEvent clearLevel()
    {
      this.hasLevel = false;
      this.level_ = 0.0F;
      return this;
    }

    public AudioLevelEvent clearTimeUsec()
    {
      this.hasTimeUsec = false;
      this.timeUsec_ = 0L;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public float getLevel()
    {
      return this.level_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLevel();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getLevel());
      if (hasTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(2, getTimeUsec());
      this.cachedSize = i;
      return i;
    }

    public long getTimeUsec()
    {
      return this.timeUsec_;
    }

    public boolean hasLevel()
    {
      return this.hasLevel;
    }

    public boolean hasTimeUsec()
    {
      return this.hasTimeUsec;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AudioLevelEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLevel(paramCodedInputStreamMicro.readFloat());
          break;
        case 16:
        }
        setTimeUsec(paramCodedInputStreamMicro.readInt64());
      }
    }

    public AudioLevelEvent setLevel(float paramFloat)
    {
      this.hasLevel = true;
      this.level_ = paramFloat;
      return this;
    }

    public AudioLevelEvent setTimeUsec(long paramLong)
    {
      this.hasTimeUsec = true;
      this.timeUsec_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLevel())
        paramCodedOutputStreamMicro.writeFloat(1, getLevel());
      if (hasTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(2, getTimeUsec());
    }
  }

  public static final class EndpointerEvent extends MessageMicro
  {
    public static final int EVENT_TYPE_END_OF_AUDIO = 2;
    public static final int EVENT_TYPE_END_OF_SPEECH = 1;
    public static final int EVENT_TYPE_FIELD_NUMBER = 1;
    public static final int EVENT_TYPE_START_OF_SPEECH = 0;
    public static final int TIME_USEC_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private int eventType_ = 0;
    private boolean hasEventType;
    private boolean hasTimeUsec;
    private long timeUsec_ = 0L;

    public static EndpointerEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EndpointerEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EndpointerEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EndpointerEvent)new EndpointerEvent().mergeFrom(paramArrayOfByte);
    }

    public final EndpointerEvent clear()
    {
      clearEventType();
      clearTimeUsec();
      this.cachedSize = -1;
      return this;
    }

    public EndpointerEvent clearEventType()
    {
      this.hasEventType = false;
      this.eventType_ = 0;
      return this;
    }

    public EndpointerEvent clearTimeUsec()
    {
      this.hasTimeUsec = false;
      this.timeUsec_ = 0L;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getEventType()
    {
      return this.eventType_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasEventType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getEventType());
      if (hasTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(2, getTimeUsec());
      this.cachedSize = i;
      return i;
    }

    public long getTimeUsec()
    {
      return this.timeUsec_;
    }

    public boolean hasEventType()
    {
      return this.hasEventType;
    }

    public boolean hasTimeUsec()
    {
      return this.hasTimeUsec;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EndpointerEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setEventType(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
        }
        setTimeUsec(paramCodedInputStreamMicro.readInt64());
      }
    }

    public EndpointerEvent setEventType(int paramInt)
    {
      this.hasEventType = true;
      this.eventType_ = paramInt;
      return this;
    }

    public EndpointerEvent setTimeUsec(long paramLong)
    {
      this.hasTimeUsec = true;
      this.timeUsec_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasEventType())
        paramCodedOutputStreamMicro.writeInt32(1, getEventType());
      if (hasTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(2, getTimeUsec());
    }
  }

  public static final class HotwordEvent extends MessageMicro
  {
    public static final int EVENT_TYPE_END_OF_HOTWORD = 1;
    public static final int EVENT_TYPE_FIELD_NUMBER = 1;
    public static final int EVENT_TYPE_START_OF_HOTWORD = 0;
    public static final int TIME_USEC_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private int eventType_ = 0;
    private boolean hasEventType;
    private boolean hasTimeUsec;
    private long timeUsec_ = 0L;

    public static HotwordEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new HotwordEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static HotwordEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (HotwordEvent)new HotwordEvent().mergeFrom(paramArrayOfByte);
    }

    public final HotwordEvent clear()
    {
      clearEventType();
      clearTimeUsec();
      this.cachedSize = -1;
      return this;
    }

    public HotwordEvent clearEventType()
    {
      this.hasEventType = false;
      this.eventType_ = 0;
      return this;
    }

    public HotwordEvent clearTimeUsec()
    {
      this.hasTimeUsec = false;
      this.timeUsec_ = 0L;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getEventType()
    {
      return this.eventType_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasEventType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getEventType());
      if (hasTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(3, getTimeUsec());
      this.cachedSize = i;
      return i;
    }

    public long getTimeUsec()
    {
      return this.timeUsec_;
    }

    public boolean hasEventType()
    {
      return this.hasEventType;
    }

    public boolean hasTimeUsec()
    {
      return this.hasTimeUsec;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public HotwordEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setEventType(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
        }
        setTimeUsec(paramCodedInputStreamMicro.readInt64());
      }
    }

    public HotwordEvent setEventType(int paramInt)
    {
      this.hasEventType = true;
      this.eventType_ = paramInt;
      return this;
    }

    public HotwordEvent setTimeUsec(long paramLong)
    {
      this.hasTimeUsec = true;
      this.timeUsec_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasEventType())
        paramCodedOutputStreamMicro.writeInt32(1, getEventType());
      if (hasTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(3, getTimeUsec());
    }
  }

  public static final class Hypothesis extends MessageMicro
  {
    public static final int ACCEPT_FIELD_NUMBER = 11;
    public static final int ALTERNATES_FIELD_NUMBER = 6;
    public static final int CONFIDENCE_FIELD_NUMBER = 2;
    public static final int PHONE_ALIGN_FIELD_NUMBER = 3;
    public static final int PRENORM_TEXT_FIELD_NUMBER = 12;
    public static final int SCRUBBED_TEXT_FIELD_NUMBER = 13;
    public static final int SEMANTIC_RESULT_FIELD_NUMBER = 7;
    public static final int STATE_ALIGN_FIELD_NUMBER = 10;
    public static final int TEXT_FIELD_NUMBER = 1;
    public static final int WORD_ALIGN_FIELD_NUMBER = 4;
    public static final int WORD_CONF_FEATURE_FIELD_NUMBER = 5;
    private boolean accept_ = true;
    private Alternates.RecognitionClientAlternates alternates_ = null;
    private int cachedSize = -1;
    private float confidence_ = 0.0F;
    private boolean hasAccept;
    private boolean hasAlternates;
    private boolean hasConfidence;
    private boolean hasPhoneAlign;
    private boolean hasPrenormText;
    private boolean hasScrubbedText;
    private boolean hasSemanticResult;
    private boolean hasStateAlign;
    private boolean hasText;
    private boolean hasWordAlign;
    private Alignment.AlignmentProto phoneAlign_ = null;
    private String prenormText_ = "";
    private String scrubbedText_ = "";
    private RecognizerProtos.SemanticResult semanticResult_ = null;
    private Alignment.AlignmentProto stateAlign_ = null;
    private String text_ = "";
    private Alignment.AlignmentProto wordAlign_ = null;
    private List<ConfFeature.WordConfFeature> wordConfFeature_ = Collections.emptyList();

    public static Hypothesis parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Hypothesis().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Hypothesis parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Hypothesis)new Hypothesis().mergeFrom(paramArrayOfByte);
    }

    public Hypothesis addWordConfFeature(ConfFeature.WordConfFeature paramWordConfFeature)
    {
      if (paramWordConfFeature == null)
        throw new NullPointerException();
      if (this.wordConfFeature_.isEmpty())
        this.wordConfFeature_ = new ArrayList();
      this.wordConfFeature_.add(paramWordConfFeature);
      return this;
    }

    public final Hypothesis clear()
    {
      clearText();
      clearPrenormText();
      clearScrubbedText();
      clearSemanticResult();
      clearConfidence();
      clearAccept();
      clearStateAlign();
      clearPhoneAlign();
      clearWordAlign();
      clearWordConfFeature();
      clearAlternates();
      this.cachedSize = -1;
      return this;
    }

    public Hypothesis clearAccept()
    {
      this.hasAccept = false;
      this.accept_ = true;
      return this;
    }

    public Hypothesis clearAlternates()
    {
      this.hasAlternates = false;
      this.alternates_ = null;
      return this;
    }

    public Hypothesis clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 0.0F;
      return this;
    }

    public Hypothesis clearPhoneAlign()
    {
      this.hasPhoneAlign = false;
      this.phoneAlign_ = null;
      return this;
    }

    public Hypothesis clearPrenormText()
    {
      this.hasPrenormText = false;
      this.prenormText_ = "";
      return this;
    }

    public Hypothesis clearScrubbedText()
    {
      this.hasScrubbedText = false;
      this.scrubbedText_ = "";
      return this;
    }

    public Hypothesis clearSemanticResult()
    {
      this.hasSemanticResult = false;
      this.semanticResult_ = null;
      return this;
    }

    public Hypothesis clearStateAlign()
    {
      this.hasStateAlign = false;
      this.stateAlign_ = null;
      return this;
    }

    public Hypothesis clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public Hypothesis clearWordAlign()
    {
      this.hasWordAlign = false;
      this.wordAlign_ = null;
      return this;
    }

    public Hypothesis clearWordConfFeature()
    {
      this.wordConfFeature_ = Collections.emptyList();
      return this;
    }

    public boolean getAccept()
    {
      return this.accept_;
    }

    public Alternates.RecognitionClientAlternates getAlternates()
    {
      return this.alternates_;
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

    public Alignment.AlignmentProto getPhoneAlign()
    {
      return this.phoneAlign_;
    }

    public String getPrenormText()
    {
      return this.prenormText_;
    }

    public String getScrubbedText()
    {
      return this.scrubbedText_;
    }

    public RecognizerProtos.SemanticResult getSemanticResult()
    {
      return this.semanticResult_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(2, getConfidence());
      if (hasPhoneAlign())
        i += CodedOutputStreamMicro.computeMessageSize(3, getPhoneAlign());
      if (hasWordAlign())
        i += CodedOutputStreamMicro.computeMessageSize(4, getWordAlign());
      Iterator localIterator = getWordConfFeatureList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (ConfFeature.WordConfFeature)localIterator.next());
      if (hasAlternates())
        i += CodedOutputStreamMicro.computeMessageSize(6, getAlternates());
      if (hasSemanticResult())
        i += CodedOutputStreamMicro.computeMessageSize(7, getSemanticResult());
      if (hasStateAlign())
        i += CodedOutputStreamMicro.computeMessageSize(10, getStateAlign());
      if (hasAccept())
        i += CodedOutputStreamMicro.computeBoolSize(11, getAccept());
      if (hasPrenormText())
        i += CodedOutputStreamMicro.computeStringSize(12, getPrenormText());
      if (hasScrubbedText())
        i += CodedOutputStreamMicro.computeStringSize(13, getScrubbedText());
      this.cachedSize = i;
      return i;
    }

    public Alignment.AlignmentProto getStateAlign()
    {
      return this.stateAlign_;
    }

    public String getText()
    {
      return this.text_;
    }

    public Alignment.AlignmentProto getWordAlign()
    {
      return this.wordAlign_;
    }

    public ConfFeature.WordConfFeature getWordConfFeature(int paramInt)
    {
      return (ConfFeature.WordConfFeature)this.wordConfFeature_.get(paramInt);
    }

    public int getWordConfFeatureCount()
    {
      return this.wordConfFeature_.size();
    }

    public List<ConfFeature.WordConfFeature> getWordConfFeatureList()
    {
      return this.wordConfFeature_;
    }

    public boolean hasAccept()
    {
      return this.hasAccept;
    }

    public boolean hasAlternates()
    {
      return this.hasAlternates;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasPhoneAlign()
    {
      return this.hasPhoneAlign;
    }

    public boolean hasPrenormText()
    {
      return this.hasPrenormText;
    }

    public boolean hasScrubbedText()
    {
      return this.hasScrubbedText;
    }

    public boolean hasSemanticResult()
    {
      return this.hasSemanticResult;
    }

    public boolean hasStateAlign()
    {
      return this.hasStateAlign;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public boolean hasWordAlign()
    {
      return this.hasWordAlign;
    }

    public final boolean isInitialized()
    {
      if ((hasSemanticResult()) && (!getSemanticResult().isInitialized()));
      while (((hasStateAlign()) && (!getStateAlign().isInitialized())) || ((hasPhoneAlign()) && (!getPhoneAlign().isInitialized())) || ((hasWordAlign()) && (!getWordAlign().isInitialized())) || ((hasAlternates()) && (!getAlternates().isInitialized())))
        return false;
      return true;
    }

    public Hypothesis mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 21:
          setConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 26:
          Alignment.AlignmentProto localAlignmentProto3 = new Alignment.AlignmentProto();
          paramCodedInputStreamMicro.readMessage(localAlignmentProto3);
          setPhoneAlign(localAlignmentProto3);
          break;
        case 34:
          Alignment.AlignmentProto localAlignmentProto2 = new Alignment.AlignmentProto();
          paramCodedInputStreamMicro.readMessage(localAlignmentProto2);
          setWordAlign(localAlignmentProto2);
          break;
        case 42:
          ConfFeature.WordConfFeature localWordConfFeature = new ConfFeature.WordConfFeature();
          paramCodedInputStreamMicro.readMessage(localWordConfFeature);
          addWordConfFeature(localWordConfFeature);
          break;
        case 50:
          Alternates.RecognitionClientAlternates localRecognitionClientAlternates = new Alternates.RecognitionClientAlternates();
          paramCodedInputStreamMicro.readMessage(localRecognitionClientAlternates);
          setAlternates(localRecognitionClientAlternates);
          break;
        case 58:
          RecognizerProtos.SemanticResult localSemanticResult = new RecognizerProtos.SemanticResult();
          paramCodedInputStreamMicro.readMessage(localSemanticResult);
          setSemanticResult(localSemanticResult);
          break;
        case 82:
          Alignment.AlignmentProto localAlignmentProto1 = new Alignment.AlignmentProto();
          paramCodedInputStreamMicro.readMessage(localAlignmentProto1);
          setStateAlign(localAlignmentProto1);
          break;
        case 88:
          setAccept(paramCodedInputStreamMicro.readBool());
          break;
        case 98:
          setPrenormText(paramCodedInputStreamMicro.readString());
          break;
        case 106:
        }
        setScrubbedText(paramCodedInputStreamMicro.readString());
      }
    }

    public Hypothesis setAccept(boolean paramBoolean)
    {
      this.hasAccept = true;
      this.accept_ = paramBoolean;
      return this;
    }

    public Hypothesis setAlternates(Alternates.RecognitionClientAlternates paramRecognitionClientAlternates)
    {
      if (paramRecognitionClientAlternates == null)
        throw new NullPointerException();
      this.hasAlternates = true;
      this.alternates_ = paramRecognitionClientAlternates;
      return this;
    }

    public Hypothesis setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public Hypothesis setPhoneAlign(Alignment.AlignmentProto paramAlignmentProto)
    {
      if (paramAlignmentProto == null)
        throw new NullPointerException();
      this.hasPhoneAlign = true;
      this.phoneAlign_ = paramAlignmentProto;
      return this;
    }

    public Hypothesis setPrenormText(String paramString)
    {
      this.hasPrenormText = true;
      this.prenormText_ = paramString;
      return this;
    }

    public Hypothesis setScrubbedText(String paramString)
    {
      this.hasScrubbedText = true;
      this.scrubbedText_ = paramString;
      return this;
    }

    public Hypothesis setSemanticResult(RecognizerProtos.SemanticResult paramSemanticResult)
    {
      if (paramSemanticResult == null)
        throw new NullPointerException();
      this.hasSemanticResult = true;
      this.semanticResult_ = paramSemanticResult;
      return this;
    }

    public Hypothesis setStateAlign(Alignment.AlignmentProto paramAlignmentProto)
    {
      if (paramAlignmentProto == null)
        throw new NullPointerException();
      this.hasStateAlign = true;
      this.stateAlign_ = paramAlignmentProto;
      return this;
    }

    public Hypothesis setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public Hypothesis setWordAlign(Alignment.AlignmentProto paramAlignmentProto)
    {
      if (paramAlignmentProto == null)
        throw new NullPointerException();
      this.hasWordAlign = true;
      this.wordAlign_ = paramAlignmentProto;
      return this;
    }

    public Hypothesis setWordConfFeature(int paramInt, ConfFeature.WordConfFeature paramWordConfFeature)
    {
      if (paramWordConfFeature == null)
        throw new NullPointerException();
      this.wordConfFeature_.set(paramInt, paramWordConfFeature);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasText())
        paramCodedOutputStreamMicro.writeString(1, getText());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(2, getConfidence());
      if (hasPhoneAlign())
        paramCodedOutputStreamMicro.writeMessage(3, getPhoneAlign());
      if (hasWordAlign())
        paramCodedOutputStreamMicro.writeMessage(4, getWordAlign());
      Iterator localIterator = getWordConfFeatureList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (ConfFeature.WordConfFeature)localIterator.next());
      if (hasAlternates())
        paramCodedOutputStreamMicro.writeMessage(6, getAlternates());
      if (hasSemanticResult())
        paramCodedOutputStreamMicro.writeMessage(7, getSemanticResult());
      if (hasStateAlign())
        paramCodedOutputStreamMicro.writeMessage(10, getStateAlign());
      if (hasAccept())
        paramCodedOutputStreamMicro.writeBool(11, getAccept());
      if (hasPrenormText())
        paramCodedOutputStreamMicro.writeString(12, getPrenormText());
      if (hasScrubbedText())
        paramCodedOutputStreamMicro.writeString(13, getScrubbedText());
    }
  }

  public static final class PartialPart extends MessageMicro
  {
    public static final int SEMANTIC_RESULT_FIELD_NUMBER = 3;
    public static final int STABILITY_FIELD_NUMBER = 2;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private boolean hasSemanticResult;
    private boolean hasStability;
    private boolean hasText;
    private RecognizerProtos.SemanticResult semanticResult_ = null;
    private double stability_ = 0.0D;
    private String text_ = "";

    public static PartialPart parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PartialPart().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PartialPart parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PartialPart)new PartialPart().mergeFrom(paramArrayOfByte);
    }

    public final PartialPart clear()
    {
      clearText();
      clearStability();
      clearSemanticResult();
      this.cachedSize = -1;
      return this;
    }

    public PartialPart clearSemanticResult()
    {
      this.hasSemanticResult = false;
      this.semanticResult_ = null;
      return this;
    }

    public PartialPart clearStability()
    {
      this.hasStability = false;
      this.stability_ = 0.0D;
      return this;
    }

    public PartialPart clearText()
    {
      this.hasText = false;
      this.text_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public RecognizerProtos.SemanticResult getSemanticResult()
    {
      return this.semanticResult_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasStability())
        i += CodedOutputStreamMicro.computeDoubleSize(2, getStability());
      if (hasSemanticResult())
        i += CodedOutputStreamMicro.computeMessageSize(3, getSemanticResult());
      this.cachedSize = i;
      return i;
    }

    public double getStability()
    {
      return this.stability_;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasSemanticResult()
    {
      return this.hasSemanticResult;
    }

    public boolean hasStability()
    {
      return this.hasStability;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      return (!hasSemanticResult()) || (getSemanticResult().isInitialized());
    }

    public PartialPart mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setText(paramCodedInputStreamMicro.readString());
          break;
        case 17:
          setStability(paramCodedInputStreamMicro.readDouble());
          break;
        case 26:
        }
        RecognizerProtos.SemanticResult localSemanticResult = new RecognizerProtos.SemanticResult();
        paramCodedInputStreamMicro.readMessage(localSemanticResult);
        setSemanticResult(localSemanticResult);
      }
    }

    public PartialPart setSemanticResult(RecognizerProtos.SemanticResult paramSemanticResult)
    {
      if (paramSemanticResult == null)
        throw new NullPointerException();
      this.hasSemanticResult = true;
      this.semanticResult_ = paramSemanticResult;
      return this;
    }

    public PartialPart setStability(double paramDouble)
    {
      this.hasStability = true;
      this.stability_ = paramDouble;
      return this;
    }

    public PartialPart setText(String paramString)
    {
      this.hasText = true;
      this.text_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasText())
        paramCodedOutputStreamMicro.writeString(1, getText());
      if (hasStability())
        paramCodedOutputStreamMicro.writeDouble(2, getStability());
      if (hasSemanticResult())
        paramCodedOutputStreamMicro.writeMessage(3, getSemanticResult());
    }
  }

  public static final class PartialResult extends MessageMicro
  {
    public static final int END_TIME_USEC_FIELD_NUMBER = 3;
    public static final int HOTWORD_CONFIDENCE_FIELD_NUMBER = 8;
    public static final int HOTWORD_CONF_FEATURE_FIELD_NUMBER = 7;
    public static final int HOTWORD_END_TIME_USEC_FIELD_NUMBER = 12;
    public static final int HOTWORD_FIRED_FIELD_NUMBER = 9;
    public static final int HOTWORD_START_TIME_USEC_FIELD_NUMBER = 11;
    public static final int PART_FIELD_NUMBER = 1;
    public static final int PHONE_ALIGN_FIELD_NUMBER = 5;
    public static final int START_TIME_USEC_FIELD_NUMBER = 2;
    public static final int STATE_ALIGN_FIELD_NUMBER = 10;
    public static final int WORD_ALIGN_FIELD_NUMBER = 4;
    public static final int WORD_CONF_FEATURE_FIELD_NUMBER = 6;
    private int cachedSize = -1;
    private long endTimeUsec_ = 0L;
    private boolean hasEndTimeUsec;
    private boolean hasHotwordConfFeature;
    private boolean hasHotwordConfidence;
    private boolean hasHotwordEndTimeUsec;
    private boolean hasHotwordFired;
    private boolean hasHotwordStartTimeUsec;
    private boolean hasPhoneAlign;
    private boolean hasStartTimeUsec;
    private boolean hasStateAlign;
    private boolean hasWordAlign;
    private HotwordFeature.HotwordConfidenceFeature hotwordConfFeature_ = null;
    private float hotwordConfidence_ = 0.0F;
    private long hotwordEndTimeUsec_ = 0L;
    private boolean hotwordFired_ = false;
    private long hotwordStartTimeUsec_ = 0L;
    private List<RecognizerProtos.PartialPart> part_ = Collections.emptyList();
    private Alignment.AlignmentProto phoneAlign_ = null;
    private long startTimeUsec_ = 0L;
    private Alignment.AlignmentProto stateAlign_ = null;
    private Alignment.AlignmentProto wordAlign_ = null;
    private List<ConfFeature.WordConfFeature> wordConfFeature_ = Collections.emptyList();

    public static PartialResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PartialResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PartialResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PartialResult)new PartialResult().mergeFrom(paramArrayOfByte);
    }

    public PartialResult addPart(RecognizerProtos.PartialPart paramPartialPart)
    {
      if (paramPartialPart == null)
        throw new NullPointerException();
      if (this.part_.isEmpty())
        this.part_ = new ArrayList();
      this.part_.add(paramPartialPart);
      return this;
    }

    public PartialResult addWordConfFeature(ConfFeature.WordConfFeature paramWordConfFeature)
    {
      if (paramWordConfFeature == null)
        throw new NullPointerException();
      if (this.wordConfFeature_.isEmpty())
        this.wordConfFeature_ = new ArrayList();
      this.wordConfFeature_.add(paramWordConfFeature);
      return this;
    }

    public final PartialResult clear()
    {
      clearPart();
      clearStartTimeUsec();
      clearEndTimeUsec();
      clearWordAlign();
      clearPhoneAlign();
      clearStateAlign();
      clearWordConfFeature();
      clearHotwordConfFeature();
      clearHotwordConfidence();
      clearHotwordFired();
      clearHotwordStartTimeUsec();
      clearHotwordEndTimeUsec();
      this.cachedSize = -1;
      return this;
    }

    public PartialResult clearEndTimeUsec()
    {
      this.hasEndTimeUsec = false;
      this.endTimeUsec_ = 0L;
      return this;
    }

    public PartialResult clearHotwordConfFeature()
    {
      this.hasHotwordConfFeature = false;
      this.hotwordConfFeature_ = null;
      return this;
    }

    public PartialResult clearHotwordConfidence()
    {
      this.hasHotwordConfidence = false;
      this.hotwordConfidence_ = 0.0F;
      return this;
    }

    public PartialResult clearHotwordEndTimeUsec()
    {
      this.hasHotwordEndTimeUsec = false;
      this.hotwordEndTimeUsec_ = 0L;
      return this;
    }

    public PartialResult clearHotwordFired()
    {
      this.hasHotwordFired = false;
      this.hotwordFired_ = false;
      return this;
    }

    public PartialResult clearHotwordStartTimeUsec()
    {
      this.hasHotwordStartTimeUsec = false;
      this.hotwordStartTimeUsec_ = 0L;
      return this;
    }

    public PartialResult clearPart()
    {
      this.part_ = Collections.emptyList();
      return this;
    }

    public PartialResult clearPhoneAlign()
    {
      this.hasPhoneAlign = false;
      this.phoneAlign_ = null;
      return this;
    }

    public PartialResult clearStartTimeUsec()
    {
      this.hasStartTimeUsec = false;
      this.startTimeUsec_ = 0L;
      return this;
    }

    public PartialResult clearStateAlign()
    {
      this.hasStateAlign = false;
      this.stateAlign_ = null;
      return this;
    }

    public PartialResult clearWordAlign()
    {
      this.hasWordAlign = false;
      this.wordAlign_ = null;
      return this;
    }

    public PartialResult clearWordConfFeature()
    {
      this.wordConfFeature_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public long getEndTimeUsec()
    {
      return this.endTimeUsec_;
    }

    public HotwordFeature.HotwordConfidenceFeature getHotwordConfFeature()
    {
      return this.hotwordConfFeature_;
    }

    public float getHotwordConfidence()
    {
      return this.hotwordConfidence_;
    }

    public long getHotwordEndTimeUsec()
    {
      return this.hotwordEndTimeUsec_;
    }

    public boolean getHotwordFired()
    {
      return this.hotwordFired_;
    }

    public long getHotwordStartTimeUsec()
    {
      return this.hotwordStartTimeUsec_;
    }

    public RecognizerProtos.PartialPart getPart(int paramInt)
    {
      return (RecognizerProtos.PartialPart)this.part_.get(paramInt);
    }

    public int getPartCount()
    {
      return this.part_.size();
    }

    public List<RecognizerProtos.PartialPart> getPartList()
    {
      return this.part_;
    }

    public Alignment.AlignmentProto getPhoneAlign()
    {
      return this.phoneAlign_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator1 = getPartList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (RecognizerProtos.PartialPart)localIterator1.next());
      if (hasStartTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(2, getStartTimeUsec());
      if (hasEndTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(3, getEndTimeUsec());
      if (hasWordAlign())
        i += CodedOutputStreamMicro.computeMessageSize(4, getWordAlign());
      if (hasPhoneAlign())
        i += CodedOutputStreamMicro.computeMessageSize(5, getPhoneAlign());
      Iterator localIterator2 = getWordConfFeatureList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(6, (ConfFeature.WordConfFeature)localIterator2.next());
      if (hasHotwordConfFeature())
        i += CodedOutputStreamMicro.computeMessageSize(7, getHotwordConfFeature());
      if (hasHotwordConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(8, getHotwordConfidence());
      if (hasHotwordFired())
        i += CodedOutputStreamMicro.computeBoolSize(9, getHotwordFired());
      if (hasStateAlign())
        i += CodedOutputStreamMicro.computeMessageSize(10, getStateAlign());
      if (hasHotwordStartTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(11, getHotwordStartTimeUsec());
      if (hasHotwordEndTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(12, getHotwordEndTimeUsec());
      this.cachedSize = i;
      return i;
    }

    public long getStartTimeUsec()
    {
      return this.startTimeUsec_;
    }

    public Alignment.AlignmentProto getStateAlign()
    {
      return this.stateAlign_;
    }

    public Alignment.AlignmentProto getWordAlign()
    {
      return this.wordAlign_;
    }

    public ConfFeature.WordConfFeature getWordConfFeature(int paramInt)
    {
      return (ConfFeature.WordConfFeature)this.wordConfFeature_.get(paramInt);
    }

    public int getWordConfFeatureCount()
    {
      return this.wordConfFeature_.size();
    }

    public List<ConfFeature.WordConfFeature> getWordConfFeatureList()
    {
      return this.wordConfFeature_;
    }

    public boolean hasEndTimeUsec()
    {
      return this.hasEndTimeUsec;
    }

    public boolean hasHotwordConfFeature()
    {
      return this.hasHotwordConfFeature;
    }

    public boolean hasHotwordConfidence()
    {
      return this.hasHotwordConfidence;
    }

    public boolean hasHotwordEndTimeUsec()
    {
      return this.hasHotwordEndTimeUsec;
    }

    public boolean hasHotwordFired()
    {
      return this.hasHotwordFired;
    }

    public boolean hasHotwordStartTimeUsec()
    {
      return this.hasHotwordStartTimeUsec;
    }

    public boolean hasPhoneAlign()
    {
      return this.hasPhoneAlign;
    }

    public boolean hasStartTimeUsec()
    {
      return this.hasStartTimeUsec;
    }

    public boolean hasStateAlign()
    {
      return this.hasStateAlign;
    }

    public boolean hasWordAlign()
    {
      return this.hasWordAlign;
    }

    public final boolean isInitialized()
    {
      Iterator localIterator = getPartList().iterator();
      do
        if (!localIterator.hasNext())
          break;
      while (((RecognizerProtos.PartialPart)localIterator.next()).isInitialized());
      while (((hasWordAlign()) && (!getWordAlign().isInitialized())) || ((hasPhoneAlign()) && (!getPhoneAlign().isInitialized())) || ((hasStateAlign()) && (!getStateAlign().isInitialized())))
        return false;
      return true;
    }

    public PartialResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          RecognizerProtos.PartialPart localPartialPart = new RecognizerProtos.PartialPart();
          paramCodedInputStreamMicro.readMessage(localPartialPart);
          addPart(localPartialPart);
          break;
        case 16:
          setStartTimeUsec(paramCodedInputStreamMicro.readInt64());
          break;
        case 24:
          setEndTimeUsec(paramCodedInputStreamMicro.readInt64());
          break;
        case 34:
          Alignment.AlignmentProto localAlignmentProto3 = new Alignment.AlignmentProto();
          paramCodedInputStreamMicro.readMessage(localAlignmentProto3);
          setWordAlign(localAlignmentProto3);
          break;
        case 42:
          Alignment.AlignmentProto localAlignmentProto2 = new Alignment.AlignmentProto();
          paramCodedInputStreamMicro.readMessage(localAlignmentProto2);
          setPhoneAlign(localAlignmentProto2);
          break;
        case 50:
          ConfFeature.WordConfFeature localWordConfFeature = new ConfFeature.WordConfFeature();
          paramCodedInputStreamMicro.readMessage(localWordConfFeature);
          addWordConfFeature(localWordConfFeature);
          break;
        case 58:
          HotwordFeature.HotwordConfidenceFeature localHotwordConfidenceFeature = new HotwordFeature.HotwordConfidenceFeature();
          paramCodedInputStreamMicro.readMessage(localHotwordConfidenceFeature);
          setHotwordConfFeature(localHotwordConfidenceFeature);
          break;
        case 69:
          setHotwordConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 72:
          setHotwordFired(paramCodedInputStreamMicro.readBool());
          break;
        case 82:
          Alignment.AlignmentProto localAlignmentProto1 = new Alignment.AlignmentProto();
          paramCodedInputStreamMicro.readMessage(localAlignmentProto1);
          setStateAlign(localAlignmentProto1);
          break;
        case 88:
          setHotwordStartTimeUsec(paramCodedInputStreamMicro.readInt64());
          break;
        case 96:
        }
        setHotwordEndTimeUsec(paramCodedInputStreamMicro.readInt64());
      }
    }

    public PartialResult setEndTimeUsec(long paramLong)
    {
      this.hasEndTimeUsec = true;
      this.endTimeUsec_ = paramLong;
      return this;
    }

    public PartialResult setHotwordConfFeature(HotwordFeature.HotwordConfidenceFeature paramHotwordConfidenceFeature)
    {
      if (paramHotwordConfidenceFeature == null)
        throw new NullPointerException();
      this.hasHotwordConfFeature = true;
      this.hotwordConfFeature_ = paramHotwordConfidenceFeature;
      return this;
    }

    public PartialResult setHotwordConfidence(float paramFloat)
    {
      this.hasHotwordConfidence = true;
      this.hotwordConfidence_ = paramFloat;
      return this;
    }

    public PartialResult setHotwordEndTimeUsec(long paramLong)
    {
      this.hasHotwordEndTimeUsec = true;
      this.hotwordEndTimeUsec_ = paramLong;
      return this;
    }

    public PartialResult setHotwordFired(boolean paramBoolean)
    {
      this.hasHotwordFired = true;
      this.hotwordFired_ = paramBoolean;
      return this;
    }

    public PartialResult setHotwordStartTimeUsec(long paramLong)
    {
      this.hasHotwordStartTimeUsec = true;
      this.hotwordStartTimeUsec_ = paramLong;
      return this;
    }

    public PartialResult setPart(int paramInt, RecognizerProtos.PartialPart paramPartialPart)
    {
      if (paramPartialPart == null)
        throw new NullPointerException();
      this.part_.set(paramInt, paramPartialPart);
      return this;
    }

    public PartialResult setPhoneAlign(Alignment.AlignmentProto paramAlignmentProto)
    {
      if (paramAlignmentProto == null)
        throw new NullPointerException();
      this.hasPhoneAlign = true;
      this.phoneAlign_ = paramAlignmentProto;
      return this;
    }

    public PartialResult setStartTimeUsec(long paramLong)
    {
      this.hasStartTimeUsec = true;
      this.startTimeUsec_ = paramLong;
      return this;
    }

    public PartialResult setStateAlign(Alignment.AlignmentProto paramAlignmentProto)
    {
      if (paramAlignmentProto == null)
        throw new NullPointerException();
      this.hasStateAlign = true;
      this.stateAlign_ = paramAlignmentProto;
      return this;
    }

    public PartialResult setWordAlign(Alignment.AlignmentProto paramAlignmentProto)
    {
      if (paramAlignmentProto == null)
        throw new NullPointerException();
      this.hasWordAlign = true;
      this.wordAlign_ = paramAlignmentProto;
      return this;
    }

    public PartialResult setWordConfFeature(int paramInt, ConfFeature.WordConfFeature paramWordConfFeature)
    {
      if (paramWordConfFeature == null)
        throw new NullPointerException();
      this.wordConfFeature_.set(paramInt, paramWordConfFeature);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator1 = getPartList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (RecognizerProtos.PartialPart)localIterator1.next());
      if (hasStartTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(2, getStartTimeUsec());
      if (hasEndTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(3, getEndTimeUsec());
      if (hasWordAlign())
        paramCodedOutputStreamMicro.writeMessage(4, getWordAlign());
      if (hasPhoneAlign())
        paramCodedOutputStreamMicro.writeMessage(5, getPhoneAlign());
      Iterator localIterator2 = getWordConfFeatureList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(6, (ConfFeature.WordConfFeature)localIterator2.next());
      if (hasHotwordConfFeature())
        paramCodedOutputStreamMicro.writeMessage(7, getHotwordConfFeature());
      if (hasHotwordConfidence())
        paramCodedOutputStreamMicro.writeFloat(8, getHotwordConfidence());
      if (hasHotwordFired())
        paramCodedOutputStreamMicro.writeBool(9, getHotwordFired());
      if (hasStateAlign())
        paramCodedOutputStreamMicro.writeMessage(10, getStateAlign());
      if (hasHotwordStartTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(11, getHotwordStartTimeUsec());
      if (hasHotwordEndTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(12, getHotwordEndTimeUsec());
    }
  }

  public static final class RecognitionEvent extends MessageMicro
  {
    public static final int COMBINED_RESULT_FIELD_NUMBER = 5;
    public static final int EVENT_TYPE_FIELD_NUMBER = 1;
    public static final int EVENT_TYPE_RECOGNITION_COMPLETED = 1;
    public static final int EVENT_TYPE_RECOGNITION_RESULT = 0;
    public static final int GENERATION_TIME_MS_FIELD_NUMBER = 6;
    public static final int PARTIAL_RESULT_FIELD_NUMBER = 4;
    public static final int RESULT_FIELD_NUMBER = 3;
    public static final int STATUS_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private RecognizerProtos.RecognitionResult combinedResult_ = null;
    private int eventType_ = 0;
    private long generationTimeMs_ = 0L;
    private boolean hasCombinedResult;
    private boolean hasEventType;
    private boolean hasGenerationTimeMs;
    private boolean hasPartialResult;
    private boolean hasResult;
    private boolean hasStatus;
    private RecognizerProtos.PartialResult partialResult_ = null;
    private RecognizerProtos.RecognitionResult result_ = null;
    private int status_ = 0;

    public static RecognitionEvent parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognitionEvent().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognitionEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognitionEvent)new RecognitionEvent().mergeFrom(paramArrayOfByte);
    }

    public final RecognitionEvent clear()
    {
      clearEventType();
      clearStatus();
      clearResult();
      clearPartialResult();
      clearCombinedResult();
      clearGenerationTimeMs();
      this.cachedSize = -1;
      return this;
    }

    public RecognitionEvent clearCombinedResult()
    {
      this.hasCombinedResult = false;
      this.combinedResult_ = null;
      return this;
    }

    public RecognitionEvent clearEventType()
    {
      this.hasEventType = false;
      this.eventType_ = 0;
      return this;
    }

    public RecognitionEvent clearGenerationTimeMs()
    {
      this.hasGenerationTimeMs = false;
      this.generationTimeMs_ = 0L;
      return this;
    }

    public RecognitionEvent clearPartialResult()
    {
      this.hasPartialResult = false;
      this.partialResult_ = null;
      return this;
    }

    public RecognitionEvent clearResult()
    {
      this.hasResult = false;
      this.result_ = null;
      return this;
    }

    public RecognitionEvent clearStatus()
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

    public RecognizerProtos.RecognitionResult getCombinedResult()
    {
      return this.combinedResult_;
    }

    public int getEventType()
    {
      return this.eventType_;
    }

    public long getGenerationTimeMs()
    {
      return this.generationTimeMs_;
    }

    public RecognizerProtos.PartialResult getPartialResult()
    {
      return this.partialResult_;
    }

    public RecognizerProtos.RecognitionResult getResult()
    {
      return this.result_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasEventType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getEventType());
      if (hasStatus())
        i += CodedOutputStreamMicro.computeInt32Size(2, getStatus());
      if (hasResult())
        i += CodedOutputStreamMicro.computeMessageSize(3, getResult());
      if (hasPartialResult())
        i += CodedOutputStreamMicro.computeMessageSize(4, getPartialResult());
      if (hasCombinedResult())
        i += CodedOutputStreamMicro.computeMessageSize(5, getCombinedResult());
      if (hasGenerationTimeMs())
        i += CodedOutputStreamMicro.computeInt64Size(6, getGenerationTimeMs());
      this.cachedSize = i;
      return i;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public boolean hasCombinedResult()
    {
      return this.hasCombinedResult;
    }

    public boolean hasEventType()
    {
      return this.hasEventType;
    }

    public boolean hasGenerationTimeMs()
    {
      return this.hasGenerationTimeMs;
    }

    public boolean hasPartialResult()
    {
      return this.hasPartialResult;
    }

    public boolean hasResult()
    {
      return this.hasResult;
    }

    public boolean hasStatus()
    {
      return this.hasStatus;
    }

    public final boolean isInitialized()
    {
      if ((hasResult()) && (!getResult().isInitialized()));
      while (((hasPartialResult()) && (!getPartialResult().isInitialized())) || ((hasCombinedResult()) && (!getCombinedResult().isInitialized())))
        return false;
      return true;
    }

    public RecognitionEvent mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setEventType(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setStatus(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          RecognizerProtos.RecognitionResult localRecognitionResult2 = new RecognizerProtos.RecognitionResult();
          paramCodedInputStreamMicro.readMessage(localRecognitionResult2);
          setResult(localRecognitionResult2);
          break;
        case 34:
          RecognizerProtos.PartialResult localPartialResult = new RecognizerProtos.PartialResult();
          paramCodedInputStreamMicro.readMessage(localPartialResult);
          setPartialResult(localPartialResult);
          break;
        case 42:
          RecognizerProtos.RecognitionResult localRecognitionResult1 = new RecognizerProtos.RecognitionResult();
          paramCodedInputStreamMicro.readMessage(localRecognitionResult1);
          setCombinedResult(localRecognitionResult1);
          break;
        case 48:
        }
        setGenerationTimeMs(paramCodedInputStreamMicro.readInt64());
      }
    }

    public RecognitionEvent setCombinedResult(RecognizerProtos.RecognitionResult paramRecognitionResult)
    {
      if (paramRecognitionResult == null)
        throw new NullPointerException();
      this.hasCombinedResult = true;
      this.combinedResult_ = paramRecognitionResult;
      return this;
    }

    public RecognitionEvent setEventType(int paramInt)
    {
      this.hasEventType = true;
      this.eventType_ = paramInt;
      return this;
    }

    public RecognitionEvent setGenerationTimeMs(long paramLong)
    {
      this.hasGenerationTimeMs = true;
      this.generationTimeMs_ = paramLong;
      return this;
    }

    public RecognitionEvent setPartialResult(RecognizerProtos.PartialResult paramPartialResult)
    {
      if (paramPartialResult == null)
        throw new NullPointerException();
      this.hasPartialResult = true;
      this.partialResult_ = paramPartialResult;
      return this;
    }

    public RecognitionEvent setResult(RecognizerProtos.RecognitionResult paramRecognitionResult)
    {
      if (paramRecognitionResult == null)
        throw new NullPointerException();
      this.hasResult = true;
      this.result_ = paramRecognitionResult;
      return this;
    }

    public RecognitionEvent setStatus(int paramInt)
    {
      this.hasStatus = true;
      this.status_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasEventType())
        paramCodedOutputStreamMicro.writeInt32(1, getEventType());
      if (hasStatus())
        paramCodedOutputStreamMicro.writeInt32(2, getStatus());
      if (hasResult())
        paramCodedOutputStreamMicro.writeMessage(3, getResult());
      if (hasPartialResult())
        paramCodedOutputStreamMicro.writeMessage(4, getPartialResult());
      if (hasCombinedResult())
        paramCodedOutputStreamMicro.writeMessage(5, getCombinedResult());
      if (hasGenerationTimeMs())
        paramCodedOutputStreamMicro.writeInt64(6, getGenerationTimeMs());
    }
  }

  public static final class RecognitionResult extends MessageMicro
  {
    public static final int END_TIME_USEC_FIELD_NUMBER = 2;
    public static final int HYPOTHESIS_FIELD_NUMBER = 3;
    public static final int LATTICE_FST_FIELD_NUMBER = 4;
    public static final int START_TIME_USEC_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private long endTimeUsec_ = 0L;
    private boolean hasEndTimeUsec;
    private boolean hasLatticeFst;
    private boolean hasStartTimeUsec;
    private List<RecognizerProtos.Hypothesis> hypothesis_ = Collections.emptyList();
    private ByteStringMicro latticeFst_ = ByteStringMicro.EMPTY;
    private long startTimeUsec_ = 0L;

    public static RecognitionResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognitionResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognitionResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognitionResult)new RecognitionResult().mergeFrom(paramArrayOfByte);
    }

    public RecognitionResult addHypothesis(RecognizerProtos.Hypothesis paramHypothesis)
    {
      if (paramHypothesis == null)
        throw new NullPointerException();
      if (this.hypothesis_.isEmpty())
        this.hypothesis_ = new ArrayList();
      this.hypothesis_.add(paramHypothesis);
      return this;
    }

    public final RecognitionResult clear()
    {
      clearStartTimeUsec();
      clearEndTimeUsec();
      clearHypothesis();
      clearLatticeFst();
      this.cachedSize = -1;
      return this;
    }

    public RecognitionResult clearEndTimeUsec()
    {
      this.hasEndTimeUsec = false;
      this.endTimeUsec_ = 0L;
      return this;
    }

    public RecognitionResult clearHypothesis()
    {
      this.hypothesis_ = Collections.emptyList();
      return this;
    }

    public RecognitionResult clearLatticeFst()
    {
      this.hasLatticeFst = false;
      this.latticeFst_ = ByteStringMicro.EMPTY;
      return this;
    }

    public RecognitionResult clearStartTimeUsec()
    {
      this.hasStartTimeUsec = false;
      this.startTimeUsec_ = 0L;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public long getEndTimeUsec()
    {
      return this.endTimeUsec_;
    }

    public RecognizerProtos.Hypothesis getHypothesis(int paramInt)
    {
      return (RecognizerProtos.Hypothesis)this.hypothesis_.get(paramInt);
    }

    public int getHypothesisCount()
    {
      return this.hypothesis_.size();
    }

    public List<RecognizerProtos.Hypothesis> getHypothesisList()
    {
      return this.hypothesis_;
    }

    public ByteStringMicro getLatticeFst()
    {
      return this.latticeFst_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasStartTimeUsec();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt64Size(1, getStartTimeUsec());
      if (hasEndTimeUsec())
        i += CodedOutputStreamMicro.computeInt64Size(2, getEndTimeUsec());
      Iterator localIterator = getHypothesisList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (RecognizerProtos.Hypothesis)localIterator.next());
      if (hasLatticeFst())
        i += CodedOutputStreamMicro.computeBytesSize(4, getLatticeFst());
      this.cachedSize = i;
      return i;
    }

    public long getStartTimeUsec()
    {
      return this.startTimeUsec_;
    }

    public boolean hasEndTimeUsec()
    {
      return this.hasEndTimeUsec;
    }

    public boolean hasLatticeFst()
    {
      return this.hasLatticeFst;
    }

    public boolean hasStartTimeUsec()
    {
      return this.hasStartTimeUsec;
    }

    public final boolean isInitialized()
    {
      Iterator localIterator = getHypothesisList().iterator();
      while (localIterator.hasNext())
        if (!((RecognizerProtos.Hypothesis)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public RecognitionResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setStartTimeUsec(paramCodedInputStreamMicro.readInt64());
          break;
        case 16:
          setEndTimeUsec(paramCodedInputStreamMicro.readInt64());
          break;
        case 26:
          RecognizerProtos.Hypothesis localHypothesis = new RecognizerProtos.Hypothesis();
          paramCodedInputStreamMicro.readMessage(localHypothesis);
          addHypothesis(localHypothesis);
          break;
        case 34:
        }
        setLatticeFst(paramCodedInputStreamMicro.readBytes());
      }
    }

    public RecognitionResult setEndTimeUsec(long paramLong)
    {
      this.hasEndTimeUsec = true;
      this.endTimeUsec_ = paramLong;
      return this;
    }

    public RecognitionResult setHypothesis(int paramInt, RecognizerProtos.Hypothesis paramHypothesis)
    {
      if (paramHypothesis == null)
        throw new NullPointerException();
      this.hypothesis_.set(paramInt, paramHypothesis);
      return this;
    }

    public RecognitionResult setLatticeFst(ByteStringMicro paramByteStringMicro)
    {
      this.hasLatticeFst = true;
      this.latticeFst_ = paramByteStringMicro;
      return this;
    }

    public RecognitionResult setStartTimeUsec(long paramLong)
    {
      this.hasStartTimeUsec = true;
      this.startTimeUsec_ = paramLong;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStartTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(1, getStartTimeUsec());
      if (hasEndTimeUsec())
        paramCodedOutputStreamMicro.writeInt64(2, getEndTimeUsec());
      Iterator localIterator = getHypothesisList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (RecognizerProtos.Hypothesis)localIterator.next());
      if (hasLatticeFst())
        paramCodedOutputStreamMicro.writeBytes(4, getLatticeFst());
    }
  }

  public static final class SemanticResult extends MessageMicro
  {
    public static final int INTERPRETATION_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<InterpretationProto.Interpretation> interpretation_ = Collections.emptyList();

    public static SemanticResult parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new SemanticResult().mergeFrom(paramCodedInputStreamMicro);
    }

    public static SemanticResult parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (SemanticResult)new SemanticResult().mergeFrom(paramArrayOfByte);
    }

    public SemanticResult addInterpretation(InterpretationProto.Interpretation paramInterpretation)
    {
      if (paramInterpretation == null)
        throw new NullPointerException();
      if (this.interpretation_.isEmpty())
        this.interpretation_ = new ArrayList();
      this.interpretation_.add(paramInterpretation);
      return this;
    }

    public final SemanticResult clear()
    {
      clearInterpretation();
      this.cachedSize = -1;
      return this;
    }

    public SemanticResult clearInterpretation()
    {
      this.interpretation_ = Collections.emptyList();
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public InterpretationProto.Interpretation getInterpretation(int paramInt)
    {
      return (InterpretationProto.Interpretation)this.interpretation_.get(paramInt);
    }

    public int getInterpretationCount()
    {
      return this.interpretation_.size();
    }

    public List<InterpretationProto.Interpretation> getInterpretationList()
    {
      return this.interpretation_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getInterpretationList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (InterpretationProto.Interpretation)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public final boolean isInitialized()
    {
      Iterator localIterator = getInterpretationList().iterator();
      while (localIterator.hasNext())
        if (!((InterpretationProto.Interpretation)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public SemanticResult mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        InterpretationProto.Interpretation localInterpretation = new InterpretationProto.Interpretation();
        paramCodedInputStreamMicro.readMessage(localInterpretation);
        addInterpretation(localInterpretation);
      }
    }

    public SemanticResult setInterpretation(int paramInt, InterpretationProto.Interpretation paramInterpretation)
    {
      if (paramInterpretation == null)
        throw new NullPointerException();
      this.interpretation_.set(paramInt, paramInterpretation);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getInterpretationList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (InterpretationProto.Interpretation)localIterator.next());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.api.RecognizerProtos
 * JD-Core Version:    0.6.2
 */