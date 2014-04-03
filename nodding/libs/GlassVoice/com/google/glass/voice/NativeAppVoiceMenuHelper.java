package com.google.glass.voice;

import android.content.Context;
import com.google.android.glass.app.VoiceTrigger;
import com.google.android.glass.app.VoiceTriggerManager;
import com.google.common.collect.Lists;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class NativeAppVoiceMenuHelper
{
  private static NativeAppVoiceMenuHelper instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger packagesChangedReceiverLogger = FormattingLoggers.getLogger(logger, "packagesChangedReceiver");
  private final CachingVoiceTriggerProvider triggerProvider;

  private NativeAppVoiceMenuHelper(CachingVoiceTriggerProvider paramCachingVoiceTriggerProvider)
  {
    this.triggerProvider = paramCachingVoiceTriggerProvider;
  }

  public static String getDisambiguationConfigName(String paramString)
  {
    return paramString.replaceAll(" ", "_").toUpperCase() + "_DISAMBIGUATION";
  }

  private String[] getIds(Context paramContext, List<VoiceTrigger> paramList)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      VoiceTrigger localVoiceTrigger = (VoiceTrigger)localIterator.next();
      localArrayList.add("" + localVoiceTrigger.loadLabel(paramContext).hashCode());
    }
    return (String[])localArrayList.toArray(new String[0]);
  }

  public static NativeAppVoiceMenuHelper getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
      {
        Context localContext = paramContext.getApplicationContext();
        CachingVoiceTriggerProvider localCachingVoiceTriggerProvider = new CachingVoiceTriggerProvider(new VoiceTriggerManager(localContext));
        localCachingVoiceTriggerProvider.subscribeToPackageChanges(localContext);
        instance = new NativeAppVoiceMenuHelper(localCachingVoiceTriggerProvider);
      }
      NativeAppVoiceMenuHelper localNativeAppVoiceMenuHelper = instance;
      return localNativeAppVoiceMenuHelper;
    }
    finally
    {
    }
  }

  private String[] getNames(Context paramContext, List<VoiceTrigger> paramList)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((VoiceTrigger)localIterator.next()).loadLabel(paramContext).toString());
    return (String[])localArrayList.toArray(new String[0]);
  }

  public void addTriggerCacheUpdateListener(TriggerCacheUpdateListener paramTriggerCacheUpdateListener)
  {
    this.triggerProvider.updateListeners.add(paramTriggerCacheUpdateListener);
  }

  public VoiceConfig getDisambiguationConfig(Context paramContext, String paramString)
  {
    List localList = getTriggers(paramString);
    String[] arrayOfString1 = getNames(paramContext, localList);
    String[] arrayOfString2 = getIds(paramContext, localList);
    return new VoiceConfig(getDisambiguationConfigName(paramString), VoiceConfig.Type.HOTWORD, false, new VoiceConfig[0], arrayOfString1, arrayOfString2, -2147483648, paramString);
  }

  public List<String> getNativeAppCommands(Context paramContext)
  {
    List localList = getTriggers();
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((VoiceTrigger)localIterator.next()).getKeyword());
    return localArrayList;
  }

  protected final String getTag(String paramString)
  {
    return String.valueOf(paramString.hashCode());
  }

  public List<VoiceTrigger> getTriggers()
  {
    return this.triggerProvider.getVoiceTriggers();
  }

  public List<VoiceTrigger> getTriggers(String paramString)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = getTriggers().iterator();
    while (localIterator.hasNext())
    {
      VoiceTrigger localVoiceTrigger = (VoiceTrigger)localIterator.next();
      if (localVoiceTrigger.getKeyword().equals(paramString))
        localArrayList.add(localVoiceTrigger);
    }
    return localArrayList;
  }

  public boolean matches(VoiceCommand paramVoiceCommand, VoiceTrigger paramVoiceTrigger)
  {
    return (paramVoiceTrigger.getKeyword().equals(paramVoiceCommand.getLiteral())) || (getTag(paramVoiceTrigger.getKeyword()).equals(paramVoiceCommand.getSemanticTag()));
  }

  public VoiceCommand newVoiceCommand(VoiceTrigger paramVoiceTrigger)
  {
    return new VoiceCommand(paramVoiceTrigger.getKeyword());
  }

  static class CachingVoiceTriggerProvider
  {
    private List<VoiceTrigger> cachedTriggers = Lists.newArrayList();
    private final AtomicBoolean invalid = new AtomicBoolean(true);
    private final VoiceTriggerManager triggerManager;
    private final List<NativeAppVoiceMenuHelper.TriggerCacheUpdateListener> updateListeners = Lists.newArrayList();

    public CachingVoiceTriggerProvider(VoiceTriggerManager paramVoiceTriggerManager)
    {
      this.triggerManager = paramVoiceTriggerManager;
    }

    public List<VoiceTrigger> getVoiceTriggers()
    {
      try
      {
        while (this.invalid.compareAndSet(true, false))
        {
          NativeAppVoiceMenuHelper.logger.i("Reloading triggers", new Object[0]);
          this.cachedTriggers = this.triggerManager.load();
          this.invalid.set(false);
        }
      }
      finally
      {
      }
      ArrayList localArrayList = Lists.newArrayList(this.cachedTriggers);
      return localArrayList;
    }

    public void subscribeToPackageChanges(Context paramContext)
    {
      new PackagesChangedReceiver()
      {
        public FormattingLogger getLogger()
        {
          return NativeAppVoiceMenuHelper.packagesChangedReceiverLogger;
        }

        public void onPackagesChanged()
        {
          NativeAppVoiceMenuHelper.logger.i("Installed packages changed; invalidating trigger cache", new Object[0]);
          NativeAppVoiceMenuHelper.CachingVoiceTriggerProvider.this.invalid.set(true);
          Iterator localIterator = NativeAppVoiceMenuHelper.CachingVoiceTriggerProvider.this.updateListeners.iterator();
          while (localIterator.hasNext())
            ((NativeAppVoiceMenuHelper.TriggerCacheUpdateListener)localIterator.next()).onTriggerCacheUpdated();
        }
      }
      .registerSelf(paramContext);
    }
  }

  public static abstract interface TriggerCacheUpdateListener
  {
    public abstract void onTriggerCacheUpdated();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.NativeAppVoiceMenuHelper
 * JD-Core Version:    0.6.2
 */