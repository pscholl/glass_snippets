.class public Lcom/google/glass/voice/SensoryRecognizerFactory;
.super Lcom/google/glass/voice/RecognizerFactory;
.source "SensoryRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final nativeAppStaticModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mirrorHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

.field private nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 356
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    .line 361
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "listen to"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "play music"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "call me a car"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "capture a panorama"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "check me in"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "create a 3d model"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "learn a song"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "play a game"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "recognize this song"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "remind me to"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "show a compass"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "start a round of golf"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "start a timer"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "translate this"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "tune an instrument"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "find a recipe"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "record a recipe"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "start a bike ride"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "start a run"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "start a stopwatch"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "start a workout"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "find a place"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    const-string v1, "explore nearby"

    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;Lcom/google/glass/voice/NativeCommandDisambiguationHelper;)V
    .locals 0
    .parameter "mirrorHelper"
    .parameter "nativeAppHelper"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/glass/voice/SensoryRecognizerFactory;->mirrorHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    .line 62
    iput-object p2, p0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    .line 63
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected static containsNonEmptyString([Ljava/lang/String;)Z
    .locals 5
    .parameter "strings"

    .prologue
    .line 187
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 188
    .local v3, string:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    const/4 v4, 0x1

    .line 192
    .end local v3           #string:Ljava/lang/String;
    :goto_1
    return v4

    .line 187
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected static createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "context"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 159
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    return-object v0
.end method

.method protected static createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 6
    .parameter "context"
    .parameter "customPhrases"
    .parameter "customTags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .local p3, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v2, 0x0

    .line 165
    invoke-static {p3}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Lcom/google/glass/voice/SensoryRecognizerFactory;->containsNonEmptyString([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "All custom phrases in dynamic recognizer config empty, returning no op recognizer."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 178
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const-string v3, "lts_en_us_9.5.2b.raw"

    .line 172
    .local v3, ltsFileToUse:Ljava/lang/String;
    invoke-static {p3}, Lcom/google/glass/voice/EntityUtils;->hasOnlyFocusEntities(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v3, "lts_en_us_cid_9.3.1.1.raw"

    .line 176
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using CID LTS model."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_1
    new-instance v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;

    const-string v2, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/DynamicSensoryRecognizer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static createNativeCustomTriggersRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 6
    .parameter "context"
    .parameter "config"

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 401
    .local v1, phrases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 403
    .local v3, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 404
    .local v2, phrasesIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    .local v0, phrase:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    invoke-interface {v2}, Ljava/util/ListIterator;->previousIndex()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 408
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 412
    .end local v0           #phrase:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    sget-object v4, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 415
    :goto_1
    return-object v4

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v4

    goto :goto_1
.end method

.method static getNativeAppStaticRecogFiles(Lcom/google/glass/voice/VoiceConfig;)Ljava/util/List;
    .locals 4
    .parameter "nativeAppConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/VoiceConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 422
    .local v2, recogFiles:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, phrase:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    sget-object v3, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeAppStaticModels:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    .end local v1           #phrase:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static newMainMenuRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 307
    new-instance v3, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;

    invoke-direct {v3}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;-><init>()V

    .line 309
    .local v3, mirrorHelper:Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 310
    .local v6, recognizerFiles:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    invoke-virtual {v3, p0}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->getNativeHybridRecogFiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    sget-object v5, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 316
    .local v5, nativeAppsRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-virtual {v3, p0}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->createLegacyRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v4

    .line 318
    .local v4, mirrorRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    sget-object v9, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v9}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 319
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getNativeAppsConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v9

    if-eqz v9, :cond_3

    move v0, v7

    .line 321
    .local v0, anyNativeAppsInstalled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getNativeAppsConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/voice/SensoryRecognizerFactory;->getNativeAppStaticRecogFiles(Lcom/google/glass/voice/VoiceConfig;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getNativeAppsConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createNativeCustomTriggersRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v5

    .line 331
    .end local v0           #anyNativeAppsInstalled:Z
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 334
    sget-object v9, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p0, v9}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v1

    .line 344
    .local v1, menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :goto_1
    sget-object v9, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    if-eq v5, v9, :cond_1

    .line 345
    new-instance v2, Lcom/google/glass/voice/HybridHotwordRecognizer;

    new-array v9, v10, [Lcom/google/glass/voice/HotwordRecognizer;

    aput-object v1, v9, v8

    aput-object v5, v9, v7

    invoke-direct {v2, v9}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>([Lcom/google/glass/voice/HotwordRecognizer;)V

    .end local v1           #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .local v2, menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    move-object v1, v2

    .line 348
    .end local v2           #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .restart local v1       #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_1
    sget-object v9, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    if-eq v4, v9, :cond_2

    .line 349
    new-instance v2, Lcom/google/glass/voice/HybridHotwordRecognizer;

    new-array v9, v10, [Lcom/google/glass/voice/HotwordRecognizer;

    aput-object v1, v9, v8

    aput-object v4, v9, v7

    invoke-direct {v2, v9}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>([Lcom/google/glass/voice/HotwordRecognizer;)V

    .end local v1           #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .restart local v2       #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    move-object v1, v2

    .line 352
    .end local v2           #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .restart local v1       #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_2
    return-object v1

    .end local v1           #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_3
    move v0, v8

    .line 319
    goto :goto_0

    .line 338
    :cond_4
    sget-object v9, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-interface {v6, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 341
    invoke-static {p0, v6}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Ljava/util/List;)Lcom/google/glass/voice/Sensory;

    move-result-object v1

    .restart local v1       #menuRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    goto :goto_1
.end method


# virtual methods
.method protected createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 14
    .parameter "context"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    sget-object v10, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Creating custom recognizer: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/voice/VoiceConfig;->getVoiceConfigs()[Lcom/google/glass/voice/VoiceConfig;

    move-result-object v9

    .line 123
    .local v9, voiceConfigs:[Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, customPhrases:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, customTags:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/voice/VoiceConfig;->getDisambiguationCommandType()I

    move-result v4

    .line 127
    .local v4, disambiguationCommandType:I
    const/high16 v10, -0x8000

    if-ne v4, v10, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/voice/VoiceConfig;->getLiteral()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 129
    :cond_0
    sget-object v10, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Creating disambig recognizer"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/voice/VoiceConfig;->getLiteral()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v4, v10}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDisambiguationRecognizer(Landroid/content/Context;ILjava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v10

    .line 151
    :goto_0
    return-object v10

    .line 134
    :cond_1
    array-length v10, v9

    if-nez v10, :cond_2

    .line 135
    move-object/from16 v0, p3

    invoke-static {p1, v2, v3, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v10

    goto :goto_0

    .line 138
    :cond_2
    array-length v10, v9

    if-lez v10, :cond_5

    .line 139
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v7, recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    move-object v1, v9

    .local v1, arr$:[Lcom/google/glass/voice/VoiceConfig;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v8, v1, v5

    .line 143
    .local v8, subConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, p1, v8}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    .end local v8           #subConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_3
    array-length v10, v2

    if-lez v10, :cond_4

    .line 148
    move-object/from16 v0, p3

    invoke-static {p1, v2, v3, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4
    new-instance v11, Lcom/google/glass/voice/HybridHotwordRecognizer;

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/glass/voice/HotwordRecognizer;

    invoke-direct {v11, v10}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>([Lcom/google/glass/voice/HotwordRecognizer;)V

    move-object v10, v11

    goto :goto_0

    .line 154
    .end local v1           #arr$:[Lcom/google/glass/voice/VoiceConfig;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    :cond_5
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal voice config description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10
.end method

.method protected createDisambiguationRecognizer(Landroid/content/Context;ILjava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 9
    .parameter "context"
    .parameter "disambiguationCommandType"
    .parameter "literal"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 433
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 434
    .local v0, customPhrases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    .local v1, customTags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v4, -0x8000

    if-eq p2, v4, :cond_1

    .line 437
    iget-object v4, p0, Lcom/google/glass/voice/SensoryRecognizerFactory;->mirrorHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v4, p2}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getConfig(I)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    .line 438
    .local v2, mirrorConfig:Lcom/google/glass/voice/VoiceConfig;
    if-nez v2, :cond_0

    .line 445
    sget-object v4, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No disambiguation config available for CommandType %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    sget-object v4, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 461
    .end local v2           #mirrorConfig:Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    return-object v4

    .line 449
    .restart local v2       #mirrorConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 452
    .end local v2           #mirrorConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 453
    iget-object v4, p0, Lcom/google/glass/voice/SensoryRecognizerFactory;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-virtual {v4, p3}, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->getConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    .line 454
    .local v3, nativeConfig:Lcom/google/glass/voice/VoiceConfig;
    if-nez v3, :cond_2

    .line 455
    sget-object v4, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No disambiguation config available for literal %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    sget-object v4, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    .end local v3           #nativeConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_3
    new-array v4, v8, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDynamicRecognizer(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v4

    goto :goto_0
.end method

.method protected createSystemRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 7
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    sget-object v2, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Creating system recognizer: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p2, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    .line 113
    :goto_0
    return-object v2

    .line 71
    :cond_0
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_1
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto :goto_0

    .line 77
    :cond_2
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-static {p1}, Lcom/google/glass/voice/SensoryRecognizerFactory;->newMainMenuRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_3
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_4
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD_CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_5
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    sget-object v2, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto :goto_0

    .line 87
    :cond_6
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    const-string v2, "image/jpeg"

    invoke-static {p1, v2}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 90
    .local v0, photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p1, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory;->prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v2, p2, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto :goto_0

    .line 92
    .end local v0           #photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_7
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 93
    const-string v2, "video/mp4"

    invoke-static {p1, v2}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 95
    .local v1, videoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p1, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory;->prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 96
    iget-object v2, p2, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto/16 :goto_0

    .line 97
    .end local v1           #videoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_8
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 98
    iget-object v2, p2, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto/16 :goto_0

    .line 100
    :cond_9
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PHOTO_REVIEW:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 101
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto/16 :goto_0

    .line 103
    :cond_a
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 104
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto/16 :goto_0

    .line 106
    :cond_b
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->DIRECTIONS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    sget-object v2, Lcom/google/glass/voice/StaticRecognizerFiles;->DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v2

    goto/16 :goto_0

    .line 109
    :cond_c
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VOICE_CORRECTION_HOTWORD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto/16 :goto_0

    .line 112
    :cond_d
    sget-object v2, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Recognizer not found for system config: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget-object v2, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto/16 :goto_0
.end method
