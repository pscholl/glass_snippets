.class public abstract Lcom/google/glass/voice/Sensory;
.super Ljava/lang/Object;
.source "Sensory.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/Sensory$SensoryResult;,
        Lcom/google/glass/voice/Sensory$State;
    }
.end annotation


# static fields
.field public static final LTS_RULES_FILE_GENERIC:Ljava/lang/String; = "lts_en_us_9.5.2b.raw"

.field public static final LTS_RULES_FILE_NAMES:Ljava/lang/String; = "lts_en_us_cid_9.3.1.1.raw"

.field public static final RECOG_FILE_GENERIC:Ljava/lang/String; = "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

.field public static final SVSID_FILE:Ljava/lang/String; = "svsid_1_1.raw"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final resIdToFilename:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static resolver:Landroid/content/ContentResolver;


# instance fields
.field private audioBuffer:Ljava/nio/ByteBuffer;

.field protected sensoryContext:J

.field private state:Lcom/google/glass/voice/Sensory$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    sput-object v4, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 95
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    .line 98
    invoke-static {}, Lcom/google/glass/voice/StaticRecognizerFiles;->values()[Lcom/google/glass/voice/StaticRecognizerFiles;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/voice/StaticRecognizerFiles;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 99
    .local v3, staticRecognizerFiles:Lcom/google/glass/voice/StaticRecognizerFiles;
    sget-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    iget v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFileResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFile:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    iget v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFileResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFile:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v3           #staticRecognizerFiles:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_0
    sget-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v5, Lcom/google/glass/voice/R$raw;->nn_en_us_mfcc_16k_15_big_250_v4_7:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v5, Lcom/google/glass/voice/R$raw;->lts_en_us_9_5_2b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lts_en_us_9.5.2b.raw"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v5, Lcom/google/glass/voice/R$raw;->lts_en_us_cid_9_3_1_1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lts_en_us_cid_9.3.1.1.raw"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v4, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    sget v5, Lcom/google/glass/voice/R$raw;->svsid_1_1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "svsid_1_1.raw"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v4, "fssdk"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    .line 85
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    iput-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    .line 118
    invoke-static {p1}, Lcom/google/glass/voice/Sensory;->initialize(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method private doWriteAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 7
    .parameter "b"
    .parameter "rate"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 174
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    iget-wide v1, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    iget-object v3, p0, Lcom/google/glass/voice/Sensory;->audioBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/Sensory;->nativePipePhrasespot(JLjava/nio/ByteBuffer;J)Lcom/google/glass/voice/Sensory$SensoryResult;

    move-result-object v6

    .line 177
    .local v6, result:Lcom/google/glass/voice/Sensory$SensoryResult;
    if-eqz v6, :cond_2

    .line 178
    new-instance v0, Lcom/google/glass/voice/HotwordResult;

    iget-object v1, v6, Lcom/google/glass/voice/Sensory$SensoryResult;->literal:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/Sensory;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v1

    iget v2, v6, Lcom/google/glass/voice/Sensory$SensoryResult;->score:F

    iget-object v3, v6, Lcom/google/glass/voice/Sensory$SensoryResult;->wordAlignment:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/glass/voice/HotwordResult;->parseAlignments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/HotwordResult;-><init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V

    .line 181
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 137
    const-string v0, "/data/data/%s/files/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    const-class v1, Lcom/google/glass/voice/Sensory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/Sensory;->resolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/glass/voice/Sensory;->resIdToFilename:Ljava/util/Map;

    invoke-static {p0, v0, v2}, Lcom/google/glass/util/FileHelper;->copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/Sensory;->resolver:Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit v1

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativeClosePhrasespot(J)V
.end method

.method private native nativePipePhrasespot(JLjava/nio/ByteBuffer;J)Lcom/google/glass/voice/Sensory$SensoryResult;
.end method

.method private native nativeResetPhrasespot(J)V
.end method

.method private setState(Lcom/google/glass/voice/Sensory$State;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 141
    sget-object v0, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Changing state from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    invoke-static {v0, p1}, Lcom/google/glass/voice/Sensory$State;->checkTransition(Lcom/google/glass/voice/Sensory$State;Lcom/google/glass/voice/Sensory$State;)V

    .line 143
    iput-object p1, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    .line 144
    return-void
.end method


# virtual methods
.method public final declared-synchronized activate()V
    .locals 5

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not setting active state because we don\'t have a valid Sensory native context"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    if-eq v0, v1, :cond_1

    .line 230
    sget-object v0, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring activate call outside of inactive state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized deactivate()V
    .locals 5

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    if-eq v0, v1, :cond_0

    .line 210
    sget-object v0, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring deactivate call outside of active state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/voice/Sensory;->resetPhrasespot()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized destroy()V
    .locals 5

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    sget-object v0, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring destroy call because we are already destroying or destroyed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V

    .line 194
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/Sensory;->nativeClosePhrasespot(J)V

    .line 195
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/Sensory;->setState(Lcom/google/glass/voice/Sensory$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getState()Lcom/google/glass/voice/Sensory$State;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    return-object v0
.end method

.method protected native nativeCompileGrammar(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method protected native nativeInitPhrasespot([Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method protected native nativeInitPhrasespotDynamic()J
.end method

.method protected native nativeNormalizeText(JLjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected resetPhrasespot()V
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/google/glass/voice/Sensory;->sensoryContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/Sensory;->nativeResetPhrasespot(J)V

    .line 200
    return-void
.end method

.method public abstract stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
.end method

.method public final declared-synchronized writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 5
    .parameter "b"
    .parameter "rate"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    if-eq v0, v1, :cond_0

    .line 155
    sget-object v0, Lcom/google/glass/voice/Sensory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring audio outside of initialized state. Current state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/Sensory;->state:Lcom/google/glass/voice/Sensory$State;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/Sensory;->doWriteAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
