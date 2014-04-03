.class public abstract Lcom/google/speech/recognizer/AbstractRecognizer;
.super Ljava/lang/Object;
.source "AbstractRecognizer.java"

# interfaces
.implements Lcom/google/speech/recognizer/Recognizer;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


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
    .line 29
    const-class v0, Lcom/google/speech/recognizer/AbstractRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/AbstractRecognizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    .line 36
    return-void
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

.method private native nativeRun(J[B)[B
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recognizer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 111
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeCancel(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeDelete(J)V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->delete()V

    .line 42
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
    .line 145
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;-><init>()V

    .line 146
    .local v1, event:Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    invoke-virtual {v1, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 147
    iget-object v3, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

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

    .line 148
    .local v0, cb:Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V

    goto :goto_0

    .line 150
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
    .line 136
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    .line 137
    .local v1, event:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    invoke-virtual {v1, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 138
    iget-object v3, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

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

    .line 139
    .local v0, cb:Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0

    .line 141
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
    .line 127
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 128
    .local v1, event:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    invoke-virtual {v1, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 129
    iget-object v3, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

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

    .line 130
    .local v0, cb:Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 132
    .end local v0           #cb:Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method public initFromFile(Ljava/lang/String;Lcom/google/speech/recognizer/ResourceManager;)I
    .locals 7
    .parameter "configFile"
    .parameter "rm"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 63
    iput-object p2, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 64
    iget-wide v1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeInitFromFile(JJLjava/lang/String;)I

    move-result v6

    .line 65
    .local v6, status:I
    return v6
.end method

.method public initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I
    .locals 7
    .parameter "configBytes"
    .parameter "rm"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 74
    iput-object p2, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 75
    iget-wide v1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeInitFromProto(JJ[B)I

    move-result v6

    .line 76
    .local v6, status:I
    return v6
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
    .line 116
    array-length v1, p1

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal zero length buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->reader:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 120
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 122
    :cond_1
    return v0
.end method

.method public run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 5
    .parameter "sessionParams"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 97
    iget-wide v2, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->toByteArray()[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeRun(J[B)[B

    move-result-object v1

    .line 99
    .local v1, resultBytes:[B
    :try_start_0
    invoke-static {v1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->parseFrom([B)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, ex:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    sget-object v2, Lcom/google/speech/recognizer/AbstractRecognizer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "bad protocol buffer from recognizer jni"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v2}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v2

    goto :goto_0
.end method

.method public setAudioReader(Ljava/io/InputStream;)I
    .locals 1
    .parameter "reader"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->reader:Ljava/io/InputStream;

    .line 83
    const/4 v0, 0x0

    return v0
.end method
