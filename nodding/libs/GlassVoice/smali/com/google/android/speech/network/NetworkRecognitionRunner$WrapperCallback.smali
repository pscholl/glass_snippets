.class Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;
.super Ljava/lang/Object;
.source "NetworkRecognitionRunner.java"

# interfaces
.implements Lcom/google/android/speech/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/network/NetworkRecognitionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapperCallback"
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
.field private final mDelegate:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInvalid:Z

.field private final mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;


# direct methods
.method constructor <init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;)V
    .locals 0
    .parameter
    .parameter "networkEventListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/network/NetworkEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mDelegate:Lcom/google/android/speech/callback/Callback;

    .line 263
    iput-object p2, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    .line 264
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mInvalid:Z

    .line 268
    return-void
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mInvalid:Z

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mDelegate:Lcom/google/android/speech/callback/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/network/NetworkEventListener;->onError()V

    .line 277
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, Lcom/google/android/speech/exception/RecognizeException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method public onResult(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mInvalid:Z

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mDelegate:Lcom/google/android/speech/callback/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/Callback;->onResult(Ljava/lang/Object;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->mNetworkEventListener:Lcom/google/android/speech/network/NetworkEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/network/NetworkEventListener;->onDataReceived()V

    .line 286
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, Lcom/google/speech/s3/S3$S3Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/network/NetworkRecognitionRunner$WrapperCallback;->onResult(Lcom/google/speech/s3/S3$S3Response;)V

    return-void
.end method
