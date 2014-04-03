.class public Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;
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
    name = "UpResponseThread"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

.field private volatile mRunning:Z

.field private final mS3ResponseStream:Lcom/google/android/speech/message/S3ResponseStream;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mUploadConnection:Ljava/net/HttpURLConnection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/speech/network/PairHttpConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/network/PairHttpConnection;Lcom/google/android/speech/message/S3ResponseStream;Ljava/net/HttpURLConnection;Lcom/google/android/speech/callback/Callback;Lcom/google/speech/s3/S3$S3Response;)V
    .locals 1
    .parameter
    .end parameter
    .parameter "responseStream"
    .end parameter
    .parameter "connection"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "firstResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/message/S3ResponseStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/speech/s3/S3$S3Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p4, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    iput-object p1, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->this$0:Lcom/google/android/speech/network/PairHttpConnection;

    .line 330
    const-string v0, "PairHttpReaderUp"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 331
    iput-object p2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/speech/message/S3ResponseStream;

    .line 332
    iput-object p3, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 333
    iput-object p4, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mCallback:Lcom/google/android/speech/callback/Callback;

    .line 335
    iput-object p5, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mRunning:Z

    .line 337
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mRunning:Z

    .line 342
    invoke-virtual {p0}, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->interrupt()V

    .line 343
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 348
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mRunning:Z

    if-eqz v2, :cond_4

    .line 350
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    if-eqz v2, :cond_3

    .line 351
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    .line 352
    .local v1, response:Lcom/google/speech/s3/S3$S3Response;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mFirstResponse:Lcom/google/speech/s3/S3$S3Response;

    .line 361
    :goto_1
    invoke-virtual {v1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 363
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mRunning:Z

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mCallback:Lcom/google/android/speech/callback/Callback;

    invoke-interface {v2, v1}, Lcom/google/android/speech/callback/Callback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v1           #response:Lcom/google/speech/s3/S3$S3Response;
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mRunning:Z

    if-eqz v2, :cond_2

    .line 371
    const-string v2, "PairHttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Upload] exception - exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mCallback:Lcom/google/android/speech/callback/Callback;

    new-instance v3, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v4, "Error while reading"

    invoke-direct {v3, v4, v0}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/speech/message/S3ResponseStream;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 378
    .end local v0           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 354
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/speech/message/S3ResponseStream;

    invoke-virtual {v2}, Lcom/google/android/speech/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .restart local v1       #response:Lcom/google/speech/s3/S3$S3Response;
    goto :goto_1

    .line 375
    .end local v1           #response:Lcom/google/speech/s3/S3$S3Response;
    :cond_4
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/speech/message/S3ResponseStream;

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 375
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mS3ResponseStream:Lcom/google/android/speech/message/S3ResponseStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 376
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2
.end method
