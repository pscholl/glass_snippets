.class public Lcom/google/android/speech/message/S3ResponseBuilder;
.super Ljava/lang/Object;
.source "S3ResponseBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDone()Lcom/google/speech/s3/S3$S3Response;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public static createInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 2
    .parameter "recognitionEvent"

    .prologue
    .line 19
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->setRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Response;->setRecognizerEventExtension(Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public static createWithRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 2
    .parameter "event"

    .prologue
    .line 26
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->setRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Response;->setRecognizerEventExtension(Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method
