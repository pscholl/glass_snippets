package com.google.glass.voice;

import com.google.common.base.Splitter;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class HotwordResult
{
  private List<AlignmentInfo> alignmentInfoList;
  private final VoiceCommand recognizedCommand;
  private final float score;

  public HotwordResult(VoiceCommand paramVoiceCommand, float paramFloat, List<AlignmentInfo> paramList)
  {
    this.recognizedCommand = paramVoiceCommand;
    this.score = paramFloat;
    this.alignmentInfoList = paramList;
  }

  public static AlignmentInfo parseAlignmentSegment(String paramString)
  {
    Iterator localIterator = Splitter.on(" ").split(paramString).iterator();
    return new AlignmentInfo(Long.valueOf((String)localIterator.next()).longValue(), Long.valueOf((String)localIterator.next()).longValue(), (String)localIterator.next(), Float.valueOf((String)localIterator.next()).floatValue());
  }

  public static List<AlignmentInfo> parseAlignments(String paramString)
  {
    new ArrayList();
    Iterable localIterable = Splitter.on("\n").omitEmptyStrings().split(paramString);
    ArrayList localArrayList = Lists.newArrayListWithCapacity(Iterables.size(localIterable));
    Iterator localIterator = localIterable.iterator();
    while (localIterator.hasNext())
      localArrayList.add(parseAlignmentSegment((String)localIterator.next()));
    return localArrayList;
  }

  List<AlignmentInfo> getAlignmentInfo()
  {
    return this.alignmentInfoList;
  }

  public long getPhraseDurationMillis()
  {
    return getPhraseEndMillis() - getPhraseStartMillis();
  }

  public long getPhraseEndMillis()
  {
    return ((AlignmentInfo)Iterables.getLast(getAlignmentInfo())).endMillis;
  }

  public long getPhraseStartMillis()
  {
    return ((AlignmentInfo)getAlignmentInfo().get(0)).startMillis;
  }

  public VoiceCommand getRecognizedCommand()
  {
    return this.recognizedCommand;
  }

  public float getScore()
  {
    return this.score;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("HotwordResult [recognizedCommand=").append(this.recognizedCommand).append(", literal=");
    if (this.recognizedCommand != null);
    for (String str = this.recognizedCommand.getLiteral(); ; str = "null")
      return str + ", score=" + this.score + ", wordAlignment=" + Arrays.toString(this.alignmentInfoList.toArray()) + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.HotwordResult
 * JD-Core Version:    0.6.2
 */