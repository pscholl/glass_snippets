.class public Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;
.super Ljava/lang/Object;
.source "EmbeddedRecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
    }
.end annotation


# static fields
.field private static final COMPILE_CONFIG:Ljava/lang/String; = "compile.config"

.field private static final GRECO_DIR:Ljava/io/File; = null

.field private static final MULTI_RECOGNIZER_CONFIG:Ljava/lang/String; = "multi.config"

#the value of this static final field might be set in the static constructor
.field private static final PIPE_SIZE_BYTES:I = 0x0

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioBuffer:Lcom/google/glass/util/BytePipe;

.field private audioLengthMillis:J

.field private compileDir:Ljava/io/File;

.field private currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field private hotwordAlignmentOffsetMillis:J

.field private lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

.field private modelsNeedReloading:Z

.field private recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

.field private recognizerThread:Ljava/lang/Thread;

.field private resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->TAG:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/srec/en-US/voice/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->GRECO_DIR:Ljava/io/File;

    .line 65
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->PIPE_SIZE_BYTES:I

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->instance:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    .line 84
    iput-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 87
    iput-boolean v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->modelsNeedReloading:Z

    .line 101
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    .line 107
    iput-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 126
    const-string v0, "greco"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->compileDir:Ljava/io/File;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;)Lcom/google/speech/recognizer/MultiRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;)Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->setDecoder(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized cancelRecognition()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 316
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->setDecoder(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z

    .line 317
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 319
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v3}, Lcom/google/glass/util/BytePipe;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :try_start_2
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling Recognition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v3}, Lcom/google/speech/recognizer/MultiRecognizer;->cancel()I

    move-result v0

    .line 327
    .local v0, cancelStatus:I
    if-eqz v0, :cond_0

    .line 328
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelRecognition error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    .end local v0           #cancelStatus:I
    :goto_0
    monitor-exit p0

    return v2

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error closing audio buffer."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 316
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 333
    .restart local v0       #cancelStatus:I
    :cond_0
    :try_start_4
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Joining recognition thread"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 335
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Joined"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 341
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizerThread:Ljava/lang/Thread;

    .line 343
    .end local v0           #cancelStatus:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 336
    .restart local v0       #cancelStatus:I
    :catch_1
    move-exception v1

    .line 337
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error joining recognizerThread"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private createRecognizerCallback()Lcom/google/speech/recognizer/RecognizerCallback;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;-><init>(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;)V

    return-object v0
.end method

