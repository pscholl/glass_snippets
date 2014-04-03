package com.google.wireless.voicesearch.proto;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class EmbeddedAction
{
  public static final class EmbeddedActionContact extends MessageMicro
  {
    public static final int GRAMMAR_WEIGHT_FIELD_NUMBER = 1;
    public static final int MERGED_FIELD_NUMBER = 3;
    public static final int SYNCED_FIELD_NUMBER = 2;
    private int cachedSize = -1;
    private double grammarWeight_ = 0.0D;
    private boolean hasGrammarWeight;
    private boolean hasMerged;
    private boolean hasSynced;
    private boolean merged_ = false;
    private boolean synced_ = false;

    public static EmbeddedActionContact parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new EmbeddedActionContact().mergeFrom(paramCodedInputStreamMicro);
    }

    public static EmbeddedActionContact parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (EmbeddedActionContact)new EmbeddedActionContact().mergeFrom(paramArrayOfByte);
    }

    public final EmbeddedActionContact clear()
    {
      clearGrammarWeight();
      clearSynced();
      clearMerged();
      this.cachedSize = -1;
      return this;
    }

    public EmbeddedActionContact clearGrammarWeight()
    {
      this.hasGrammarWeight = false;
      this.grammarWeight_ = 0.0D;
      return this;
    }

    public EmbeddedActionContact clearMerged()
    {
      this.hasMerged = false;
      this.merged_ = false;
      return this;
    }

    public EmbeddedActionContact clearSynced()
    {
      this.hasSynced = false;
      this.synced_ = false;
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public double getGrammarWeight()
    {
      return this.grammarWeight_;
    }

    public boolean getMerged()
    {
      return this.merged_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasGrammarWeight();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeDoubleSize(1, getGrammarWeight());
      if (hasSynced())
        i += CodedOutputStreamMicro.computeBoolSize(2, getSynced());
      if (hasMerged())
        i += CodedOutputStreamMicro.computeBoolSize(3, getMerged());
      this.cachedSize = i;
      return i;
    }

    public boolean getSynced()
    {
      return this.synced_;
    }

    public boolean hasGrammarWeight()
    {
      return this.hasGrammarWeight;
    }

    public boolean hasMerged()
    {
      return this.hasMerged;
    }

    public boolean hasSynced()
    {
      return this.hasSynced;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public EmbeddedActionContact mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
        case 9:
          setGrammarWeight(paramCodedInputStreamMicro.readDouble());
          break;
        case 16:
          setSynced(paramCodedInputStreamMicro.readBool());
          break;
        case 24:
        }
        setMerged(paramCodedInputStreamMicro.readBool());
      }
    }

    public EmbeddedActionContact setGrammarWeight(double paramDouble)
    {
      this.hasGrammarWeight = true;
      this.grammarWeight_ = paramDouble;
      return this;
    }

    public EmbeddedActionContact setMerged(boolean paramBoolean)
    {
      this.hasMerged = true;
      this.merged_ = paramBoolean;
      return this;
    }

    public EmbeddedActionContact setSynced(boolean paramBoolean)
    {
      this.hasSynced = true;
      this.synced_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasGrammarWeight())
        paramCodedOutputStreamMicro.writeDouble(1, getGrammarWeight());
      if (hasSynced())
        paramCodedOutputStreamMicro.writeBool(2, getSynced());
      if (hasMerged())
        paramCodedOutputStreamMicro.writeBool(3, getMerged());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.wireless.voicesearch.proto.EmbeddedAction
 * JD-Core Version:    0.6.2
 */