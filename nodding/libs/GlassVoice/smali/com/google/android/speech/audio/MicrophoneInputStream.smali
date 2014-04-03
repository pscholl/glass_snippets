.class public Lcom/google/android/speech/audio/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x6

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBufferSize:I

.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNoiseSuppressionEnabled:Z

.field private mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSampleRate:I

.field private final mStartEventSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/media/MediaSyncEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStarted:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "sampleRate"
    .parameter "minBufferSize"

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/speech/audio/MicrophoneInputStream;-><init>(IIZLcom/google/common/base/Supplier;)V

    .line 47
    return-void
.end method

.method public constructor <init>(IIZLcom/google/common/base/Supplier;)V
    .locals 2
    .parameter "sampleRate"
    .end parameter
    .parameter "minBufferSize"
    .end parameter
    .parameter "noiseSuppressionEnabled"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/media/MediaSyncEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p4, startEventSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Landroid/media/MediaSyncEvent;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStarted:Z

    .line 60
    iput p1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mSampleRate:I

    .line 61
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mBufferSize:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->createAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 65
    iput-boolean p3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressionEnabled:Z

    .line 66
    iput-object p4, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStartEventSupplier:Lcom/google/common/base/Supplier;

    .line 67
    return-void
.end method

.method private ensureStartedLocked()Landroid/media/AudioRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 85
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->checkHoldsLock(Ljava/lang/Object;)V

    .line 87
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ljava/io/IOException;

    const-string v4, "AudioRecord failed to initialize."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStarted:Z

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 124
    :goto_0
    return-object v3

    .line 96
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressionEnabled:Z

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 98
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->getStartEvent()Landroid/media/MediaSyncEvent;

    move-result-object v2

    .line 111
    .local v2, syncEvent:Landroid/media/MediaSyncEvent;
    if-eqz v2, :cond_3

    .line 112
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3, v2}, Landroid/media/AudioRecord;->startRecording(Landroid/media/MediaSyncEvent;)V

    .line 117
    :goto_2
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    .line 118
    .local v1, recordingState:I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 119
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t start recording, state is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v1           #recordingState:I
    .end local v2           #syncEvent:Landroid/media/MediaSyncEvent;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    goto :goto_1

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #syncEvent:Landroid/media/MediaSyncEvent;
    :cond_3
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_2

    .line 122
    .restart local v1       #recordingState:I
    :cond_4
    iput-boolean v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStarted:Z

    .line 124
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    goto :goto_0
.end method

.method private getStartEvent()Landroid/media/MediaSyncEvent;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStartEventSupplier:Lcom/google/common/base/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStartEventSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSyncEvent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    if-nez v0, :cond_1

    .line 196
    const-string v0, "MicrophoneInputStream"

    const-string v2, "mic_close"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 200
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    .line 207
    :cond_1
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createAudioRecord()Landroid/media/AudioRecord;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 72
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mSampleRate:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 75
    .local v0, ar:Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 77
    const/4 v0, 0x0

    .line 80
    .end local v0           #ar:Landroid/media/AudioRecord;
    :cond_0
    return-object v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Single-byte read not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/speech/audio/MicrophoneInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 155
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 156
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    if-eqz v4, :cond_1

    .line 157
    monitor-exit v3

    move v1, v2

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->ensureStartedLocked()Landroid/media/AudioRecord;

    move-result-object v0

    .line 160
    .local v0, record:Landroid/media/AudioRecord;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 167
    .local v1, rtn:I
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 168
    :try_start_1
    iget-boolean v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    if-eqz v4, :cond_2

    .line 169
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v2

    goto :goto_0

    .line 160
    .end local v0           #record:Landroid/media/AudioRecord;
    .end local v1           #rtn:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 171
    .restart local v0       #record:Landroid/media/AudioRecord;
    .restart local v1       #rtn:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    if-ge v1, v2, :cond_0

    .line 174
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 175
    new-instance v2, Ljava/io/IOException;

    const-string v3, "not open"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 178
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 179
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad offset/length arguments for buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
