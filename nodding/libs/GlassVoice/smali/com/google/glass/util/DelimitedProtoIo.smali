.class public Lcom/google/glass/util/DelimitedProtoIo;
.super Ljava/lang/Object;
.source "DelimitedProtoIo.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computePreferredBufferSize(I)I
    .locals 1
    .parameter "dataLength"

    .prologue
    const/16 v0, 0x1000

    .line 88
    if-le p0, v0, :cond_0

    move p0, v0

    .line 89
    .end local p0
    :cond_0
    return p0
.end method

.method private static computeRawVarint32Size(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 73
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 76
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Lcom/google/protobuf/nano/MessageNano;Ljava/io/InputStream;)Lcom/google/protobuf/nano/MessageNano;
    .locals 7
    .parameter
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, proto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    const/4 v6, -0x1

    .line 48
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 49
    .local v2, firstByte:I
    if-ne v2, v6, :cond_0

    .line 50
    const/4 v5, 0x0

    .line 63
    :goto_0
    return-object v5

    .line 52
    :cond_0
    invoke-static {v2, p1}, Lcom/google/glass/util/DelimitedProtoIo;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v4

    .line 54
    .local v4, size:I
    new-array v0, v4, [B

    .line 55
    .local v0, bytes:[B
    const/4 v1, 0x0

    .line 56
    .local v1, current:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 57
    sub-int v5, v4, v1

    invoke-virtual {p1, v0, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 58
    .local v3, read:I
    if-ne v3, v6, :cond_1

    .line 59
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 61
    :cond_1
    add-int/2addr v1, v3

    .line 62
    goto :goto_1

    .line 63
    .end local v3           #read:I
    :cond_2
    invoke-static {p0, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    goto :goto_0
.end method

.method private static readRawVarint32(ILjava/io/InputStream;)I
    .locals 5
    .parameter "firstByte"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 114
    and-int/lit16 v3, p0, 0x80

    if-nez v3, :cond_1

    move v2, p0

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    and-int/lit8 v2, p0, 0x7f

    .line 119
    .local v2, result:I
    const/4 v1, 0x7

    .line 120
    .local v1, offset:I
    :goto_1
    const/16 v3, 0x20

    if-ge v1, v3, :cond_4

    .line 121
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 122
    .local v0, b:I
    if-ne v0, v4, :cond_2

    .line 123
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 125
    :cond_2
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 126
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 120
    add-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 131
    :cond_3
    add-int/lit8 v1, v1, 0x7

    .end local v0           #b:I
    :cond_4
    const/16 v3, 0x40

    if-ge v1, v3, :cond_6

    .line 132
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 133
    .restart local v0       #b:I
    if-ne v0, v4, :cond_5

    .line 134
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 136
    :cond_5
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_3

    goto :goto_0

    .line 140
    .end local v0           #b:I
    :cond_6
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method public static writeDelimitedTo(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "proto"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v2

    .line 28
    .local v2, protoSize:I
    invoke-static {v2}, Lcom/google/glass/util/DelimitedProtoIo;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Lcom/google/glass/util/DelimitedProtoIo;->computePreferredBufferSize(I)I

    move-result v1

    .line 30
    .local v1, bufferSize:I
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 31
    .local v0, bos:Ljava/io/BufferedOutputStream;
    invoke-static {v2, v0}, Lcom/google/glass/util/DelimitedProtoIo;->writeRawVarint32(ILjava/io/OutputStream;)V

    .line 32
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 33
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 34
    return-void
.end method

.method private static writeRawVarint32(ILjava/io/OutputStream;)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    :goto_0
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 100
    return-void

    .line 102
    :cond_0
    and-int/lit8 v0, p0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 103
    ushr-int/lit8 p0, p0, 0x7

    goto :goto_0
.end method
