package com.google.glass.voice;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public class HybridHotwordRecognizer
  implements HotwordRecognizer
{
  private final List<HotwordRecognizer> recognizers;

  public HybridHotwordRecognizer(List<HotwordRecognizer> paramList)
  {
    this.recognizers = paramList;
  }

  public HybridHotwordRecognizer(HotwordRecognizer[] paramArrayOfHotwordRecognizer)
  {
    this(Lists.newArrayList(paramArrayOfHotwordRecognizer));
  }

  public void activate()
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
      ((HotwordRecognizer)localIterator.next()).activate();
  }

  public void deactivate()
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
      ((HotwordRecognizer)localIterator.next()).deactivate();
  }

  public void destroy()
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
      ((HotwordRecognizer)localIterator.next()).destroy();
  }

  @VisibleForTesting
  List<HotwordRecognizer> getRecognizers()
  {
    return this.recognizers;
  }

  public VoiceCommand stringToCommand(String paramString)
  {
    return new VoiceCommand(paramString);
  }

  public String toString()
  {
    return "HybridHotwordRecognizer [recognizers=" + this.recognizers + "]";
  }

  public HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    Iterator localIterator = this.recognizers.iterator();
    while (localIterator.hasNext())
    {
      HotwordResult localHotwordResult = ((HotwordRecognizer)localIterator.next()).writeAudio(paramByteBuffer, paramLong);
      if (localHotwordResult != null)
        return localHotwordResult;
      paramByteBuffer.rewind();
    }
    return null;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.HybridHotwordRecognizer
 * JD-Core Version:    0.6.2
 */