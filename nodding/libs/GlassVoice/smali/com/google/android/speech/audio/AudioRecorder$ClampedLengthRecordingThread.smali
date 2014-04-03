.class Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedLengthRecordingThread"
.end annotation


# static fields
.field private static final ERROR:I = -0x1

.field private static final OVERFLOW:I = -0x2

.field private static final RUNNING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final STOPPING:I = 0x2


# instance fields
.field private mBuf:[B

.field private final mInput:Ljava/io/InputStream;

.field private final mMaxSize:I

.field private final mReadSize:I

.field private mState:I

.field private mTotalLength:I


# direct methods
.method constructor <init>(IILjava/io/InputStream;I)V
    .locals 1
    .parameter "initialSize"
    .parameter "maxSize"
    .parameter "in"
    .parameter "readSize"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 197
    iput p2, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    .line 198
    iput p4, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mReadSize:I

    .line 199
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    .line 200
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 203
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    return-object v0
.end method

.method public getTotalLength()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    return v0
.end method

.method public isGood()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflown()Z
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 211
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->interrupt()V

    .line 213
    :cond_0
    monitor-exit p0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v8, -0x1

    .line 219
    const/4 v5, 0x0

    .line 220
    .local v5, totalLength:I
    const/4 v2, 0x0

    .line 223
    .local v2, lastBytesRead:I
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    if-eq v2, v8, :cond_0

    :try_start_1
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    if-ne v6, v11, :cond_1

    .line 226
    :cond_0
    iput v5, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    .line 227
    const/4 v6, 0x3

    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 228
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 264
    :goto_1
    return-void

    .line 231
    :cond_1
    add-int v6, v5, v2

    :try_start_2
    iget v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    if-le v6, v9, :cond_2

    .line 232
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    .line 233
    const/4 v6, -0x2

    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 234
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 236
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    add-int/2addr v5, v2

    .line 239
    :try_start_4
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    if-ge v5, v6, :cond_4

    .line 241
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mReadSize:I

    add-int/2addr v6, v5

    iget v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 242
    .local v0, expectedTotalLength:I
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    array-length v6, v6

    if-le v0, v6, :cond_3

    .line 243
    mul-int/lit8 v6, v0, 0x2

    iget v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mMaxSize:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v3, v6, [B

    .line 244
    .local v3, newBuf:[B
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iput-object v3, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    .line 248
    .end local v3           #newBuf:[B
    :cond_3
    sub-int v4, v0, v5

    .line 249
    .local v4, readLength:I
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mBuf:[B

    invoke-virtual {v6, v9, v5, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    .line 250
    goto :goto_0

    .line 236
    .end local v0           #expectedTotalLength:I
    .end local v4           #readLength:I
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, ioe:Ljava/io/IOException;
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 257
    :try_start_8
    iput v5, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mTotalLength:I

    .line 258
    iget v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    if-ne v6, v11, :cond_5

    move v6, v7

    :goto_2
    iput v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mState:I

    .line 259
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 261
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 252
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_4
    :try_start_9
    iget-object v6, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    const/4 v9, 0x1

    new-array v9, v9, [B

    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v2

    goto :goto_0

    .restart local v1       #ioe:Ljava/io/IOException;
    :cond_5
    move v6, v8

    .line 258
    goto :goto_2

    .line 259
    :catchall_1
    move-exception v6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 261
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lcom/google/android/speech/audio/AudioRecorder$ClampedLengthRecordingThread;->mInput:Ljava/io/InputStream;

    invoke-static {v7}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
.end method
