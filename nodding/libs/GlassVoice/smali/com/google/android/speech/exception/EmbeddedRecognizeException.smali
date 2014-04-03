.class public Lcom/google/android/speech/exception/EmbeddedRecognizeException;
.super Lcom/google/android/speech/exception/RecognizeException;
.source "EmbeddedRecognizeException.java"


# static fields
.field private static final serialVersionUID:J = -0x134d07fb4947f61bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/speech/exception/RecognizeException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "description"
    .parameter "cause"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/speech/exception/RecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method
