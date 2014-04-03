.class public Lcom/google/android/speech/audio/AudioSource;
.super Ljava/lang/Object;
.source "AudioSource.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioSource$CaptureThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_SIBLINGS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AudioSource"


# instance fields
.field private mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

.field private mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field private final mMaxBuffers:I

.field private final mMinBuffers:I

.field private final mReadSize:I

.field private final mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

.field private mTee:Lcom/google/android/speech/audio/Tee;


# direct methods
.method public constructor <init>(IIILcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/SpeechLevelSource;)V
    .locals 1
    .parameter "readSize"
    .parameter "minBuffers"
    .parameter "maxBuffers"
    .parameter "inputStreamFactory"
    .parameter "speechLevelSource"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput p1, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    .line 53
    iput p2, p0, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    .line 54
    iput p3, p0, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    .line 55
    iput-object p4, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 56
    new-instance v0, Lcom/google/android/speech/audio/SpeechLevelGenerator;

    invoke-direct {v0, p5}, Lcom/google/android/speech/audio/SpeechLevelGenerator;-><init>(Lcom/google/android/speech/SpeechLevelSource;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/audio/AudioSource;)V
    .locals 1
    .parameter "oldAudioSource"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    monitor-enter p1

    .line 66
    :try_start_0
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    .line 67
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    .line 68
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    .line 69
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 70
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    .line 71
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    .line 72
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 77
    monitor-exit p1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stopped"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/google/android/speech/audio/Tee;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v1}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    iget v3, p0, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    iget v4, p0, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    const/16 v5, 0x10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/Tee;-><init>(Ljava/io/InputStream;IIII)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    .line 89
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/Tee;->getLeader()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->setInputStream(Ljava/io/InputStream;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->start()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/Tee;->split()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public setStartTime(J)V
    .locals 6
    .parameter "startTimeUsec"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-wide/16 v2, 0x10

    mul-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 156
    .local v0, delegatePos:J
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/speech/audio/Tee;->setStartAtDelegatePos(J)V

    .line 157
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioSource;->stopListening()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 106
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iget v1, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    iget-object v2, p0, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;-><init>(ILcom/google/android/speech/audio/SpeechLevelGenerator;Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 109
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/Tee;->getLeader()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->setInputStream(Ljava/io/InputStream;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 3

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->closeLeader()V

    .line 130
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_1
    monitor-exit p0

    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "AudioSource"

    const-string v2, "Interrupted in #stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
