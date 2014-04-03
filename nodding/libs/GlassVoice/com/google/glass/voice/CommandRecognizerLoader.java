package com.google.glass.voice;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;

public class CommandRecognizerLoader
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Executor asyncExecutor;
  private final Context context;
  private final Map<VoiceConfig, HotwordRecognizer> loadedRecognizers = Maps.newConcurrentMap();
  private final RecognizerFactory recognizerFactory;

  @VisibleForTesting
  final Set<HotwordRecognizer> recognizersToDestroy = Collections.synchronizedSet(Sets.newHashSet());

  public CommandRecognizerLoader(Context paramContext, RecognizerFactory paramRecognizerFactory, Executor paramExecutor)
  {
    this.context = paramContext;
    this.recognizerFactory = paramRecognizerFactory;
    this.asyncExecutor = paramExecutor;
  }

  private void destroyRecognizers()
  {
    Iterator localIterator = Lists.newArrayList(this.recognizersToDestroy).iterator();
    while (localIterator.hasNext())
    {
      HotwordRecognizer localHotwordRecognizer = (HotwordRecognizer)localIterator.next();
      localHotwordRecognizer.destroy();
      this.recognizersToDestroy.remove(localHotwordRecognizer);
    }
  }

  public void dumpState(PrintWriter paramPrintWriter)
  {
    Iterator localIterator = this.loadedRecognizers.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramPrintWriter.println("  " + localEntry.getKey() + ": " + localEntry.getValue());
    }
    paramPrintWriter.println(" Recognizers to destroy: " + this.recognizersToDestroy.size());
  }

  protected void finalize()
    throws Throwable
  {
    Iterator localIterator = this.loadedRecognizers.keySet().iterator();
    while (localIterator.hasNext())
    {
      VoiceConfig localVoiceConfig = (VoiceConfig)localIterator.next();
      logger.e("Command recognizer resources leaked for %s!", new Object[] { localVoiceConfig });
    }
    super.finalize();
  }

  public HotwordRecognizer getRecognizer(VoiceConfig paramVoiceConfig)
  {
    if (!this.loadedRecognizers.containsKey(paramVoiceConfig))
      load(paramVoiceConfig);
    return (HotwordRecognizer)this.loadedRecognizers.get(paramVoiceConfig);
  }

  @VisibleForTesting
  void load(VoiceConfig paramVoiceConfig)
  {
    HotwordRecognizer localHotwordRecognizer1 = this.recognizerFactory.createRecognizer(this.context, paramVoiceConfig);
    logger.d("Loaded recognizer for config %s", new Object[] { paramVoiceConfig });
    HotwordRecognizer localHotwordRecognizer2 = (HotwordRecognizer)this.loadedRecognizers.put(paramVoiceConfig, localHotwordRecognizer1);
    if (localHotwordRecognizer2 != null)
      this.recognizersToDestroy.add(localHotwordRecognizer2);
  }

  public void load(Collection<? extends VoiceConfig> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      load((VoiceConfig)localIterator.next());
  }

  public void loadAsync(Collection<? extends VoiceConfig> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      final VoiceConfig localVoiceConfig = (VoiceConfig)localIterator.next();
      this.asyncExecutor.execute(new Runnable()
      {
        public void run()
        {
          CommandRecognizerLoader.this.load(localVoiceConfig);
        }
      });
    }
  }

  public void unload(Collection<? extends VoiceConfig> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      VoiceConfig localVoiceConfig = (VoiceConfig)localIterator.next();
      HotwordRecognizer localHotwordRecognizer = (HotwordRecognizer)this.loadedRecognizers.remove(localVoiceConfig);
      if (localHotwordRecognizer != null)
        this.recognizersToDestroy.add(localHotwordRecognizer);
      else
        logger.w("No recognizer to unload for %s", new Object[] { localVoiceConfig });
    }
  }

  public void unloadAll()
  {
    unload(Sets.newHashSet(this.loadedRecognizers.keySet()));
    destroyRecognizers();
  }

  public void unloadReplacedRecognizers()
  {
    if (this.recognizersToDestroy.isEmpty())
      return;
    this.asyncExecutor.execute(new Runnable()
    {
      public void run()
      {
        CommandRecognizerLoader.this.destroyRecognizers();
      }
    });
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.CommandRecognizerLoader
 * JD-Core Version:    0.6.2
 */