.class public Lcom/google/glass/voice/network/QueueingGrecoListener;
.super Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.source "QueueingGrecoListener.java"


# static fields
.field private static final ON_BEGINNING_OF_SPEECH:I = 0x1

.field private static final ON_DONE:I = 0xa

.field private static final ON_END_OF_SPEECH:I = 0x2

.field private static final ON_ERROR:I = 0xb

.field private static final ON_MEDIA_DATA_RESULT:I = 0x7

.field private static final ON_MUSIC_DETECTED:I = 0x5

.field private static final ON_NO_SPEECH_DETECTED:I = 0x3

.field private static final ON_PINHOLE_RESULT:I = 0x6

.field private static final ON_READY_FOR_SPEECH:I = 0x0

.field private static final ON_RECOGNITION_CANCELLED:I = 0x4

.field private static final ON_RECOGNITION_RESULT:I = 0x8

.field private static final ON_SOUND_SEARCH_RESULT:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isCanceled:Z

.field private listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    return-void
.end method

.method private declared-synchronized addToQueue(ILjava/lang/Object;)V
    .locals 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 87
    if-eqz p2, :cond_0

    .line 88
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/QueueingGrecoListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding message to queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 85
    .end local v0           #message:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private dispatchOnBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onBeginningOfSpeech()V

    .line 118
    return-void
.end method

.method private dispatchOnDone()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onDone()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 134
    return-void
.end method

.method private dispatchOnEndOfSpeech()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onEndOfSpeech()V

    .line 149
    return-void
.end method

.method private dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 180
    return-void
.end method

.method private dispatchOnMediaDataResult([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onMediaDataResult([B)V

    .line 210
    return-void
.end method

.method private dispatchOnMusicDetected()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onMusicDetected()V

    .line 164
    return-void
.end method

.method private dispatchOnNoSpeechDetected()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onNoSpeechDetected()V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 226
    return-void
.end method

.method private dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 1
    .parameter "pinholeResponse"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 195
    return-void
.end method

.method private dispatchOnReadyForSpeech(FF)V
    .locals 1
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onReadyForSpeech(FF)V

    .line 242
    return-void
.end method

.method private dispatchOnRecognitionCancelled()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onRecognitionCancelled()V

    .line 257
    return-void
.end method

.method private dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .parameter "recognitionEvent"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 272
    return-void
.end method

.method private dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 1
    .parameter "earsResponse"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 287
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 290
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech()V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V

    goto :goto_0

    .line 301
    :pswitch_3
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMusicDetected()V

    goto :goto_0

    .line 304
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/speech/exception/RecognizeException;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 307
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    goto :goto_0

    .line 310
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V

    goto :goto_0

    .line 313
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    goto :goto_0

    .line 316
    :pswitch_8
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V

    goto :goto_0

    .line 319
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    .line 320
    .local v0, args:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech(FF)V

    goto :goto_0

    .line 323
    .end local v0           #args:[F
    :pswitch_a
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V

    goto :goto_0

    .line 326
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method getQueueForTest()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 333
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public declared-synchronized onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDone()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 124
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEndOfSpeech()V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 170
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMediaDataResult([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMusicDetected()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 155
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMusicDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNoSpeechDetected()V
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 216
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 1
    .parameter "pinholeResponse"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 186
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReadyForSpeech(FF)V
    .locals 2
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v1, :cond_1

    .line 232
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 233
    .local v0, args:[F
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v0           #args:[F
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRecognitionCancelled()V
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 248
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 250
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .parameter "recognitionEvent"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 263
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 1
    .parameter "earsResponse"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 278
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetCanceledForTest()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCanceled()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener was already set - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_2
    monitor-exit p0

    return-void
.end method
