.class public Lcom/google/android/speech/SpeechLevelSource;
.super Ljava/lang/Object;
.source "SpeechLevelSource.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final USE_GRECO3_SPEECH_LEVELS:Z


# instance fields
.field private volatile mSpeechLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeechLevel()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/speech/SpeechLevelSource;->mSpeechLevel:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/speech/SpeechLevelSource;->mSpeechLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/speech/SpeechLevelSource;->mSpeechLevel:I

    .line 31
    return-void
.end method

.method public setSpeechLevel(I)V
    .locals 1
    .parameter "speechLevel"

    .prologue
    .line 21
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 22
    iput p1, p0, Lcom/google/android/speech/SpeechLevelSource;->mSpeechLevel:I

    .line 23
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
