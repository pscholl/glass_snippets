package com.google.speech.decoder.confidence;

import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;

public final class ConfFeature
{
  public static final class UtteranceConfFeature extends MessageMicro
  {
    public static final int AVG_AM_SCORE_FIELD_NUMBER = 3;
    public static final int AVG_LAT_POSTERIOR_FIELD_NUMBER = 5;
    public static final int AVG_LM_SCORE_FIELD_NUMBER = 4;
    public static final int AVG_WORD_CONF_FIELD_NUMBER = 2;
    public static final int HIGH_LAT_POSTERIOR_FIELD_NUMBER = 6;
    public static final int NUM_WORDS_FIELD_NUMBER = 7;
    public static final int SEMANTIC_CONF_FIELD_NUMBER = 1;
    private float avgAmScore_ = 0.0F;
    private float avgLatPosterior_ = 0.0F;
    private float avgLmScore_ = 0.0F;
    private float avgWordConf_ = 0.0F;
    private int cachedSize = -1;
    private boolean hasAvgAmScore;
    private boolean hasAvgLatPosterior;
    private boolean hasAvgLmScore;
    private boolean hasAvgWordConf;
    private boolean hasHighLatPosterior;
    private boolean hasNumWords;
    private boolean hasSemanticConf;
    private float highLatPosterior_ = 0.0F;
    private float numWords_ = 0.0F;
    private float semanticConf_ = 0.0F;

    public static UtteranceConfFeature parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new UtteranceConfFeature().mergeFrom(paramCodedInputStreamMicro);
    }

