.class public Lcom/google/android/speech/RecognitionResponseWrapper;
.super Ljava/lang/Object;
.source "RecognitionResponseWrapper.java"

# interfaces
.implements Lcom/google/android/speech/callback/Callback;


# annotations
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
.field final mCallback:Lcom/google/android/speech/callback/Callback;
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

.field final mEngine:I


# direct methods
.method public constructor <init>(Lcom/google/android/speech/callback/Callback;I)V
    .locals 0
    .parameter
    .parameter "engine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/android/speech/RecognitionResponse;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/speech/RecognitionResponseWrapper;->mCallback:Lcom/google/android/speech/callback/Callback;

    .line 21
    iput p2, p0, Lcom/google/android/speech/RecognitionResponseWrapper;->mEngine:I

    .line 22
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/speech/RecognitionResponseWrapper;->mEngine:I

    invoke-virtual {p1, v0}, Lcom/google/android/speech/exception/RecognizeException;->setEngine(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/speech/RecognitionResponseWrapper;->mCallback:Lcom/google/android/speech/callback/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/google/android/speech/exception/RecognizeException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognitionResponseWrapper;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method public onResult(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/speech/RecognitionResponseWrapper;->mCallback:Lcom/google/android/speech/callback/Callback;

    iget v1, p0, Lcom/google/android/speech/RecognitionResponseWrapper;->mEngine:I

    invoke-static {p1, v1}, Lcom/google/android/speech/RecognitionResponse;->createRecognitionResponse(Lcom/google/speech/s3/S3$S3Response;I)Lcom/google/android/speech/RecognitionResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/Callback;->onResult(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Lcom/google/speech/s3/S3$S3Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognitionResponseWrapper;->onResult(Lcom/google/speech/s3/S3$S3Response;)V

    return-void
.end method
