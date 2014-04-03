package com.google.glass.voice;

import android.content.Context;
import com.google.common.collect.Maps;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class NativeCommandDisambiguationHelper
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final Map<String, VoiceConfig> disambiguationConfigs = Maps.newHashMap();

  public NativeCommandDisambiguationHelper(Context paramContext)
  {
    this.context = paramContext;
  }

  Collection<VoiceConfig> getAllConfigs()
  {
    return this.disambiguationConfigs.values();
  }

  public VoiceConfig getConfig(String paramString)
  {
    return (VoiceConfig)this.disambiguationConfigs.get(paramString);
  }

  void updateConfigs(List<String> paramList)
  {
    this.disambiguationConfigs.clear();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.disambiguationConfigs.put(str, NativeAppVoiceMenuHelper.getInstance(this.context).getDisambiguationConfig(this.context, str));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.NativeCommandDisambiguationHelper
 * JD-Core Version:    0.6.2
 */