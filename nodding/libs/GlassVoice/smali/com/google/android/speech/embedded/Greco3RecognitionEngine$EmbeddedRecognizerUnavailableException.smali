.class public final Lcom/google/android/speech/embedded/Greco3RecognitionEngine$EmbeddedRecognizerUnavailableException;
.super Lcom/google/android/speech/exception/EmbeddedRecognizeException;
.source "Greco3RecognitionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/Greco3RecognitionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddedRecognizerUnavailableException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 215
    const-string v0, "Embedded recognizer unavailable"

    invoke-direct {p0, v0}, Lcom/google/android/speech/exception/EmbeddedRecognizeException;-><init>(Ljava/lang/String;)V

    .line 216
    return-void
.end method
