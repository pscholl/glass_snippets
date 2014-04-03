.class public Lcom/google/android/speech/audio/Tee;
.super Ljava/lang/Object;
.source "Tee.java"


# annotations
.annotation runtime Lcom/google/android/searchcommon/util/ProguardMustNotDelete;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;,
        Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LEADER_ID:I = 0x0

.field private static final READ_POSITION_CLOSED:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "Tee"


# instance fields
.field private mBasePos:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mBuffer:[B

.field private mBufferBegin:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mBufferEnd:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDelegate:Ljava/io/InputStream;

.field private mEof:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mException:Ljava/io/IOException;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mKeepSize:I

.field private final mLeader:Ljava/io/InputStream;

.field private final mReadPositions:[I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mReadSize:I

.field private mStartMark:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IIII)V
    .locals 3
    .parameter "delegate"
    .parameter "readSizeBytes"
    .parameter "minBuffers"
    .parameter "maxBuffers"
    .parameter "maxSiblings"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-ge p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 122
    iput-object p1, p0, Lcom/google/android/speech/audio/Tee;->mDelegate:Ljava/io/InputStream;

    .line 123
    mul-int v0, p4, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    .line 124
    mul-int v0, p3, p2

    iput v0, p0, Lcom/google/android/speech/audio/Tee;->mKeepSize:I

    .line 125
    iput v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    .line 126
    iput v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 127
    iput-boolean v1, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    .line 128
    iput p2, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    .line 129
    new-array v0, p5, [I

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    .line 130
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 132
    new-instance v0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;

    invoke-direct {v0, p0}, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;-><init>(Lcom/google/android/speech/audio/Tee;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee;->mLeader:Ljava/io/InputStream;

    .line 133
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aput v1, v0, v1

    .line 134
    return-void

    :cond_0
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method private doRead(I[BII)V
    .locals 7
    .parameter "readPos"
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    .line 350
    .local v1, src:[B
    array-length v2, v1

    .line 351
    .local v2, srcLength:I
    add-int v0, p1, p4

    .line 352
    .local v0, readEnd:I
    if-gt v0, v2, :cond_0

    .line 353
    invoke-static {v1, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_0
    array-length v5, v1

    if-lt p1, v5, :cond_1

    .line 356
    sub-int v5, p1, v2

    invoke-static {v1, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 359
    :cond_1
    sub-int v3, v2, p1

    .line 360
    .local v3, toCopy1:I
    sub-int v4, p4, v3

    .line 361
    .local v4, toCopy2:I
    invoke-static {v1, p1, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    const/4 v5, 0x0

    add-int v6, p3, v3

    invoke-static {v1, v5, p2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private findSlowestReaderLocked()I
    .locals 4

    .prologue
    .line 437
    const v1, 0x7fffffff

    .line 439
    .local v1, minimum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 440
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v2, v3, v0

    .line 441
    .local v2, position:I
    if-ge v2, v1, :cond_0

    .line 442
    move v1, v2

    .line 439
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v2           #position:I
    :cond_1
    iget v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    if-gt v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 447
    return v1

    .line 446
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private readFromDelegate(I)I
    .locals 6
    .parameter "readPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    array-length v0, v3

    .line 370
    .local v0, bufLength:I
    if-ge p1, v0, :cond_0

    move v1, p1

    .line 371
    .local v1, fillPos:I
    :goto_0
    sub-int v3, v0, v1

    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/audio/Tee;->mDelegate:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    iget v5, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    invoke-static {v3, v4, v1, v5}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 370
    .end local v1           #fillPos:I
    :cond_0
    sub-int v1, p1, v0

    goto :goto_0

    .line 371
    .restart local v1       #fillPos:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v2

    .line 377
    .local v2, ioe:Ljava/io/IOException;
    monitor-enter p0

    .line 378
    :try_start_1
    iput-object v2, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 380
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    throw v2

    .line 380
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private rewindBuffersLocked()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v7, 0x7fffffff

    const/4 v5, 0x0

    .line 403
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v4, v4, v5

    iget v6, p0, Lcom/google/android/speech/audio/Tee;->mKeepSize:I

    if-lt v4, v6, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 404
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v4, v4, v5

    iget v5, p0, Lcom/google/android/speech/audio/Tee;->mKeepSize:I

    sub-int v2, v4, v5

    .line 405
    .local v2, preservePos:I
    invoke-direct {p0}, Lcom/google/android/speech/audio/Tee;->findSlowestReaderLocked()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 406
    .local v3, readPosition:I
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    array-length v0, v4

    .line 409
    .local v0, bufLength:I
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    iget v5, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    if-gt v4, v0, :cond_6

    .line 411
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    if-ge v4, v3, :cond_0

    .line 412
    iput v7, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    .line 414
    :cond_0
    if-lt v3, v0, :cond_5

    .line 416
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mBasePos:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/speech/audio/Tee;->mBasePos:I

    .line 417
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    if-eq v4, v7, :cond_1

    .line 418
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    .line 421
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v4, v4

    if-eq v1, v4, :cond_4

    .line 422
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v4, v4, v1

    if-eq v4, v7, :cond_2

    .line 423
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v5, v4, v1

    sub-int/2addr v5, v0

    aput v5, v4, v1

    .line 421
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #bufLength:I
    .end local v1           #i:I
    .end local v2           #preservePos:I
    .end local v3           #readPosition:I
    :cond_3
    move v4, v5

    .line 403
    goto :goto_0

    .line 426
    .restart local v0       #bufLength:I
    .restart local v1       #i:I
    .restart local v2       #preservePos:I
    .restart local v3       #readPosition:I
    :cond_4
    sub-int/2addr v3, v0

    .line 427
    iget v4, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 429
    .end local v1           #i:I
    :cond_5
    iput v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    .line 434
    return-void

    .line 431
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Buffer overflow, no available space."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    .line 432
    iget-object v4, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    throw v4
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee;->mDelegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    monitor-enter p0

    .line 393
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, ignored:Ljava/io/IOException;
    const-string v1, "Tee"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException closing audio track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v0           #ignored:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLeader()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mLeader:Ljava/io/InputStream;

    return-object v0
.end method

.method readLeader([BII)I
    .locals 12
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 185
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mBuffer:[B

    array-length v2, v9

    .line 186
    .local v2, bufLength:I
    const/4 v8, 0x0

    .line 187
    .local v8, totalCount:I
    const/4 v4, 0x0

    .line 189
    .local v4, lastCount:I
    const/4 v0, -0x1

    .line 190
    .local v0, NO_DELEGATE_READ:I
    const/4 v5, -0x1

    .line 200
    .local v5, lastDelegateRead:I
    :goto_0
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    if-eqz v9, :cond_0

    .line 203
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    throw v9

    .line 264
    .end local v8           #totalCount:I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 206
    .restart local v8       #totalCount:I
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v10, 0x0

    aget v7, v9, v10

    .line 207
    .local v7, readPos:I
    const v9, 0x7fffffff

    if-ne v7, v9, :cond_2

    .line 209
    if-eq v5, v11, :cond_1

    .line 214
    sub-int/2addr v8, v4

    monitor-exit p0

    .line 255
    .end local v8           #totalCount:I
    :goto_1
    return v8

    .line 216
    .restart local v8       #totalCount:I
    :cond_1
    monitor-exit p0

    goto :goto_1

    .line 220
    :cond_2
    iget v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 221
    .local v3, bufferEnd:I
    if-eq v5, v11, :cond_4

    .line 222
    add-int/2addr v3, v5

    .line 223
    iput v3, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 225
    iget v9, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    if-ge v5, v9, :cond_3

    .line 232
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    .line 234
    monitor-exit p0

    goto :goto_1

    .line 236
    :cond_3
    const/4 v5, -0x1

    .line 240
    :cond_4
    if-eqz v4, :cond_5

    .line 241
    add-int/2addr v7, v4

    .line 242
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v10, 0x0

    aput v7, v9, v10

    .line 243
    const/4 v4, 0x0

    .line 246
    :cond_5
    if-ne v8, p3, :cond_6

    .line 248
    monitor-exit p0

    move v8, p3

    goto :goto_1

    .line 251
    :cond_6
    if-ne v3, v7, :cond_8

    .line 252
    iget-boolean v9, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    if-eqz v9, :cond_7

    .line 255
    monitor-exit p0

    goto :goto_1

    .line 258
    :cond_7
    iget v9, p0, Lcom/google/android/speech/audio/Tee;->mReadSize:I

    add-int/2addr v9, v3

    iget v10, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    sub-int/2addr v9, v10

    if-le v9, v2, :cond_8

    .line 259
    invoke-direct {p0}, Lcom/google/android/speech/audio/Tee;->rewindBuffersLocked()V

    .line 260
    iget-object v9, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const/4 v10, 0x0

    aget v7, v9, v10

    .line 261
    move v3, v7

    .line 264
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-ne v3, v7, :cond_9

    .line 267
    invoke-direct {p0, v3}, Lcom/google/android/speech/audio/Tee;->readFromDelegate(I)I

    move-result v5

    .line 268
    add-int/2addr v3, v5

    .line 270
    :cond_9
    sub-int v1, v3, v7

    .line 271
    .local v1, avail:I
    sub-int v6, p3, v8

    .line 272
    .local v6, need:I
    if-ge v1, v6, :cond_a

    move v4, v1

    .line 273
    :goto_2
    add-int v9, p2, v8

    invoke-direct {p0, v7, p1, v9, v4}, Lcom/google/android/speech/audio/Tee;->doRead(I[BII)V

    .line 274
    add-int/2addr v8, v4

    .line 275
    goto :goto_0

    :cond_a
    move v4, v6

    .line 272
    goto :goto_2
.end method

.method readSecondary(I[BII)I
    .locals 10
    .parameter "streamId"
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v6, 0x0

    .line 280
    .local v6, totalCount:I
    const/4 v3, 0x0

    .line 290
    .local v3, lastCount:I
    :goto_0
    monitor-enter p0

    .line 293
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    if-eqz v7, :cond_0

    .line 295
    iget-object v7, p0, Lcom/google/android/speech/audio/Tee;->mException:Ljava/io/IOException;

    throw v7

    .line 338
    .end local p4
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 298
    .restart local p4
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v5, v7, p1

    .line 299
    .local v5, readPos:I
    const v7, 0x7fffffff

    if-ne v5, v7, :cond_1

    .line 301
    const/4 p4, 0x0

    monitor-exit p0

    .line 325
    .end local p4
    :goto_2
    return p4

    .line 305
    .restart local p4
    :cond_1
    if-eqz v3, :cond_2

    .line 306
    add-int/2addr v5, v3

    .line 307
    iget-object v7, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aput v5, v7, p1

    .line 308
    const/4 v3, 0x0

    .line 311
    :cond_2
    if-ne v6, p4, :cond_3

    .line 313
    monitor-exit p0

    goto :goto_2

    .line 316
    :cond_3
    iget v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    .line 317
    .local v1, bufferEnd:I
    if-eq v1, v5, :cond_4

    .line 338
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    sub-int v0, v1, v5

    .line 341
    .local v0, avail:I
    sub-int v4, p4, v6

    .line 342
    .local v4, need:I
    if-ge v0, v4, :cond_6

    move v3, v0

    .line 343
    :goto_3
    add-int v7, p3, v6

    invoke-direct {p0, v5, p2, v7, v3}, Lcom/google/android/speech/audio/Tee;->doRead(I[BII)V

    .line 344
    add-int/2addr v6, v3

    .line 345
    goto :goto_0

    .line 322
    .end local v0           #avail:I
    .end local v4           #need:I
    :cond_4
    :try_start_2
    iget-boolean v7, p0, Lcom/google/android/speech/audio/Tee;->mEof:Z

    if-eqz v7, :cond_5

    .line 325
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p4, v6

    goto :goto_2

    .line 331
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 332
    :catch_0
    move-exception v2

    .line 334
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 335
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Interrupted waiting for buffers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2           #ie:Ljava/lang/InterruptedException;
    .restart local v0       #avail:I
    .restart local v4       #need:I
    :cond_6
    move v3, v4

    .line 342
    goto :goto_3
.end method

.method declared-synchronized remove(I)V
    .locals 2
    .parameter "reader"

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    const v1, 0x7fffffff

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartAtDelegatePos(J)V
    .locals 2
    .parameter "delegatePos"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/speech/audio/Tee;->mBasePos:I

    iget v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferBegin:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 152
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/speech/audio/Tee;->mBasePos:I

    iget v1, p0, Lcom/google/android/speech/audio/Tee;->mBufferEnd:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 155
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/google/android/speech/audio/Tee;->mBasePos:I

    int-to-long v0, v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized split()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0x7fffffff

    .line 167
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    if-ne v2, v3, :cond_0

    .line 168
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No splits possible, buffers rewound."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 172
    .local v0, i:I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v2, v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    aget v2, v2, v0

    if-eq v2, v3, :cond_1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 176
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No splits possible, too many siblings."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_2
    new-instance v1, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;-><init>(Lcom/google/android/speech/audio/Tee;I)V

    .line 180
    .local v1, tis:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/android/speech/audio/Tee;->mReadPositions:[I

    iget v3, p0, Lcom/google/android/speech/audio/Tee;->mStartMark:I

    aput v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-object v1
.end method
