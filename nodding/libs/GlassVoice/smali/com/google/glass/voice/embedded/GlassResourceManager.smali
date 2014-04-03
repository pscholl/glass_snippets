.class public Lcom/google/glass/voice/embedded/GlassResourceManager;
.super Lcom/google/speech/recognizer/ResourceManager;
.source "GlassResourceManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 12
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/speech/recognizer/ResourceManager;-><init>()V

    return-void
.end method
