.class public Lcom/google/android/speech/network/NetworkRecognitionRunner;
.super Ljava/lang/Object;
.source "NetworkRecognitionRunner.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_SOCKET_BLOCKING:Z = false

.field private static final TAG:Ljava/lang/String; = "VS.NetworkRecognitionRunner"


# instance fields
.field private final mCallback:Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

.field private final mCloseConnectionRunnable:Ljava/lang/Runnable;

.field private final mConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

.field private mCurrentRecognition:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

.field private final mNetworkLoopRunnable:Ljava/lang/Runnable;

.field private final mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

.field private final mRunnerThread:Ljava/util/concurrent/ExecutorService;

.field private mS3Connection:Lcom/google/android/speech/network/S3Connection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducer;)V
    .locals 6
    .parameter
    .parameter "eventListener"
    .parameter "connectionFactory"
    .parameter "requestProducer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/network/NetworkEventListener;",
            "Lcom/google/android/speech/network/S3ConnectionFactory;",
            "Lcom/google/android/speech/network/producers/S3RequestProducer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    const/4 v0, 0x1

    const-string v1, "NetworkRunner"

    invoke-static {v0, v1}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/network/NetworkRecognitionRunner;-><init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducer;Ljava/util/concurrent/ExecutorService;)V

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducer;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter
    .parameter "eventListener"
    .parameter "connectionFactory"
    .parameter "requestProducer"
    .parameter "runnerThread"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/network/NetworkEventListener;",
            "Lcom/google/android/speech/network/S3ConnectionFactory;",
            "Lcom/google/android/speech/network/producers/S3RequestProducer;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/speech/network/NetworkRecognitionRunner$1;

    invoke-direct {v0, p0}, Lcom/google/android/speech/network/NetworkRecognitionRunner$1;-><init>(Lcom/google/android/speech/network/NetworkRecognitionRunner;)V

    iput-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkLoopRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/google/android/speech/network/NetworkRecognitionRunner$2;

    invoke-direct {v0, p0}, Lcom/google/android/speech/network/NetworkRecognitionRunner$2;-><init>(Lcom/google/android/speech/network/NetworkRecognitionRunner;)V

    iput-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCloseConnectionRunnable:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

    invoke-direct {v0, p1, p2}, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;-><init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;)V

    iput-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCallback:Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

    .line 102
    iput-object p2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    .line 103
    iput-object p3, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 104
    iput-object p4, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    .line 105
    iput-object p5, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/network/NetworkRecognitionRunner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->runNetworkLoop()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/speech/network/NetworkRecognitionRunner;)Lcom/google/android/speech/network/S3Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/speech/network/NetworkRecognitionRunner;Lcom/google/android/speech/network/S3Connection;)Lcom/google/android/speech/network/S3Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    return-object p1
.end method

.method private cancel()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, currentRecognition:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 203
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 207
    :cond_0
    return-object v0
.end method

.method private static checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method private runNetworkLoop()V
    .locals 5

    .prologue
    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/speech/network/NetworkEventListener;->onConnectionStarted()V

    .line 214
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    invoke-interface {v2}, Lcom/google/android/speech/network/S3ConnectionFactory;->create()Lcom/google/android/speech/network/S3Connection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    .line 216
    invoke-static {}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->checkInterrupted()V

    .line 218
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-interface {v2}, Lcom/google/android/speech/network/producers/S3RequestProducer;->next()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 219
    .local v1, request:Lcom/google/speech/s3/S3$S3Request;
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    iget-object v3, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCallback:Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

    invoke-interface {v2, v3, v1}, Lcom/google/android/speech/network/S3Connection;->connect(Lcom/google/android/speech/callback/Callback;Lcom/google/speech/s3/S3$S3Request;)V

    .line 220
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/speech/network/NetworkEventListener;->onConnectionFinished()V

    .line 222
    invoke-static {}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->checkInterrupted()V

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-interface {v2}, Lcom/google/android/speech/network/producers/S3RequestProducer;->next()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->checkInterrupted()V

    .line 226
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    invoke-interface {v2, v1}, Lcom/google/android/speech/network/S3Connection;->send(Lcom/google/speech/s3/S3$S3Request;)V

    .line 227
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/speech/network/NetworkEventListener;->onDataSent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 231
    .end local v1           #request:Lcom/google/speech/s3/S3$S3Request;
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCallback:Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

    new-instance v3, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v4, "Error in network recognizer: "

    invoke-direct {v3, v4, v0}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 236
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/speech/network/NetworkEventListener;->onError()V

    .line 239
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 240
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 246
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 230
    .restart local v1       #request:Lcom/google/speech/s3/S3$S3Request;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v2}, Lcom/google/android/speech/network/NetworkEventListener;->onDataComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 241
    .end local v1           #request:Lcom/google/speech/s3/S3$S3Request;
    :catch_1
    move-exception v2

    .line 244
    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRequestProducer:Lcom/google/android/speech/network/producers/S3RequestProducer;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCallback:Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

    invoke-virtual {v1}, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->invalidate()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->cancel()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 138
    .local v0, pendingRecognition:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-nez v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCloseConnectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "VS.NetworkRecognitionRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition runner not closed, connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 186
    return-void
.end method

.method getWrappedCallbackForTesting()Lcom/google/android/speech/callback/Callback;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCallback:Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Duplicate call to start."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mRunnerThread:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mNetworkLoopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
