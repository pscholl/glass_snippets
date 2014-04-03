.class public Lcom/google/android/speech/audio/AudioEncoderInputStream;
.super Ljava/io/InputStream;
.source "AudioEncoderInputStream.java"


# static fields
.field public static final AAC_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ADTS_HEADER_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioEncoderInputStream"

.field private static final TIMEOUT_USECS:I = 0x2710


# instance fields
.field private final mAdtsHeader:Ljava/nio/ByteBuffer;

.field private final mChannels:I

.field private mCodec:Landroid/media/MediaCodec;

.field private mCodecInputBuffers:[Ljava/nio/ByteBuffer;

.field private mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCurrentOutputBufferIndex:I

.field private final mDataIn:Ljava/nio/ByteBuffer;

.field private mEof:Z

.field private final mIsAac:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mReadSize:I

.field private final mSampleRate:I

.field private final mStream:Ljava/io/InputStream;

.field private mTotalRead:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;IIII)V
    .locals 6
    .parameter "stream"
    .parameter "mimeType"
    .parameter "sampleRate"
    .parameter "readSize"
    .parameter "outputBitrate"
    .parameter "channels"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    .line 50
    iput p4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    .line 51
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mStream:Ljava/io/InputStream;

    .line 52
    iput p3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    .line 53
    iput p6, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    .line 54
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mMimeType:Ljava/lang/String;

    .line 55
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mIsAac:Z

    .line 56
    iget-boolean v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mIsAac:Z

    if-eqz v2, :cond_0

    .line 57
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    const/16 v5, 0x2b11

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 58
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 61
    :cond_0
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    .line 62
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    const/4 v2, 0x7

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    .line 65
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 66
    .local v1, format:Landroid/media/MediaFormat;
    const-string v2, "mime"

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "sample-rate"

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    const-string v2, "channel-count"

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    iget-boolean v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mIsAac:Z

    if-eqz v2, :cond_3

    .line 74
    :try_start_0
    const-string v2, "OMX.google.aac.encoder"

    invoke-direct {p0, v2, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startCodecByName(Ljava/lang/String;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_2
    return-void

    .end local v1           #format:Landroid/media/MediaFormat;
    :cond_1
    move v2, v4

    .line 57
    goto :goto_0

    :cond_2
    move v3, v4

    .line 58
    goto :goto_1

    .line 75
    .restart local v1       #format:Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, p2, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startCodecByMimeType(Ljava/lang/String;Landroid/media/MediaFormat;)V

    goto :goto_2

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0, p2, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startCodecByMimeType(Ljava/lang/String;Landroid/media/MediaFormat;)V

    goto :goto_2
.end method

.method private encodeStream()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x2

    const-wide/16 v6, 0x2710

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 133
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    if-le v0, v5, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 138
    .local v2, index:I
    if-eq v2, v5, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-direct {p0, v0, v2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->onInputBufferReady(Landroid/media/MediaCodec;I)V

    .line 142
    :cond_1
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 143
    .local v9, info:Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 144
    if-ne v2, v10, :cond_2

    .line 146
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    .line 147
    .local v8, format:Landroid/media/MediaFormat;
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    const-string v4, "sample-rate"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 148
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    const-string v4, "channel-count"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mMimeType:Ljava/lang/String;

    const-string v4, "mime"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 150
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 152
    .end local v8           #format:Landroid/media/MediaFormat;
    :cond_2
    if-eq v2, v10, :cond_5

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 153
    if-ne v2, v5, :cond_6

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Timed out while dequeuing output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v8       #format:Landroid/media/MediaFormat;
    :cond_3
    move v0, v3

    .line 147
    goto :goto_0

    :cond_4
    move v0, v3

    .line 148
    goto :goto_1

    .end local v8           #format:Landroid/media/MediaFormat;
    :cond_5
    move v1, v3

    .line 152
    goto :goto_2

    .line 157
    :cond_6
    const/4 v0, -0x3

    if-ne v2, v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 163
    :cond_7
    :goto_3
    return-void

    .line 159
    :cond_8
    if-eq v2, v5, :cond_7

    .line 160
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->onOutputBufferReady(Landroid/media/MediaCodec;IIIJI)V

    goto :goto_3
.end method

.method private static hexdumpDebug(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "size"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, pos:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v2, line:Ljava/lang/StringBuilder;
    :goto_0
    if-ge v3, p2, :cond_6

    .line 321
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%08x:    "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v10, :cond_2

    .line 324
    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    .line 325
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    add-int v4, v3, v1

    if-lt v4, p2, :cond_1

    .line 329
    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, p1, v3

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 335
    :cond_2
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_3

    .line 338
    add-int v4, v3, v1

    if-lt v4, p2, :cond_4

    .line 350
    :cond_3
    add-int/lit8 v3, v3, 0x10

    .line 351
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 342
    :cond_4
    add-int v4, p1, v3

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 343
    .local v0, b:B
    invoke-static {v0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->isPrintableDebug(B)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 344
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 346
    :cond_5
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 353
    .end local v0           #b:B
    .end local v1           #i:I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isPrintableDebug(B)Z
    .locals 1
    .parameter "b"

    .prologue
    .line 314
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInputBufferReady(Landroid/media/MediaCodec;I)V
    .locals 10
    .parameter "codec"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v0, p2

    .line 169
    .local v7, inputBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 177
    .local v9, numToRead:I
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v7, v0, v1, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 180
    .end local v9           #numToRead:I
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 181
    .local v8, n:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 191
    .end local v8           #n:I
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_3

    .line 192
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-object v0, p1

    move v1, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 197
    :goto_1
    return-void

    .line 185
    .restart local v8       #n:I
    :cond_2
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 187
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mTotalRead:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mTotalRead:I

    goto :goto_0

    .line 194
    .end local v8           #n:I
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    .line 195
    const/4 v6, 0x4

    move-object v0, p1

    move v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1
.end method

.method private onOutputBufferReady(Landroid/media/MediaCodec;IIIJI)V
    .locals 2
    .parameter "codec"
    .parameter "index"
    .parameter "offset"
    .parameter "size"
    .parameter "presentationTimeUs"
    .parameter "flags"

    .prologue
    .line 206
    iput p2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    .line 207
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 208
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p4, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->setAdtsHeaderBytes(ILjava/nio/ByteBuffer;)V

    .line 209
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 211
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, p2

    .line 212
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    add-int v1, p3, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 215
    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 129
    return-void
.end method

.method private setAdtsHeaderBytes(ILjava/nio/ByteBuffer;)V
    .locals 9
    .parameter "frameLength"
    .parameter "header"

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v5, 0x7

    if-lt v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 286
    const-wide/16 v0, 0x0

    .line 287
    .local v0, bits:J
    const/16 v2, 0xc

    const/16 v5, 0xfff

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 288
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 289
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 290
    invoke-static {v0, v1, v3, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 291
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 292
    const/4 v2, 0x4

    const/16 v5, 0xa

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 293
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 294
    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 295
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 296
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 297
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 298
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 299
    const/16 v2, 0xd

    add-int/lit8 v3, p1, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 300
    const/16 v2, 0xb

    const/16 v3, 0x7ff

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 301
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 303
    const/16 v2, 0x30

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 304
    const/16 v2, 0x28

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 305
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 306
    const/16 v2, 0x18

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 307
    const/16 v2, 0x10

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 308
    const/16 v2, 0x8

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 309
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    return-void

    .end local v0           #bits:J
    :cond_0
    move v2, v4

    .line 282
    goto/16 :goto_0
.end method

.method private startAndConfigureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6
    .parameter "codec"
    .parameter "format"

    .prologue
    const/4 v5, 0x0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 96
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 98
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 99
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not create codec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    iput-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 102
    iput-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 103
    iput-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private startCodecByMimeType(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 1
    .parameter "mimeType"
    .parameter "format"

    .prologue
    .line 89
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 90
    .local v0, codec:Landroid/media/MediaCodec;
    invoke-direct {p0, v0, p2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startAndConfigureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 91
    return-void
.end method

.method private startCodecByName(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 1
    .parameter "name"
    .parameter "format"

    .prologue
    .line 84
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 85
    .local v0, codec:Landroid/media/MediaCodec;
    invoke-direct {p0, v0, p2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startAndConfigureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 86
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 122
    :cond_0
    return-void
.end method

.method private static writeBits(JII)J
    .locals 6
    .parameter "bits"
    .parameter "length"
    .parameter "value"

    .prologue
    .line 274
    const-wide/16 v2, -0x1

    rsub-int/lit8 v4, p2, 0x40

    ushr-long v0, v2, v4

    .line 275
    .local v0, mask:J
    shl-long v2, p0, p2

    int-to-long v4, p3

    and-long/2addr v4, v0

    or-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->stop()V

    .line 115
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->release()V

    .line 116
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->close()V

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no one closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method public getTotalRead()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mTotalRead:I

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 219
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
    .line 224
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 229
    iget-boolean v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    .line 230
    .local v1, endOfInput:Z
    :goto_0
    if-nez v1, :cond_1

    iget v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->encodeStream()V

    .line 238
    :cond_1
    iget-boolean v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    if-eqz v5, :cond_3

    .line 255
    :goto_1
    return v4

    .line 229
    .end local v1           #endOfInput:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    .restart local v1       #endOfInput:Z
    :cond_3
    const/4 v2, 0x0

    .line 243
    .local v2, headerToCopy:I
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 244
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 245
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mAdtsHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 246
    add-int/2addr p2, v2

    .line 247
    sub-int/2addr p3, v2

    .line 250
    :cond_4
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    aget-object v0, v4, v5

    .line 251
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 253
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 254
    .local v3, toCopy:I
    invoke-virtual {v0, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 255
    add-int v4, v3, v2

    goto :goto_1
.end method
