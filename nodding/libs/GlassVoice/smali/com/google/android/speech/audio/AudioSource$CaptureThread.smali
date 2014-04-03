.class Lcom/google/android/speech/audio/AudioSource$CaptureThread;
.super Ljava/lang/Thread;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureThread"
.end annotation


# instance fields
.field private final mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

.field private mLeader:Ljava/io/InputStream;

.field private final mReadSize:I

.field private final mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;


# direct methods
.method public constructor <init>(ILcom/google/android/speech/audio/SpeechLevelGenerator;Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 1
    .parameter "readSize"
    .parameter "speechLevelGenerator"
    .parameter "eventListener"

    .prologue
    .line 177
    const-string v0, "MicrophoneReader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 178
    iput p1, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mReadSize:I

    .line 179
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    .line 180
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 181
    return-void
.end method


# virtual methods
.method public closeLeader()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 189
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 193
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mReadSize:I

    new-array v0, v3, [B

    .line 196
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 197
    .local v2, read:I
    const/4 v1, 0x1

    .line 198
    .local v1, first:Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onReadyForSpeech(FF)V

    .line 202
    const/4 v1, 0x0

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/speech/audio/SpeechLevelGenerator;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v3

    .line 213
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    :goto_1
    return-void

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "leader"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    .line 185
    return-void
.end method
