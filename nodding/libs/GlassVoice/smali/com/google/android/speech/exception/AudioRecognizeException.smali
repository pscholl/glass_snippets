.class public Lcom/google/android/speech/exception/AudioRecognizeException;
.super Lcom/google/android/speech/exception/RecognizeException;
.source "AudioRecognizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x4b100488bff53ce5L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "description"
    .parameter "cause"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/speech/exception/RecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    return-void
.end method
