package speech;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import com.google.speech.common.Alternates.RecognitionClientAlternates;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class InterpretationProto
{
  public static final class Interpretation extends MessageMicro
  {
    public static final int CONFIDENCE_FIELD_NUMBER = 2;
    public static final int GRAMMAR_ID_FIELD_NUMBER = 3;
    public static final int SLOT_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private float confidence_ = 1.0F;
    private String grammarId_ = "";
    private boolean hasConfidence;
    private boolean hasGrammarId;
    private List<InterpretationProto.Slot> slot_ = Collections.emptyList();

    public static Interpretation parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Interpretation().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Interpretation parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Interpretation)new Interpretation().mergeFrom(paramArrayOfByte);
    }

    public Interpretation addSlot(InterpretationProto.Slot paramSlot)
    {
      if (paramSlot == null)
        throw new NullPointerException();
      if (this.slot_.isEmpty())
        this.slot_ = new ArrayList();
      this.slot_.add(paramSlot);
      return this;
    }

    public final Interpretation clear()
    {
      clearSlot();
      clearConfidence();
      clearGrammarId();
      this.cachedSize = -1;
      return this;
    }

    public Interpretation clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = 1.0F;
      return this;
    }

    public Interpretation clearGrammarId()
    {
      this.hasGrammarId = false;
      this.grammarId_ = "";
      return this;
    }

    public Interpretation clearSlot()
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

    public float getConfidence()
    {
      return this.confidence_;
    }

    public String getGrammarId()
    {
      return this.grammarId_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getSlotList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (InterpretationProto.Slot)localIterator.next());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(2, getConfidence());
      if (hasGrammarId())
        i += CodedOutputStreamMicro.computeStringSize(3, getGrammarId());
      this.cachedSize = i;
      return i;
    }

    public InterpretationProto.Slot getSlot(int paramInt)
    {
      return (InterpretationProto.Slot)this.slot_.get(paramInt);
    }

    public int getSlotCount()
    {
      return this.slot_.size();
    }

    public List<InterpretationProto.Slot> getSlotList()
    {
      return this.slot_;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasGrammarId()
    {
      return this.hasGrammarId;
    }

    public final boolean isInitialized()
    {
      Iterator localIterator = getSlotList().iterator();
      while (localIterator.hasNext())
        if (!((InterpretationProto.Slot)localIterator.next()).isInitialized())
          return false;
      return true;
    }

    public Interpretation mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          InterpretationProto.Slot localSlot = new InterpretationProto.Slot();
          paramCodedInputStreamMicro.readMessage(localSlot);
          addSlot(localSlot);
          break;
        case 21:
          setConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 26:
        }
        setGrammarId(paramCodedInputStreamMicro.readString());
      }
    }

    public Interpretation setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public Interpretation setGrammarId(String paramString)
    {
      this.hasGrammarId = true;
      this.grammarId_ = paramString;
      return this;
    }

    public Interpretation setSlot(int paramInt, InterpretationProto.Slot paramSlot)
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
        paramCodedOutputStreamMicro.writeMessage(1, (InterpretationProto.Slot)localIterator.next());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(2, getConfidence());
      if (hasGrammarId())
        paramCodedOutputStreamMicro.writeString(3, getGrammarId());
    }
  }

  public static final class Slot extends MessageMicro
  {
    public static final int ALTERNATES_FIELD_NUMBER = 18;
    public static final int CONFIDENCE_FIELD_NUMBER = 3;
    public static final int DECODED_WORDS_FIELD_NUMBER = 7;
    public static final int LITERAL_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PRETEXTNORM_DECODED_WORDS_FIELD_NUMBER = 9;
    public static final int PRETEXTNORM_VALUE_FIELD_NUMBER = 8;
    public static final int SUBSLOT_FIELD_NUMBER = 5;
    public static final int VALUE_FIELD_NUMBER = 2;
    private Alternates.RecognitionClientAlternates alternates_ = null;
    private int cachedSize = -1;
    private float confidence_ = -1.0F;
    private List<DecodedWordProto.DecodedWord> decodedWords_ = Collections.emptyList();
    private boolean hasAlternates;
    private boolean hasConfidence;
    private boolean hasLiteral;
    private boolean hasName;
    private boolean hasPretextnormValue;
    private boolean hasValue;
    private String literal_ = "";
    private String name_ = "";
    private List<DecodedWordProto.DecodedWord> pretextnormDecodedWords_ = Collections.emptyList();
    private String pretextnormValue_ = "";
    private List<Slot> subslot_ = Collections.emptyList();
    private String value_ = "";

    public static Slot parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new Slot().mergeFrom(paramCodedInputStreamMicro);
    }

    public static Slot parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (Slot)new Slot().mergeFrom(paramArrayOfByte);
    }

    public Slot addDecodedWords(DecodedWordProto.DecodedWord paramDecodedWord)
    {
      if (paramDecodedWord == null)
        throw new NullPointerException();
      if (this.decodedWords_.isEmpty())
        this.decodedWords_ = new ArrayList();
      this.decodedWords_.add(paramDecodedWord);
      return this;
    }

    public Slot addPretextnormDecodedWords(DecodedWordProto.DecodedWord paramDecodedWord)
    {
      if (paramDecodedWord == null)
        throw new NullPointerException();
      if (this.pretextnormDecodedWords_.isEmpty())
        this.pretextnormDecodedWords_ = new ArrayList();
      this.pretextnormDecodedWords_.add(paramDecodedWord);
      return this;
    }

    public Slot addSubslot(Slot paramSlot)
    {
      if (paramSlot == null)
        throw new NullPointerException();
      if (this.subslot_.isEmpty())
        this.subslot_ = new ArrayList();
      this.subslot_.add(paramSlot);
      return this;
    }

    public final Slot clear()
    {
      clearName();
      clearValue();
      clearLiteral();
      clearConfidence();
      clearSubslot();
      clearDecodedWords();
      clearPretextnormValue();
      clearPretextnormDecodedWords();
      clearAlternates();
      this.cachedSize = -1;
      return this;
    }

    public Slot clearAlternates()
    {
      this.hasAlternates = false;
      this.alternates_ = null;
      return this;
    }

    public Slot clearConfidence()
    {
      this.hasConfidence = false;
      this.confidence_ = -1.0F;
      return this;
    }

    public Slot clearDecodedWords()
    {
      this.decodedWords_ = Collections.emptyList();
      return this;
    }

    public Slot clearLiteral()
    {
      this.hasLiteral = false;
      this.literal_ = "";
      return this;
    }

    public Slot clearName()
    {
      this.hasName = false;
      this.name_ = "";
      return this;
    }

    public Slot clearPretextnormDecodedWords()
    {
      this.pretextnormDecodedWords_ = Collections.emptyList();
      return this;
    }

    public Slot clearPretextnormValue()
    {
      this.hasPretextnormValue = false;
      this.pretextnormValue_ = "";
      return this;
    }

    public Slot clearSubslot()
    {
      this.subslot_ = Collections.emptyList();
      return this;
    }

    public Slot clearValue()
    {
      this.hasValue = false;
      this.value_ = "";
      return this;
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

    public DecodedWordProto.DecodedWord getDecodedWords(int paramInt)
    {
      return (DecodedWordProto.DecodedWord)this.decodedWords_.get(paramInt);
    }

    public int getDecodedWordsCount()
    {
      return this.decodedWords_.size();
    }

    public List<DecodedWordProto.DecodedWord> getDecodedWordsList()
    {
      return this.decodedWords_;
    }

    public String getLiteral()
    {
      return this.literal_;
    }

    public String getName()
    {
      return this.name_;
    }

    public DecodedWordProto.DecodedWord getPretextnormDecodedWords(int paramInt)
    {
      return (DecodedWordProto.DecodedWord)this.pretextnormDecodedWords_.get(paramInt);
    }

    public int getPretextnormDecodedWordsCount()
    {
      return this.pretextnormDecodedWords_.size();
    }

    public List<DecodedWordProto.DecodedWord> getPretextnormDecodedWordsList()
    {
      return this.pretextnormDecodedWords_;
    }

    public String getPretextnormValue()
    {
      return this.pretextnormValue_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasName();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getName());
      if (hasValue())
        i += CodedOutputStreamMicro.computeStringSize(2, getValue());
      if (hasConfidence())
        i += CodedOutputStreamMicro.computeFloatSize(3, getConfidence());
      if (hasLiteral())
        i += CodedOutputStreamMicro.computeStringSize(4, getLiteral());
      Iterator localIterator1 = getSubslotList().iterator();
      while (localIterator1.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(5, (Slot)localIterator1.next());
      Iterator localIterator2 = getDecodedWordsList().iterator();
      while (localIterator2.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(7, (DecodedWordProto.DecodedWord)localIterator2.next());
      if (hasPretextnormValue())
        i += CodedOutputStreamMicro.computeStringSize(8, getPretextnormValue());
      Iterator localIterator3 = getPretextnormDecodedWordsList().iterator();
      while (localIterator3.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(9, (DecodedWordProto.DecodedWord)localIterator3.next());
      if (hasAlternates())
        i += CodedOutputStreamMicro.computeMessageSize(18, getAlternates());
      this.cachedSize = i;
      return i;
    }

    public Slot getSubslot(int paramInt)
    {
      return (Slot)this.subslot_.get(paramInt);
    }

    public int getSubslotCount()
    {
      return this.subslot_.size();
    }

    public List<Slot> getSubslotList()
    {
      return this.subslot_;
    }

    public String getValue()
    {
      return this.value_;
    }

    public boolean hasAlternates()
    {
      return this.hasAlternates;
    }

    public boolean hasConfidence()
    {
      return this.hasConfidence;
    }

    public boolean hasLiteral()
    {
      return this.hasLiteral;
    }

    public boolean hasName()
    {
      return this.hasName;
    }

    public boolean hasPretextnormValue()
    {
      return this.hasPretextnormValue;
    }

    public boolean hasValue()
    {
      return this.hasValue;
    }

    public final boolean isInitialized()
    {
      if (!this.hasName);
      do
      {
        do
          return false;
        while (!this.hasValue);
        Iterator localIterator1 = getSubslotList().iterator();
        while (localIterator1.hasNext())
          if (!((Slot)localIterator1.next()).isInitialized())
            return false;
        Iterator localIterator2 = getDecodedWordsList().iterator();
        while (localIterator2.hasNext())
          if (!((DecodedWordProto.DecodedWord)localIterator2.next()).isInitialized())
            return false;
        Iterator localIterator3 = getPretextnormDecodedWordsList().iterator();
        while (localIterator3.hasNext())
          if (!((DecodedWordProto.DecodedWord)localIterator3.next()).isInitialized())
            return false;
      }
      while ((hasAlternates()) && (!getAlternates().isInitialized()));
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
        case 10:
          setName(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          setValue(paramCodedInputStreamMicro.readString());
          break;
        case 29:
          setConfidence(paramCodedInputStreamMicro.readFloat());
          break;
        case 34:
          setLiteral(paramCodedInputStreamMicro.readString());
          break;
        case 42:
          Slot localSlot = new Slot();
          paramCodedInputStreamMicro.readMessage(localSlot);
          addSubslot(localSlot);
          break;
        case 58:
          DecodedWordProto.DecodedWord localDecodedWord2 = new DecodedWordProto.DecodedWord();
          paramCodedInputStreamMicro.readMessage(localDecodedWord2);
          addDecodedWords(localDecodedWord2);
          break;
        case 66:
          setPretextnormValue(paramCodedInputStreamMicro.readString());
          break;
        case 74:
          DecodedWordProto.DecodedWord localDecodedWord1 = new DecodedWordProto.DecodedWord();
          paramCodedInputStreamMicro.readMessage(localDecodedWord1);
          addPretextnormDecodedWords(localDecodedWord1);
          break;
        case 146:
        }
        Alternates.RecognitionClientAlternates localRecognitionClientAlternates = new Alternates.RecognitionClientAlternates();
        paramCodedInputStreamMicro.readMessage(localRecognitionClientAlternates);
        setAlternates(localRecognitionClientAlternates);
      }
    }

    public Slot setAlternates(Alternates.RecognitionClientAlternates paramRecognitionClientAlternates)
    {
      if (paramRecognitionClientAlternates == null)
        throw new NullPointerException();
      this.hasAlternates = true;
      this.alternates_ = paramRecognitionClientAlternates;
      return this;
    }

    public Slot setConfidence(float paramFloat)
    {
      this.hasConfidence = true;
      this.confidence_ = paramFloat;
      return this;
    }

    public Slot setDecodedWords(int paramInt, DecodedWordProto.DecodedWord paramDecodedWord)
    {
      if (paramDecodedWord == null)
        throw new NullPointerException();
      this.decodedWords_.set(paramInt, paramDecodedWord);
      return this;
    }

    public Slot setLiteral(String paramString)
    {
      this.hasLiteral = true;
      this.literal_ = paramString;
      return this;
    }

    public Slot setName(String paramString)
    {
      this.hasName = true;
      this.name_ = paramString;
      return this;
    }

    public Slot setPretextnormDecodedWords(int paramInt, DecodedWordProto.DecodedWord paramDecodedWord)
    {
      if (paramDecodedWord == null)
        throw new NullPointerException();
      this.pretextnormDecodedWords_.set(paramInt, paramDecodedWord);
      return this;
    }

    public Slot setPretextnormValue(String paramString)
    {
      this.hasPretextnormValue = true;
      this.pretextnormValue_ = paramString;
      return this;
    }

    public Slot setSubslot(int paramInt, Slot paramSlot)
    {
      if (paramSlot == null)
        throw new NullPointerException();
      this.subslot_.set(paramInt, paramSlot);
      return this;
    }

    public Slot setValue(String paramString)
    {
      this.hasValue = true;
      this.value_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasName())
        paramCodedOutputStreamMicro.writeString(1, getName());
      if (hasValue())
        paramCodedOutputStreamMicro.writeString(2, getValue());
      if (hasConfidence())
        paramCodedOutputStreamMicro.writeFloat(3, getConfidence());
      if (hasLiteral())
        paramCodedOutputStreamMicro.writeString(4, getLiteral());
      Iterator localIterator1 = getSubslotList().iterator();
      while (localIterator1.hasNext())
        paramCodedOutputStreamMicro.writeMessage(5, (Slot)localIterator1.next());
      Iterator localIterator2 = getDecodedWordsList().iterator();
      while (localIterator2.hasNext())
        paramCodedOutputStreamMicro.writeMessage(7, (DecodedWordProto.DecodedWord)localIterator2.next());
      if (hasPretextnormValue())
        paramCodedOutputStreamMicro.writeString(8, getPretextnormValue());
      Iterator localIterator3 = getPretextnormDecodedWordsList().iterator();
      while (localIterator3.hasNext())
        paramCodedOutputStreamMicro.writeMessage(9, (DecodedWordProto.DecodedWord)localIterator3.next());
      if (hasAlternates())
        paramCodedOutputStreamMicro.writeMessage(18, getAlternates());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     speech.InterpretationProto
 * JD-Core Version:    0.6.2
 */