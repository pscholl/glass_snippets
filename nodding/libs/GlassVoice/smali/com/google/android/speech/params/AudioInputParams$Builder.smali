.class public Lcom/google/android/speech/params/AudioInputParams$Builder;
.super Ljava/lang/Object;
.source "AudioInputParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/AudioInputParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEncoding:I

.field private mHeadsetEnabled:Z

.field private mNoiseSuppressionEnabled:Z

.field private mPlayBeepEnabled:Z

.field private mSamplingRateHz:I

.field private mStoreCompleteAudio:Z

.field private mStreamRewindTimeUsec:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mHeadsetEnabled:Z

    .line 89
    iput-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mNoiseSuppressionEnabled:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mPlayBeepEnabled:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mStoreCompleteAudio:Z

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mEncoding:I

    .line 93
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mSamplingRateHz:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mStreamRewindTimeUsec:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/speech/params/AudioInputParams;
    .locals 10

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams;

    iget-boolean v1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mHeadsetEnabled:Z

    iget-boolean v2, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mNoiseSuppressionEnabled:Z

    iget-boolean v3, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mPlayBeepEnabled:Z

    iget-boolean v4, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mStoreCompleteAudio:Z

    iget v5, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mEncoding:I

    iget v6, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mSamplingRateHz:I

    iget-wide v7, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mStreamRewindTimeUsec:J

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/speech/params/AudioInputParams;-><init>(ZZZZIIJLcom/google/android/speech/params/AudioInputParams$1;)V

    return-object v0
.end method

.method public setEncoding(I)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "encoding"

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mEncoding:I

    .line 129
    return-object p0
.end method

.method public setHeadsetEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "headsetEnabled"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mHeadsetEnabled:Z

    .line 109
    return-object p0
.end method

.method public setNoiseSuppressionEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "noiseSuppressionEnabled"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mNoiseSuppressionEnabled:Z

    .line 114
    return-object p0
.end method

.method public setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "playBeepEnabled"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mPlayBeepEnabled:Z

    .line 119
    return-object p0
.end method

.method public setSamplingRate(I)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "samplingRateHz"

    .prologue
    .line 133
    iput p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mSamplingRateHz:I

    .line 134
    return-object p0
.end method

.method public setStoreCompleteAudio(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "storeCompleteAudio"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mStoreCompleteAudio:Z

    .line 124
    return-object p0
.end method

.method public setStreamRewindTimeUsec(J)Lcom/google/android/speech/params/AudioInputParams$Builder;
    .locals 0
    .parameter "streamRewindTimeUsec"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/google/android/speech/params/AudioInputParams$Builder;->mStreamRewindTimeUsec:J

    .line 140
    return-object p0
.end method
