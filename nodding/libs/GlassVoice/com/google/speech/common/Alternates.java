package com.google.speech.common;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Alternates
{
  public static final class Alternate extends MessageMicro
  {
    public static final int CONFIDENCE_FIELD_NUMBER = 2;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private float confidence_ = 0.0F;
    private boolean hasConfidence;
    private boolean hasText;
    private String text_ = "";

    public static Alternate parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Alternate().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Alternate parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Alternate)new Alternate().mergeFrom(paramArrayOfByte);
    }

    public final Alternate clear()
    {
      clearText();
      clearConfidence();
      this.cachedSize = -1;
      return this;
    }

    public Alternate clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 0.0F;
      return this;
    }

    public Alternate clearText()
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

    public float getConfidence()
    {
      return this.confidence_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasText();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getText());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(2, getConfidence());
      this.cachedSize = i;
      return i;
    }

    public String getText()
    {
      return this.text_;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasText()
    {
      return this.hasText;
    }

    public final boolean isInitialized()
    {
      return this.hasText;
    }

    public Alternate mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        }
        setConfidence(paramCodedInputStreamMicro.readFloat());
      }
    }

    public Alternate setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public Alternate setText(String paramString)
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
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(2, getConfidence());
    }
  }

  public static final class AlternateParams extends MessageMicro
  {
    public static final int ALTERNATE_UNIT_UTF8_BYTES = 1;
    public static final int ALTERNATE_UNIT_WORD = 0;
    public static final int MAX_SPAN_LENGTH_FIELD_NUMBER = 1;
    public static final int MAX_TOTAL_SPAN_LENGTH_FIELD_NUMBER = 2;
    public static final int UNIT_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private boolean hasMaxSpanLength;
    private boolean hasMaxTotalSpanLength;
    private boolean hasUnit;
    private int maxSpanLength_ = 0;
    private int maxTotalSpanLength_ = 0;
    private int unit_ = 0;

    public static AlternateParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AlternateParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AlternateParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AlternateParams)new AlternateParams().mergeFrom(paramArrayOfByte);
    }

    public final AlternateParams clear()
    {
      clearMaxSpanLength();
      clearMaxTotalSpanLength();
      clearUnit();
      this.cachedSize = -1;
      return this;
    }

    public AlternateParams clearMaxSpanLength()
    {
      this.hasMaxSpanLength = false;
      this.maxSpanLength_ = 0;
      return this;
    }

    public AlternateParams clearMaxTotalSpanLength()
    {
      this.hasMaxTotalSpanLength = false;
      this.maxTotalSpanLength_ = 0;
      return this;
    }

    public AlternateParams clearUnit()
    {
      this.hasUnit = false;
      this.unit_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getMaxSpanLength()
    {
      return this.maxSpanLength_;
    }

    public int getMaxTotalSpanLength()
    {
      return this.maxTotalSpanLength_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasMaxSpanLength();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getMaxSpanLength());
      if (hasMaxTotalSpanLength())
        i += CodedOutputStreamMicro.computeInt32Size(2, getMaxTotalSpanLength());
      if (hasUnit())
        i += CodedOutputStreamMicro.computeInt32Size(3, getUnit());
      this.cachedSize = i;
      return i;
    }

    public int getUnit()
    {
      return this.unit_;
    }

    public boolean hasMaxSpanLength()
    {
      return this.hasMaxSpanLength;
    }

    public boolean hasMaxTotalSpanLength()
    {
      return this.hasMaxTotalSpanLength;
    }

    public boolean hasUnit()
    {
      return this.hasUnit;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public AlternateParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setMaxSpanLength(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setMaxTotalSpanLength(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
        }
        setUnit(paramCodedInputStreamMicro.readInt32());
      }
    }

    public AlternateParams setMaxSpanLength(int paramInt)
    {
      this.hasMaxSpanLength = true;
      this.maxSpanLength_ = paramInt;
      return this;
    }

    public AlternateParams setMaxTotalSpanLength(int paramInt)
    {
      this.hasMaxTotalSpanLength = true;
      this.maxTotalSpanLength_ = paramInt;
      return this;
    }

    public AlternateParams setUnit(int paramInt)
    {
      this.hasUnit = true;
      this.unit_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasMaxSpanLength())
        paramCodedOutputStreamMicro.writeInt32(1, getMaxSpanLength());
      if (hasMaxTotalSpanLength())
        paramCodedOutputStreamMicro.writeInt32(2, getMaxTotalSpanLength());
      if (hasUnit())
        paramCodedOutputStreamMicro.writeInt32(3, getUnit());
    }
  }

  public static final class AlternateSpan extends MessageMicro
  {
    public static final int ALTERNATES_FIELD_NUMBER = 3;
    public static final int CONFIDENCE_FIELD_NUMBER = 4;
    public static final int LENGTH_FIELD_NUMBER = 2;
    public static final int START_FIELD_NUMBER = 1;
    private List<Alternates.Alternate> alternates_ = Collections.emptyList();
    private int cachedSize = -1;
    private float confidence_ = 0.0F;
    private boolean hasConfidence;
    private boolean hasLength;
    private boolean hasStart;
    private int length_ = 0;
    private int start_ = 0;

    public static AlternateSpan parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new AlternateSpan().mergeFrom(paramCodedInputStreamMicro);
    }

    public static AlternateSpan parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (AlternateSpan)new AlternateSpan().mergeFrom(paramArrayOfByte);
    }

    public AlternateSpan addAlternates(Alternates.Alternate paramAlternate)
    {
      if (paramAlternate == null)
        throw new NullPointerException();
      if (this.alternates_.isEmpty())
        this.alternates_ = new ArrayList();
      this.alternates_.add(paramAlternate);
      return this;
    }

    public final AlternateSpan clear()
    {
      clearStart();
      clearLength();
      clearAlternates();
      clearConfidence();
      this.cachedSize = -1;
      return this;
    }

    public AlternateSpan clearAlternates()
    {
      this.alternates_ = Collections.emptyList();
      return this;
    }

    public AlternateSpan clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 0.0F;
      return this;
    }

    public AlternateSpan clearLength()
    {
      this.hasLength = false;
      this.length_ = 0;
      return this;
    }

    public AlternateSpan clearStart()
    {
      this.hasStart = false;
      this.start_ = 0;
      return this;
    }

    public Alternates.Alternate getAlternates(int paramInt)
    {
      return (Alternates.Alternate)this.alternates_.get(paramInt);
    }

    public int getAlternatesCount()
    {
      return this.alternates_.size();
    }

    public List<Alternates.Alternate> getAlternatesList()
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

    public int getLength()
    {
      return this.length_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasStart();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeInt32Size(1, getStart());
      if (hasLength())
        i += CodedOutputStreamMicro.computeInt32Size(2, getLength());
      Iterator localIterator = getAlternatesList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(3, (Alternates.Alternate)localIterator.next());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(4, getConfidence());
      this.cachedSize = i;
      return i;
    }

    public int getStart()
    {
      return this.start_;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasLength()
    {
      return this.hasLength;
    }

    public boolean hasStart()
    {
      return this.hasStart;
    }

    public final boolean isInitialized()
    {
      if (!this.hasStart);
      while (!this.hasLength)
        return false;
      Iterator localIterator = getAlternatesList().iterator();
      while (localIterator.hasNext())
        if (!((Alternates.Alternate)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public AlternateSpan mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setStart(paramCodedInputStreamMicro.readInt32());
          break;
        case 16:
          setLength(paramCodedInputStreamMicro.readInt32());
          break;
        case 26:
          Alternates.Alternate localAlternate = new Alternates.Alternate();
          paramCodedInputStreamMicro.readMessage(localAlternate);
          addAlternates(localAlternate);
          break;
        case 37:
        }
        setConfidence(paramCodedInputStreamMicro.readFloat());
      }
    }

    public AlternateSpan setAlternates(int paramInt, Alternates.Alternate paramAlternate)
    {
      if (paramAlternate == null)
        throw new NullPointerException();
      this.alternates_.set(paramInt, paramAlternate);
      return this;
    }

    public AlternateSpan setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public AlternateSpan setLength(int paramInt)
    {
      this.hasLength = true;
      this.length_ = paramInt;
      return this;
    }

    public AlternateSpan setStart(int paramInt)
    {
      this.hasStart = true;
      this.start_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasStart())
        paramCodedOutputStreamMicro.writeInt32(1, getStart());
      if (hasLength())
        paramCodedOutputStreamMicro.writeInt32(2, getLength());
      Iterator localIterator = getAlternatesList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(3, (Alternates.Alternate)localIterator.next());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(4, getConfidence());
    }
  }

  public static final class RecognitionAlternates extends MessageMicro
  {
    public static final int SLOT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<Slot> slot_ = Collections.emptyList();

    public static RecognitionAlternates parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognitionAlternates().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognitionAlternates parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognitionAlternates)new RecognitionAlternates().mergeFrom(paramArrayOfByte);
    }

    public RecognitionAlternates addSlot(Slot paramSlot)
    {
      if (paramSlot == null)
        throw new NullPointerException();
      if (this.slot_.isEmpty())
        this.slot_ = new ArrayList();
      this.slot_.add(paramSlot);
      return this;
    }

    public final RecognitionAlternates clear()
    {
      clearSlot();
      this.cachedSize = -1;
      return this;
    }

    public RecognitionAlternates clearSlot()
    {
      this.slot_ = Collections.emptyList();
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
      int i = 0;
      Iterator localIterator = getSlotList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeGroupSize(1, (Slot)localIterator.next());
      this.cachedSize = i;
      return i;
    }

    public Slot getSlot(int paramInt)
    {
      return (Slot)this.slot_.get(paramInt);
    }

    public int getSlotCount()
    {
      return this.slot_.size();
    }

    public List<Slot> getSlotList()
    {
      return this.slot_;
    }

    public final boolean isInitialized()
    {
      Iterator localIterator = getSlotList().iterator();
      while (localIterator.hasNext())
        if (!((Slot)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public RecognitionAlternates mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 11:
        }
        Slot localSlot = new Slot();
        paramCodedInputStreamMicro.readGroup(localSlot, 1);
        addSlot(localSlot);
      }
    }

    public RecognitionAlternates setSlot(int paramInt, Slot paramSlot)
    {
      if (paramSlot == null)
        throw new NullPointerException();
      this.slot_.set(paramInt, paramSlot);
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getSlotList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeGroup(1, (Slot)localIterator.next());
    }

    public static final class Slot extends MessageMicro
    {
      public static final int ALTERNATE_FIELD_NUMBER = 4;
      public static final int FIRST_WORD_FIELD_NUMBER = 2;
      public static final int ORIGINAL_PHRASE_CONFIDENCE_FIELD_NUMBER = 7;
      public static final int PHRASE_LENGTH_FIELD_NUMBER = 3;
      private List<Alternate> alternate_ = Collections.emptyList();
      private int cachedSize = -1;
      private int firstWord_ = 0;
      private boolean hasFirstWord;
      private boolean hasOriginalPhraseConfidence;
      private boolean hasPhraseLength;
      private float originalPhraseConfidence_ = 0.0F;
      private int phraseLength_ = 0;

      public Slot addAlternate(Alternate paramAlternate)
      {
        if (paramAlternate == null)
          throw new NullPointerException();
        if (this.alternate_.isEmpty())
          this.alternate_ = new ArrayList();
        this.alternate_.add(paramAlternate);
        return this;
      }

      public final Slot clear()
      {
        clearFirstWord();
        clearPhraseLength();
        clearAlternate();
        clearOriginalPhraseConfidence();
        this.cachedSize = -1;
        return this;
      }

      public Slot clearAlternate()
      {
        this.alternate_ = Collections.emptyList();
        return this;
      }

      public Slot clearFirstWord()
      {
        this.hasFirstWord = false;
        this.firstWord_ = 0;
        return this;
      }

      public Slot clearOriginalPhraseConfidence()
      {
        this.hasOriginalPhraseConfidence = false;
        this.originalPhraseConfidence_ = 0.0F;
        return this;
      }

      public Slot clearPhraseLength()
      {
        this.hasPhraseLength = false;
        this.phraseLength_ = 0;
        return this;
      }

      public Alternate getAlternate(int paramInt)
      {
        return (Alternate)this.alternate_.get(paramInt);
      }

      public int getAlternateCount()
      {
        return this.alternate_.size();
      }

      public List<Alternate> getAlternateList()
      {
        return this.alternate_;
      }

      public int getCachedSize()
      {
        if (this.cachedSize < 0)
          getSerializedSize();
        return this.cachedSize;
      }

      public int getFirstWord()
      {
        return this.firstWord_;
      }

      public float getOriginalPhraseConfidence()
      {
        return this.originalPhraseConfidence_;
      }

      public int getPhraseLength()
      {
        return this.phraseLength_;
      }

      public int getSerializedSize()
      {
        boolean bool = hasFirstWord();
        int i = 0;
        if (bool)
          i = 0 + CodedOutputStreamMicro.computeInt32Size(2, getFirstWord());
        if (hasPhraseLength())
          i += CodedOutputStreamMicro.computeInt32Size(3, getPhraseLength());
        Iterator localIterator = getAlternateList().iterator();
        while (localIterator.hasNext())
          i += CodedOutputStreamMicro.computeGroupSize(4, (Alternate)localIterator.next());
        if (hasOriginalPhraseConfidence())
          i += CodedOutputStreamMicro.computeFloatSize(7, getOriginalPhraseConfidence());
        this.cachedSize = i;
        return i;
      }

      public boolean hasFirstWord()
      {
        return this.hasFirstWord;
      }

      public boolean hasOriginalPhraseConfidence()
      {
        return this.hasOriginalPhraseConfidence;
      }

      public boolean hasPhraseLength()
      {
        return this.hasPhraseLength;
      }

      public final boolean isInitialized()
      {
        if (!this.hasFirstWord);
        while ((!this.hasPhraseLength) || (!this.hasOriginalPhraseConfidence))
          return false;
        Iterator localIterator = getAlternateList().iterator();
        while (localIterator.hasNext())
          if (!((Alternate)localIterator.next()).isInitialized())
            return false;
        return true;
      }

      public Slot mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          case 16:
            setFirstWord(paramCodedInputStreamMicro.readInt32());
            break;
          case 24:
            setPhraseLength(paramCodedInputStreamMicro.readInt32());
            break;
          case 35:
            Alternate localAlternate = new Alternate();
            paramCodedInputStreamMicro.readGroup(localAlternate, 4);
            addAlternate(localAlternate);
            break;
          case 61:
          }
          setOriginalPhraseConfidence(paramCodedInputStreamMicro.readFloat());
        }
      }

      public Slot parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
        throws IOException
      {
        return new Slot().mergeFrom(paramCodedInputStreamMicro);
      }

      public Slot parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferMicroException
      {
        return (Slot)new Slot().mergeFrom(paramArrayOfByte);
      }

      public Slot setAlternate(int paramInt, Alternate paramAlternate)
      {
        if (paramAlternate == null)
          throw new NullPointerException();
        this.alternate_.set(paramInt, paramAlternate);
        return this;
      }

      public Slot setFirstWord(int paramInt)
      {
        this.hasFirstWord = true;
        this.firstWord_ = paramInt;
        return this;
      }

      public Slot setOriginalPhraseConfidence(float paramFloat)
      {
        this.hasOriginalPhraseConfidence = true;
        this.originalPhraseConfidence_ = paramFloat;
        return this;
      }

      public Slot setPhraseLength(int paramInt)
      {
        this.hasPhraseLength = true;
        this.phraseLength_ = paramInt;
        return this;
      }

      public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
        throws IOException
      {
        if (hasFirstWord())
          paramCodedOutputStreamMicro.writeInt32(2, getFirstWord());
        if (hasPhraseLength())
          paramCodedOutputStreamMicro.writeInt32(3, getPhraseLength());
        Iterator localIterator = getAlternateList().iterator();
        while (localIterator.hasNext())
          paramCodedOutputStreamMicro.writeGroup(4, (Alternate)localIterator.next());
        if (hasOriginalPhraseConfidence())
          paramCodedOutputStreamMicro.writeFloat(7, getOriginalPhraseConfidence());
      }

      public static final class Alternate extends MessageMicro
      {
        public static final int CONFIDENCE_FIELD_NUMBER = 6;
        public static final int TEXT_FIELD_NUMBER = 5;
        private int cachedSize = -1;
        private float confidence_ = 0.0F;
        private boolean hasConfidence;
        private boolean hasText;
        private String text_ = "";

        public final Alternate clear()
        {
          clearText();
          clearConfidence();
          this.cachedSize = -1;
          return this;
        }

        public Alternate clearConfidence()
        {
          this.hasConfidence = false;
          this.confidence_ = 0.0F;
          return this;
        }

        public Alternate clearText()
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

        public float getConfidence()
        {
          return this.confidence_;
        }

        public int getSerializedSize()
        {
          boolean bool = hasText();
          int i = 0;
          if (bool)
            i = 0 + CodedOutputStreamMicro.computeStringSize(5, getText());
          if (hasConfidence())
            i += CodedOutputStreamMicro.computeFloatSize(6, getConfidence());
          this.cachedSize = i;
          return i;
        }

        public String getText()
        {
          return this.text_;
        }

        public boolean hasConfidence()
        {
          return this.hasConfidence;
        }

        public boolean hasText()
        {
          return this.hasText;
        }

        public final boolean isInitialized()
        {
          if (!this.hasText);
          while (!this.hasConfidence)
            return false;
          return true;
        }

        public Alternate mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
            case 42:
              setText(paramCodedInputStreamMicro.readString());
              break;
            case 53:
            }
            setConfidence(paramCodedInputStreamMicro.readFloat());
          }
        }

        public Alternate parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
          throws IOException
        {
          return new Alternate().mergeFrom(paramCodedInputStreamMicro);
        }

        public Alternate parseFrom(byte[] paramArrayOfByte)
          throws InvalidProtocolBufferMicroException
        {
          return (Alternate)new Alternate().mergeFrom(paramArrayOfByte);
        }

        public Alternate setConfidence(float paramFloat)
        {
          this.hasConfidence = true;
          this.confidence_ = paramFloat;
          return this;
        }

        public Alternate setText(String paramString)
        {
          this.hasText = true;
          this.text_ = paramString;
          return this;
        }

        public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
          throws IOException
        {
          if (hasText())
            paramCodedOutputStreamMicro.writeString(5, getText());
          if (hasConfidence())
            paramCodedOutputStreamMicro.writeFloat(6, getConfidence());
        }
      }
    }
  }

  public static final class RecognitionClientAlternates extends MessageMicro
  {
    public static final int MAX_SPAN_LENGTH_FIELD_NUMBER = 2;
    public static final int SPAN_FIELD_NUMBER = 1;
    public static final int UNIT_FIELD_NUMBER = 3;
    private int cachedSize = -1;
    private boolean hasMaxSpanLength;
    private boolean hasUnit;
    private int maxSpanLength_ = 0;
    private List<Alternates.AlternateSpan> span_ = Collections.emptyList();
    private int unit_ = 0;

    public static RecognitionClientAlternates parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new RecognitionClientAlternates().mergeFrom(paramCodedInputStreamMicro);
    }

    public static RecognitionClientAlternates parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (RecognitionClientAlternates)new RecognitionClientAlternates().mergeFrom(paramArrayOfByte);
    }

    public RecognitionClientAlternates addSpan(Alternates.AlternateSpan paramAlternateSpan)
    {
      if (paramAlternateSpan == null)
        throw new NullPointerException();
      if (this.span_.isEmpty())
        this.span_ = new ArrayList();
      this.span_.add(paramAlternateSpan);
      return this;
    }

    public final RecognitionClientAlternates clear()
    {
      clearSpan();
      clearMaxSpanLength();
      clearUnit();
      this.cachedSize = -1;
      return this;
    }

    public RecognitionClientAlternates clearMaxSpanLength()
    {
      this.hasMaxSpanLength = false;
      this.maxSpanLength_ = 0;
      return this;
    }

    public RecognitionClientAlternates clearSpan()
    {
      this.span_ = Collections.emptyList();
      return this;
    }

    public RecognitionClientAlternates clearUnit()
    {
      this.hasUnit = false;
      this.unit_ = 0;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public int getMaxSpanLength()
    {
      return this.maxSpanLength_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getSpanList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (Alternates.AlternateSpan)localIterator.next());
      if (hasMaxSpanLength())
        i += CodedOutputStreamMicro.computeInt32Size(2, getMaxSpanLength());
      if (hasUnit())
        i += CodedOutputStreamMicro.computeInt32Size(3, getUnit());
      this.cachedSize = i;
      return i;
    }

    public Alternates.AlternateSpan getSpan(int paramInt)
    {
      return (Alternates.AlternateSpan)this.span_.get(paramInt);
    }

    public int getSpanCount()
    {
      return this.span_.size();
    }

    public List<Alternates.AlternateSpan> getSpanList()
    {
      return this.span_;
    }

    public int getUnit()
    {
      return this.unit_;
    }

    public boolean hasMaxSpanLength()
    {
      return this.hasMaxSpanLength;
    }

    public boolean hasUnit()
    {
      return this.hasUnit;
    }

    public final boolean isInitialized()
    {
      if (!this.hasMaxSpanLength)
        return false;
      Iterator localIterator = getSpanList().iterator();
      while (localIterator.hasNext())
        if (!((Alternates.AlternateSpan)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public RecognitionClientAlternates mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          Alternates.AlternateSpan localAlternateSpan = new Alternates.AlternateSpan();
          paramCodedInputStreamMicro.readMessage(localAlternateSpan);
          addSpan(localAlternateSpan);
          break;
        case 16:
          setMaxSpanLength(paramCodedInputStreamMicro.readInt32());
          break;
        case 24:
        }
        setUnit(paramCodedInputStreamMicro.readInt32());
      }
    }

    public RecognitionClientAlternates setMaxSpanLength(int paramInt)
    {
      this.hasMaxSpanLength = true;
      this.maxSpanLength_ = paramInt;
      return this;
    }

    public RecognitionClientAlternates setSpan(int paramInt, Alternates.AlternateSpan paramAlternateSpan)
    {
      if (paramAlternateSpan == null)
        throw new NullPointerException();
      this.span_.set(paramInt, paramAlternateSpan);
      return this;
    }

    public RecognitionClientAlternates setUnit(int paramInt)
    {
      this.hasUnit = true;
      this.unit_ = paramInt;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getSpanList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (Alternates.AlternateSpan)localIterator.next());
      if (hasMaxSpanLength())
        paramCodedOutputStreamMicro.writeInt32(2, getMaxSpanLength());
      if (hasUnit())
        paramCodedOutputStreamMicro.writeInt32(3, getUnit());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.common.Alternates
 * JD-Core Version:    0.6.2
 */