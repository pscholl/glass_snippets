package com.google.speech.logs;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class RecognizerOuterClass
{
  public static final class AudioFeatureLog extends MessageMicro
  {
    public static final int FEATURE_ENCODING_TYPE_FILTER_BANK = 0;
    public static final int FEATURE_ENCODING_TYPE_MFCC = 2;
    public static final int FEATURE_ENCODING_TYPE_PLP = 1;
    public static final int FEATURE_TYPE_FIELD_NUMBER = 1;
    public static final int FRAME_DATA_FIELD_NUMBER = 4;
    public static final int FRAME_DIMENSION_FIELD_NUMBER = 3;
    public static final int FRAME_RATE_MS_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private int featureType_ = 0;
    private List<FrameDataLog> frameData_ = Collections.emptyList();
    private int frameDimension_ = 0;
    private float frameRateMs_ = 0.0F;
    private boolean hasFeatureType;
    private boolean hasFrameDimension;
    private boolean hasFrameRateMs;

    public static AudioFeatureLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AudioFeatureLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AudioFeatureLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AudioFeatureLog)new AudioFeatureLog().mergeFrom(paramArrayOfByte);
    }

    public AudioFeatureLog addFrameData(FrameDataLog paramFrameDataLog)
    {
      if (paramFrameDataLog == null)
        throw new NullPointerException();
      if (this.frameData_.isEmpty())
        this.frameData_ = new ArrayList();
      this.frameData_.add(paramFrameDataLog);
      return this;
    }

    public final AudioFeatureLog clear()
    {
      clearFeatureType();
      clearFrameRateMs();
      clearFrameDimension();
      clearFrameData();
      this.cachedSize = -1;
      return this;
    }

    public AudioFeatureLog clearFeatureType()
    {
      this.hasFeatureType = false;
      this.featureType_ = 0;
      return this;
    }

    public AudioFeatureLog clearFrameData()
    {
      this.frameData_ = Collections.emptyList();
      return this;
    }

    public AudioFeatureLog clearFrameDimension()
    {
      this.hasFrameDimension = false;
      this.frameDimension_ = 0;
      return this;
    }

    public AudioFeatureLog clearFrameRateMs()
    {
      this.hasFrameRateMs = false;
      this.frameRateMs_ = 0.0F;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getFeatureType()
    {
      return this.featureType_;
    }

    public FrameDataLog getFrameData(int paramInt)
    {
      return (FrameDataLog)this.frameData_.get(paramInt);
    }

    public int getFrameDataCount()
    {
      return this.frameData_.size();
    }

    public List<FrameDataLog> getFrameDataList()
    {
      return this.frameData_;
    }

    public int getFrameDimension()
    {
      return this.frameDimension_;
    }

    public float getFrameRateMs()
    {
      return this.frameRateMs_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasFeatureType();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getFeatureType());
      if (hasFrameRateMs())
        i += CodedOutputStreamMicro.computeFloatSize(2, getFrameRateMs());
      if (hasFrameDimension())
        i += CodedOutputStreamMicro.computeInt32Size(3, getFrameDimension());
      Iterator localIterator = getFrameDataList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(4, (FrameDataLog)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasFeatureType()
    {
      return this.hasFeatureType;
    }

    public boolean hasFrameDimension()
    {
      return this.hasFrameDimension;
    }

    public boolean hasFrameRateMs()
    {
      return this.hasFrameRateMs;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AudioFeatureLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setFeatureType(paramCodedInputStreamMicro.readInt32());
          break;
        case 21:
          setFrameRateMs(paramCodedInputStreamMicro.readFloat());
          break;
        case 24:
          setFrameDimension(paramCodedInputStreamMicro.readInt32());
          break;
        case 34:
        }
        FrameDataLog localFrameDataLog = new FrameDataLog();
        paramCodedInputStreamMicro.readMessage(localFrameDataLog);
        addFrameData(localFrameDataLog);
      }
    }

    public AudioFeatureLog setFeatureType(int paramInt)
    {
      this.hasFeatureType = true;
      this.featureType_ = paramInt;
      return this;
    }

    public AudioFeatureLog setFrameData(int paramInt, FrameDataLog paramFrameDataLog)
    {
      if (paramFrameDataLog == null)
        throw new NullPointerException();
      this.frameData_.set(paramInt, paramFrameDataLog);
      return this;
    }

    public AudioFeatureLog setFrameDimension(int paramInt)
    {
      this.hasFrameDimension = true;
      this.frameDimension_ = paramInt;
      return this;
    }

    public AudioFeatureLog setFrameRateMs(float paramFloat)
    {
      this.hasFrameRateMs = true;
      this.frameRateMs_ = paramFloat;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasFeatureType())
        paramCodedOutputStreamMicro.writeInt32(1, getFeatureType());
      if (hasFrameRateMs())
        paramCodedOutputStreamMicro.writeFloat(2, getFrameRateMs());
      if (hasFrameDimension())
        paramCodedOutputStreamMicro.writeInt32(3, getFrameDimension());
      Iterator localIterator = getFrameDataList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(4, (FrameDataLog)localIterator.next());
    }

    public static final class FrameDataLog extends MessageMicro
    {
      public static final int VALUE_FIELD_NUMBER = 1;
      private int cachedSize = -1;
      private List<Float> value_ = Collections.emptyList();

      public FrameDataLog addValue(float paramFloat)
      {
        if (this.value_.isEmpty())
          this.value_ = new ArrayList();
        this.value_.add(Float.valueOf(paramFloat));
        return this;
      }

      public final FrameDataLog clear()
      {
        clearValue();
        this.cachedSize = -1;
        return this;
      }

      public FrameDataLog clearValue()
      {
        this.value_ = Collections.emptyList();
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
        int i = 0 + 4 * getValueList().size() + 1 * getValueList().size();
        this.cachedSize = i;
        return i;
      }

      public float getValue(int paramInt)
      {
        return ((Float)this.value_.get(paramInt)).floatValue();
      }

      public int getValueCount()
      {
        return this.value_.size();
      }

      public List<Float> getValueList()
      {
        return this.value_;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public FrameDataLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          }
          addValue(paramCodedInputStreamMicro.readFloat());
        }
      }

      public FrameDataLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new FrameDataLog().mergeFrom(paramCodedInputStreamMicro);
      }

      public FrameDataLog parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (FrameDataLog)new FrameDataLog().mergeFrom(paramArrayOfByte);
      }

      public FrameDataLog setValue(int paramInt, float paramFloat)
      {
        this.value_.set(paramInt, Float.valueOf(paramFloat));
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        Iterator localIterator = getValueList().iterator();
        while (localIterator.hasNext())
          paramCodedOutputStreamMicro.writeFloat(1, ((Float)localIterator.next()).floatValue());
      }
    }
  }

  public static final class LanguagePackLog extends MessageMicro
  {
    public static final int LOCALE_FIELD_NUMBER = 1;
    public static final int VERSION_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private boolean hasLocale;
    private boolean hasVersion;
    private String locale_ = "";
    private String version_ = "";

    public static LanguagePackLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new LanguagePackLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static LanguagePackLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (LanguagePackLog)new LanguagePackLog().mergeFrom(paramArrayOfByte);
    }

    public final LanguagePackLog clear()
    {
      clearLocale();
      clearVersion();
      this.cachedSize = -1;
      return this;
    }

    public LanguagePackLog clearLocale()
    {
      this.hasLocale = false;
      this.locale_ = "";
      return this;
    }

    public LanguagePackLog clearVersion()
    {
      this.hasVersion = false;
      this.version_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getLocale()
    {
      return this.locale_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLocale();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getLocale());
      if (hasVersion())
        i += CodedOutputStreamMicro.computeStringSize(2, getVersion());
      this.cachedSize = i;
      return i;
    }

    public String getVersion()
    {
      return this.version_;
    }

    public boolean hasLocale()
    {
      return this.hasLocale;
    }

    public boolean hasVersion()
    {
      return this.hasVersion;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public LanguagePackLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLocale(paramCodedInputStreamMicro.readString());
          break;
        case 18:
        }
        setVersion(paramCodedInputStreamMicro.readString());
      }
    }

    public LanguagePackLog setLocale(String paramString)
    {
      this.hasLocale = true;
      this.locale_ = paramString;
      return this;
    }

    public LanguagePackLog setVersion(String paramString)
    {
      this.hasVersion = true;
      this.version_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLocale())
        paramCodedOutputStreamMicro.writeString(1, getLocale());
      if (hasVersion())
        paramCodedOutputStreamMicro.writeString(2, getVersion());
    }
  }

  public static final class RecognizerContextLog extends MessageMicro
  {
    public static final int ENABLED_KEYBOARD_LANGUAGE_FIELD_NUMBER = 11;
    public static final int FIELD_ID_FIELD_NUMBER = 3;
    public static final int FIELD_NAME_FIELD_NUMBER = 2;
    public static final int HINT_FIELD_NUMBER = 6;
    public static final int IME_OPTIONS_FIELD_NUMBER = 8;
    public static final int INPUT_TYPE_FIELD_NUMBER = 7;
    public static final int LABEL_FIELD_NUMBER = 5;
    public static final int LANGUAGE_MODEL_FIELD_NUMBER = 9;
    public static final int SELECTED_KEYBOARD_LANGUAGE_FIELD_NUMBER = 10;
    public static final int SINGLE_LINE_FIELD_NUMBER = 4;
    public static final int VOICE_SEARCH_LANGUAGE_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<String> enabledKeyboardLanguage_ = Collections.emptyList();
    private String fieldId_ = "";
    private String fieldName_ = "";
    private boolean hasFieldId;
    private boolean hasFieldName;
    private boolean hasHint;
    private boolean hasImeOptions;
    private boolean hasInputType;
    private boolean hasLabel;
    private boolean hasLanguageModel;
    private boolean hasSelectedKeyboardLanguage;
    private boolean hasSingleLine;
    private boolean hasVoiceSearchLanguage;
    private String hint_ = "";
    private int imeOptions_ = 0;
    private int inputType_ = 0;
    private String label_ = "";
    private String languageModel_ = "";
    private String selectedKeyboardLanguage_ = "";
    private boolean singleLine_ = false;
    private String voiceSearchLanguage_ = "";

    public static RecognizerContextLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizerContextLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizerContextLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizerContextLog)new RecognizerContextLog().mergeFrom(paramArrayOfByte);
    }

    public RecognizerContextLog addEnabledKeyboardLanguage(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.enabledKeyboardLanguage_.isEmpty())
        this.enabledKeyboardLanguage_ = new ArrayList();
      this.enabledKeyboardLanguage_.add(paramString);
      return this;
    }

    public final RecognizerContextLog clear()
    {
      clearVoiceSearchLanguage();
      clearFieldName();
      clearFieldId();
      clearSingleLine();
      clearLabel();
      clearHint();
      clearInputType();
      clearImeOptions();
      clearLanguageModel();
      clearSelectedKeyboardLanguage();
      clearEnabledKeyboardLanguage();
      this.cachedSize = -1;
      return this;
    }

    public RecognizerContextLog clearEnabledKeyboardLanguage()
    {
      this.enabledKeyboardLanguage_ = Collections.emptyList();
      return this;
    }

    public RecognizerContextLog clearFieldId()
    {
      this.hasFieldId = false;
      this.fieldId_ = "";
      return this;
    }

    public RecognizerContextLog clearFieldName()
    {
      this.hasFieldName = false;
      this.fieldName_ = "";
      return this;
    }

    public RecognizerContextLog clearHint()
    {
      this.hasHint = false;
      this.hint_ = "";
      return this;
    }

    public RecognizerContextLog clearImeOptions()
    {
      this.hasImeOptions = false;
      this.imeOptions_ = 0;
      return this;
    }

    public RecognizerContextLog clearInputType()
    {
      this.hasInputType = false;
      this.inputType_ = 0;
      return this;
    }

    public RecognizerContextLog clearLabel()
    {
      this.hasLabel = false;
      this.label_ = "";
      return this;
    }

    public RecognizerContextLog clearLanguageModel()
    {
      this.hasLanguageModel = false;
      this.languageModel_ = "";
      return this;
    }

    public RecognizerContextLog clearSelectedKeyboardLanguage()
    {
      this.hasSelectedKeyboardLanguage = false;
      this.selectedKeyboardLanguage_ = "";
      return this;
    }

    public RecognizerContextLog clearSingleLine()
    {
      this.hasSingleLine = false;
      this.singleLine_ = false;
      return this;
    }

    public RecognizerContextLog clearVoiceSearchLanguage()
    {
      this.hasVoiceSearchLanguage = false;
      this.voiceSearchLanguage_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getEnabledKeyboardLanguage(int paramInt)
    {
      return (String)this.enabledKeyboardLanguage_.get(paramInt);
    }

    public int getEnabledKeyboardLanguageCount()
    {
      return this.enabledKeyboardLanguage_.size();
    }

    public List<String> getEnabledKeyboardLanguageList()
    {
      return this.enabledKeyboardLanguage_;
    }

    public String getFieldId()
    {
      return this.fieldId_;
    }

    public String getFieldName()
    {
      return this.fieldName_;
    }

    public String getHint()
    {
      return this.hint_;
    }

    public int getImeOptions()
    {
      return this.imeOptions_;
    }

    public int getInputType()
    {
      return this.inputType_;
    }

    public String getLabel()
    {
      return this.label_;
    }

    public String getLanguageModel()
    {
      return this.languageModel_;
    }

    public String getSelectedKeyboardLanguage()
    {
      return this.selectedKeyboardLanguage_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasVoiceSearchLanguage();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getVoiceSearchLanguage());
      if (hasFieldName())
        i += CodedOutputStreamMicro.computeStringSize(2, getFieldName());
      if (hasFieldId())
        i += CodedOutputStreamMicro.computeStringSize(3, getFieldId());
      if (hasSingleLine())
        i += CodedOutputStreamMicro.computeBoolSize(4, getSingleLine());
      if (hasLabel())
        i += CodedOutputStreamMicro.computeStringSize(5, getLabel());
      if (hasHint())
        i += CodedOutputStreamMicro.computeStringSize(6, getHint());
      if (hasInputType())
        i += CodedOutputStreamMicro.computeInt32Size(7, getInputType());
      if (hasImeOptions())
        i += CodedOutputStreamMicro.computeInt32Size(8, getImeOptions());
      if (hasLanguageModel())
        i += CodedOutputStreamMicro.computeStringSize(9, getLanguageModel());
      if (hasSelectedKeyboardLanguage())
        i += CodedOutputStreamMicro.computeStringSize(10, getSelectedKeyboardLanguage());
      int j = 0;
      Iterator localIterator = getEnabledKeyboardLanguageList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getEnabledKeyboardLanguageList().size();
      this.cachedSize = k;
      return k;
    }

    public boolean getSingleLine()
    {
      return this.singleLine_;
    }

    public String getVoiceSearchLanguage()
    {
      return this.voiceSearchLanguage_;
    }

    public boolean hasFieldId()
    {
      return this.hasFieldId;
    }

    public boolean hasFieldName()
    {
      return this.hasFieldName;
    }

    public boolean hasHint()
    {
      return this.hasHint;
    }

    public boolean hasImeOptions()
    {
      return this.hasImeOptions;
    }

    public boolean hasInputType()
    {
      return this.hasInputType;
    }

    public boolean hasLabel()
    {
      return this.hasLabel;
    }

    public boolean hasLanguageModel()
    {
      return this.hasLanguageModel;
    }

    public boolean hasSelectedKeyboardLanguage()
    {
      return this.hasSelectedKeyboardLanguage;
    }

    public boolean hasSingleLine()
    {
      return this.hasSingleLine;
    }

    public boolean hasVoiceSearchLanguage()
    {
      return this.hasVoiceSearchLanguage;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RecognizerContextLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setVoiceSearchLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setFieldName(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setFieldId(paramCodedInputStreamMicro.readString());
          break;
        case 32:
          setSingleLine(paramCodedInputStreamMicro.readBool());
          break;
        case 42:
          setLabel(paramCodedInputStreamMicro.readString());
          break;
        case 50:
          setHint(paramCodedInputStreamMicro.readString());
          break;
        case 56:
          setInputType(paramCodedInputStreamMicro.readInt32());
          break;
        case 64:
          setImeOptions(paramCodedInputStreamMicro.readInt32());
          break;
        case 74:
          setLanguageModel(paramCodedInputStreamMicro.readString());
          break;
        case 82:
          setSelectedKeyboardLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 90:
        }
        addEnabledKeyboardLanguage(paramCodedInputStreamMicro.readString());
      }
    }

    public RecognizerContextLog setEnabledKeyboardLanguage(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.enabledKeyboardLanguage_.set(paramInt, paramString);
      return this;
    }

    public RecognizerContextLog setFieldId(String paramString)
    {
      this.hasFieldId = true;
      this.fieldId_ = paramString;
      return this;
    }

    public RecognizerContextLog setFieldName(String paramString)
    {
      this.hasFieldName = true;
      this.fieldName_ = paramString;
      return this;
    }

    public RecognizerContextLog setHint(String paramString)
    {
      this.hasHint = true;
      this.hint_ = paramString;
      return this;
    }

    public RecognizerContextLog setImeOptions(int paramInt)
    {
      this.hasImeOptions = true;
      this.imeOptions_ = paramInt;
      return this;
    }

    public RecognizerContextLog setInputType(int paramInt)
    {
      this.hasInputType = true;
      this.inputType_ = paramInt;
      return this;
    }

    public RecognizerContextLog setLabel(String paramString)
    {
      this.hasLabel = true;
      this.label_ = paramString;
      return this;
    }

    public RecognizerContextLog setLanguageModel(String paramString)
    {
      this.hasLanguageModel = true;
      this.languageModel_ = paramString;
      return this;
    }

    public RecognizerContextLog setSelectedKeyboardLanguage(String paramString)
    {
      this.hasSelectedKeyboardLanguage = true;
      this.selectedKeyboardLanguage_ = paramString;
      return this;
    }

    public RecognizerContextLog setSingleLine(boolean paramBoolean)
    {
      this.hasSingleLine = true;
      this.singleLine_ = paramBoolean;
      return this;
    }

    public RecognizerContextLog setVoiceSearchLanguage(String paramString)
    {
      this.hasVoiceSearchLanguage = true;
      this.voiceSearchLanguage_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasVoiceSearchLanguage())
        paramCodedOutputStreamMicro.writeString(1, getVoiceSearchLanguage());
      if (hasFieldName())
        paramCodedOutputStreamMicro.writeString(2, getFieldName());
      if (hasFieldId())
        paramCodedOutputStreamMicro.writeString(3, getFieldId());
      if (hasSingleLine())
        paramCodedOutputStreamMicro.writeBool(4, getSingleLine());
      if (hasLabel())
        paramCodedOutputStreamMicro.writeString(5, getLabel());
      if (hasHint())
        paramCodedOutputStreamMicro.writeString(6, getHint());
      if (hasInputType())
        paramCodedOutputStreamMicro.writeInt32(7, getInputType());
      if (hasImeOptions())
        paramCodedOutputStreamMicro.writeInt32(8, getImeOptions());
      if (hasLanguageModel())
        paramCodedOutputStreamMicro.writeString(9, getLanguageModel());
      if (hasSelectedKeyboardLanguage())
        paramCodedOutputStreamMicro.writeString(10, getSelectedKeyboardLanguage());
      Iterator localIterator = getEnabledKeyboardLanguageList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(11, (String)localIterator.next());
    }
  }

  public static final class RecognizerHypothesisLog extends MessageMicro
  {
    public static final int AM_COST_FIELD_NUMBER = 5;
    public static final int CONFIDENCE_FIELD_NUMBER = 3;
    public static final int HYPOTHESIS_FIELD_NUMBER = 2;
    public static final int IS_REDACTED_FIELD_NUMBER = 7;
    public static final int LM_COST_FIELD_NUMBER = 6;
    public static final int PRENORM_HYPOTHESIS_FIELD_NUMBER = 1;
    public static final int RECOGNIZER_COST_FIELD_NUMBER = 4;
    private float amCost_ = 0.0F;
    private int cachedSize = -1;
    private float confidence_ = 0.0F;
    private boolean hasAmCost;
    private boolean hasConfidence;
    private boolean hasHypothesis;
    private boolean hasIsRedacted;
    private boolean hasLmCost;
    private boolean hasPrenormHypothesis;
    private boolean hasRecognizerCost;
    private String hypothesis_ = "";
    private boolean isRedacted_ = false;
    private float lmCost_ = 0.0F;
    private String prenormHypothesis_ = "";
    private float recognizerCost_ = 0.0F;

    public static RecognizerHypothesisLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizerHypothesisLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizerHypothesisLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizerHypothesisLog)new RecognizerHypothesisLog().mergeFrom(paramArrayOfByte);
    }

    public final RecognizerHypothesisLog clear()
    {
      clearPrenormHypothesis();
      clearHypothesis();
      clearIsRedacted();
      clearConfidence();
      clearRecognizerCost();
      clearAmCost();
      clearLmCost();
      this.cachedSize = -1;
      return this;
    }

    public RecognizerHypothesisLog clearAmCost()
    {
      this.hasAmCost = false;
      this.amCost_ = 0.0F;
      return this;
    }

    public RecognizerHypothesisLog clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 0.0F;
      return this;
    }

    public RecognizerHypothesisLog clearHypothesis()
    {
      this.hasHypothesis = false;
      this.hypothesis_ = "";
      return this;
    }

    public RecognizerHypothesisLog clearIsRedacted()
    {
      this.hasIsRedacted = false;
      this.isRedacted_ = false;
      return this;
    }

    public RecognizerHypothesisLog clearLmCost()
    {
      this.hasLmCost = false;
      this.lmCost_ = 0.0F;
      return this;
    }

    public RecognizerHypothesisLog clearPrenormHypothesis()
    {
      this.hasPrenormHypothesis = false;
      this.prenormHypothesis_ = "";
      return this;
    }

    public RecognizerHypothesisLog clearRecognizerCost()
    {
      this.hasRecognizerCost = false;
      this.recognizerCost_ = 0.0F;
      return this;
    }

    public float getAmCost()
    {
      return this.amCost_;
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

    public String getHypothesis()
    {
      return this.hypothesis_;
    }

    public boolean getIsRedacted()
    {
      return this.isRedacted_;
    }

    public float getLmCost()
    {
      return this.lmCost_;
    }

    public String getPrenormHypothesis()
    {
      return this.prenormHypothesis_;
    }

    public float getRecognizerCost()
    {
      return this.recognizerCost_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasPrenormHypothesis();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getPrenormHypothesis());
      if (hasHypothesis())
        i += CodedOutputStreamMicro.computeStringSize(2, getHypothesis());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(3, getConfidence());
      if (hasRecognizerCost())
        i += CodedOutputStreamMicro.computeFloatSize(4, getRecognizerCost());
      if (hasAmCost())
        i += CodedOutputStreamMicro.computeFloatSize(5, getAmCost());
      if (hasLmCost())
        i += CodedOutputStreamMicro.computeFloatSize(6, getLmCost());
      if (hasIsRedacted())
        i += CodedOutputStreamMicro.computeBoolSize(7, getIsRedacted());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAmCost()
    {
      return this.hasAmCost;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasHypothesis()
    {
      return this.hasHypothesis;
    }

    public boolean hasIsRedacted()
    {
      return this.hasIsRedacted;
    }

    public boolean hasLmCost()
    {
      return this.hasLmCost;
    }

    public boolean hasPrenormHypothesis()
    {
      return this.hasPrenormHypothesis;
    }

    public boolean hasRecognizerCost()
    {
      return this.hasRecognizerCost;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RecognizerHypothesisLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setPrenormHypothesis(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setHypothesis(paramCodedInputStreamMicro.readString());
          break;
        case 29:
          setConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 37:
          setRecognizerCost(paramCodedInputStreamMicro.readFloat());
          break;
        case 45:
          setAmCost(paramCodedInputStreamMicro.readFloat());
          break;
        case 53:
          setLmCost(paramCodedInputStreamMicro.readFloat());
          break;
        case 56:
        }
        setIsRedacted(paramCodedInputStreamMicro.readBool());
      }
    }

    public RecognizerHypothesisLog setAmCost(float paramFloat)
    {
      this.hasAmCost = true;
      this.amCost_ = paramFloat;
      return this;
    }

    public RecognizerHypothesisLog setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public RecognizerHypothesisLog setHypothesis(String paramString)
    {
      this.hasHypothesis = true;
      this.hypothesis_ = paramString;
      return this;
    }

    public RecognizerHypothesisLog setIsRedacted(boolean paramBoolean)
    {
      this.hasIsRedacted = true;
      this.isRedacted_ = paramBoolean;
      return this;
    }

    public RecognizerHypothesisLog setLmCost(float paramFloat)
    {
      this.hasLmCost = true;
      this.lmCost_ = paramFloat;
      return this;
    }

    public RecognizerHypothesisLog setPrenormHypothesis(String paramString)
    {
      this.hasPrenormHypothesis = true;
      this.prenormHypothesis_ = paramString;
      return this;
    }

    public RecognizerHypothesisLog setRecognizerCost(float paramFloat)
    {
      this.hasRecognizerCost = true;
      this.recognizerCost_ = paramFloat;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasPrenormHypothesis())
        paramCodedOutputStreamMicro.writeString(1, getPrenormHypothesis());
      if (hasHypothesis())
        paramCodedOutputStreamMicro.writeString(2, getHypothesis());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(3, getConfidence());
      if (hasRecognizerCost())
        paramCodedOutputStreamMicro.writeFloat(4, getRecognizerCost());
      if (hasAmCost())
        paramCodedOutputStreamMicro.writeFloat(5, getAmCost());
      if (hasLmCost())
        paramCodedOutputStreamMicro.writeFloat(6, getLmCost());
      if (hasIsRedacted())
        paramCodedOutputStreamMicro.writeBool(7, getIsRedacted());
    }
  }

  public static final class RecognizerLog extends MessageMicro
  {
    public static final int AUDIO_ENCODING_FIELD_NUMBER = 3;
    public static final int AUDIO_ENCODING_TYPE_AMR = 3;
    public static final int AUDIO_ENCODING_TYPE_FLAC = 2;
    public static final int AUDIO_ENCODING_TYPE_FLOAT32 = 1;
    public static final int AUDIO_ENCODING_TYPE_LINEAR16 = 0;
    public static final int AUDIO_ENCODING_TYPE_MULAW = 4;
    public static final int AUDIO_ENCODING_TYPE_SPEEX_NB = 5;
    public static final int AUDIO_ENCODING_TYPE_SPEEX_WB = 6;
    public static final int AVERAGE_CONFIDENCE_FIELD_NUMBER = 18;
    public static final int CHANNEL_COUNT_FIELD_NUMBER = 29;
    public static final int DECODER_GAUSSIAN_SELECTION_CENTROIDS_FIELD_NUMBER = 14;
    public static final int DECODER_LM_WEIGHT_FIELD_NUMBER = 13;
    public static final int DECODER_LOCAL_BEAM_FIELD_NUMBER = 11;
    public static final int DECODER_MAX_ARCS_FIELD_NUMBER = 10;
    public static final int DECODER_WORD_PEN_FIELD_NUMBER = 12;
    public static final int DEPRECATED_ACOUSTIC_MODEL_VERSION_FIELD_NUMBER = 6;
    public static final int DEPRECATED_LANGUAGE_MODEL_VERSION_FIELD_NUMBER = 7;
    public static final int DEPRECATED_LEXICON_VERSION_FIELD_NUMBER = 9;
    public static final int DEPRECATED_TEXTNORM_VERSION_FIELD_NUMBER = 8;
    public static final int FEATURES_FIELD_NUMBER = 30;
    public static final int LANG_PACK_FIELD_NUMBER = 27;
    public static final int NOISE_CANCELER_ENABLED_FIELD_NUMBER = 15;
    public static final int PERSONALIZATION_ENABLED_FIELD_NUMBER = 25;
    public static final int RECOGNIZER_CONTEXT_FIELD_NUMBER = 5;
    public static final int RECOGNIZER_LANGUAGE_FIELD_NUMBER = 21;
    public static final int RECOGNIZER_SEGMENT_FIELD_NUMBER = 22;
    public static final int RECOGNIZER_STATUS_CODE_COMPLETE_NO_MATCH = 1;
    public static final int RECOGNIZER_STATUS_CODE_COMPLETE_SUCCESS = 0;
    public static final int RECOGNIZER_STATUS_FIELD_NUMBER = 19;
    public static final int REQUEST_DURATION_MS_FIELD_NUMBER = 24;
    public static final int SAMPLE_RATE_FIELD_NUMBER = 4;
    public static final int SERVER_CLUSTER_FIELD_NUMBER = 23;
    public static final int SERVER_MACHINE_NAME_FIELD_NUMBER = 28;
    public static final int SPOKEN_LANGUAGE_FIELD_NUMBER = 20;
    public static final int START_TIME_MS_FIELD_NUMBER = 26;
    public static final int TOP_HYPOTHESIS_FIELD_NUMBER = 16;
    public static final int TOTAL_AUDIO_DURATION_MS_FIELD_NUMBER = 17;
    public static final int UTTERANCE_ID_FIELD_NUMBER = 1;
    public static final int WAVEFORM_FIELD_NUMBER = 2;
    private int audioEncoding_ = 0;
    private float averageConfidence_ = 0.0F;
    private int cachedSize = -1;
    private int channelCount_ = 0;
    private String dEPRECATEDAcousticModelVersion_ = "";
    private String dEPRECATEDLanguageModelVersion_ = "";
    private String dEPRECATEDLexiconVersion_ = "";
    private String dEPRECATEDTextnormVersion_ = "";
    private int decoderGaussianSelectionCentroids_ = 0;
    private float decoderLmWeight_ = 0.0F;
    private float decoderLocalBeam_ = 0.0F;
    private int decoderMaxArcs_ = 0;
    private float decoderWordPen_ = 0.0F;
    private RecognizerOuterClass.AudioFeatureLog features_ = null;
    private boolean hasAudioEncoding;
    private boolean hasAverageConfidence;
    private boolean hasChannelCount;
    private boolean hasDEPRECATEDAcousticModelVersion;
    private boolean hasDEPRECATEDLanguageModelVersion;
    private boolean hasDEPRECATEDLexiconVersion;
    private boolean hasDEPRECATEDTextnormVersion;
    private boolean hasDecoderGaussianSelectionCentroids;
    private boolean hasDecoderLmWeight;
    private boolean hasDecoderLocalBeam;
    private boolean hasDecoderMaxArcs;
    private boolean hasDecoderWordPen;
    private boolean hasFeatures;
    private boolean hasLangPack;
    private boolean hasNoiseCancelerEnabled;
    private boolean hasPersonalizationEnabled;
    private boolean hasRecognizerContext;
    private boolean hasRecognizerLanguage;
    private boolean hasRecognizerStatus;
    private boolean hasRequestDurationMs;
    private boolean hasSampleRate;
    private boolean hasServerCluster;
    private boolean hasServerMachineName;
    private boolean hasSpokenLanguage;
    private boolean hasStartTimeMs;
    private boolean hasTopHypothesis;
    private boolean hasTotalAudioDurationMs;
    private boolean hasUtteranceId;
    private boolean hasWaveform;
    private RecognizerOuterClass.LanguagePackLog langPack_ = null;
    private boolean noiseCancelerEnabled_ = false;
    private boolean personalizationEnabled_ = false;
    private RecognizerOuterClass.RecognizerContextLog recognizerContext_ = null;
    private String recognizerLanguage_ = "";
    private List<RecognizerOuterClass.RecognizerSegmentLog> recognizerSegment_ = Collections.emptyList();
    private int recognizerStatus_ = 0;
    private int requestDurationMs_ = 0;
    private float sampleRate_ = 0.0F;
    private String serverCluster_ = "";
    private String serverMachineName_ = "";
    private String spokenLanguage_ = "";
    private long startTimeMs_ = 0L;
    private RecognizerOuterClass.RecognizerHypothesisLog topHypothesis_ = null;
    private int totalAudioDurationMs_ = 0;
    private String utteranceId_ = "";
    private ByteStringMicro waveform_ = ByteStringMicro.EMPTY;

    public static RecognizerLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizerLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizerLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizerLog)new RecognizerLog().mergeFrom(paramArrayOfByte);
    }

    public RecognizerLog addRecognizerSegment(RecognizerOuterClass.RecognizerSegmentLog paramRecognizerSegmentLog)
    {
      if (paramRecognizerSegmentLog == null)
        throw new NullPointerException();
      if (this.recognizerSegment_.isEmpty())
        this.recognizerSegment_ = new ArrayList();
      this.recognizerSegment_.add(paramRecognizerSegmentLog);
      return this;
    }

    public final RecognizerLog clear()
    {
      clearUtteranceId();
      clearWaveform();
      clearChannelCount();
      clearAudioEncoding();
      clearFeatures();
      clearSampleRate();
      clearRecognizerContext();
      clearDEPRECATEDAcousticModelVersion();
      clearDEPRECATEDLanguageModelVersion();
      clearDEPRECATEDTextnormVersion();
      clearDEPRECATEDLexiconVersion();
      clearDecoderMaxArcs();
      clearDecoderLocalBeam();
      clearDecoderWordPen();
      clearDecoderLmWeight();
      clearDecoderGaussianSelectionCentroids();
      clearNoiseCancelerEnabled();
      clearTopHypothesis();
      clearTotalAudioDurationMs();
      clearAverageConfidence();
      clearRecognizerStatus();
      clearSpokenLanguage();
      clearRecognizerLanguage();
      clearRecognizerSegment();
      clearServerCluster();
      clearServerMachineName();
      clearRequestDurationMs();
      clearPersonalizationEnabled();
      clearStartTimeMs();
      clearLangPack();
      this.cachedSize = -1;
      return this;
    }

    public RecognizerLog clearAudioEncoding()
    {
      this.hasAudioEncoding = false;
      this.audioEncoding_ = 0;
      return this;
    }

    public RecognizerLog clearAverageConfidence()
    {
      this.hasAverageConfidence = false;
      this.averageConfidence_ = 0.0F;
      return this;
    }

    public RecognizerLog clearChannelCount()
    {
      this.hasChannelCount = false;
      this.channelCount_ = 0;
      return this;
    }

    public RecognizerLog clearDEPRECATEDAcousticModelVersion()
    {
      this.hasDEPRECATEDAcousticModelVersion = false;
      this.dEPRECATEDAcousticModelVersion_ = "";
      return this;
    }

    public RecognizerLog clearDEPRECATEDLanguageModelVersion()
    {
      this.hasDEPRECATEDLanguageModelVersion = false;
      this.dEPRECATEDLanguageModelVersion_ = "";
      return this;
    }

    public RecognizerLog clearDEPRECATEDLexiconVersion()
    {
      this.hasDEPRECATEDLexiconVersion = false;
      this.dEPRECATEDLexiconVersion_ = "";
      return this;
    }

    public RecognizerLog clearDEPRECATEDTextnormVersion()
    {
      this.hasDEPRECATEDTextnormVersion = false;
      this.dEPRECATEDTextnormVersion_ = "";
      return this;
    }

    public RecognizerLog clearDecoderGaussianSelectionCentroids()
    {
      this.hasDecoderGaussianSelectionCentroids = false;
      this.decoderGaussianSelectionCentroids_ = 0;
      return this;
    }

    public RecognizerLog clearDecoderLmWeight()
    {
      this.hasDecoderLmWeight = false;
      this.decoderLmWeight_ = 0.0F;
      return this;
    }

    public RecognizerLog clearDecoderLocalBeam()
    {
      this.hasDecoderLocalBeam = false;
      this.decoderLocalBeam_ = 0.0F;
      return this;
    }

    public RecognizerLog clearDecoderMaxArcs()
    {
      this.hasDecoderMaxArcs = false;
      this.decoderMaxArcs_ = 0;
      return this;
    }

    public RecognizerLog clearDecoderWordPen()
    {
      this.hasDecoderWordPen = false;
      this.decoderWordPen_ = 0.0F;
      return this;
    }

    public RecognizerLog clearFeatures()
    {
      this.hasFeatures = false;
      this.features_ = null;
      return this;
    }

    public RecognizerLog clearLangPack()
    {
      this.hasLangPack = false;
      this.langPack_ = null;
      return this;
    }

    public RecognizerLog clearNoiseCancelerEnabled()
    {
      this.hasNoiseCancelerEnabled = false;
      this.noiseCancelerEnabled_ = false;
      return this;
    }

    public RecognizerLog clearPersonalizationEnabled()
    {
      this.hasPersonalizationEnabled = false;
      this.personalizationEnabled_ = false;
      return this;
    }

    public RecognizerLog clearRecognizerContext()
    {
      this.hasRecognizerContext = false;
      this.recognizerContext_ = null;
      return this;
    }

    public RecognizerLog clearRecognizerLanguage()
    {
      this.hasRecognizerLanguage = false;
      this.recognizerLanguage_ = "";
      return this;
    }

    public RecognizerLog clearRecognizerSegment()
    {
      this.recognizerSegment_ = Collections.emptyList();
      return this;
    }

    public RecognizerLog clearRecognizerStatus()
    {
      this.hasRecognizerStatus = false;
      this.recognizerStatus_ = 0;
      return this;
    }

    public RecognizerLog clearRequestDurationMs()
    {
      this.hasRequestDurationMs = false;
      this.requestDurationMs_ = 0;
      return this;
    }

    public RecognizerLog clearSampleRate()
    {
      this.hasSampleRate = false;
      this.sampleRate_ = 0.0F;
      return this;
    }

    public RecognizerLog clearServerCluster()
    {
      this.hasServerCluster = false;
      this.serverCluster_ = "";
      return this;
    }

    public RecognizerLog clearServerMachineName()
    {
      this.hasServerMachineName = false;
      this.serverMachineName_ = "";
      return this;
    }

    public RecognizerLog clearSpokenLanguage()
    {
      this.hasSpokenLanguage = false;
      this.spokenLanguage_ = "";
      return this;
    }

    public RecognizerLog clearStartTimeMs()
    {
      this.hasStartTimeMs = false;
      this.startTimeMs_ = 0L;
      return this;
    }

    public RecognizerLog clearTopHypothesis()
    {
      this.hasTopHypothesis = false;
      this.topHypothesis_ = null;
      return this;
    }

    public RecognizerLog clearTotalAudioDurationMs()
    {
      this.hasTotalAudioDurationMs = false;
      this.totalAudioDurationMs_ = 0;
      return this;
    }

    public RecognizerLog clearUtteranceId()
    {
      this.hasUtteranceId = false;
      this.utteranceId_ = "";
      return this;
    }

    public RecognizerLog clearWaveform()
    {
      this.hasWaveform = false;
      this.waveform_ = ByteStringMicro.EMPTY;
      return this;
    }

    public int getAudioEncoding()
    {
      return this.audioEncoding_;
    }

    public float getAverageConfidence()
    {
      return this.averageConfidence_;
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

    public String getDEPRECATEDAcousticModelVersion()
    {
      return this.dEPRECATEDAcousticModelVersion_;
    }

    public String getDEPRECATEDLanguageModelVersion()
    {
      return this.dEPRECATEDLanguageModelVersion_;
    }

    public String getDEPRECATEDLexiconVersion()
    {
      return this.dEPRECATEDLexiconVersion_;
    }

    public String getDEPRECATEDTextnormVersion()
    {
      return this.dEPRECATEDTextnormVersion_;
    }

    public int getDecoderGaussianSelectionCentroids()
    {
      return this.decoderGaussianSelectionCentroids_;
    }

    public float getDecoderLmWeight()
    {
      return this.decoderLmWeight_;
    }

    public float getDecoderLocalBeam()
    {
      return this.decoderLocalBeam_;
    }

    public int getDecoderMaxArcs()
    {
      return this.decoderMaxArcs_;
    }

    public float getDecoderWordPen()
    {
      return this.decoderWordPen_;
    }

    public RecognizerOuterClass.AudioFeatureLog getFeatures()
    {
      return this.features_;
    }

    public RecognizerOuterClass.LanguagePackLog getLangPack()
    {
      return this.langPack_;
    }

    public boolean getNoiseCancelerEnabled()
    {
      return this.noiseCancelerEnabled_;
    }

    public boolean getPersonalizationEnabled()
    {
      return this.personalizationEnabled_;
    }

    public RecognizerOuterClass.RecognizerContextLog getRecognizerContext()
    {
      return this.recognizerContext_;
    }

    public String getRecognizerLanguage()
    {
      return this.recognizerLanguage_;
    }

    public RecognizerOuterClass.RecognizerSegmentLog getRecognizerSegment(int paramInt)
    {
      return (RecognizerOuterClass.RecognizerSegmentLog)this.recognizerSegment_.get(paramInt);
    }

    public int getRecognizerSegmentCount()
    {
      return this.recognizerSegment_.size();
    }

    public List<RecognizerOuterClass.RecognizerSegmentLog> getRecognizerSegmentList()
    {
      return this.recognizerSegment_;
    }

    public int getRecognizerStatus()
    {
      return this.recognizerStatus_;
    }

    public int getRequestDurationMs()
    {
      return this.requestDurationMs_;
    }

    public float getSampleRate()
    {
      return this.sampleRate_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasUtteranceId();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getUtteranceId());
      if (hasWaveform())
        i += CodedOutputStreamMicro.computeBytesSize(2, getWaveform());
      if (hasAudioEncoding())
        i += CodedOutputStreamMicro.computeInt32Size(3, getAudioEncoding());
      if (hasSampleRate())
        i += CodedOutputStreamMicro.computeFloatSize(4, getSampleRate());
      if (hasRecognizerContext())
        i += CodedOutputStreamMicro.computeMessageSize(5, getRecognizerContext());
      if (hasDEPRECATEDAcousticModelVersion())
        i += CodedOutputStreamMicro.computeStringSize(6, getDEPRECATEDAcousticModelVersion());
      if (hasDEPRECATEDLanguageModelVersion())
        i += CodedOutputStreamMicro.computeStringSize(7, getDEPRECATEDLanguageModelVersion());
      if (hasDEPRECATEDTextnormVersion())
        i += CodedOutputStreamMicro.computeStringSize(8, getDEPRECATEDTextnormVersion());
      if (hasDEPRECATEDLexiconVersion())
        i += CodedOutputStreamMicro.computeStringSize(9, getDEPRECATEDLexiconVersion());
      if (hasDecoderMaxArcs())
        i += CodedOutputStreamMicro.computeInt32Size(10, getDecoderMaxArcs());
      if (hasDecoderLocalBeam())
        i += CodedOutputStreamMicro.computeFloatSize(11, getDecoderLocalBeam());
      if (hasDecoderWordPen())
        i += CodedOutputStreamMicro.computeFloatSize(12, getDecoderWordPen());
      if (hasDecoderLmWeight())
        i += CodedOutputStreamMicro.computeFloatSize(13, getDecoderLmWeight());
      if (hasDecoderGaussianSelectionCentroids())
        i += CodedOutputStreamMicro.computeInt32Size(14, getDecoderGaussianSelectionCentroids());
      if (hasNoiseCancelerEnabled())
        i += CodedOutputStreamMicro.computeBoolSize(15, getNoiseCancelerEnabled());
      if (hasTopHypothesis())
        i += CodedOutputStreamMicro.computeMessageSize(16, getTopHypothesis());
      if (hasTotalAudioDurationMs())
        i += CodedOutputStreamMicro.computeInt32Size(17, getTotalAudioDurationMs());
      if (hasAverageConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(18, getAverageConfidence());
      if (hasRecognizerStatus())
        i += CodedOutputStreamMicro.computeInt32Size(19, getRecognizerStatus());
      if (hasSpokenLanguage())
        i += CodedOutputStreamMicro.computeStringSize(20, getSpokenLanguage());
      if (hasRecognizerLanguage())
        i += CodedOutputStreamMicro.computeStringSize(21, getRecognizerLanguage());
      Iterator localIterator = getRecognizerSegmentList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(22, (RecognizerOuterClass.RecognizerSegmentLog)localIterator.next());
      if (hasServerCluster())
        i += CodedOutputStreamMicro.computeStringSize(23, getServerCluster());
      if (hasRequestDurationMs())
        i += CodedOutputStreamMicro.computeInt32Size(24, getRequestDurationMs());
      if (hasPersonalizationEnabled())
        i += CodedOutputStreamMicro.computeBoolSize(25, getPersonalizationEnabled());
      if (hasStartTimeMs())
        i += CodedOutputStreamMicro.computeInt64Size(26, getStartTimeMs());
      if (hasLangPack())
        i += CodedOutputStreamMicro.computeMessageSize(27, getLangPack());
      if (hasServerMachineName())
        i += CodedOutputStreamMicro.computeStringSize(28, getServerMachineName());
      if (hasChannelCount())
        i += CodedOutputStreamMicro.computeInt32Size(29, getChannelCount());
      if (hasFeatures())
        i += CodedOutputStreamMicro.computeMessageSize(30, getFeatures());
      this.cachedSize = i;
      return i;
    }

    public String getServerCluster()
    {
      return this.serverCluster_;
    }

    public String getServerMachineName()
    {
      return this.serverMachineName_;
    }

    public String getSpokenLanguage()
    {
      return this.spokenLanguage_;
    }

    public long getStartTimeMs()
    {
      return this.startTimeMs_;
    }

    public RecognizerOuterClass.RecognizerHypothesisLog getTopHypothesis()
    {
      return this.topHypothesis_;
    }

    public int getTotalAudioDurationMs()
    {
      return this.totalAudioDurationMs_;
    }

    public String getUtteranceId()
    {
      return this.utteranceId_;
    }

    public ByteStringMicro getWaveform()
    {
      return this.waveform_;
    }

    public boolean hasAudioEncoding()
    {
      return this.hasAudioEncoding;
    }

    public boolean hasAverageConfidence()
    {
      return this.hasAverageConfidence;
    }

    public boolean hasChannelCount()
    {
      return this.hasChannelCount;
    }

    public boolean hasDEPRECATEDAcousticModelVersion()
    {
      return this.hasDEPRECATEDAcousticModelVersion;
    }

    public boolean hasDEPRECATEDLanguageModelVersion()
    {
      return this.hasDEPRECATEDLanguageModelVersion;
    }

    public boolean hasDEPRECATEDLexiconVersion()
    {
      return this.hasDEPRECATEDLexiconVersion;
    }

    public boolean hasDEPRECATEDTextnormVersion()
    {
      return this.hasDEPRECATEDTextnormVersion;
    }

    public boolean hasDecoderGaussianSelectionCentroids()
    {
      return this.hasDecoderGaussianSelectionCentroids;
    }

    public boolean hasDecoderLmWeight()
    {
      return this.hasDecoderLmWeight;
    }

    public boolean hasDecoderLocalBeam()
    {
      return this.hasDecoderLocalBeam;
    }

    public boolean hasDecoderMaxArcs()
    {
      return this.hasDecoderMaxArcs;
    }

    public boolean hasDecoderWordPen()
    {
      return this.hasDecoderWordPen;
    }

    public boolean hasFeatures()
    {
      return this.hasFeatures;
    }

    public boolean hasLangPack()
    {
      return this.hasLangPack;
    }

    public boolean hasNoiseCancelerEnabled()
    {
      return this.hasNoiseCancelerEnabled;
    }

    public boolean hasPersonalizationEnabled()
    {
      return this.hasPersonalizationEnabled;
    }

    public boolean hasRecognizerContext()
    {
      return this.hasRecognizerContext;
    }

    public boolean hasRecognizerLanguage()
    {
      return this.hasRecognizerLanguage;
    }

    public boolean hasRecognizerStatus()
    {
      return this.hasRecognizerStatus;
    }

    public boolean hasRequestDurationMs()
    {
      return this.hasRequestDurationMs;
    }

    public boolean hasSampleRate()
    {
      return this.hasSampleRate;
    }

    public boolean hasServerCluster()
    {
      return this.hasServerCluster;
    }

    public boolean hasServerMachineName()
    {
      return this.hasServerMachineName;
    }

    public boolean hasSpokenLanguage()
    {
      return this.hasSpokenLanguage;
    }

    public boolean hasStartTimeMs()
    {
      return this.hasStartTimeMs;
    }

    public boolean hasTopHypothesis()
    {
      return this.hasTopHypothesis;
    }

    public boolean hasTotalAudioDurationMs()
    {
      return this.hasTotalAudioDurationMs;
    }

    public boolean hasUtteranceId()
    {
      return this.hasUtteranceId;
    }

    public boolean hasWaveform()
    {
      return this.hasWaveform;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RecognizerLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setUtteranceId(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setWaveform(paramCodedInputStreamMicro.readBytes());
          break;
        case 24:
          setAudioEncoding(paramCodedInputStreamMicro.readInt32());
          break;
        case 37:
          setSampleRate(paramCodedInputStreamMicro.readFloat());
          break;
        case 42:
          RecognizerOuterClass.RecognizerContextLog localRecognizerContextLog = new RecognizerOuterClass.RecognizerContextLog();
          paramCodedInputStreamMicro.readMessage(localRecognizerContextLog);
          setRecognizerContext(localRecognizerContextLog);
          break;
        case 50:
          setDEPRECATEDAcousticModelVersion(paramCodedInputStreamMicro.readString());
          break;
        case 58:
          setDEPRECATEDLanguageModelVersion(paramCodedInputStreamMicro.readString());
          break;
        case 66:
          setDEPRECATEDTextnormVersion(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          setDEPRECATEDLexiconVersion(paramCodedInputStreamMicro.readString());
          break;
        case 80:
          setDecoderMaxArcs(paramCodedInputStreamMicro.readInt32());
          break;
        case 93:
          setDecoderLocalBeam(paramCodedInputStreamMicro.readFloat());
          break;
        case 101:
          setDecoderWordPen(paramCodedInputStreamMicro.readFloat());
          break;
        case 109:
          setDecoderLmWeight(paramCodedInputStreamMicro.readFloat());
          break;
        case 112:
          setDecoderGaussianSelectionCentroids(paramCodedInputStreamMicro.readInt32());
          break;
        case 120:
          setNoiseCancelerEnabled(paramCodedInputStreamMicro.readBool());
          break;
        case 130:
          RecognizerOuterClass.RecognizerHypothesisLog localRecognizerHypothesisLog = new RecognizerOuterClass.RecognizerHypothesisLog();
          paramCodedInputStreamMicro.readMessage(localRecognizerHypothesisLog);
          setTopHypothesis(localRecognizerHypothesisLog);
          break;
        case 136:
          setTotalAudioDurationMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 149:
          setAverageConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 152:
          setRecognizerStatus(paramCodedInputStreamMicro.readInt32());
          break;
        case 162:
          setSpokenLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 170:
          setRecognizerLanguage(paramCodedInputStreamMicro.readString());
          break;
        case 178:
          RecognizerOuterClass.RecognizerSegmentLog localRecognizerSegmentLog = new RecognizerOuterClass.RecognizerSegmentLog();
          paramCodedInputStreamMicro.readMessage(localRecognizerSegmentLog);
          addRecognizerSegment(localRecognizerSegmentLog);
          break;
        case 186:
          setServerCluster(paramCodedInputStreamMicro.readString());
          break;
        case 192:
          setRequestDurationMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 200:
          setPersonalizationEnabled(paramCodedInputStreamMicro.readBool());
          break;
        case 208:
          setStartTimeMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 218:
          RecognizerOuterClass.LanguagePackLog localLanguagePackLog = new RecognizerOuterClass.LanguagePackLog();
          paramCodedInputStreamMicro.readMessage(localLanguagePackLog);
          setLangPack(localLanguagePackLog);
          break;
        case 226:
          setServerMachineName(paramCodedInputStreamMicro.readString());
          break;
        case 232:
          setChannelCount(paramCodedInputStreamMicro.readInt32());
          break;
        case 242:
        }
        RecognizerOuterClass.AudioFeatureLog localAudioFeatureLog = new RecognizerOuterClass.AudioFeatureLog();
        paramCodedInputStreamMicro.readMessage(localAudioFeatureLog);
        setFeatures(localAudioFeatureLog);
      }
    }

    public RecognizerLog setAudioEncoding(int paramInt)
    {
      this.hasAudioEncoding = true;
      this.audioEncoding_ = paramInt;
      return this;
    }

    public RecognizerLog setAverageConfidence(float paramFloat)
    {
      this.hasAverageConfidence = true;
      this.averageConfidence_ = paramFloat;
      return this;
    }

    public RecognizerLog setChannelCount(int paramInt)
    {
      this.hasChannelCount = true;
      this.channelCount_ = paramInt;
      return this;
    }

    public RecognizerLog setDEPRECATEDAcousticModelVersion(String paramString)
    {
      this.hasDEPRECATEDAcousticModelVersion = true;
      this.dEPRECATEDAcousticModelVersion_ = paramString;
      return this;
    }

    public RecognizerLog setDEPRECATEDLanguageModelVersion(String paramString)
    {
      this.hasDEPRECATEDLanguageModelVersion = true;
      this.dEPRECATEDLanguageModelVersion_ = paramString;
      return this;
    }

    public RecognizerLog setDEPRECATEDLexiconVersion(String paramString)
    {
      this.hasDEPRECATEDLexiconVersion = true;
      this.dEPRECATEDLexiconVersion_ = paramString;
      return this;
    }

    public RecognizerLog setDEPRECATEDTextnormVersion(String paramString)
    {
      this.hasDEPRECATEDTextnormVersion = true;
      this.dEPRECATEDTextnormVersion_ = paramString;
      return this;
    }

    public RecognizerLog setDecoderGaussianSelectionCentroids(int paramInt)
    {
      this.hasDecoderGaussianSelectionCentroids = true;
      this.decoderGaussianSelectionCentroids_ = paramInt;
      return this;
    }

    public RecognizerLog setDecoderLmWeight(float paramFloat)
    {
      this.hasDecoderLmWeight = true;
      this.decoderLmWeight_ = paramFloat;
      return this;
    }

    public RecognizerLog setDecoderLocalBeam(float paramFloat)
    {
      this.hasDecoderLocalBeam = true;
      this.decoderLocalBeam_ = paramFloat;
      return this;
    }

    public RecognizerLog setDecoderMaxArcs(int paramInt)
    {
      this.hasDecoderMaxArcs = true;
      this.decoderMaxArcs_ = paramInt;
      return this;
    }

    public RecognizerLog setDecoderWordPen(float paramFloat)
    {
      this.hasDecoderWordPen = true;
      this.decoderWordPen_ = paramFloat;
      return this;
    }

    public RecognizerLog setFeatures(RecognizerOuterClass.AudioFeatureLog paramAudioFeatureLog)
    {
      if (paramAudioFeatureLog == null)
        throw new NullPointerException();
      this.hasFeatures = true;
      this.features_ = paramAudioFeatureLog;
      return this;
    }

    public RecognizerLog setLangPack(RecognizerOuterClass.LanguagePackLog paramLanguagePackLog)
    {
      if (paramLanguagePackLog == null)
        throw new NullPointerException();
      this.hasLangPack = true;
      this.langPack_ = paramLanguagePackLog;
      return this;
    }

    public RecognizerLog setNoiseCancelerEnabled(boolean paramBoolean)
    {
      this.hasNoiseCancelerEnabled = true;
      this.noiseCancelerEnabled_ = paramBoolean;
      return this;
    }

    public RecognizerLog setPersonalizationEnabled(boolean paramBoolean)
    {
      this.hasPersonalizationEnabled = true;
      this.personalizationEnabled_ = paramBoolean;
      return this;
    }

    public RecognizerLog setRecognizerContext(RecognizerOuterClass.RecognizerContextLog paramRecognizerContextLog)
    {
      if (paramRecognizerContextLog == null)
        throw new NullPointerException();
      this.hasRecognizerContext = true;
      this.recognizerContext_ = paramRecognizerContextLog;
      return this;
    }

    public RecognizerLog setRecognizerLanguage(String paramString)
    {
      this.hasRecognizerLanguage = true;
      this.recognizerLanguage_ = paramString;
      return this;
    }

    public RecognizerLog setRecognizerSegment(int paramInt, RecognizerOuterClass.RecognizerSegmentLog paramRecognizerSegmentLog)
    {
      if (paramRecognizerSegmentLog == null)
        throw new NullPointerException();
      this.recognizerSegment_.set(paramInt, paramRecognizerSegmentLog);
      return this;
    }

    public RecognizerLog setRecognizerStatus(int paramInt)
    {
      this.hasRecognizerStatus = true;
      this.recognizerStatus_ = paramInt;
      return this;
    }

    public RecognizerLog setRequestDurationMs(int paramInt)
    {
      this.hasRequestDurationMs = true;
      this.requestDurationMs_ = paramInt;
      return this;
    }

    public RecognizerLog setSampleRate(float paramFloat)
    {
      this.hasSampleRate = true;
      this.sampleRate_ = paramFloat;
      return this;
    }

    public RecognizerLog setServerCluster(String paramString)
    {
      this.hasServerCluster = true;
      this.serverCluster_ = paramString;
      return this;
    }

    public RecognizerLog setServerMachineName(String paramString)
    {
      this.hasServerMachineName = true;
      this.serverMachineName_ = paramString;
      return this;
    }

    public RecognizerLog setSpokenLanguage(String paramString)
    {
      this.hasSpokenLanguage = true;
      this.spokenLanguage_ = paramString;
      return this;
    }

    public RecognizerLog setStartTimeMs(long paramLong)
    {
      this.hasStartTimeMs = true;
      this.startTimeMs_ = paramLong;
      return this;
    }

    public RecognizerLog setTopHypothesis(RecognizerOuterClass.RecognizerHypothesisLog paramRecognizerHypothesisLog)
    {
      if (paramRecognizerHypothesisLog == null)
        throw new NullPointerException();
      this.hasTopHypothesis = true;
      this.topHypothesis_ = paramRecognizerHypothesisLog;
      return this;
    }

    public RecognizerLog setTotalAudioDurationMs(int paramInt)
    {
      this.hasTotalAudioDurationMs = true;
      this.totalAudioDurationMs_ = paramInt;
      return this;
    }

    public RecognizerLog setUtteranceId(String paramString)
    {
      this.hasUtteranceId = true;
      this.utteranceId_ = paramString;
      return this;
    }

    public RecognizerLog setWaveform(ByteStringMicro paramByteStringMicro)
    {
      this.hasWaveform = true;
      this.waveform_ = paramByteStringMicro;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasUtteranceId())
        paramCodedOutputStreamMicro.writeString(1, getUtteranceId());
      if (hasWaveform())
        paramCodedOutputStreamMicro.writeBytes(2, getWaveform());
      if (hasAudioEncoding())
        paramCodedOutputStreamMicro.writeInt32(3, getAudioEncoding());
      if (hasSampleRate())
        paramCodedOutputStreamMicro.writeFloat(4, getSampleRate());
      if (hasRecognizerContext())
        paramCodedOutputStreamMicro.writeMessage(5, getRecognizerContext());
      if (hasDEPRECATEDAcousticModelVersion())
        paramCodedOutputStreamMicro.writeString(6, getDEPRECATEDAcousticModelVersion());
      if (hasDEPRECATEDLanguageModelVersion())
        paramCodedOutputStreamMicro.writeString(7, getDEPRECATEDLanguageModelVersion());
      if (hasDEPRECATEDTextnormVersion())
        paramCodedOutputStreamMicro.writeString(8, getDEPRECATEDTextnormVersion());
      if (hasDEPRECATEDLexiconVersion())
        paramCodedOutputStreamMicro.writeString(9, getDEPRECATEDLexiconVersion());
      if (hasDecoderMaxArcs())
        paramCodedOutputStreamMicro.writeInt32(10, getDecoderMaxArcs());
      if (hasDecoderLocalBeam())
        paramCodedOutputStreamMicro.writeFloat(11, getDecoderLocalBeam());
      if (hasDecoderWordPen())
        paramCodedOutputStreamMicro.writeFloat(12, getDecoderWordPen());
      if (hasDecoderLmWeight())
        paramCodedOutputStreamMicro.writeFloat(13, getDecoderLmWeight());
      if (hasDecoderGaussianSelectionCentroids())
        paramCodedOutputStreamMicro.writeInt32(14, getDecoderGaussianSelectionCentroids());
      if (hasNoiseCancelerEnabled())
        paramCodedOutputStreamMicro.writeBool(15, getNoiseCancelerEnabled());
      if (hasTopHypothesis())
        paramCodedOutputStreamMicro.writeMessage(16, getTopHypothesis());
      if (hasTotalAudioDurationMs())
        paramCodedOutputStreamMicro.writeInt32(17, getTotalAudioDurationMs());
      if (hasAverageConfidence())
        paramCodedOutputStreamMicro.writeFloat(18, getAverageConfidence());
      if (hasRecognizerStatus())
        paramCodedOutputStreamMicro.writeInt32(19, getRecognizerStatus());
      if (hasSpokenLanguage())
        paramCodedOutputStreamMicro.writeString(20, getSpokenLanguage());
      if (hasRecognizerLanguage())
        paramCodedOutputStreamMicro.writeString(21, getRecognizerLanguage());
      Iterator localIterator = getRecognizerSegmentList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(22, (RecognizerOuterClass.RecognizerSegmentLog)localIterator.next());
      if (hasServerCluster())
        paramCodedOutputStreamMicro.writeString(23, getServerCluster());
      if (hasRequestDurationMs())
        paramCodedOutputStreamMicro.writeInt32(24, getRequestDurationMs());
      if (hasPersonalizationEnabled())
        paramCodedOutputStreamMicro.writeBool(25, getPersonalizationEnabled());
      if (hasStartTimeMs())
        paramCodedOutputStreamMicro.writeInt64(26, getStartTimeMs());
      if (hasLangPack())
        paramCodedOutputStreamMicro.writeMessage(27, getLangPack());
      if (hasServerMachineName())
        paramCodedOutputStreamMicro.writeString(28, getServerMachineName());
      if (hasChannelCount())
        paramCodedOutputStreamMicro.writeInt32(29, getChannelCount());
      if (hasFeatures())
        paramCodedOutputStreamMicro.writeMessage(30, getFeatures());
    }
  }

  public static final class RecognizerSegmentLog extends MessageMicro
  {
    public static final int DEPRECATED_FINAL_ENDPOINTER_FIRED_MS_FIELD_NUMBER = 3;
    public static final int DEPRECATED_FINAL_RECOGNITION_RESULT_COMPUTED_MS_FIELD_NUMBER = 4;
    public static final int HYPOTHESIS_FIELD_NUMBER = 5;
    public static final int RELATIVE_END_TIME_MS_FIELD_NUMBER = 2;
    public static final int RELATIVE_START_TIME_MS_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private int dEPRECATEDFinalEndpointerFiredMs_ = 0;
    private long dEPRECATEDFinalRecognitionResultComputedMs_ = 0L;
    private boolean hasDEPRECATEDFinalEndpointerFiredMs;
    private boolean hasDEPRECATEDFinalRecognitionResultComputedMs;
    private boolean hasRelativeEndTimeMs;
    private boolean hasRelativeStartTimeMs;
    private List<RecognizerOuterClass.RecognizerHypothesisLog> hypothesis_ = Collections.emptyList();
    private int relativeEndTimeMs_ = 0;
    private int relativeStartTimeMs_ = 0;

    public static RecognizerSegmentLog parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognizerSegmentLog().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognizerSegmentLog parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognizerSegmentLog)new RecognizerSegmentLog().mergeFrom(paramArrayOfByte);
    }

    public RecognizerSegmentLog addHypothesis(RecognizerOuterClass.RecognizerHypothesisLog paramRecognizerHypothesisLog)
    {
      if (paramRecognizerHypothesisLog == null)
        throw new NullPointerException();
      if (this.hypothesis_.isEmpty())
        this.hypothesis_ = new ArrayList();
      this.hypothesis_.add(paramRecognizerHypothesisLog);
      return this;
    }

    public final RecognizerSegmentLog clear()
    {
      clearRelativeStartTimeMs();
      clearRelativeEndTimeMs();
      clearDEPRECATEDFinalEndpointerFiredMs();
      clearDEPRECATEDFinalRecognitionResultComputedMs();
      clearHypothesis();
      this.cachedSize = -1;
      return this;
    }

    public RecognizerSegmentLog clearDEPRECATEDFinalEndpointerFiredMs()
    {
      this.hasDEPRECATEDFinalEndpointerFiredMs = false;
      this.dEPRECATEDFinalEndpointerFiredMs_ = 0;
      return this;
    }

    public RecognizerSegmentLog clearDEPRECATEDFinalRecognitionResultComputedMs()
    {
      this.hasDEPRECATEDFinalRecognitionResultComputedMs = false;
      this.dEPRECATEDFinalRecognitionResultComputedMs_ = 0L;
      return this;
    }

    public RecognizerSegmentLog clearHypothesis()
    {
      this.hypothesis_ = Collections.emptyList();
      return this;
    }

    public RecognizerSegmentLog clearRelativeEndTimeMs()
    {
      this.hasRelativeEndTimeMs = false;
      this.relativeEndTimeMs_ = 0;
      return this;
    }

    public RecognizerSegmentLog clearRelativeStartTimeMs()
    {
      this.hasRelativeStartTimeMs = false;
      this.relativeStartTimeMs_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getDEPRECATEDFinalEndpointerFiredMs()
    {
      return this.dEPRECATEDFinalEndpointerFiredMs_;
    }

    public long getDEPRECATEDFinalRecognitionResultComputedMs()
    {
      return this.dEPRECATEDFinalRecognitionResultComputedMs_;
    }

    public RecognizerOuterClass.RecognizerHypothesisLog getHypothesis(int paramInt)
    {
      return (RecognizerOuterClass.RecognizerHypothesisLog)this.hypothesis_.get(paramInt);
    }

    public int getHypothesisCount()
    {
      return this.hypothesis_.size();
    }

    public List<RecognizerOuterClass.RecognizerHypothesisLog> getHypothesisList()
    {
      return this.hypothesis_;
    }

    public int getRelativeEndTimeMs()
    {
      return this.relativeEndTimeMs_;
    }

    public int getRelativeStartTimeMs()
    {
      return this.relativeStartTimeMs_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasRelativeStartTimeMs();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getRelativeStartTimeMs());
      if (hasRelativeEndTimeMs())
        i += CodedOutputStreamMicro.computeInt32Size(2, getRelativeEndTimeMs());
      if (hasDEPRECATEDFinalEndpointerFiredMs())
        i += CodedOutputStreamMicro.computeInt32Size(3, getDEPRECATEDFinalEndpointerFiredMs());
      if (hasDEPRECATEDFinalRecognitionResultComputedMs())
        i += CodedOutputStreamMicro.computeInt64Size(4, getDEPRECATEDFinalRecognitionResultComputedMs());
      Iterator localIterator = getHypothesisList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (RecognizerOuterClass.RecognizerHypothesisLog)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public boolean hasDEPRECATEDFinalEndpointerFiredMs()
    {
      return this.hasDEPRECATEDFinalEndpointerFiredMs;
    }

    public boolean hasDEPRECATEDFinalRecognitionResultComputedMs()
    {
      return this.hasDEPRECATEDFinalRecognitionResultComputedMs;
    }

    public boolean hasRelativeEndTimeMs()
    {
      return this.hasRelativeEndTimeMs;
    }

    public boolean hasRelativeStartTimeMs()
    {
      return this.hasRelativeStartTimeMs;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public RecognizerSegmentLog mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setRelativeStartTimeMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setRelativeEndTimeMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
          setDEPRECATEDFinalEndpointerFiredMs(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setDEPRECATEDFinalRecognitionResultComputedMs(paramCodedInputStreamMicro.readInt64());
          break;
        case 42:
        }
        RecognizerOuterClass.RecognizerHypothesisLog localRecognizerHypothesisLog = new RecognizerOuterClass.RecognizerHypothesisLog();
        paramCodedInputStreamMicro.readMessage(localRecognizerHypothesisLog);
        addHypothesis(localRecognizerHypothesisLog);
      }
    }

    public RecognizerSegmentLog setDEPRECATEDFinalEndpointerFiredMs(int paramInt)
    {
      this.hasDEPRECATEDFinalEndpointerFiredMs = true;
      this.dEPRECATEDFinalEndpointerFiredMs_ = paramInt;
      return this;
    }

    public RecognizerSegmentLog setDEPRECATEDFinalRecognitionResultComputedMs(long paramLong)
    {
      this.hasDEPRECATEDFinalRecognitionResultComputedMs = true;
      this.dEPRECATEDFinalRecognitionResultComputedMs_ = paramLong;
      return this;
    }

    public RecognizerSegmentLog setHypothesis(int paramInt, RecognizerOuterClass.RecognizerHypothesisLog paramRecognizerHypothesisLog)
    {
      if (paramRecognizerHypothesisLog == null)
        throw new NullPointerException();
      this.hypothesis_.set(paramInt, paramRecognizerHypothesisLog);
      return this;
    }

    public RecognizerSegmentLog setRelativeEndTimeMs(int paramInt)
    {
      this.hasRelativeEndTimeMs = true;
      this.relativeEndTimeMs_ = paramInt;
      return this;
    }

    public RecognizerSegmentLog setRelativeStartTimeMs(int paramInt)
    {
      this.hasRelativeStartTimeMs = true;
      this.relativeStartTimeMs_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasRelativeStartTimeMs())
        paramCodedOutputStreamMicro.writeInt32(1, getRelativeStartTimeMs());
      if (hasRelativeEndTimeMs())
        paramCodedOutputStreamMicro.writeInt32(2, getRelativeEndTimeMs());
      if (hasDEPRECATEDFinalEndpointerFiredMs())
        paramCodedOutputStreamMicro.writeInt32(3, getDEPRECATEDFinalEndpointerFiredMs());
      if (hasDEPRECATEDFinalRecognitionResultComputedMs())
        paramCodedOutputStreamMicro.writeInt64(4, getDEPRECATEDFinalRecognitionResultComputedMs());
      Iterator localIterator = getHypothesisList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (RecognizerOuterClass.RecognizerHypothesisLog)localIterator.next());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.logs.RecognizerOuterClass
 * JD-Core Version:    0.6.2
 */