.class public Lcom/google/android/speech/params/AudioInputParams;
.super Ljava/lang/Object;
.source "AudioInputParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/params/AudioInputParams$1;,
        Lcom/google/android/speech/params/AudioInputParams$Builder;
    }
.end annotation


# instance fields
.field private final mEncoding:I

.field private final mHeadsetEnabled:Z

.field private final mNoiseSuppressionEnabled:Z

.field private final mPlayBeepEnabled:Z

.field private final mSamplingRateHz:I

.field private final mStoreCompleteAudio:Z

.field private final mStreamRewindTimeUsec:J


# direct methods
.method private constructor <init>(ZZZZIIJ)V
    .locals 0
    .parameter "headsetEnabled"
    .parameter "noiseSuppressionEnabled"
    .parameter "playBeepEnabled"
    .parameter "storeCompleteAudio"
    .parameter "encoding"
    .parameter "samplingRateHz"
    .parameter "streamRewindTimeUsec"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/google/android/speech/params/AudioInputParams;->mHeadsetEnabled:Z

    .line 45
    iput-boolean p2, p0, Lcom/google/android/speech/params/AudioInputParams;->mNoiseSuppressionEnabled:Z

    .line 46
    iput-boolean p3, p0, Lcom/google/android/speech/params/AudioInputParams;->mPlayBeepEnabled:Z

    .line 47
    iput-boolean p4, p0, Lcom/google/android/speech/params/AudioInputParams;->mStoreCompleteAudio:Z

    .line 48
    iput p5, p0, Lcom/google/android/speech/params/AudioInputParams;->mEncoding:I

    .line 49
    iput p6, p0, Lcom/google/android/speech/params/AudioInputParams;->mSamplingRateHz:I

    .line 50
    iput-wide p7, p0, Lcom/google/android/speech/params/AudioInputParams;->mStreamRewindTimeUsec:J

    .line 51
    return-void
.end method

.method synthetic constructor <init>(ZZZZIIJLcom/google/android/speech/params/AudioInputParams$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p8}, Lcom/google/android/speech/params/AudioInputParams;-><init>(ZZZZIIJ)V

    return-void
.end method


# virtual methods
.method public getEncoding()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mEncoding:I

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mSamplingRateHz:I

    return v0
.end method

.method public getStreamRewindTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mStreamRewindTimeUsec:J

    return-wide v0
.end method

.method public hasStreamRewindTime()Z
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mStreamRewindTimeUsec:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadsetEnabled()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mHeadsetEnabled:Z

    return v0
.end method

.method public isNoiseSuppressionEnabled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mNoiseSuppressionEnabled:Z

    return v0
.end method

.method public isPlayBeepEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mPlayBeepEnabled:Z

    return v0
.end method

.method public shouldStoreCompleteAudio()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/speech/params/AudioInputParams;->mStoreCompleteAudio:Z

    return v0
.end method
