.class public Lcom/google/speech/recognizer/MultiRecognizer;
.super Ljava/lang/Object;
.source "MultiRecognizer.java"

# interfaces
.implements Lcom/google/speech/recognizer/Recognizer;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/RecognizerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private nativeObj:J

.field private reader:Ljava/io/InputStream;

.field private rm:Lcom/google/speech/recognizer/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/MultiRecognizer;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/google/speech/recognizer/MultiRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/MultiRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    .line 35
    return-void
.end method

.method public static loadResourcesFromFile(Lcom/google/speech/recognizer/ResourceManager;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "rm"
    .parameter "configFile"
    .parameter "resourcePaths"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeLoadResourcesFromFile(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static loadResourcesFromProto(Lcom/google/speech/recognizer/ResourceManager;[B[Ljava/lang/String;)I
    .locals 2
    .parameter "rm"
    .parameter "proto"
    .parameter "resourcePaths"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeLoadResourcesFromProto(J[B[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native nativeCancel(J)I
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeDelete(J)V
.end method

.method protected static native nativeInit()V
.end method

.method private native nativeInitFromFile(JJLjava/lang/String;)I
.end method

.method private native nativeInitFromProto(JJ[B)I
.end method

.method private static native nativeLoadResourcesFromFile(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native nativeLoadResourcesFromProto(J[B[Ljava/lang/String;)I
.end method

.method private native nativeRun(J[B)[B
.end method

.method private native nativeSetConfig(JLjava/lang/String;)I
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recognizer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 117
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeCancel(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 50
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeDelete(J)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->delete()V

    .line 41
    return-void
.end method

.method protected handleAudioLevelEvent([B)V
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    move-result-object v1

    .line 160
    .local v1, event:Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    iget-object v3, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 161
    .local v0, cb:Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V

    goto :goto_0

    .line 163
    .end local v0           #cb:Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method protected handleEndpointerEvent([B)V
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v1

    .line 152
    .local v1, event:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    iget-object v3, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 153
    .local v0, cb:Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0

    .line 155
    .end local v0           #cb:Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method protected handleRecognitionEvent([B)V
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v1

    .line 144
    .local v1, event:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    iget-object v3, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 145
    .local v0, cb:Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 147
    .end local v0           #cb:Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method public initFromFile(Ljava/lang/String;Lcom/google/speech/recognizer/ResourceManager;)I
    .locals 6
    .parameter "configFile"
    .parameter "rm"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 70
    iput-object p2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 71
    iget-wide v1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeInitFromFile(JJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I
    .locals 6
    .parameter "configBytes"
    .parameter "rm"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 80
    iput-object p2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 81
    iget-wide v1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeInitFromProto(JJ[B)I

    move-result v0

    return v0
.end method

.method protected read([B)I
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    array-length v1, p1

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal zero length buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->reader:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 131
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 134
    :cond_1
    return v0
.end method

.method public run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 6
    .parameter "sessionParams"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 102
    iget-wide v3, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->toByteArray()[B

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeRun(J[B)[B

    move-result-object v2

    .line 104
    .local v2, resultBytes:[B
    :try_start_0
    invoke-static {v2}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->parseFrom([B)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    sget-object v3, Lcom/google/speech/recognizer/MultiRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "bad protocol buffer from recognizer jni"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v1, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    .line 108
    .local v1, nativeRecognitionResult:Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    goto :goto_0
.end method

.method public setAudioReader(Ljava/io/InputStream;)I
    .locals 1
    .parameter "reader"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->reader:Ljava/io/InputStream;

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public setConfig(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 122
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeSetConfig(JLjava/lang/String;)I

    move-result v0

    return v0
.end method
