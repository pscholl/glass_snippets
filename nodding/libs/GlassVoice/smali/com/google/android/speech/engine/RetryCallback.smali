.class public Lcom/google/android/speech/engine/RetryCallback;
.super Ljava/lang/Object;
.source "RetryCallback.java"

# interfaces
.implements Lcom/google/android/speech/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/engine/RetryCallback$Retrier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/speech/callback/Callback",
        "<",
        "Lcom/google/speech/s3/S3$S3Response;",
        "Lcom/google/android/speech/exception/RecognizeException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/speech/callback/Callback;
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

.field private mInvalid:Z

.field private final mResender:Lcom/google/android/speech/engine/RetryCallback$Retrier;

.field private final mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;


# direct methods
.method constructor <init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/engine/RetryPolicy;Lcom/google/android/speech/engine/RetryCallback$Retrier;)V
    .locals 1
    .parameter
    .parameter "retryPolicy"
    .parameter "resender"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/engine/RetryPolicy;",
            "Lcom/google/android/speech/engine/RetryCallback$Retrier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/android/speech/RecognitionResponse;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/Callback;

    .line 32
    iput-object p2, p0, Lcom/google/android/speech/engine/RetryCallback;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    .line 33
    iput-object p3, p0, Lcom/google/android/speech/engine/RetryCallback;->mResender:Lcom/google/android/speech/engine/RetryCallback$Retrier;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z

    .line 35
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z

    .line 72
    return-void
.end method

.method public declared-synchronized onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/android/speech/exception/RecognizeException;->setEngine(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v0, p1}, Lcom/google/android/speech/engine/RetryPolicy;->canRetry(Lcom/google/android/speech/exception/RecognizeException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/speech/engine/RetryCallback;->invalidate()V

    .line 62
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mResender:Lcom/google/android/speech/engine/RetryCallback$Retrier;

    invoke-interface {v0, p1}, Lcom/google/android/speech/engine/RetryCallback$Retrier;->scheduleRetry(Lcom/google/android/speech/exception/RecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/google/android/speech/exception/RecognizeException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/engine/RetryCallback;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method public declared-synchronized onResult(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/speech/engine/RetryCallback;->mInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/speech/engine/RetryCallback;->mRetryPolicy:Lcom/google/android/speech/engine/RetryPolicy;

    invoke-interface {v1, p1}, Lcom/google/android/speech/engine/RetryPolicy;->equivalentToError(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/speech/exception/RecognizeException;

    move-result-object v0

    .line 44
    .local v0, re:Lcom/google/android/speech/exception/RecognizeException;
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/speech/engine/RetryCallback;->onError(Lcom/google/android/speech/exception/RecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    .end local v0           #re:Lcom/google/android/speech/exception/RecognizeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 49
    .restart local v0       #re:Lcom/google/android/speech/exception/RecognizeException;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/speech/engine/RetryCallback;->mCallback:Lcom/google/android/speech/callback/Callback;

    invoke-static {p1}, Lcom/google/android/speech/RecognitionResponse;->createNetworkResponse(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/speech/RecognitionResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/Callback;->onResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lcom/google/speech/s3/S3$S3Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/engine/RetryCallback;->onResult(Lcom/google/speech/s3/S3$S3Response;)V

    return-void
.end method
