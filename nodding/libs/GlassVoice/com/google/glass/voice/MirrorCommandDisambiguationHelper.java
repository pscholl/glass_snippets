package com.google.glass.voice;

import android.content.Context;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.glass.entity.EntityHelper;
import com.google.glass.util.ProtoEnumUtils;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.Entity.Command.CommandType;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class MirrorCommandDisambiguationHelper
{
  private final Context context;
  private final Map<Integer, VoiceConfig> disambiguationConfigs = Maps.newHashMap();

  public MirrorCommandDisambiguationHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  private static String[] getIds(List<TimelineNano.Entity> paramList)
  {
    String[] arrayOfString = new String[paramList.size()];
    for (int i = 0; i < paramList.size(); i++)
      arrayOfString[i] = EntityUtils.getSemanticTag((TimelineNano.Entity)paramList.get(i));
    return arrayOfString;
  }

  private static String[] getSpeakableNames(List<TimelineNano.Entity> paramList)
  {
    String[] arrayOfString = new String[paramList.size()];
    for (int i = 0; i < paramList.size(); i++)
      arrayOfString[i] = EntityHelper.getSpeakableName((TimelineNano.Entity)paramList.get(i));
    return arrayOfString;
  }

  Collection<VoiceConfig> getAllConfigs()
  {
    return this.disambiguationConfigs.values();
  }

  public VoiceConfig getConfig(int paramInt)
  {
    return (VoiceConfig)this.disambiguationConfigs.get(Integer.valueOf(paramInt));
  }

  void updateConfigs(ListMultimap<Integer, TimelineNano.Entity> paramListMultimap)
  {
    this.disambiguationConfigs.clear();
    Iterator localIterator = paramListMultimap.keySet().iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      List localList = RecognizerFactory.prependNames(this.context, paramListMultimap.get(Integer.valueOf(i)));
      if (!localList.isEmpty())
      {
        String[] arrayOfString1 = getSpeakableNames(localList);
        String[] arrayOfString2 = getIds(localList);
        VoiceConfig localVoiceConfig = new VoiceConfig(ProtoEnumUtils.getEnumName(TimelineNano.Entity.Command.CommandType.class, i) + "_DISAMBIGUATION", arrayOfString1, arrayOfString2);
        this.disambiguationConfigs.put(Integer.valueOf(i), localVoiceConfig);
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MirrorCommandDisambiguationHelper
 * JD-Core Version:    0.6.2
 */