.method public static getConfigBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "configPath"

    .prologue
    const/4 v5, 0x0

    .line 172
    :try_start_0
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getEmbeddedRecognizerController(Landroid/content/Context;)Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    const-class v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->GRECO_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 121
    :goto_0
    monitor-exit v1

    return-object v0

    .line 118
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->instance:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->instance:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    .line 121
    :cond_1
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->instance:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs getPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pathComponents"

    .prologue
    .line 419
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->GRECO_DIR:Ljava/io/File;

    .line 420
    .local v2, file:Ljava/io/File;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 421
    .local v1, component:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_0

    .line 423
    .end local v1           #component:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getSearchPath()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->compileDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->GRECO_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private declared-synchronized reinitialize(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    .locals 9
    .parameter "decoder"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initializing glass multi recognizer with search path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getSearchPath()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->modelsNeedReloading:Z

    .line 190
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->cancelRecognition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 191
    .local v0, cancelledSuccesfully:Z
    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 195
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    if-eqz v6, :cond_2

    .line 196
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v6}, Lcom/google/speech/recognizer/MultiRecognizer;->delete()V

    .line 199
    :cond_2
    new-instance v6, Lcom/google/glass/voice/embedded/GlassMultiRecognizer;

    invoke-direct {v6}, Lcom/google/glass/voice/embedded/GlassMultiRecognizer;-><init>()V

    iput-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    .line 200
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->createRecognizerCallback()Lcom/google/speech/recognizer/RecognizerCallback;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/speech/recognizer/MultiRecognizer;->addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I

    .line 202
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    if-eqz v6, :cond_3

    .line 203
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-virtual {v6}, Lcom/google/glass/voice/embedded/GlassResourceManager;->delete()V

    .line 206
    :cond_3
    new-instance v6, Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-direct {v6}, Lcom/google/glass/voice/embedded/GlassResourceManager;-><init>()V

    iput-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 207
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "multi.config"

    aput-object v8, v6, v7

    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getConfigBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 208
    .local v1, configBytes:[B
    if-eqz v1, :cond_0

    .line 212
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getSearchPath()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/google/speech/recognizer/MultiRecognizer;->loadResourcesFromProto(Lcom/google/speech/recognizer/ResourceManager;[B[Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, resourceManagerStatus:I
    if-eqz v3, :cond_4

    .line 215
    sget-object v5, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resourceManager.initFromProto error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "multi.config"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0           #cancelledSuccesfully:Z
    .end local v1           #configBytes:[B
    .end local v3           #resourceManagerStatus:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 220
    .restart local v0       #cancelledSuccesfully:Z
    .restart local v1       #configBytes:[B
    .restart local v3       #resourceManagerStatus:I
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    iget-object v7, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-virtual {v6, v1, v7}, Lcom/google/speech/recognizer/MultiRecognizer;->initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I

    move-result v2

    .line 221
    .local v2, recognizerStatus:I
    if-eqz v2, :cond_5

    .line 222
    sget-object v5, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recognizer.initFromProto error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "multi.config"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 227
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->startRecognition(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 228
    goto/16 :goto_0
.end method

.method private declared-synchronized setDecoder(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    .locals 5
    .parameter "decoder"

    .prologue
    const/4 v1, 0x0

    .line 157
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    .line 159
    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    if-eq v2, v3, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/speech/recognizer/MultiRecognizer;->setConfig(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, status:I
    if-eqz v0, :cond_0

    .line 162
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDecoder to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v0           #status:I
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startRecognition(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    .locals 6
    .parameter "decoder"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 237
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizerThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 238
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Starting recognition that is already running."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    iput-wide v4, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioLengthMillis:J

    .line 242
    iput-wide v4, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->hotwordAlignmentOffsetMillis:J

    .line 244
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    .line 245
    .local v0, sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    invoke-virtual {v0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 246
    const/high16 v3, 0x467a

    invoke-virtual {v0, v3}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 248
    new-instance v3, Lcom/google/glass/util/BytePipe;

    sget v4, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->PIPE_SIZE_BYTES:I

    invoke-direct {v3, v4}, Lcom/google/glass/util/BytePipe;-><init>(I)V

    iput-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    .line 249
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    iget-object v4, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v3, v4}, Lcom/google/speech/recognizer/MultiRecognizer;->setAudioReader(Ljava/io/InputStream;)I

    .line 251
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->setDecoder(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z

    move-result v1

    .line 252
    .local v1, setSuccessfully:Z
    if-nez v1, :cond_1

    .line 253
    const/4 v2, 0x0

    .line 268
    :goto_0
    return v2

    .line 256
    :cond_1
    new-instance v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$1;

    const-string v4, "RecognizerThread"

    invoke-direct {v3, p0, v4, v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$1;-><init>(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;Ljava/lang/String;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)V

    iput-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizerThread:Ljava/lang/Thread;

    .line 267
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized compileHotwordGraph(Landroid/content/Context;Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)Z
    .locals 9
    .parameter "context"
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "compile.config"

    aput-object v8, v6, v7

    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, configFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 387
    sget-object v5, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find config file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    monitor-exit p0

    return v4

    .line 391
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "compile.config"

    aput-object v8, v6, v7

    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getConfigBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 393
    .local v1, configBytes:[B
    new-instance v0, Lcom/google/glass/voice/embedded/GlassHotwordGraphCompiler;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/GlassHotwordGraphCompiler;-><init>()V

    .line 394
    .local v0, compiler:Lcom/google/speech/recognizer/HotwordGraphCompiler;
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getSearchPath()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->initFromProto([B[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 395
    sget-object v5, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Hotword compiler error in initFromProto."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    .end local v0           #compiler:Lcom/google/speech/recognizer/HotwordGraphCompiler;
    .end local v1           #configBytes:[B
    .end local v2           #configFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 400
    .restart local v0       #compiler:Lcom/google/speech/recognizer/HotwordGraphCompiler;
    .restart local v1       #configBytes:[B
    .restart local v2       #configFile:Ljava/io/File;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->compileDir:Ljava/io/File;

    .line 401
    .local v3, outputDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    .line 402
    sget-object v5, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create output directory: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p2}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->compile([BLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 408
    sget-object v5, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Native compilation error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V

    goto/16 :goto_0

    .line 413
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->modelsNeedReloading:Z

    .line 414
    invoke-virtual {v0}, Lcom/google/speech/recognizer/HotwordGraphCompiler;->delete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 415
    goto/16 :goto_0
.end method

.method public getAlignmentInfos(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "result"
    .parameter "hotword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordStartTimeUsec()J

    move-result-wide v12

    add-long/2addr v5, v12

    const-wide/16 v12, 0x3e8

    div-long v9, v5, v12

    .line 455
    .local v9, hotwordStartAbsolute:J
    iget-wide v7, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioLengthMillis:J

    .line 457
    .local v7, hotwordEndAbsolute:J
    iget-wide v5, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->hotwordAlignmentOffsetMillis:J

    sub-long v1, v9, v5

    .line 458
    .local v1, relativeStart:J
    iget-wide v5, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->hotwordAlignmentOffsetMillis:J

    sub-long v3, v7, v5

    .line 460
    .local v3, relativeEnd:J
    new-instance v0, Lcom/google/glass/voice/AlignmentInfo;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v6

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/AlignmentInfo;-><init>(JJLjava/lang/String;F)V

    .line 462
    .local v0, info:Lcom/google/glass/voice/AlignmentInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v11, infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-object v11
.end method

.method public resetAlignment()V
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioLengthMillis:J

    iput-wide v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->hotwordAlignmentOffsetMillis:J

    .line 439
    return-void
.end method

.method public declared-synchronized switchDecoders(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    .locals 2
    .parameter "decoder"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->recognizer:Lcom/google/speech/recognizer/MultiRecognizer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->modelsNeedReloading:Z

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->reinitialize(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 147
    :goto_0
    monitor-exit p0

    return v0

    .line 139
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    if-ne p1, v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->cancelRecognition()Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    if-ne v0, v1, :cond_3

    .line 144
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->startRecognition(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->setDecoder(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 8
    .parameter "audio"
    .parameter "sampleRate"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 351
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    sget-object v4, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    if-ne v3, v4, :cond_0

    .line 352
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Writing audio to a recognizer without a decoder."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 373
    :goto_0
    return-object v1

    .line 356
    :cond_0
    const-wide/16 v3, 0x3e80

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    .line 357
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Must have sample rate of 16000"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioLengthMillis:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioLengthMillis:J

    .line 362
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/BytePipe;->write(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-eqz v3, :cond_2

    .line 368
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 369
    .local v1, result:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    iput-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    goto :goto_0

    .line 363
    .end local v1           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error piping audio."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .line 373
    goto :goto_0
.end method
