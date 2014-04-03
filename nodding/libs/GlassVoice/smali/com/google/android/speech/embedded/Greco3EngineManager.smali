.class public Lcom/google/android/speech/embedded/Greco3EngineManager;
.super Ljava/lang/Object;
.source "Greco3EngineManager.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VS.G3EngineManager"


# instance fields
.field private mCurrentRecognition:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Recognizer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

.field private final mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

.field private final mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInitialized:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mResourcesByMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/android/speech/embedded/Greco3Preferences;Lcom/google/android/speech/embedded/EndpointerModelCopier;)V
    .locals 1
    .parameter "dataManager"
    .end parameter
    .parameter "preferences"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "endpointerModelCopier"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    .line 68
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;

    .line 69
    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;

    .line 70
    const-string v0, "Greco3Thread"

    invoke-static {v0}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/android/speech/embedded/Greco3EngineManager;->buildLanguagePackLog(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/speech/embedded/Greco3EngineManager;Ljava/io/File;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/speech/embedded/Greco3EngineManager;->doResourceDelete(Ljava/io/File;Z)V

    return-void
.end method

.method private static buildLanguagePackLog(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 2
    .parameter "languagePack"

    .prologue
    .line 384
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized doResourceDelete(Ljava/io/File;Z)V
    .locals 1
    .parameter "path"
    .parameter "force"

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/speech/embedded/Greco3EngineManager;->isUsedLocked(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    if-eqz p2, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/google/android/speech/embedded/Greco3EngineManager;->releaseAllResourcesLocked()V

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->deleteSingleLevelTree(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_1
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCompiledGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "resources"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;

    invoke-virtual {v1, p1}, Lcom/google/android/speech/embedded/Greco3Preferences;->getCompiledGrammarRevisionId(Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, revisionId:Ljava/lang/String;
    invoke-interface {p2, p1, v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .end local v0           #revisionId:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getResourcesInternal(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .locals 5
    .parameter "locale"
    .end parameter
    .parameter "mode"
    .end parameter
    .parameter "grammarType"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 282
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v4, :cond_3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 284
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 285
    .local v0, instance:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    if-eqz v0, :cond_5

    .line 286
    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->isEquivalentTo(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    .line 307
    :cond_1
    :goto_2
    monitor-exit p0

    return-object v1

    .end local v0           #instance:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_2
    move v4, v3

    .line 281
    goto :goto_0

    :cond_3
    move v2, v3

    .line 282
    goto :goto_1

    .line 291
    .restart local v0       #instance:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_4
    :try_start_1
    iget-object v2, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->delete()V

    .line 292
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->loadResourcesFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v0

    .line 297
    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/google/android/speech/embedded/Greco3Mode;->isEndpointerMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 298
    const-string v2, "en-US"

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->loadResourcesFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v0

    .line 301
    :cond_6
    if-eqz v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 303
    goto :goto_2

    .line 281
    .end local v0           #instance:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isUsedLocked(Ljava/io/File;)Z
    .locals 8
    .parameter "pathFile"
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, pathStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 263
    .local v6, res:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    iget-object v0, v6, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->paths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 264
    .local v4, path:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    const/4 v7, 0x1

    .line 270
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #res:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :goto_1
    return v7

    .line 263
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #res:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #res:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private loadResourcesFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .locals 15
    .parameter "bcp47Locale"
    .parameter "mode"
    .parameter "grammarType"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;

    move-result-object v14

    .line 314
    .local v14, resources:Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
    if-nez v14, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 368
    :goto_0
    return-object v1

    .line 319
    :cond_0
    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v10

    .line 320
    .local v10, configFile:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 322
    const/4 v1, 0x0

    goto :goto_0

    .line 326
    :cond_1
    invoke-interface {v14}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getResourcePaths()Ljava/util/List;

    move-result-object v11

    .line 327
    .local v11, dataPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    :cond_2
    const-string v1, "VS.G3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete / partial data for locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v1, 0x0

    goto :goto_0

    .line 333
    :cond_3
    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 335
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v14}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getCompiledGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;)Ljava/lang/String;

    move-result-object v12

    .line 336
    .local v12, grammarPath:Ljava/lang/String;
    if-nez v12, :cond_5

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 338
    const/4 v1, 0x0

    goto :goto_0

    .line 341
    .end local v12           #grammarPath:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    .line 344
    .restart local v12       #grammarPath:Ljava/lang/String;
    :cond_5
    new-instance v13, Lcom/google/android/searchcommon/util/StopWatch;

    invoke-direct {v13}, Lcom/google/android/searchcommon/util/StopWatch;-><init>()V

    .line 345
    .local v13, initStopWatch:Lcom/google/android/searchcommon/util/StopWatch;
    invoke-virtual {v13}, Lcom/google/android/searchcommon/util/StopWatch;->start()V

    .line 347
    if-nez v12, :cond_7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 349
    .local v9, arraySize:I
    :goto_1
    new-array v7, v9, [Ljava/lang/String;

    .line 350
    .local v7, pathsArray:[Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 352
    if-eqz v12, :cond_6

    .line 353
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aput-object v12, v7, v1

    .line 357
    :cond_6
    const-string v1, "VS.G3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create_rm: m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {v10, v7}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->create(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3ResourceManager;

    move-result-object v2

    .line 360
    .local v2, rm:Lcom/google/android/speech/embedded/Greco3ResourceManager;
    if-nez v2, :cond_8

    .line 361
    const-string v1, "VS.G3EngineManager"

    const-string v3, "Error loading resources."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 347
    .end local v2           #rm:Lcom/google/android/speech/embedded/Greco3ResourceManager;
    .end local v7           #pathsArray:[Ljava/lang/String;
    .end local v9           #arraySize:I
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v9, v1, 0x1

    goto :goto_1

    .line 366
    .restart local v2       #rm:Lcom/google/android/speech/embedded/Greco3ResourceManager;
    .restart local v7       #pathsArray:[Ljava/lang/String;
    .restart local v9       #arraySize:I
    :cond_8
    const-string v1, "VS.G3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brought up new g3 instance :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/google/android/searchcommon/util/StopWatch;->getElapsedTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;->getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;-><init>(Lcom/google/android/speech/embedded/Greco3ResourceManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;[Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    goto/16 :goto_0
.end method

.method private releaseAllResourcesLocked()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 209
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "VS.G3EngineManager"

    const-string v3, "Terminating active recognition for shutdown."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-virtual {p0, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;->release(Lcom/google/android/speech/embedded/Greco3Recognizer;)V

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 215
    .local v1, rd:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    iget-object v2, v1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->delete()V

    goto :goto_0

    .line 218
    .end local v1           #rd:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 219
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;Z)V
    .locals 2
    .parameter "path"
    .parameter "force"

    .prologue
    .line 223
    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mInitialized:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 227
    monitor-exit p0

    .line 238
    :goto_0
    return-void

    .line 229
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/speech/embedded/Greco3EngineManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/speech/embedded/Greco3EngineManager$2;-><init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Ljava/io/File;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .locals 1
    .parameter "locale"
    .end parameter
    .parameter "mode"
    .end parameter
    .parameter "grammarType"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResourcesInternal(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v0

    return-object v0
.end method

.method public maybeInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 81
    monitor-exit p0

    .line 106
    :goto_0
    return-void

    .line 83
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    const/4 v0, 0x0

    .line 92
    .local v0, sw:Lcom/google/android/searchcommon/util/StopWatch;
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/speech/embedded/Greco3DataManager;->blockingUpdateResources(Z)V

    .line 93
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3DataManager;->getModelsDirSupplier()Lcom/google/common/base/Supplier;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/embedded/EndpointerModelCopier;->copyEndpointerModels(Lcom/google/common/base/Supplier;Lcom/google/android/speech/embedded/Greco3DataManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v1, v4}, Lcom/google/android/speech/embedded/Greco3DataManager;->blockingUpdateResources(Z)V

    .line 101
    :cond_1
    monitor-enter p0

    .line 102
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mInitialized:Z

    .line 103
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 83
    .end local v0           #sw:Lcom/google/android/searchcommon/util/StopWatch;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public release(Lcom/google/android/speech/embedded/Greco3Recognizer;)V
    .locals 6
    .parameter "recognizer"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 174
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-ne p1, v2, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    const/4 v1, 0x0

    .line 182
    .local v1, sw:Lcom/google/android/searchcommon/util/StopWatch;
    invoke-virtual {p1}, Lcom/google/android/speech/embedded/Greco3Recognizer;->cancel()I

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :goto_2
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3Recognizer;->delete()V

    .line 198
    iput-object v5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 199
    iput-object v5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 200
    :goto_3
    return-void

    .end local v1           #sw:Lcom/google/android/searchcommon/util/StopWatch;
    :cond_0
    move v2, v4

    .line 173
    goto :goto_0

    :cond_1
    move v3, v4

    .line 174
    goto :goto_1

    .line 186
    .restart local v1       #sw:Lcom/google/android/searchcommon/util/StopWatch;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 188
    const-string v2, "VS.G3EngineManager"

    const-string v3, "Interrupted waiting for recognition to complete."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 190
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v2, "VS.G3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while running recognition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public startRecognition(Lcom/google/android/speech/embedded/Greco3Recognizer;Ljava/io/InputStream;Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 7
    .parameter "recognizer"
    .end parameter
    .parameter "input"
    .end parameter
    .parameter "callback"
    .end parameter
    .parameter "recParams"
    .end parameter
    .parameter "eventLogger"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "languagePack"
    .end parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 134
    invoke-virtual {p1, p2}, Lcom/google/android/speech/embedded/Greco3Recognizer;->setAudioReader(Ljava/io/InputStream;)I

    .line 135
    invoke-virtual {p1, p3}, Lcom/google/android/speech/embedded/Greco3Recognizer;->setCallback(Lcom/google/android/speech/embedded/Greco3Callback;)V

    .line 137
    iget-object v6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/embedded/Greco3EngineManager$1;-><init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/android/speech/embedded/Greco3Recognizer;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 164
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 165
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