    public static UtteranceConfFeature parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (UtteranceConfFeature)new UtteranceConfFeature().mergeFrom(paramArrayOfByte);
    }

    public final UtteranceConfFeature clear()
    {
      clearSemanticConf();
      clearAvgWordConf();
      clearAvgAmScore();
      clearAvgLmScore();
      clearAvgLatPosterior();
      clearHighLatPosterior();
      clearNumWords();
      this.cachedSize = -1;
      return this;
    }

    public UtteranceConfFeature clearAvgAmScore()
    {
      this.hasAvgAmScore = false;
      this.avgAmScore_ = 0.0F;
      return this;
    }

    public UtteranceConfFeature clearAvgLatPosterior()
    {
      this.hasAvgLatPosterior = false;
      this.avgLatPosterior_ = 0.0F;
      return this;
    }

    public UtteranceConfFeature clearAvgLmScore()
    {
      this.hasAvgLmScore = false;
      this.avgLmScore_ = 0.0F;
      return this;
    }

    public UtteranceConfFeature clearAvgWordConf()
    {
      this.hasAvgWordConf = false;
      this.avgWordConf_ = 0.0F;
      return this;
    }

    public UtteranceConfFeature clearHighLatPosterior()
    {
      this.hasHighLatPosterior = false;
      this.highLatPosterior_ = 0.0F;
      return this;
    }

    public UtteranceConfFeature clearNumWords()
    {
      this.hasNumWords = false;
      this.numWords_ = 0.0F;
      return this;
    }

    public UtteranceConfFeature clearSemanticConf()
    {
      this.hasSemanticConf = false;
      this.semanticConf_ = 0.0F;
      return this;
    }

    public float getAvgAmScore()
    {
      return this.avgAmScore_;
    }

    public float getAvgLatPosterior()
    {
      return this.avgLatPosterior_;
    }

    public float getAvgLmScore()
    {
      return this.avgLmScore_;
    }

    public float getAvgWordConf()
    {
      return this.avgWordConf_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public float getHighLatPosterior()
    {
      return this.highLatPosterior_;
    }

    public float getNumWords()
    {
      return this.numWords_;
    }

    public float getSemanticConf()
    {
      return this.semanticConf_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasSemanticConf();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getSemanticConf());
      if (hasAvgWordConf())
        i += CodedOutputStreamMicro.computeFloatSize(2, getAvgWordConf());
      if (hasAvgAmScore())
        i += CodedOutputStreamMicro.computeFloatSize(3, getAvgAmScore());
      if (hasAvgLmScore())
        i += CodedOutputStreamMicro.computeFloatSize(4, getAvgLmScore());
      if (hasAvgLatPosterior())
        i += CodedOutputStreamMicro.computeFloatSize(5, getAvgLatPosterior());
      if (hasHighLatPosterior())
        i += CodedOutputStreamMicro.computeFloatSize(6, getHighLatPosterior());
      if (hasNumWords())
        i += CodedOutputStreamMicro.computeFloatSize(7, getNumWords());
      this.cachedSize = i;
      return i;
    }

    public boolean hasAvgAmScore()
    {
      return this.hasAvgAmScore;
    }

    public boolean hasAvgLatPosterior()
    {
      return this.hasAvgLatPosterior;
    }

    public boolean hasAvgLmScore()
    {
      return this.hasAvgLmScore;
    }

    public boolean hasAvgWordConf()
    {
      return this.hasAvgWordConf;
    }

    public boolean hasHighLatPosterior()
    {
      return this.hasHighLatPosterior;
    }

    public boolean hasNumWords()
    {
      return this.hasNumWords;
    }

    public boolean hasSemanticConf()
    {
      return this.hasSemanticConf;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public UtteranceConfFeature mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setSemanticConf(paramCodedInputStreamMicro.readFloat());
          break;
        case 21:
          setAvgWordConf(paramCodedInputStreamMicro.readFloat());
          break;
        case 29:
          setAvgAmScore(paramCodedInputStreamMicro.readFloat());
          break;
        case 37:
          setAvgLmScore(paramCodedInputStreamMicro.readFloat());
          break;
        case 45:
          setAvgLatPosterior(paramCodedInputStreamMicro.readFloat());
          break;
        case 53:
          setHighLatPosterior(paramCodedInputStreamMicro.readFloat());
          break;
        case 61:
        }
        setNumWords(paramCodedInputStreamMicro.readFloat());
      }
    }

    public UtteranceConfFeature setAvgAmScore(float paramFloat)
    {
      this.hasAvgAmScore = true;
      this.avgAmScore_ = paramFloat;
      return this;
    }

    public UtteranceConfFeature setAvgLatPosterior(float paramFloat)
    {
      this.hasAvgLatPosterior = true;
      this.avgLatPosterior_ = paramFloat;
      return this;
    }

    public UtteranceConfFeature setAvgLmScore(float paramFloat)
    {
      this.hasAvgLmScore = true;
      this.avgLmScore_ = paramFloat;
      return this;
    }

    public UtteranceConfFeature setAvgWordConf(float paramFloat)
    {
      this.hasAvgWordConf = true;
      this.avgWordConf_ = paramFloat;
      return this;
    }

    public UtteranceConfFeature setHighLatPosterior(float paramFloat)
    {
      this.hasHighLatPosterior = true;
      this.highLatPosterior_ = paramFloat;
      return this;
    }

    public UtteranceConfFeature setNumWords(float paramFloat)
    {
      this.hasNumWords = true;
      this.numWords_ = paramFloat;
      return this;
    }

    public UtteranceConfFeature setSemanticConf(float paramFloat)
    {
      this.hasSemanticConf = true;
      this.semanticConf_ = paramFloat;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasSemanticConf())
        paramCodedOutputStreamMicro.writeFloat(1, getSemanticConf());
      if (hasAvgWordConf())
        paramCodedOutputStreamMicro.writeFloat(2, getAvgWordConf());
      if (hasAvgAmScore())
        paramCodedOutputStreamMicro.writeFloat(3, getAvgAmScore());
      if (hasAvgLmScore())
        paramCodedOutputStreamMicro.writeFloat(4, getAvgLmScore());
      if (hasAvgLatPosterior())
        paramCodedOutputStreamMicro.writeFloat(5, getAvgLatPosterior());
      if (hasHighLatPosterior())
        paramCodedOutputStreamMicro.writeFloat(6, getHighLatPosterior());
      if (hasNumWords())
        paramCodedOutputStreamMicro.writeFloat(7, getNumWords());
    }
  }

  public static final class WordConfFeature extends MessageMicro
  {
    public static final int AM_SCORE_FIELD_NUMBER = 12;
    public static final int ASCORE_BEST_FIELD_NUMBER = 9;
    public static final int ASCORE_MEANDIFF_FIELD_NUMBER = 8;
    public static final int ASCORE_MEAN_FIELD_NUMBER = 5;
    public static final int ASCORE_STDDEV_FIELD_NUMBER = 6;
    public static final int ASCORE_WORST_FIELD_NUMBER = 7;
    public static final int DUR_SCORE_FIELD_NUMBER = 11;
    public static final int FRAME_POSTERIOR_FIELD_NUMBER = 2;
    public static final int LAT_POSTERIOR_FIELD_NUMBER = 1;
    public static final int LM_SCORE_FIELD_NUMBER = 10;
    public static final int NUM_PHONES_FIELD_NUMBER = 3;
    public static final int PIVOT_POSTERIOR_FIELD_NUMBER = 13;
    public static final int WORD_DURATION_FIELD_NUMBER = 4;
    private float amScore_ = 0.0F;
    private float ascoreBest_ = 0.0F;
    private float ascoreMean_ = 0.0F;
    private float ascoreMeandiff_ = 0.0F;
    private float ascoreStddev_ = 0.0F;
    private float ascoreWorst_ = 0.0F;
    private int cachedSize = -1;
    private float durScore_ = 0.0F;
    private float framePosterior_ = 0.0F;
    private boolean hasAmScore;
    private boolean hasAscoreBest;
    private boolean hasAscoreMean;
    private boolean hasAscoreMeandiff;
    private boolean hasAscoreStddev;
    private boolean hasAscoreWorst;
    private boolean hasDurScore;
    private boolean hasFramePosterior;
    private boolean hasLatPosterior;
    private boolean hasLmScore;
    private boolean hasNumPhones;
    private boolean hasPivotPosterior;
    private boolean hasWordDuration;
    private float latPosterior_ = 0.0F;
    private float lmScore_ = 0.0F;
    private float numPhones_ = 0.0F;
    private float pivotPosterior_ = 0.0F;
    private float wordDuration_ = 0.0F;

    public static WordConfFeature parseFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
      throws IOException
    {
      return new WordConfFeature().mergeFrom(paramCodedInputStreamMicro);
    }

    public static WordConfFeature parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferMicroException
    {
      return (WordConfFeature)new WordConfFeature().mergeFrom(paramArrayOfByte);
    }

    public final WordConfFeature clear()
    {
      clearLatPosterior();
      clearFramePosterior();
      clearNumPhones();
      clearWordDuration();
      clearAscoreMean();
      clearAscoreStddev();
      clearAscoreWorst();
      clearAscoreMeandiff();
      clearAscoreBest();
      clearLmScore();
      clearDurScore();
      clearAmScore();
      clearPivotPosterior();
      this.cachedSize = -1;
      return this;
    }

    public WordConfFeature clearAmScore()
    {
      this.hasAmScore = false;
      this.amScore_ = 0.0F;
      return this;
    }

    public WordConfFeature clearAscoreBest()
    {
      this.hasAscoreBest = false;
      this.ascoreBest_ = 0.0F;
      return this;
    }

    public WordConfFeature clearAscoreMean()
    {
      this.hasAscoreMean = false;
      this.ascoreMean_ = 0.0F;
      return this;
    }

    public WordConfFeature clearAscoreMeandiff()
    {
      this.hasAscoreMeandiff = false;
      this.ascoreMeandiff_ = 0.0F;
      return this;
    }

    public WordConfFeature clearAscoreStddev()
    {
      this.hasAscoreStddev = false;
      this.ascoreStddev_ = 0.0F;
      return this;
    }

    public WordConfFeature clearAscoreWorst()
    {
      this.hasAscoreWorst = false;
      this.ascoreWorst_ = 0.0F;
      return this;
    }

    public WordConfFeature clearDurScore()
    {
      this.hasDurScore = false;
      this.durScore_ = 0.0F;
      return this;
    }

    public WordConfFeature clearFramePosterior()
    {
      this.hasFramePosterior = false;
      this.framePosterior_ = 0.0F;
      return this;
    }

    public WordConfFeature clearLatPosterior()
    {
      this.hasLatPosterior = false;
      this.latPosterior_ = 0.0F;
      return this;
    }

    public WordConfFeature clearLmScore()
    {
      this.hasLmScore = false;
      this.lmScore_ = 0.0F;
      return this;
    }

    public WordConfFeature clearNumPhones()
    {
      this.hasNumPhones = false;
      this.numPhones_ = 0.0F;
      return this;
    }

    public WordConfFeature clearPivotPosterior()
    {
      this.hasPivotPosterior = false;
      this.pivotPosterior_ = 0.0F;
      return this;
    }

    public WordConfFeature clearWordDuration()
    {
      this.hasWordDuration = false;
      this.wordDuration_ = 0.0F;
      return this;
    }

    public float getAmScore()
    {
      return this.amScore_;
    }

    public float getAscoreBest()
    {
      return this.ascoreBest_;
    }

    public float getAscoreMean()
    {
      return this.ascoreMean_;
    }

    public float getAscoreMeandiff()
    {
      return this.ascoreMeandiff_;
    }

    public float getAscoreStddev()
    {
      return this.ascoreStddev_;
    }

    public float getAscoreWorst()
    {
      return this.ascoreWorst_;
    }

    public int getCachedSize()
    {
      if (this.cachedSize < 0)
        getSerializedSize();
      return this.cachedSize;
    }

    public float getDurScore()
    {
      return this.durScore_;
    }

    public float getFramePosterior()
    {
      return this.framePosterior_;
    }

    public float getLatPosterior()
    {
      return this.latPosterior_;
    }

    public float getLmScore()
    {
      return this.lmScore_;
    }

    public float getNumPhones()
    {
      return this.numPhones_;
    }

    public float getPivotPosterior()
    {
      return this.pivotPosterior_;
    }

    public int getSerializedSize()
    {
      boolean bool = hasLatPosterior();
      int i = 0;
      if (bool)
        i = 0 + CodedOutputStreamMicro.computeFloatSize(1, getLatPosterior());
      if (hasFramePosterior())
        i += CodedOutputStreamMicro.computeFloatSize(2, getFramePosterior());
      if (hasNumPhones())
        i += CodedOutputStreamMicro.computeFloatSize(3, getNumPhones());
      if (hasWordDuration())
        i += CodedOutputStreamMicro.computeFloatSize(4, getWordDuration());
      if (hasAscoreMean())
        i += CodedOutputStreamMicro.computeFloatSize(5, getAscoreMean());
      if (hasAscoreStddev())
        i += CodedOutputStreamMicro.computeFloatSize(6, getAscoreStddev());
      if (hasAscoreWorst())
        i += CodedOutputStreamMicro.computeFloatSize(7, getAscoreWorst());
      if (hasAscoreMeandiff())
        i += CodedOutputStreamMicro.computeFloatSize(8, getAscoreMeandiff());
      if (hasAscoreBest())
        i += CodedOutputStreamMicro.computeFloatSize(9, getAscoreBest());
      if (hasLmScore())
        i += CodedOutputStreamMicro.computeFloatSize(10, getLmScore());
      if (hasDurScore())
        i += CodedOutputStreamMicro.computeFloatSize(11, getDurScore());
      if (hasAmScore())
        i += CodedOutputStreamMicro.computeFloatSize(12, getAmScore());
      if (hasPivotPosterior())
        i += CodedOutputStreamMicro.computeFloatSize(13, getPivotPosterior());
      this.cachedSize = i;
      return i;
    }

    public float getWordDuration()
    {
      return this.wordDuration_;
    }

    public boolean hasAmScore()
    {
      return this.hasAmScore;
    }

    public boolean hasAscoreBest()
    {
      return this.hasAscoreBest;
    }

    public boolean hasAscoreMean()
    {
      return this.hasAscoreMean;
    }

    public boolean hasAscoreMeandiff()
    {
      return this.hasAscoreMeandiff;
    }

    public boolean hasAscoreStddev()
    {
      return this.hasAscoreStddev;
    }

    public boolean hasAscoreWorst()
    {
      return this.hasAscoreWorst;
    }

    public boolean hasDurScore()
    {
      return this.hasDurScore;
    }

    public boolean hasFramePosterior()
    {
      return this.hasFramePosterior;
    }

    public boolean hasLatPosterior()
    {
      return this.hasLatPosterior;
    }

    public boolean hasLmScore()
    {
      return this.hasLmScore;
    }

    public boolean hasNumPhones()
    {
      return this.hasNumPhones;
    }

    public boolean hasPivotPosterior()
    {
      return this.hasPivotPosterior;
    }

    public boolean hasWordDuration()
    {
      return this.hasWordDuration;
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public WordConfFeature mergeFrom(CodedInputStreamMicro paramCodedInputStreamMicro)
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
          setLatPosterior(paramCodedInputStreamMicro.readFloat());
          break;
        case 21:
          setFramePosterior(paramCodedInputStreamMicro.readFloat());
          break;
        case 29:
          setNumPhones(paramCodedInputStreamMicro.readFloat());
          break;
        case 37:
          setWordDuration(paramCodedInputStreamMicro.readFloat());
          break;
        case 45:
          setAscoreMean(paramCodedInputStreamMicro.readFloat());
          break;
        case 53:
          setAscoreStddev(paramCodedInputStreamMicro.readFloat());
          break;
        case 61:
          setAscoreWorst(paramCodedInputStreamMicro.readFloat());
          break;
        case 69:
          setAscoreMeandiff(paramCodedInputStreamMicro.readFloat());
          break;
        case 77:
          setAscoreBest(paramCodedInputStreamMicro.readFloat());
          break;
        case 85:
          setLmScore(paramCodedInputStreamMicro.readFloat());
          break;
        case 93:
          setDurScore(paramCodedInputStreamMicro.readFloat());
          break;
        case 101:
          setAmScore(paramCodedInputStreamMicro.readFloat());
          break;
        case 109:
        }
        setPivotPosterior(paramCodedInputStreamMicro.readFloat());
      }
    }

    public WordConfFeature setAmScore(float paramFloat)
    {
      this.hasAmScore = true;
      this.amScore_ = paramFloat;
      return this;
    }

    public WordConfFeature setAscoreBest(float paramFloat)
    {
      this.hasAscoreBest = true;
      this.ascoreBest_ = paramFloat;
      return this;
    }

    public WordConfFeature setAscoreMean(float paramFloat)
    {
      this.hasAscoreMean = true;
      this.ascoreMean_ = paramFloat;
      return this;
    }

    public WordConfFeature setAscoreMeandiff(float paramFloat)
    {
      this.hasAscoreMeandiff = true;
      this.ascoreMeandiff_ = paramFloat;
      return this;
    }

    public WordConfFeature setAscoreStddev(float paramFloat)
    {
      this.hasAscoreStddev = true;
      this.ascoreStddev_ = paramFloat;
      return this;
    }

    public WordConfFeature setAscoreWorst(float paramFloat)
    {
      this.hasAscoreWorst = true;
      this.ascoreWorst_ = paramFloat;
      return this;
    }

    public WordConfFeature setDurScore(float paramFloat)
    {
      this.hasDurScore = true;
      this.durScore_ = paramFloat;
      return this;
    }

    public WordConfFeature setFramePosterior(float paramFloat)
    {
      this.hasFramePosterior = true;
      this.framePosterior_ = paramFloat;
      return this;
    }

    public WordConfFeature setLatPosterior(float paramFloat)
    {
      this.hasLatPosterior = true;
      this.latPosterior_ = paramFloat;
      return this;
    }

    public WordConfFeature setLmScore(float paramFloat)
    {
      this.hasLmScore = true;
      this.lmScore_ = paramFloat;
      return this;
    }

    public WordConfFeature setNumPhones(float paramFloat)
    {
      this.hasNumPhones = true;
      this.numPhones_ = paramFloat;
      return this;
    }

    public WordConfFeature setPivotPosterior(float paramFloat)
    {
      this.hasPivotPosterior = true;
      this.pivotPosterior_ = paramFloat;
      return this;
    }

    public WordConfFeature setWordDuration(float paramFloat)
    {
      this.hasWordDuration = true;
      this.wordDuration_ = paramFloat;
      return this;
    }

    public void writeTo(CodedOutputStreamMicro paramCodedOutputStreamMicro)
      throws IOException
    {
      if (hasLatPosterior())
        paramCodedOutputStreamMicro.writeFloat(1, getLatPosterior());
      if (hasFramePosterior())
        paramCodedOutputStreamMicro.writeFloat(2, getFramePosterior());
      if (hasNumPhones())
        paramCodedOutputStreamMicro.writeFloat(3, getNumPhones());
      if (hasWordDuration())
        paramCodedOutputStreamMicro.writeFloat(4, getWordDuration());
      if (hasAscoreMean())
        paramCodedOutputStreamMicro.writeFloat(5, getAscoreMean());
      if (hasAscoreStddev())
        paramCodedOutputStreamMicro.writeFloat(6, getAscoreStddev());
      if (hasAscoreWorst())
        paramCodedOutputStreamMicro.writeFloat(7, getAscoreWorst());
      if (hasAscoreMeandiff())
        paramCodedOutputStreamMicro.writeFloat(8, getAscoreMeandiff());
      if (hasAscoreBest())
        paramCodedOutputStreamMicro.writeFloat(9, getAscoreBest());
      if (hasLmScore())
        paramCodedOutputStreamMicro.writeFloat(10, getLmScore());
      if (hasDurScore())
        paramCodedOutputStreamMicro.writeFloat(11, getDurScore());
      if (hasAmScore())
        paramCodedOutputStreamMicro.writeFloat(12, getAmScore());
      if (hasPivotPosterior())
        paramCodedOutputStreamMicro.writeFloat(13, getPivotPosterior());
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.speech.decoder.confidence.ConfFeature
 * JD-Core Version:    0.6.2
 */