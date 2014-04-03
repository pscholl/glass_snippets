.class public final Lcom/google/glass/voice/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;
    }
.end annotation


# static fields
.field private static final FIR_LENGTH:I = 0x2f


# instance fields
.field private buf:[B

.field private bufCount:I

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

.field private final rateIn:I

.field private final rateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "fir21"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;II)V
    .locals 2
    .parameter "listener"
    .parameter "inputStream"
    .parameter "rateIn"
    .parameter "rateOut"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    mul-int/lit8 v0, p4, 0x2

    if-eq p3, v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only support 2:1 resampling at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    const/4 p3, 0x2

    .line 60
    const/4 p4, 0x1

    .line 62
    iput-object p2, p0, Lcom/google/glass/voice/ResampleInputStream;->inputStream:Ljava/io/InputStream;

    .line 63
    iput p3, p0, Lcom/google/glass/voice/ResampleInputStream;->rateIn:I

    .line 64
    iput p4, p0, Lcom/google/glass/voice/ResampleInputStream;->rateOut:I

    .line 65
    iput-object p1, p0, Lcom/google/glass/voice/ResampleInputStream;->listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    .line 66
    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public read()I
    .locals 2

    .prologue
    .line 70
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
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/voice/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 12
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v11, 0x0

    .line 80
    iget-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->inputStream:Ljava/io/InputStream;

    if-nez v6, :cond_0

    .line 81
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "not open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_0
    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Lcom/google/glass/voice/ResampleInputStream;->rateIn:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/google/glass/voice/ResampleInputStream;->rateOut:I

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2f

    mul-int/lit8 v4, v6, 0x2

    .line 86
    .local v4, nIn:I
    iget-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    if-nez v6, :cond_5

    .line 87
    new-array v6, v4, [B

    iput-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    .line 96
    :cond_1
    :goto_0
    iget v6, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2f

    iget v7, p0, Lcom/google/glass/voice/ResampleInputStream;->rateOut:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/google/glass/voice/ResampleInputStream;->rateIn:I

    div-int/2addr v6, v7

    mul-int/lit8 v1, v6, 0x2

    .line 97
    .local v1, len:I
    if-lez v1, :cond_7

    .line 98
    if-ge v1, p3, :cond_6

    move p3, v1

    .line 110
    :goto_1
    iget-object v5, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    div-int/lit8 v6, p3, 0x2

    invoke-static {v5, v11, p1, p2, v6}, Lcom/google/glass/voice/ResampleInputStream;->fir21([BI[BII)V

    .line 113
    iget v5, p0, Lcom/google/glass/voice/ResampleInputStream;->rateIn:I

    mul-int/2addr v5, p3

    iget v6, p0, Lcom/google/glass/voice/ResampleInputStream;->rateOut:I

    div-int v3, v5, v6

    .line 114
    .local v3, nFwd:I
    iget v5, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    .line 117
    iget-object v5, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    iget v6, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    .line 118
    iget v5, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    if-lez v5, :cond_2

    .line 119
    iget-object v5, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    iget-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    iget v7, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    invoke-static {v5, v3, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :cond_2
    iget-object v5, p0, Lcom/google/glass/voice/ResampleInputStream;->listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    if-eqz v5, :cond_3

    .line 123
    iget-object v5, p0, Lcom/google/glass/voice/ResampleInputStream;->listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    invoke-interface {v5, p1, p2, p3}, Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;->onResampledAudioData([BII)V

    :cond_3
    move v5, p3

    .line 126
    .end local v3           #nFwd:I
    :cond_4
    return v5

    .line 88
    .end local v1           #len:I
    :cond_5
    iget-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    array-length v6, v6

    if-le v4, v6, :cond_1

    .line 89
    new-array v0, v4, [B

    .line 90
    .local v0, bf:[B
    iget-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    iget v7, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    invoke-static {v6, v11, v0, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v0, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    goto :goto_0

    .line 98
    .end local v0           #bf:[B
    .restart local v1       #len:I
    :cond_6
    div-int/lit8 v5, p3, 0x2

    mul-int/lit8 p3, v5, 0x2

    goto :goto_1

    .line 102
    :cond_7
    iget-object v6, p0, Lcom/google/glass/voice/ResampleInputStream;->inputStream:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    iget v8, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    iget-object v9, p0, Lcom/google/glass/voice/ResampleInputStream;->buf:[B

    array-length v9, v9

    iget v10, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 103
    .local v2, n:I
    if-eq v2, v5, :cond_4

    .line 106
    iget v6, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/glass/voice/ResampleInputStream;->bufCount:I

    goto :goto_0
.end method
