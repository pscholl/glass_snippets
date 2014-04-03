.class public Lcom/google/android/speech/network/producers/AmrStreamProducer;
.super Ljava/lang/Object;
.source "AmrStreamProducer.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mAmrStream:Ljava/io/InputStream;

.field private final mBuffer:[B

.field private mComplete:Z

.field private final mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "audio"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "requestSize"
    .end parameter

    .prologue
    .line 42
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/speech/audio/AudioUtils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    new-array v1, p2, [B

    invoke-direct {p0, v0, v1}, Lcom/google/android/speech/network/producers/AmrStreamProducer;-><init>(Ljava/io/InputStream;[B)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .parameter "encoded"
    .parameter "workBuffer"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mAmrStream:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    .line 50
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 51
    return-void
.end method

.method private closeAndMarkComplete()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    .line 85
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mAmrStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 79
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AmrStreamProducer;->closeAndMarkComplete()V

    .line 80
    return-void
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v2}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 58
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mComplete:Z

    if-eqz v2, :cond_0

    .line 59
    const/4 v2, 0x0

    .line 67
    :goto_0
    return-object v2

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mAmrStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 63
    .local v1, length:I
    if-lez v1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AmrStreamProducer;->mBuffer:[B

    invoke-static {v2, v1}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AmrStreamProducer;->closeAndMarkComplete()V

    .line 67
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 69
    .end local v1           #length:I
    :catch_0
    move-exception v0

    .line 70
    .local v0, ioe:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AmrStreamProducer;->closeAndMarkComplete()V

    .line 71
    throw v0
.end method
