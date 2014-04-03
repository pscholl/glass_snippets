package com.google.glass.voice;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AlignmentInfo
{
  public final long endMillis;
  public final float score;
  public final long startMillis;
  public final String text;

  public AlignmentInfo(long paramLong1, long paramLong2, String paramString, float paramFloat)
  {
    this.startMillis = paramLong1;
    this.endMillis = paramLong2;
    this.text = paramString;
    this.score = paramFloat;
  }

  public static String getRecognizedCommandString(List<HotwordResult> paramList, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long l = -paramLong;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      HotwordResult localHotwordResult = (HotwordResult)localIterator.next();
      localStringBuilder.append(localHotwordResult.getRecognizedCommand().getLiteral());
      localStringBuilder.append(":");
      localStringBuilder.append(l + localHotwordResult.getPhraseStartMillis());
      localStringBuilder.append(":");
      localStringBuilder.append(l + localHotwordResult.getPhraseEndMillis());
      if (localIterator.hasNext())
        localStringBuilder.append(",");
      l += localHotwordResult.getPhraseEndMillis();
    }
    return localStringBuilder.toString();
  }

  public static List<AlignmentInfo> parseRecognizedCommandsString(String paramString)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator1 = Splitter.on(',').omitEmptyStrings().split(paramString).iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Iterator localIterator2 = Splitter.on(':').split(str1).iterator();
      String str2 = (String)localIterator2.next();
      localArrayList.add(new AlignmentInfo(Long.valueOf((String)localIterator2.next()).longValue(), Long.valueOf((String)localIterator2.next()).longValue(), str2, 0.0F));
    }
    return localArrayList;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.startMillis);
    localStringBuilder.append(" ");
    localStringBuilder.append(this.endMillis);
    localStringBuilder.append(" ");
    localStringBuilder.append(this.text);
    localStringBuilder.append(" ");
    localStringBuilder.append(this.score);
    return localStringBuilder.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.AlignmentInfo
 * JD-Core Version:    0.6.2
 */