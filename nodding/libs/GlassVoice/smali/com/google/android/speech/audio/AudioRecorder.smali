.class public Lcom/google/android/speech/audio/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;
    }
.end annotation


# static fields
.field private static final BYTES_PER_MSEC:I = 0x10

.field private static final DBG:Z = false

.field private static final MAX_FLATTENED_BUFFER_SIZE:I = 0xea600

.field private static final MIN_FLATTENED_BUFFER_SIZE:I = 0x27100

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"


# instance fields
.field private mEndPos:I

.field private mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<[B>;"
        }
    .end annotation
.end field

.field private mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

.field private mStartPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;

    .line 53
    return-void
.end method

.method private doStopRecording(Z)V
    .locals 5
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    if-nez v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->requestStop()V

    .line 143
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, lastAudio:[B
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->isGood()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->getBuffer()[B

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->getTotalLength()I

    move-result v2

    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    .line 159
    :cond_2
    :goto_1
    iget v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    iget v3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    if-lt v2, v3, :cond_3

    .line 163
    const/4 v1, 0x0

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0, v1}, Lcom/google/android/speech/audio/AudioRecorder;->getLastAudio([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 167
    iput-object v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;

    .line 168
    iput-object v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    goto :goto_0

    .line 144
    .end local v1           #lastAudio:[B
    :catch_0
    move-exception v0

    .line 146
    .local v0, ie:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 147
    iput-object v4, p0, Lcom/google/android/speech/audio/AudioRecorder;->mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    .line 155
    .end local v0           #ie:Ljava/lang/InterruptedException;
    .restart local v1       #lastAudio:[B
    :cond_4
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->isOverflown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    const v3, 0xea600

    if-gt v2, v3, :cond_2

    .line 157
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->getBuffer()[B

    move-result-object v1

    goto :goto_1
.end method

.method private getLastAudio([B)[B
    .locals 2
    .parameter "lastAudio"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 176
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    iget v1, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public isRecording()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecordingEndTime(J)V
    .locals 5
    .parameter "timeUsec"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 129
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 130
    const-wide/16 v0, 0x10

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    :cond_1
    move v1, v2

    .line 129
    goto :goto_1
.end method

.method public setRecordingStartTime(J)V
    .locals 5
    .parameter "timeUsec"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 116
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 117
    const-wide/16 v0, 0x10

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    .line 118
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1
.end method

.method public startRecording(Ljava/io/InputStream;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 3
    .parameter "in"
    .parameter "readSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p3, futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 68
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioRecorder;->mFutureAudio:Lcom/google/common/util/concurrent/SettableFuture;

    .line 69
    iput v1, p0, Lcom/google/android/speech/audio/AudioRecorder;->mStartPos:I

    .line 70
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mEndPos:I

    .line 71
    new-instance v0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    const v1, 0x27100

    const v2, 0xea600

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;-><init>(IILjava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    .line 73
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder;->mRecordingThread:Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->start()V

    .line 74
    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/speech/audio/AudioRecorder;->doStopRecording(Z)V

    .line 82
    return-void
.end method

.method public waitForRecording()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/speech/audio/AudioRecorder;->doStopRecording(Z)V

    .line 93
    return-void
.end method
