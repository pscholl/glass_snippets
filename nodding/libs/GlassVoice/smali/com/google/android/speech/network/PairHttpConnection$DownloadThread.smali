.class public Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;
.super Ljava/lang/Thread;
.source "PairHttpConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/network/PairHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DownloadThread"
.end annotation


# instance fields
.field private final mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDownUrl:Ljava/net/URL;

.field private volatile mRunning:Z

.field final synthetic this$0:Lcom/google/android/speech/network/PairHttpConnection;


# direct methods
.method private constructor <init>(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/URL;)V
    .locals 2
    .parameter
    .parameter "downUrl"

    .prologue
    const/4 v1, 0x1

    .line 388
    iput-object p1, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    .line 389
    const-string v0, "PairHttpReaderDown"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 390
    iput-object p2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mDownUrl:Ljava/net/URL;

    .line 391
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 392
    iput-boolean v1, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/URL;Lcom/google/android/speech/network/PairHttpConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;-><init>(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/URL;)V

    return-void
.end method

.method private runDownloadLoop(Ljava/net/HttpURLConnection;)V
    .locals 7
    .parameter "downloadConnection"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->verifyResponseCodeAndUrl(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 483
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v5, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v4, v5}, Lcom/google/android/speech/network/PairHttpConnection;->setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;
    invoke-static {v4}, Lcom/google/android/speech/network/PairHttpConnection;->access$400(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;

    move-result-object v4

    new-instance v5, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v6, "[Download] Bad response or url"

    invoke-direct {v5, v6}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    .line 488
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 533
    :goto_0
    return-void

    .line 493
    :cond_1
    const/4 v1, 0x0

    .line 495
    .local v1, input:Lcom/google/android/speech/message/S3ResponseStream;
    :try_start_0
    new-instance v2, Lcom/google/android/speech/message/S3ResponseStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/speech/message/S3ResponseStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    .end local v1           #input:Lcom/google/android/speech/message/S3ResponseStream;
    .local v2, input:Lcom/google/android/speech/message/S3ResponseStream;
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    if-eqz v4, :cond_2

    .line 498
    invoke-virtual {v2}, Lcom/google/android/speech/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v3

    .line 503
    .local v3, response:Lcom/google/speech/s3/S3$S3Response;
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v5, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v4, v5}, Lcom/google/android/speech/network/PairHttpConnection;->setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 504
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;
    invoke-static {v4}, Lcom/google/android/speech/network/PairHttpConnection;->access$400(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;

    move-result-object v4

    new-instance v5, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v6, "State error while reading."

    invoke-direct {v5, v6}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    .end local v3           #response:Lcom/google/speech/s3/S3$S3Response;
    :cond_2
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 531
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v2

    .line 532
    .end local v2           #input:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v1       #input:Lcom/google/android/speech/message/S3ResponseStream;
    goto :goto_0

    .line 513
    .end local v1           #input:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v2       #input:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v3       #response:Lcom/google/speech/s3/S3$S3Response;
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 515
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    .line 518
    :cond_5
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;
    invoke-static {v4}, Lcom/google/android/speech/network/PairHttpConnection;->access$400(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/speech/callback/Callback;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 522
    .end local v3           #response:Lcom/google/speech/s3/S3$S3Response;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 523
    .end local v2           #input:Lcom/google/android/speech/message/S3ResponseStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #input:Lcom/google/android/speech/message/S3ResponseStream;
    :goto_2
    :try_start_3
    iget-boolean v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    if-eqz v4, :cond_6

    .line 524
    const-string v4, "PairHttpConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Download] exception - exit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v5, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v4, v5}, Lcom/google/android/speech/network/PairHttpConnection;->setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 526
    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;
    invoke-static {v4}, Lcom/google/android/speech/network/PairHttpConnection;->access$400(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;

    move-result-object v4

    new-instance v5, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v6, "Error while reading"

    invoke-direct {v5, v6, v0}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    :cond_6
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 531
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 530
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 531
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v4

    .line 530
    .end local v1           #input:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v2       #input:Lcom/google/android/speech/message/S3ResponseStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #input:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v1       #input:Lcom/google/android/speech/message/S3ResponseStream;
    goto :goto_3

    .line 522
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private verifyResponseCodeAndUrl(Ljava/net/HttpURLConnection;)Z
    .locals 6
    .parameter "downloadConnection"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v1, -0x1

    .line 457
    .local v1, responseCode:I
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 463
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    .line 464
    const-string v3, "PairHttpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Download] response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return v2

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "PairHttpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Download] Error opening connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_0
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mDownUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    const-string v3, "PairHttpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Download] redirect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    .line 417
    invoke-virtual {p0}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->interrupt()V

    .line 418
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, downloadConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;
    invoke-static {v2}, Lcom/google/android/speech/network/PairHttpConnection;->access$200(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/network/ConnectionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    invoke-static {v3}, Lcom/google/android/speech/network/PairHttpConnection;->access$100(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mDownUrl:Ljava/net/URL;

    invoke-interface {v2, v3, v4}, Lcom/google/android/speech/network/ConnectionFactory;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 429
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    invoke-static {v2}, Lcom/google/android/speech/network/PairHttpConnection;->access$100(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/speech/network/IoUtils;->addHttpHeaders(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 430
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    #getter for: Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    invoke-static {v3}, Lcom/google/android/speech/network/PairHttpConnection;->access$100(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v3

    #calls: Lcom/google/android/speech/network/PairHttpConnection;->maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    invoke-static {v2, v0, v3}, Lcom/google/android/speech/network/PairHttpConnection;->access$300(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 431
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 433
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 451
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->runDownloadLoop(Ljava/net/HttpURLConnection;)V

    .line 452
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, ioe:Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 436
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/PairHttpConnection;->setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    .line 440
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2
.end method

.method public waitForConnection()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    return v1

    :cond_1
    move v1, v2

    .line 398
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/InterruptedException;
    iput-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->mRunning:Z

    goto :goto_1
.end method
