package com.google.speech.recognizer.api;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Network
{
  public static final class NetworkParams extends MessageMicro
  {
    public static final int ADD_RESTART_ARCS_FIELD_NUMBER = 8;
    public static final int ADD_SIL_LOOPS_FIELD_NUMBER = 6;
    public static final int CLOSURE_FIELD_NUMBER = 7;
    public static final int MAX_INSERTIONS_FIELD_NUMBER = 4;
    public static final int MIN_FREQUENCY_FIELD_NUMBER = 3;
    public static final int PATH_FIELD_NUMBER = 1;
    public static final int PINCH_FIELD_NUMBER = 5;
    private boolean addRestartArcs_ = true;
    private boolean addSilLoops_ = true;
    private int cachedSize = -1;
    private boolean closure_ = false;
    private boolean hasAddRestartArcs;
    private boolean hasAddSilLoops;
    private boolean hasClosure;
    private boolean hasMaxInsertions;
    private boolean hasMinFrequency;
    private boolean hasPinch;
    private int maxInsertions_ = 0;
    private int minFrequency_ = 2;
    private List<Network.PathParams> path_ = Collections.emptyList();
    private boolean pinch_ = true;

    public static NetworkParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new NetworkParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static NetworkParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (NetworkParams)new NetworkParams().mergeFrom(paramArrayOfByte);
    }

    public NetworkParams addPath(Network.PathParams paramPathParams)
    {
      if (paramPathParams == null)
        throw new NullPointerException();
      if (this.path_.isEmpty())
        this.path_ = new ArrayList();
      this.path_.add(paramPathParams);
      return this;
    }

    public final NetworkParams clear()
    {
      clearPath();
      clearMinFrequency();
      clearMaxInsertions();
      clearPinch();
      clearAddSilLoops();
      clearClosure();
      clearAddRestartArcs();
      this.cachedSize = -1;
      return this;
    }

    public NetworkParams clearAddRestartArcs()
    {
      this.hasAddRestartArcs = false;
      this.addRestartArcs_ = true;
      return this;
    }

    public NetworkParams clearAddSilLoops()
    {
      this.hasAddSilLoops = false;
      this.addSilLoops_ = true;
      return this;
    }

    public NetworkParams clearClosure()
    {
      this.hasClosure = false;
      this.closure_ = false;
      return this;
    }

    public NetworkParams clearMaxInsertions()
    {
      this.hasMaxInsertions = false;
      this.maxInsertions_ = 0;
      return this;
    }

    public NetworkParams clearMinFrequency()
    {
      this.hasMinFrequency = false;
      this.minFrequency_ = 2;
      return this;
    }

    public NetworkParams clearPath()
    {
      this.path_ = Collections.emptyList();
      return this;
    }

    public NetworkParams clearPinch()
    {
      this.hasPinch = false;
      this.pinch_ = true;
      return this;
    }

    public boolean getAddRestartArcs()
    {
      return this.addRestartArcs_;
    }

    public boolean getAddSilLoops()
    {
      return this.addSilLoops_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public boolean getClosure()
    {
      return this.closure_;
    }

    public int getMaxInsertions()
    {
      return this.maxInsertions_;
    }

    public int getMinFrequency()
    {
      return this.minFrequency_;
    }

    public Network.PathParams getPath(int paramInt)
    {
      return (Network.PathParams)this.path_.get(paramInt);
    }

    public int getPathCount()
    {
      return this.path_.size();
    }

    public List<Network.PathParams> getPathList()
    {
      return this.path_;
    }

    public boolean getPinch()
    {
      return this.pinch_;
    }

    public int getSerializedSize()
    {
      int i = 0;
      Iterator localIterator = getPathList().iterator();
      while (localIterator.hasNext())
        i += CodedOutputStreamMicro.computeMessageSize(1, (Network.PathParams)localIterator.next());
      if (hasMinFrequency())
        i += CodedOutputStreamMicro.computeInt32Size(3, getMinFrequency());
      if (hasMaxInsertions())
        i += CodedOutputStreamMicro.computeInt32Size(4, getMaxInsertions());
      if (hasPinch())
        i += CodedOutputStreamMicro.computeBoolSize(5, getPinch());
      if (hasAddSilLoops())
        i += CodedOutputStreamMicro.computeBoolSize(6, getAddSilLoops());
      if (hasClosure())
        i += CodedOutputStreamMicro.computeBoolSize(7, getClosure());
      if (hasAddRestartArcs())
        i += CodedOutputStreamMicro.computeBoolSize(8, getAddRestartArcs());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAddRestartArcs()
    {
      return this.hasAddRestartArcs;
    }

    public boolean hasAddSilLoops()
    {
      return this.hasAddSilLoops;
    }

    public boolean hasClosure()
    {
      return this.hasClosure;
    }

    public boolean hasMaxInsertions()
    {
      return this.hasMaxInsertions;
    }

    public boolean hasMinFrequency()
    {
      return this.hasMinFrequency;
    }

    public boolean hasPinch()
    {
      return this.hasPinch;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public NetworkParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          Network.PathParams localPathParams = new Network.PathParams();
          paramCodedInputStreamMicro.readMessage(localPathParams);
          addPath(localPathParams);
          break;
        case 24:
          setMinFrequency(paramCodedInputStreamMicro.readInt32());
          break;
        case 32:
          setMaxInsertions(paramCodedInputStreamMicro.readInt32());
          break;
        case 40:
          setPinch(paramCodedInputStreamMicro.readBool());
          break;
        case 48:
          setAddSilLoops(paramCodedInputStreamMicro.readBool());
          break;
        case 56:
          setClosure(paramCodedInputStreamMicro.readBool());
          break;
        case 64:
        }
        setAddRestartArcs(paramCodedInputStreamMicro.readBool());
      }
    }

    public NetworkParams setAddRestartArcs(boolean paramBoolean)
    {
      this.hasAddRestartArcs = true;
      this.addRestartArcs_ = paramBoolean;
      return this;
    }

    public NetworkParams setAddSilLoops(boolean paramBoolean)
    {
      this.hasAddSilLoops = true;
      this.addSilLoops_ = paramBoolean;
      return this;
    }

    public NetworkParams setClosure(boolean paramBoolean)
    {
      this.hasClosure = true;
      this.closure_ = paramBoolean;
      return this;
    }

    public NetworkParams setMaxInsertions(int paramInt)
    {
      this.hasMaxInsertions = true;
      this.maxInsertions_ = paramInt;
      return this;
    }

    public NetworkParams setMinFrequency(int paramInt)
    {
      this.hasMinFrequency = true;
      this.minFrequency_ = paramInt;
      return this;
    }

    public NetworkParams setPath(int paramInt, Network.PathParams paramPathParams)
    {
      if (paramPathParams == null)
        throw new NullPointerException();
      this.path_.set(paramInt, paramPathParams);
      return this;
    }

    public NetworkParams setPinch(boolean paramBoolean)
    {
      this.hasPinch = true;
      this.pinch_ = paramBoolean;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      Iterator localIterator = getPathList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeMessage(1, (Network.PathParams)localIterator.next());
      if (hasMinFrequency())
        paramCodedOutputStreamMicro.writeInt32(3, getMinFrequency());
      if (hasMaxInsertions())
        paramCodedOutputStreamMicro.writeInt32(4, getMaxInsertions());
      if (hasPinch())
        paramCodedOutputStreamMicro.writeBool(5, getPinch());
      if (hasAddSilLoops())
        paramCodedOutputStreamMicro.writeBool(6, getAddSilLoops());
      if (hasClosure())
        paramCodedOutputStreamMicro.writeBool(7, getClosure());
      if (hasAddRestartArcs())
        paramCodedOutputStreamMicro.writeBool(8, getAddRestartArcs());
    }
  }

  public static final class PathParams extends MessageMicro
  {
    public static final int DICTIONARY_PRON_FIELD_NUMBER = 2;
    public static final int LAST_PHONE_OPTIONAL_FIELD_NUMBER = 4;
    public static final int OUTPUT_LABEL_POS_FIELD_NUMBER = 5;
    public static final int PHONE_DECODE_FILEPATH_FIELD_NUMBER = 3;
    public static final int REFERENCE_FIELD_NUMBER = 6;
    public static final int SYMBOL_FIELD_NUMBER = 1;
    private int cachedSize = -1;
    private List<String> dictionaryPron_ = Collections.emptyList();
    private boolean hasLastPhoneOptional;
    private boolean hasOutputLabelPos;
    private boolean hasPhoneDecodeFilepath;
    private boolean hasReference;
    private boolean hasSymbol;
    private boolean lastPhoneOptional_ = true;
    private int outputLabelPos_ = 0;
    private String phoneDecodeFilepath_ = "";
    private String reference_ = "";
    private String symbol_ = "";

    public static PathParams parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new PathParams().mergeFrom(paramCodedInputStreamMicro);
    }

    public static PathParams parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (PathParams)new PathParams().mergeFrom(paramArrayOfByte);
    }

    public PathParams addDictionaryPron(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      if (this.dictionaryPron_.isEmpty())
        this.dictionaryPron_ = new ArrayList();
      this.dictionaryPron_.add(paramString);
      return this;
    }

    public final PathParams clear()
    {
      clearSymbol();
      clearReference();
      clearDictionaryPron();
      clearPhoneDecodeFilepath();
      clearLastPhoneOptional();
      clearOutputLabelPos();
      this.cachedSize = -1;
      return this;
    }

    public PathParams clearDictionaryPron()
    {
      this.dictionaryPron_ = Collections.emptyList();
      return this;
    }

    public PathParams clearLastPhoneOptional()
    {
      this.hasLastPhoneOptional = false;
      this.lastPhoneOptional_ = true;
      return this;
    }

    public PathParams clearOutputLabelPos()
    {
      this.hasOutputLabelPos = false;
      this.outputLabelPos_ = 0;
      return this;
    }

    public PathParams clearPhoneDecodeFilepath()
    {
      this.hasPhoneDecodeFilepath = false;
      this.phoneDecodeFilepath_ = "";
      return this;
    }

    public PathParams clearReference()
    {
      this.hasReference = false;
      this.reference_ = "";
      return this;
    }

    public PathParams clearSymbol()
    {
      this.hasSymbol = false;
      this.symbol_ = "";
      return this;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public String getDictionaryPron(int paramInt)
    {
      return (String)this.dictionaryPron_.get(paramInt);
    }

    public int getDictionaryPronCount()
    {
      return this.dictionaryPron_.size();
    }

    public List<String> getDictionaryPronList()
    {
      return this.dictionaryPron_;
    }

    public boolean getLastPhoneOptional()
    {
      return this.lastPhoneOptional_;
    }

    public int getOutputLabelPos()
    {
      return this.outputLabelPos_;
    }

    public String getPhoneDecodeFilepath()
    {
      return this.phoneDecodeFilepath_;
    }

    public String getReference()
    {
      return this.reference_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSymbol();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeStringSize(1, getSymbol());
      int j = 0;
      Iterator localIterator = getDictionaryPronList().iterator();
      while (localIterator.hasNext())
        j += CodedOutputStreamMicro.computeStringSizeNoTag((String)localIterator.next());
      int k = i + j + 1 * getDictionaryPronList().size();
      if (hasPhoneDecodeFilepath())
        k += CodedOutputStreamMicro.computeStringSize(3, getPhoneDecodeFilepath());
      if (hasLastPhoneOptional())
        k += CodedOutputStreamMicro.computeBoolSize(4, getLastPhoneOptional());
      if (hasOutputLabelPos())
        k += CodedOutputStreamMicro.computeInt32Size(5, getOutputLabelPos());
      if (hasReference())
        k += CodedOutputStreamMicro.computeStringSize(6, getReference());
      this.cachedSize = k;
      return k;
    }

    public String getSymbol()
    {
      return this.symbol_;
    }

    public boolean hasLastPhoneOptional()
    {
      return this.hasLastPhoneOptional;
    }

    public boolean hasOutputLabelPos()
    {
      return this.hasOutputLabelPos;
    }

    public boolean hasPhoneDecodeFilepath()
    {
      return this.hasPhoneDecodeFilepath;
    }

    public boolean hasReference()
    {
      return this.hasReference;
    }

    public boolean hasSymbol()
    {
      return this.hasSymbol;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public PathParams mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSymbol(paramCodedInputStreamMicro.readString());
          break;
        case 18:
          addDictionaryPron(paramCodedInputStreamMicro.readString());
          break;
        case 26:
          setPhoneDecodeFilepath(paramCodedInputStreamMicro.readString());
          break;
        case 32:
          setLastPhoneOptional(paramCodedInputStreamMicro.readBool());
          break;
        case 40:
          setOutputLabelPos(paramCodedInputStreamMicro.readInt32());
          break;
        case 50:
        }
        setReference(paramCodedInputStreamMicro.readString());
      }
    }

    public PathParams setDictionaryPron(int paramInt, String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.dictionaryPron_.set(paramInt, paramString);
      return this;
    }

    public PathParams setLastPhoneOptional(boolean paramBoolean)
    {
      this.hasLastPhoneOptional = true;
      this.lastPhoneOptional_ = paramBoolean;
      return this;
    }

    public PathParams setOutputLabelPos(int paramInt)
    {
      this.hasOutputLabelPos = true;
      this.outputLabelPos_ = paramInt;
      return this;
    }

    public PathParams setPhoneDecodeFilepath(String paramString)
    {
      this.hasPhoneDecodeFilepath = true;
      this.phoneDecodeFilepath_ = paramString;
      return this;
    }

    public PathParams setReference(String paramString)
    {
      this.hasReference = true;
      this.reference_ = paramString;
      return this;
    }

    public PathParams setSymbol(String paramString)
    {
      this.hasSymbol = true;
      this.symbol_ = paramString;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSymbol())
        paramCodedOutputStreamMicro.writeString(1, getSymbol());
      Iterator localIterator = getDictionaryPronList().iterator();
      while (localIterator.hasNext())
        paramCodedOutputStreamMicro.writeString(2, (String)localIterator.next());
      if (hasPhoneDecodeFilepath())
        paramCodedOutputStreamMicro.writeString(3, getPhoneDecodeFilepath());
      if (hasLastPhoneOptional())
        paramCodedOutputStreamMicro.writeBool(4, getLastPhoneOptional());
      if (hasOutputLabelPos())
        paramCodedOutputStreamMicro.writeInt32(5, getOutputLabelPos());
      if (hasReference())
        paramCodedOutputStreamMicro.writeString(6, getReference());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.recognizer.api.Network
 * JD-Core Version:    0.6.2
 */