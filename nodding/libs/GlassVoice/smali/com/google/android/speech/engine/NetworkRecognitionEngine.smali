.class public Lcom/google/android/speech/engine/NetworkRecognitionEngine;
.super Ljava/lang/Object;
.source "NetworkRecognitionEngine.java"

# interfaces
.implements Lcom/google/android/speech/engine/RecognitionEngine;
.implements Lcom/google/android/speech/engine/RetryCallback$Retrier;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkRecognitionEngine"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mFallback:Lcom/google/android/speech/network/S3ConnectionFactory;

.field private mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field private mOriginalCallback:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimary:Lcom/google/android/speech/network/S3ConnectionFactory;

.field private final mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

.field private mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

.field private mRetryFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mRetryLock"
    .end annotation
.end field

.field private final mRetryLock:Ljava/lang/Object;

.field private final mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

.field private mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

.field private final mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

.field private final mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/network/producers/RequestProducerFactory;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 1
    .parameter "primary"
    .end parameter
    .parameter "fallback"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "retryPolicy"
    .end parameter
    .parameter "networkRunner"
    .end parameter
    .parameter "requestProducerFactory"
    .end parameter
    .parameter "speechLibLogger"
    .end parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mPrimary:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 71
    iput-object p2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mFallback:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 72
    iput-object p3, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    .line 73
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 74
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 75
    iput-object p5, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    .line 76
    iput-object p6, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 77
    return-void
.end method

.method private maybeRefreshRequestProduceFactory(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 2
    .parameter "re"

    .prologue
    .line 149
    instance-of v0, p1, Lcom/google/android/speech/exception/AuthFailureException;

    .line 150
    .local v0, refreshRecognitionParams:Z
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v1}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->refresh()V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 101
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 102
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/Callback;

    .line 103
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 105
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->close()V

    .line 107
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    .line 121
    :cond_1
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createAndStartRecognitionRunner(Lcom/google/android/speech/network/S3ConnectionFactory;)V
    .locals 6
    .parameter "factory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v2}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v2, Lcom/google/android/speech/network/NetworkRecognitionRunner;

    iget-object v3, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    iget-object v4, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-static {v4}, Lcom/google/android/speech/engine/LoggingEventListener;->getInstance(Lcom/google/android/speech/logger/SpeechLibLogger;)Lcom/google/android/speech/engine/LoggingEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v5, v1}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;

    move-result-object v5

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/google/android/speech/network/NetworkRecognitionRunner;-><init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducer;)V

    iput-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    .line 190
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-virtual {v2}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->start()V

    .line 191
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    new-instance v3, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v4, "Unable to create stream"

    invoke-direct {v3, v4, v0}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/google/android/speech/engine/RetryCallback;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method retry(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 4
    .parameter "e"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v1, Lcom/google/android/speech/engine/RetryCallback;

    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/Callback;

    iget-object v3, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/speech/engine/RetryCallback;-><init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/engine/RetryCallback$Retrier;)V

    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->maybeRefreshRequestProduceFactory(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 136
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-virtual {v1}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->close()V

    .line 138
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mFallback:Lcom/google/android/speech/network/S3ConnectionFactory;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mFallback:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 139
    .local v0, fallbackFactory:Lcom/google/android/speech/network/S3ConnectionFactory;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->createAndStartRecognitionRunner(Lcom/google/android/speech/network/S3ConnectionFactory;)V

    .line 140
    iget-object v2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 144
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    .end local v0           #fallbackFactory:Lcom/google/android/speech/network/S3ConnectionFactory;
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mPrimary:Lcom/google/android/speech/network/S3ConnectionFactory;

    goto :goto_1
.end method

.method public scheduleRetry(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;-><init>(Lcom/google/android/speech/engine/NetworkRecognitionEngine;Lcom/google/android/speech/exception/RecognizeException;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryFuture:Ljava/util/concurrent/Future;

    .line 171
    :goto_0
    monitor-exit v1

    .line 172
    return-void

    .line 169
    :cond_0
    const-string v0, "NetworkRecognitionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding retry request (already active) for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V
    .locals 2
    .parameter "inputFactory"
    .parameter
    .parameter "sessionParams"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/AudioInputStreamFactory;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/android/speech/RecognitionResponse;Lcom/google/android/speech/exception/RecognizeException;>;"
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 87
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v0}, Lcom/google/android/speech/engine/RetryPolicy;->reset()V

    .line 90
    iput-object p2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mOriginalCallback:Lcom/google/android/speech/callback/Callback;

    .line 91
    new-instance v0, Lcom/google/android/speech/engine/RetryCallback;

    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-direct {v0, p2, v1, p0}, Lcom/google/android/speech/engine/RetryCallback;-><init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/engine/RetryCallback$Retrier;)V

    iput-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRetryCallback:Lcom/google/android/speech/engine/RetryCallback;

    .line 92
    iput-object p1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 93
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v0, p3}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->init(Lcom/google/android/speech/params/SessionParams;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->mPrimary:Lcom/google/android/speech/network/S3ConnectionFactory;

    invoke-virtual {p0, v0}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->createAndStartRecognitionRunner(Lcom/google/android/speech/network/S3ConnectionFactory;)V

    .line 96
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
