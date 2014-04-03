package com.google.android.speech.embedded;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.searchcommon.util.ExtraPreconditions;
import com.google.android.speech.callback.SimpleCallback;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.LanguagePack;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
public class Greco3DataManager
{
  private static final String COMPILED_GRAMMAR_CACHE = "g3_grammars";
  private static final boolean DEBUG = false;
  private static final FileFilter DIRECTORY_FILTER = new FileFilter()
  {
    public boolean accept(File paramAnonymousFile)
    {
      return paramAnonymousFile.isDirectory();
    }
  };
  public static final String EP_FALLBACK_LOCALE = "en-US";
  public static final String METADATA_FILE_NAME = "metadata";
  public static final String MODELS_DIR = "g3_models";
  static final File SYSTEM_DATA_DIR = new File("/system/usr/srec");
  private static final String TAG = "VS.G3DataManager";

  @GuardedBy("this")
  private HashMap<String, LocaleResourcesImpl> mAvailableLanguages;

  @Nullable
  private final File mCompiledGrammarRoot;
  private final Context mContext;

  @Nullable
  private final Greco3Preferences mGreco3Prefs;

  @GuardedBy("this")
  final List<SimpleCallback<Void>> mInitializationCallbacks;

  @GuardedBy("this")
  private int mNumUpdatesInProgress;
  private PathDeleter mPathDeleter;
  private final ImmutableList<File> mSearchPaths;
  private final int[] mSupportedFormatVersions;
  private final Executor mUpdateExecutor;

  @VisibleForTesting
  public Greco3DataManager(Context paramContext, @Nullable Greco3Preferences paramGreco3Preferences, int[] paramArrayOfInt, ImmutableList<File> paramImmutableList, @Nullable File paramFile, Executor paramExecutor)
  {
    this.mContext = paramContext;
    this.mGreco3Prefs = paramGreco3Preferences;
    this.mSupportedFormatVersions = paramArrayOfInt;
    this.mSearchPaths = paramImmutableList;
    Iterator localIterator = this.mSearchPaths.iterator();
    while (localIterator.hasNext())
      Preconditions.checkState(((File)localIterator.next()).isAbsolute());
    this.mCompiledGrammarRoot = paramFile;
    this.mUpdateExecutor = paramExecutor;
    this.mNumUpdatesInProgress = 0;
    this.mAvailableLanguages = null;
    this.mInitializationCallbacks = Lists.newArrayList();
  }

  public Greco3DataManager(Context paramContext, Greco3Preferences paramGreco3Preferences, int[] paramArrayOfInt, Executor paramExecutor)
  {
    this(paramContext, paramGreco3Preferences, paramArrayOfInt, getSearchPathList(arrayOfFile), new File(paramContext.getCacheDir(), "g3_grammars"), paramExecutor);
  }

