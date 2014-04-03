.class public Lcom/google/android/speech/exception/NetworkRecognizeException;
.super Lcom/google/android/speech/exception/RecognizeException;
.source "NetworkRecognizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x726b3e1a9fb9a470L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/speech/exception/RecognizeException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

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
