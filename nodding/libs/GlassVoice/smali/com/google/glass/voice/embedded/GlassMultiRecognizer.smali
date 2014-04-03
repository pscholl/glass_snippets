.class public Lcom/google/glass/voice/embedded/GlassMultiRecognizer;
.super Lcom/google/speech/recognizer/MultiRecognizer;
.source "GlassMultiRecognizer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 11
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;-><init>()V

    return-void
.end method