  static void deleteSingleLevelTree(File paramFile)
  {
    if (paramFile.exists())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int i = arrayOfFile.length;
        for (int j = 0; j < i; j++)
        {
          File localFile = arrayOfFile[j];
          if (!localFile.delete())
            Log.e("VS.G3DataManager", "Error deleting resource file: " + localFile.getAbsolutePath());
        }
      }
      if (!paramFile.delete())
        Log.e("VS.G3DataManager", "Error deleting directory: " + paramFile.getAbsolutePath());
    }
  }

  private void doLanguageDelete(GstaticConfiguration.LanguagePack paramLanguagePack)
  {
    File localFile = getOutputDirForLocale(paramLanguagePack.getBcp47Locale());
    this.mPathDeleter.delete(localFile, true);
    blockingUpdateResources(true);
  }

  private File getOutputDirForLocale(String paramString)
  {
    return new File(this.mContext.getDir("g3_models", 0), paramString);
  }

  private static ImmutableList<File> getSearchPathList(File[] paramArrayOfFile)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfFile.length;
    for (int j = 0; j < i; j++)
    {
      File localFile = paramArrayOfFile[j];
      if (localFile != null)
        localArrayList.add(localFile);
    }
    return ImmutableList.copyOf(localArrayList);
  }

  private void handleLocale(File paramFile, HashMap<String, LocaleResourcesImpl> paramHashMap)
  {
    String str = paramFile.getName();
    if (!isValidLocale(str));
    LocaleResourcesImpl localLocaleResourcesImpl;
    File[] arrayOfFile;
    do
    {
      return;
      localLocaleResourcesImpl = (LocaleResourcesImpl)paramHashMap.get(str);
      if (localLocaleResourcesImpl == null)
      {
        localLocaleResourcesImpl = new LocaleResourcesImpl(this.mSupportedFormatVersions);
        paramHashMap.put(str, localLocaleResourcesImpl);
      }
      arrayOfFile = paramFile.listFiles();
    }
    while (arrayOfFile == null);
    int i = arrayOfFile.length;
    int j = 0;
    label69: File localFile;
    boolean bool;
    if (j < i)
    {
      localFile = arrayOfFile[j];
      Greco3Mode localGreco3Mode = Greco3Mode.valueOf(localFile);
      bool = "metadata".equals(localFile.getName());
      if (localGreco3Mode == null)
        break label122;
      localLocaleResourcesImpl.addConfig(localGreco3Mode, localFile);
    }
    while (true)
    {
      j++;
      break label69;
      break;
      label122: if (bool)
        localLocaleResourcesImpl.addMetadata(localFile);
    }
  }

  private boolean hasDictationOrGrammarResources(LocaleResources paramLocaleResources)
  {
    if ((paramLocaleResources == null) || (paramLocaleResources.getResourcePaths() == null));
    while ((paramLocaleResources.getConfigFile(Greco3Mode.DICTATION) == null) && (paramLocaleResources.getConfigFile(Greco3Mode.GRAMMAR) == null))
      return false;
    return true;
  }

  private boolean isValidLocale(String paramString)
  {
    return (paramString.indexOf('-') == 2) || (paramString.indexOf('-') == 3);
  }

  private void processGrammar(File paramFile, Greco3Grammar paramGreco3Grammar, LocaleResourcesImpl paramLocaleResourcesImpl)
  {
    String str = paramFile.getName();
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length < Greco3GrammarCompiler.NUM_GENERATED_FILES));
    Object localObject;
    do
    {
      return;
      localObject = null;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        File localFile = arrayOfFile[j];
        if ("metadata".equals(localFile.getName()))
          localObject = localFile;
      }
    }
    while (localObject == null);
    paramLocaleResourcesImpl.addGrammar(paramGreco3Grammar, str, paramFile, localObject);
  }

  private void processLocaleData(HashMap<String, LocaleResourcesImpl> paramHashMap)
  {
    Iterator localIterator = paramHashMap.values().iterator();
    while (localIterator.hasNext())
      if (!((LocaleResourcesImpl)localIterator.next()).processLocaleData())
        localIterator.remove();
  }

  private void updateGrammars(HashMap<String, LocaleResourcesImpl> paramHashMap)
  {
    File[] arrayOfFile1 = this.mCompiledGrammarRoot.listFiles(DIRECTORY_FILTER);
    if ((arrayOfFile1 == null) || (arrayOfFile1.length == 0));
    LocaleResourcesImpl localLocaleResourcesImpl;
    File[] arrayOfFile2;
    label96: 
    while (true)
    {
      return;
      int i = arrayOfFile1.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label96;
        File localFile1 = arrayOfFile1[j];
        String str1 = localFile1.getName();
        if (!isValidLocale(str1))
          break;
        localLocaleResourcesImpl = (LocaleResourcesImpl)paramHashMap.get(str1);
        if (localLocaleResourcesImpl == null)
          break;
        arrayOfFile2 = localFile1.listFiles(DIRECTORY_FILTER);
        if ((arrayOfFile2 != null) && (arrayOfFile2.length != 0))
          break label98;
      }
    }
    label98: int k = arrayOfFile2.length;
    int m = 0;
    label106: File localFile2;
    Greco3Grammar localGreco3Grammar;
    if (m < k)
    {
      localFile2 = arrayOfFile2[m];
      localGreco3Grammar = Greco3Grammar.valueOf(localFile2);
      if (localGreco3Grammar != null)
        break label138;
    }
    label138: File[] arrayOfFile3;
    do
    {
      m++;
      break label106;
      break;
      arrayOfFile3 = localFile2.listFiles(DIRECTORY_FILTER);
    }
    while ((arrayOfFile3 == null) || (arrayOfFile3.length == 0));
    String str2 = this.mGreco3Prefs.getCompiledGrammarRevisionId(localGreco3Grammar);
    int n = arrayOfFile3.length;
    int i1 = 0;
    label178: File localFile3;
    if (i1 < n)
    {
      localFile3 = arrayOfFile3[i1];
      if (localFile3.getName().equals(str2))
        break label223;
      this.mPathDeleter.delete(localFile3, false);
    }
    while (true)
    {
      i1++;
      break label178;
      break;
      label223: processGrammar(localFile3, localGreco3Grammar, localLocaleResourcesImpl);
    }
  }

  private void updateResourceListAndNotifyCallback()
  {
    HashMap localHashMap = doUpdateResourceList();
    try
    {
      Iterator localIterator = this.mInitializationCallbacks.iterator();
      while (localIterator.hasNext())
        ((SimpleCallback)localIterator.next()).onResult(null);
    }
    finally
    {
    }
    this.mInitializationCallbacks.clear();
    this.mAvailableLanguages = localHashMap;
    this.mNumUpdatesInProgress = (-1 + this.mNumUpdatesInProgress);
    if (this.mNumUpdatesInProgress >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      notifyAll();
      return;
    }
  }

  private void updateResources(HashMap<String, LocaleResourcesImpl> paramHashMap)
  {
    Iterator localIterator = this.mSearchPaths.iterator();
    while (localIterator.hasNext())
    {
      File[] arrayOfFile = ((File)localIterator.next()).listFiles(DIRECTORY_FILTER);
      if (arrayOfFile != null)
      {
        int i = arrayOfFile.length;
        for (int j = 0; j < i; j++)
          handleLocale(arrayOfFile[j], paramHashMap);
      }
    }
  }

  private void updateResourcesLocked(@Nullable SimpleCallback<Void> paramSimpleCallback, boolean paramBoolean)
  {
    if (this.mPathDeleter != null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      if (paramSimpleCallback != null)
        this.mInitializationCallbacks.add(paramSimpleCallback);
      if ((this.mNumUpdatesInProgress <= 0) || (paramBoolean))
        break;
      return;
    }
    this.mNumUpdatesInProgress = (1 + this.mNumUpdatesInProgress);
    this.mUpdateExecutor.execute(new Runnable()
    {
      public void run()
      {
        Greco3DataManager.this.updateResourceListAndNotifyCallback();
      }
    });
  }

  public void blockingUpdateResources(boolean paramBoolean)
  {
    try
    {
      ExtraPreconditions.checkNotMainThread();
      updateResourcesLocked(null, paramBoolean);
      waitForPendingUpdates();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public File createOutputPathForGrammar(Greco3Grammar paramGreco3Grammar, String paramString1, String paramString2)
  {
    File localFile = new File(new File(new File(this.mCompiledGrammarRoot, paramString1), paramGreco3Grammar.getDirectoryName()), paramString2);
    if ((!localFile.exists()) && (!localFile.mkdirs()))
      localFile = null;
    return localFile;
  }

  public void deleteLanguage(final GstaticConfiguration.LanguagePack paramLanguagePack, Executor paramExecutor, final Runnable paramRunnable)
  {
    new AsyncTask()
    {
      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        Greco3DataManager.this.doLanguageDelete(paramLanguagePack);
        return null;
      }

      protected void onPostExecute(Void paramAnonymousVoid)
      {
        if (paramRunnable != null)
          paramRunnable.run();
      }
    }
    .executeOnExecutor(paramExecutor, new Void[0]);
  }

  @VisibleForTesting
  protected HashMap<String, LocaleResourcesImpl> doUpdateResourceList()
  {
    HashMap localHashMap = Maps.newHashMap();
    updateResources(localHashMap);
    if (this.mCompiledGrammarRoot != null)
      updateGrammars(localHashMap);
    processLocaleData(localHashMap);
    return localHashMap;
  }

  @VisibleForTesting
  List<SimpleCallback<Void>> getInitializationCallbacksForTesting()
  {
    return this.mInitializationCallbacks;
  }

  public HashMap<String, GstaticConfiguration.LanguagePack> getInstalledLanguages()
  {
    HashMap localHashMap = Maps.newHashMap();
    try
    {
      Preconditions.checkState(isInitialized());
      Iterator localIterator = this.mAvailableLanguages.values().iterator();
      while (localIterator.hasNext())
      {
        LocaleResourcesImpl localLocaleResourcesImpl = (LocaleResourcesImpl)localIterator.next();
        GstaticConfiguration.LanguagePack localLanguagePack = localLocaleResourcesImpl.getLanguageMetadata();
        if ((localLanguagePack != null) && (hasDictationOrGrammarResources(localLocaleResourcesImpl)))
          localHashMap.put(localLanguagePack.getBcp47Locale(), localLanguagePack);
      }
    }
    finally
    {
    }
    return localHashMap;
  }

  public Supplier<File> getModelsDirSupplier()
  {
    return Suppliers.memoize(new Supplier()
    {
      public File get()
      {
        return Greco3DataManager.this.mContext.getDir("g3_models", 0);
      }
    });
  }

  public LocaleResources getResources(String paramString)
  {
    try
    {
      Preconditions.checkState(isInitialized());
      LocaleResources localLocaleResources = (LocaleResources)this.mAvailableLanguages.get(paramString);
      return localLocaleResources;
    }
    finally
    {
    }
  }

  public String getRevisionForGrammar(String paramString, Greco3Grammar paramGreco3Grammar)
  {
    LocaleResources localLocaleResources = getResources(paramString);
    String str;
    if (localLocaleResources == null)
      str = null;
    do
    {
      return str;
      str = this.mGreco3Prefs.getCompiledGrammarRevisionId(paramGreco3Grammar);
    }
    while ((str != null) && (localLocaleResources.getGrammarPath(paramGreco3Grammar, str) != null));
    return null;
  }

  public boolean hasCompiledGrammar(String paramString, Greco3Grammar paramGreco3Grammar)
  {
    return getRevisionForGrammar(paramString, paramGreco3Grammar) != null;
  }

  public boolean hasResources(String paramString, Greco3Mode paramGreco3Mode)
  {
    LocaleResources localLocaleResources = getResources(paramString);
    if (localLocaleResources == null);
    while (localLocaleResources.getConfigFile(paramGreco3Mode) == null)
      return false;
    return true;
  }

  public boolean hasResourcesForCompilation(String paramString)
  {
    LocaleResources localLocaleResources = getResources(paramString);
    if (localLocaleResources == null);
    while ((localLocaleResources.getConfigFile(Greco3Mode.COMPILER) == null) || (localLocaleResources.getConfigFile(Greco3Mode.GRAMMAR) == null))
      return false;
    return true;
  }

  public boolean isInitialized()
  {
    try
    {
      HashMap localHashMap = this.mAvailableLanguages;
      if (localHashMap != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public boolean isInstalledInSystemPartition(String paramString)
  {
    LocaleResources localLocaleResources = getResources(paramString);
    if ((localLocaleResources == null) || (localLocaleResources.getResourcePaths() == null))
      return false;
    return localLocaleResources.isInstalledInSystemPartition();
  }

  public boolean isUsingDownloadedData(String paramString)
  {
    LocaleResources localLocaleResources = getResources(paramString);
    if ((localLocaleResources == null) || (localLocaleResources.getResourcePaths() == null))
      return false;
    return localLocaleResources.isUsingDownloadedData();
  }

  public boolean maybeInitialize(@Nullable SimpleCallback<Void> paramSimpleCallback)
  {
    try
    {
      boolean bool1 = isInitialized();
      boolean bool2 = false;
      if (!bool1)
      {
        updateResourcesLocked(paramSimpleCallback, false);
        bool2 = true;
      }
      return bool2;
    }
    finally
    {
    }
  }

  public void setPathDeleter(PathDeleter paramPathDeleter)
  {
    this.mPathDeleter = paramPathDeleter;
  }

  @Deprecated
  public void waitForInitialization()
  {
    try
    {
      while (true)
      {
        HashMap localHashMap = this.mAvailableLanguages;
        if (localHashMap == null)
          try
          {
            wait();
          }
          catch (InterruptedException localInterruptedException)
          {
          }
      }
      return;
    }
    finally
    {
    }
  }

  @VisibleForTesting
  protected void waitForPendingUpdates()
  {
    try
    {
      while (true)
      {
        int i = this.mNumUpdatesInProgress;
        if (i <= 0)
          break;
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
          Log.e("VS.G3DataManager", "Interrupted waiting for resource update.");
        }
      }
    }
    finally
    {
    }
  }

  public static abstract interface LocaleResources
  {
    public abstract String getConfigFile(Greco3Mode paramGreco3Mode);

    public abstract String getGrammarPath(Greco3Grammar paramGreco3Grammar, String paramString);

    public abstract GstaticConfiguration.LanguagePack getLanguageMetadata();

    public abstract List<String> getResourcePaths();

    public abstract boolean isInstalledInSystemPartition();

    public abstract boolean isUsingDownloadedData();
  }

  public static abstract interface PathDeleter
  {
    public abstract void delete(File paramFile, boolean paramBoolean);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3DataManager
 * JD-Core Version:    0.6.2
 */