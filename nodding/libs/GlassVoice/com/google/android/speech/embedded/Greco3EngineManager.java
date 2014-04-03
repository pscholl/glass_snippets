package com.google.android.speech.embedded;

import android.util.Log;
import com.google.android.searchcommon.util.ConcurrentUtils;
import com.google.android.searchcommon.util.StopWatch;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.speech.logs.RecognizerOuterClass.LanguagePackLog;
import com.google.speech.logs.RecognizerOuterClass.RecognizerLog;
import com.google.speech.recognizer.api.NativeRecognizer.NativeRecognitionResult;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.LanguagePack;
import java.io.File;
import java.io.InputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
public class Greco3EngineManager
  implements Greco3DataManager.PathDeleter
{
  private static final boolean DEBUG = false;
  private static final String TAG = "VS.G3EngineManager";
  private Future<Greco3Recognizer> mCurrentRecognition;
  private Greco3Recognizer mCurrentRecognizer;

  @Nullable
  private final EndpointerModelCopier mEndpointerModelCopier;
  private final Greco3DataManager mGreco3DataManager;

  @Nullable
  private final Greco3Preferences mGreco3Preferences;

  @GuardedBy("this")
  private boolean mInitialized;
  private final ExecutorService mRecognitionExecutor;

  @GuardedBy("this")
  private final HashMap<Greco3Mode, Resources> mResourcesByMode;

  public Greco3EngineManager(Greco3DataManager paramGreco3DataManager, @Nullable Greco3Preferences paramGreco3Preferences, @Nullable EndpointerModelCopier paramEndpointerModelCopier)
  {
    this.mGreco3DataManager = paramGreco3DataManager;
    this.mGreco3Preferences = paramGreco3Preferences;
    this.mEndpointerModelCopier = paramEndpointerModelCopier;
    this.mRecognitionExecutor = ConcurrentUtils.newSingleThreadExecutor("Greco3Thread");
    this.mResourcesByMode = new HashMap();
  }

  private static RecognizerOuterClass.LanguagePackLog buildLanguagePackLog(GstaticConfiguration.LanguagePack paramLanguagePack)
  {
    return new RecognizerOuterClass.LanguagePackLog().setLocale(paramLanguagePack.getBcp47Locale()).setVersion(String.valueOf(paramLanguagePack.getVersion()));
  }

  private void doResourceDelete(File paramFile, boolean paramBoolean)
  {
    try
    {
      if (isUsedLocked(paramFile))
      {
        if (paramBoolean)
          releaseAllResourcesLocked();
      }
      else
        Greco3DataManager.deleteSingleLevelTree(paramFile);
      return;
    }
    finally
    {
    }
  }

  private String getCompiledGrammarPath(Greco3Grammar paramGreco3Grammar, Greco3DataManager.LocaleResources paramLocaleResources)
  {
    if ((paramGreco3Grammar != null) && (this.mGreco3Preferences != null))
      return paramLocaleResources.getGrammarPath(paramGreco3Grammar, this.mGreco3Preferences.getCompiledGrammarRevisionId(paramGreco3Grammar));
    return null;
  }

  private Resources getResourcesInternal(String paramString, Greco3Mode paramGreco3Mode, @Nullable Greco3Grammar paramGreco3Grammar)
  {
    boolean bool1 = true;
    while (true)
    {
      try
      {
        if (paramGreco3Mode == Greco3Mode.GRAMMAR)
        {
          Resources localResources1;
          if (paramGreco3Grammar != null)
          {
            break label171;
            Preconditions.checkArgument(bool2);
            if (this.mCurrentRecognition == null)
            {
              Preconditions.checkState(bool1);
              localResources1 = (Resources)this.mResourcesByMode.get(paramGreco3Mode);
              if (localResources1 == null)
                continue;
              boolean bool3 = localResources1.isEquivalentTo(paramString, paramGreco3Grammar, paramGreco3Mode);
              if (!bool3)
                continue;
              localObject2 = localResources1;
              return localObject2;
            }
          }
          else
          {
            bool2 = false;
            continue;
          }
          bool1 = false;
          continue;
          localResources1.resources.delete();
          this.mResourcesByMode.remove(paramGreco3Mode);
          Resources localResources2 = loadResourcesFor(paramString, paramGreco3Mode, paramGreco3Grammar);
          if ((localResources2 == null) && (paramGreco3Mode.isEndpointerMode()))
            localResources2 = loadResourcesFor("en-US", paramGreco3Mode, null);
          Object localObject2 = null;
          if (localResources2 == null)
            continue;
          this.mResourcesByMode.put(paramGreco3Mode, localResources2);
          localObject2 = localResources2;
          continue;
        }
      }
      finally
      {
      }
      label171: boolean bool2 = bool1;
    }
  }

  @GuardedBy("this")
  private boolean isUsedLocked(File paramFile)
  {
    String str = paramFile.getAbsolutePath();
    Iterator localIterator = this.mResourcesByMode.values().iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = ((Resources)localIterator.next()).paths;
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        if (str.equals(arrayOfString[j]))
          return true;
    }
    return false;
  }

  private Resources loadResourcesFor(String paramString, Greco3Mode paramGreco3Mode, Greco3Grammar paramGreco3Grammar)
  {
    Greco3DataManager.LocaleResources localLocaleResources = this.mGreco3DataManager.getResources(paramString);
    if (localLocaleResources == null)
      return null;
    String str1 = localLocaleResources.getConfigFile(paramGreco3Mode);
    if (str1 == null)
      return null;
    List localList = localLocaleResources.getResourcePaths();
    if ((localList == null) || (localList.isEmpty()))
    {
      Log.e("VS.G3EngineManager", "Incomplete / partial data for locale: " + paramString);
      return null;
    }
    String str2;
    if (paramGreco3Mode == Greco3Mode.GRAMMAR)
    {
      str2 = getCompiledGrammarPath(paramGreco3Grammar, localLocaleResources);
      if ((str2 == null) && (paramGreco3Mode == Greco3Mode.GRAMMAR))
        return null;
    }
    else
    {
      str2 = null;
    }
    StopWatch localStopWatch = new StopWatch();
    localStopWatch.start();
    if (str2 == null);
    String[] arrayOfString;
    Greco3ResourceManager localGreco3ResourceManager;
    for (int i = localList.size(); ; i = 1 + localList.size())
    {
      arrayOfString = new String[i];
      localList.toArray(arrayOfString);
      if (str2 != null)
        arrayOfString[(-1 + arrayOfString.length)] = str2;
      Log.i("VS.G3EngineManager", "create_rm: m=" + paramGreco3Mode + ",l=" + paramString);
      localGreco3ResourceManager = Greco3ResourceManager.create(str1, arrayOfString);
      if (localGreco3ResourceManager != null)
        break;
      Log.i("VS.G3EngineManager", "Error loading resources.");
      return null;
    }
    Log.i("VS.G3EngineManager", "Brought up new g3 instance :" + str1 + " for: " + paramString + "in: " + localStopWatch.getElapsedTime() + " ms");
    return new Resources(localGreco3ResourceManager, localLocaleResources.getConfigFile(paramGreco3Mode), paramString, paramGreco3Grammar, paramGreco3Mode, arrayOfString, localLocaleResources.getLanguageMetadata());
  }

  @GuardedBy("this")
  private void releaseAllResourcesLocked()
  {
    if (this.mCurrentRecognizer != null)
    {
      Log.w("VS.G3EngineManager", "Terminating active recognition for shutdown.");
      release(this.mCurrentRecognizer);
    }
    Iterator localIterator = this.mResourcesByMode.values().iterator();
    while (localIterator.hasNext())
      ((Resources)localIterator.next()).resources.delete();
    this.mResourcesByMode.clear();
  }

  public void delete(final File paramFile, final boolean paramBoolean)
  {
    try
    {
      if ((this.mInitialized) && (!paramBoolean))
        return;
      this.mRecognitionExecutor.execute(new Runnable()
      {
        public void run()
        {
          Greco3EngineManager.this.doResourceDelete(paramFile, paramBoolean);
        }
      });
      return;
    }
    finally
    {
    }
  }

  public Resources getResources(String paramString, Greco3Mode paramGreco3Mode, @Nullable Greco3Grammar paramGreco3Grammar)
  {
    return getResourcesInternal(paramString, paramGreco3Mode, paramGreco3Grammar);
  }

  public void maybeInitialize()
  {
    try
    {
      if (this.mInitialized)
        return;
      this.mGreco3DataManager.blockingUpdateResources(false);
      if ((this.mEndpointerModelCopier != null) && (this.mEndpointerModelCopier.copyEndpointerModels(this.mGreco3DataManager.getModelsDirSupplier(), this.mGreco3DataManager)))
        this.mGreco3DataManager.blockingUpdateResources(true);
      try
      {
        this.mInitialized = true;
        return;
      }
      finally
      {
      }
    }
    finally
    {
    }
  }

  public void release(Greco3Recognizer paramGreco3Recognizer)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.mCurrentRecognition != null)
      bool2 = bool1;
    while (true)
    {
      Preconditions.checkState(bool2);
      if (paramGreco3Recognizer == this.mCurrentRecognizer)
      {
        Preconditions.checkState(bool1);
        paramGreco3Recognizer.cancel();
      }
      try
      {
        this.mCurrentRecognition.get();
        this.mCurrentRecognizer.delete();
        this.mCurrentRecognition = null;
        this.mCurrentRecognizer = null;
        return;
        bool2 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        Log.e("VS.G3EngineManager", "Interrupted waiting for recognition to complete.");
        return;
      }
      catch (ExecutionException localExecutionException)
      {
        while (true)
          Log.e("VS.G3EngineManager", "Exception while running recognition: " + localExecutionException);
      }
    }
  }

  public void startRecognition(final Greco3Recognizer paramGreco3Recognizer, InputStream paramInputStream, Greco3Callback paramGreco3Callback, final RecognizerSessionParamsProto.RecognizerSessionParams paramRecognizerSessionParams, @Nullable final GrecoEventLogger paramGrecoEventLogger, final GstaticConfiguration.LanguagePack paramLanguagePack)
  {
    if (this.mCurrentRecognition == null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      paramGreco3Recognizer.setAudioReader(paramInputStream);
      paramGreco3Recognizer.setCallback(paramGreco3Callback);
      this.mCurrentRecognition = this.mRecognitionExecutor.submit(new Callable()
      {
        public Greco3Recognizer call()
        {
          if (paramGrecoEventLogger != null)
            paramGrecoEventLogger.recognitionStarted();
          NativeRecognizer.NativeRecognitionResult localNativeRecognitionResult = paramGreco3Recognizer.run(paramRecognizerSessionParams);
          int i = localNativeRecognitionResult.getStatus();
          if ((i != 0) && (i != 4))
            Log.e("VS.G3EngineManager", "Error running recognition: " + i);
          if (paramGrecoEventLogger != null)
          {
            RecognizerOuterClass.RecognizerLog localRecognizerLog = localNativeRecognitionResult.getRecognizerInfo();
            localRecognizerLog.setLangPack(Greco3EngineManager.buildLanguagePackLog(paramLanguagePack));
            localRecognizerLog.setRecognizerLanguage(paramLanguagePack.getBcp47Locale());
            paramGrecoEventLogger.recognitionCompleted(localRecognizerLog);
          }
          return paramGreco3Recognizer;
        }
      });
      this.mCurrentRecognizer = paramGreco3Recognizer;
      return;
    }
  }

  @VisibleForTesting
  public static class Resources
  {
    final String configFile;

    @Nullable
    final Greco3Grammar grammarType;
    final GstaticConfiguration.LanguagePack languagePack;
    final String locale;
    final Greco3Mode mode;
    final String[] paths;
    final Greco3ResourceManager resources;

    Resources(Greco3ResourceManager paramGreco3ResourceManager, String paramString1, String paramString2, Greco3Grammar paramGreco3Grammar, Greco3Mode paramGreco3Mode, String[] paramArrayOfString, GstaticConfiguration.LanguagePack paramLanguagePack)
    {
      this.resources = paramGreco3ResourceManager;
      this.configFile = paramString1;
      this.locale = paramString2;
      this.grammarType = paramGreco3Grammar;
      this.mode = paramGreco3Mode;
      this.paths = paramArrayOfString;
      this.languagePack = paramLanguagePack;
    }

    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof Resources));
      Resources localResources;
      do
      {
        return false;
        localResources = (Resources)paramObject;
      }
      while ((!this.locale.equals(localResources.locale)) || (this.mode != localResources.mode) || (this.mode != Greco3Mode.GRAMMAR) || (this.grammarType != localResources.grammarType));
      return true;
    }

    boolean isEquivalentTo(String paramString, Greco3Grammar paramGreco3Grammar, Greco3Mode paramGreco3Mode)
    {
      return (paramString.equals(this.locale)) && (paramGreco3Mode == this.mode) && ((paramGreco3Mode != Greco3Mode.GRAMMAR) || (paramGreco3Grammar == this.grammarType));
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3EngineManager
 * JD-Core Version:    0.6.2
 */