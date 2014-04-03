.class public Lcom/google/android/speech/message/S3RequestStream;
.super Ljava/lang/Object;
.source "S3RequestStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEBUG:Z = false

.field private static final S3_STREAM_PREFIX:[B = null

.field private static final TAG:Ljava/lang/String; = "S3RequestStream"


# instance fields
.field private final mChunked:Z

.field private final mHeader:Ljava/lang/String;

.field private mHeaderWritten:Z

.field private final mOut:Ljava/io/OutputStream;

.field private final mScratch:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/speech/message/S3RequestStream;->S3_STREAM_PREFIX:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1
    .parameter "os"
    .parameter "header"
    .parameter "chunked"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    .line 37
    iput-object p1, p0, Lcom/google/android/speech/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    .line 38
    iput-object p2, p0, Lcom/google/android/speech/message/S3RequestStream;->mHeader:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lcom/google/android/speech/message/S3RequestStream;->mChunked:Z

    .line 40
    return-void
.end method

.method private internalWrite(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 1
    .parameter "s3Request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Request;->toByteArray()[B

    move-result-object v0

    .line 99
    .local v0, bytes:[B
    invoke-direct {p0, v0}, Lcom/google/android/speech/message/S3RequestStream;->maybeChunkAndSendBytes([B)V

    .line 100
    return-void
.end method

.method private maybeChunkAndSendBytes([B)V
    .locals 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    array-length v0, p1

    .line 58
    .local v0, count:I
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mChunked:Z

    if-nez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 68
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 69
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 84
    return-void

    .line 71
    :cond_1
    :goto_0
    if-lez v0, :cond_0

    .line 72
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 73
    .local v1, toWrite:I
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 74
    sub-int/2addr v0, v1

    .line 75
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v1           #toWrite:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 109
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 104
    return-void
.end method

.method public write(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 1
    .parameter "s3Request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mHeaderWritten:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/speech/message/S3RequestStream;->internalWrite(Lcom/google/speech/s3/S3$S3Request;)V

    .line 90
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeHeader(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 5
    .parameter "initial"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    iget-boolean v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mHeaderWritten:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 44
    iget-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/google/android/speech/message/S3RequestStream;->S3_STREAM_PREFIX:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v0, p0, Lcom/google/android/speech/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/speech/message/S3RequestStream;->mHeader:Ljava/lang/String;

    const-string v3, "_"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/utils/HexUtils;->hexToBytes(Ljava/lang/CharSequence;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/speech/message/S3RequestStream;->internalWrite(Lcom/google/speech/s3/S3$S3Request;)V

    .line 53
    iput-boolean v1, p0, Lcom/google/android/speech/message/S3RequestStream;->mHeaderWritten:Z

    .line 54
    return-void

    :cond_1
    move v0, v2

    .line 43
    goto :goto_0
.end method
