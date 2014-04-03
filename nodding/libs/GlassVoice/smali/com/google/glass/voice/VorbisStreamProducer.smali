.class public Lcom/google/glass/voice/VorbisStreamProducer;
.super Ljava/lang/Object;
.source "VorbisStreamProducer.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;
    }
.end annotation


# static fields
.field private static final VORBIS_QUALITY:F = 0.5f

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audio:Ljava/io/InputStream;

.field private final buffer:[B

.field private final bytesPerSample:I

.field private final encoder:Lcom/google/android/ears/VorbisEncoder;

.field private final maxCaptureBytes:I

.field private final maxCaptureSeconds:I

.field private numBytesCaptured:I

.field private final numChannels:I

.field private final sameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

.field private final sampleRateHz:I

.field private state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VorbisStreamProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IIIII)V
    .locals 1
    .parameter "audio"
    .parameter "sampleRateHz"
    .parameter "numChannels"
    .parameter "requestSize"
    .parameter "maxCaptureSeconds"
    .parameter "bytesPerSample"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/google/android/ears/VorbisEncoder;

    invoke-direct {v0}, Lcom/google/android/ears/VorbisEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->encoder:Lcom/google/android/ears/VorbisEncoder;

    .line 60
    iput-object p1, p0, Lcom/google/glass/voice/VorbisStreamProducer;->audio:Ljava/io/InputStream;

    .line 61
    iput p2, p0, Lcom/google/glass/voice/VorbisStreamProducer;->sampleRateHz:I

    .line 62
    iput p3, p0, Lcom/google/glass/voice/VorbisStreamProducer;->numChannels:I

    .line 63
    iput p5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->maxCaptureSeconds:I

    .line 64
    iput p6, p0, Lcom/google/glass/voice/VorbisStreamProducer;->bytesPerSample:I

    .line 65
    mul-int v0, p2, p3

    mul-int/2addr v0, p5

    mul-int/2addr v0, p6

    iput v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->maxCaptureBytes:I

    .line 66
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->buffer:[B

    .line 67
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->sameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 68
    sget-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    iput-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    .line 69
    return-void
.end method

.method private transitionTo(Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    .line 146
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->sameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 125
    iget-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    sget-object v1, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    if-ne v0, v1, :cond_0

    .line 126
    sget-object v0, Lcom/google/glass/voice/VorbisStreamProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "VorbisEncoder.close()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->encoder:Lcom/google/android/ears/VorbisEncoder;

    invoke-virtual {v0}, Lcom/google/android/ears/VorbisEncoder;->close()[B

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->audio:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->audio:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->audio:Ljava/io/InputStream;

    .line 133
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VorbisStreamProducer;->transitionTo(Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;)V

    .line 134
    return-void
.end method

.method getState()Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    return-object v0
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->sameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v5}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    sget-object v6, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    if-ne v5, v6, :cond_0

    .line 86
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "VorbisEncoder.init()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->encoder:Lcom/google/android/ears/VorbisEncoder;

    iget v6, p0, Lcom/google/glass/voice/VorbisStreamProducer;->numChannels:I

    iget v7, p0, Lcom/google/glass/voice/VorbisStreamProducer;->sampleRateHz:I

    const/high16 v8, 0x3f00

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/ears/VorbisEncoder;->init(IIF)[B

    move-result-object v2

    .line 88
    .local v2, headers:[B
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/glass/voice/VorbisStreamProducer;->transitionTo(Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;)V

    .line 89
    array-length v5, v2

    invoke-static {v2, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    .line 114
    .end local v2           #headers:[B
    :goto_0
    return-object v5

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    sget-object v6, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    if-ne v5, v6, :cond_1

    .line 91
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/glass/voice/VorbisStreamProducer;->transitionTo(Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;)V

    .line 92
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    goto :goto_0

    .line 93
    :cond_1
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->state:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    sget-object v6, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    if-ne v5, v6, :cond_2

    .line 94
    const/4 v5, 0x0

    goto :goto_0

    .line 98
    :cond_2
    iget v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->maxCaptureSeconds:I

    if-lez v5, :cond_3

    iget v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->numBytesCaptured:I

    iget v6, p0, Lcom/google/glass/voice/VorbisStreamProducer;->maxCaptureBytes:I

    if-le v5, v6, :cond_3

    .line 99
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "VorbisEncoder.close()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->encoder:Lcom/google/android/ears/VorbisEncoder;

    invoke-virtual {v5}, Lcom/google/android/ears/VorbisEncoder;->close()[B

    move-result-object v3

    .line 101
    .local v3, lastChunk:[B
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/glass/voice/VorbisStreamProducer;->transitionTo(Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;)V

    .line 102
    array-length v5, v3

    invoke-static {v3, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    goto :goto_0

    .line 105
    .end local v3           #lastChunk:[B
    :cond_3
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->audio:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/google/glass/voice/VorbisStreamProducer;->buffer:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/voice/VorbisStreamProducer;->buffer:[B

    array-length v8, v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 106
    .local v4, length:I
    iget v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->numBytesCaptured:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->numBytesCaptured:I

    .line 107
    if-lez v4, :cond_4

    .line 108
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->encoder:Lcom/google/android/ears/VorbisEncoder;

    iget-object v6, p0, Lcom/google/glass/voice/VorbisStreamProducer;->buffer:[B

    iget v7, p0, Lcom/google/glass/voice/VorbisStreamProducer;->bytesPerSample:I

    div-int v7, v4, v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/ears/VorbisEncoder;->encodeData([BI)[B

    move-result-object v1

    .line 109
    .local v1, encoded:[B
    array-length v5, v1

    invoke-static {v1, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    goto :goto_0

    .line 111
    .end local v1           #encoded:[B
    :cond_4
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "VorbisEncoder.close()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v5, p0, Lcom/google/glass/voice/VorbisStreamProducer;->encoder:Lcom/google/android/ears/VorbisEncoder;

    invoke-virtual {v5}, Lcom/google/android/ears/VorbisEncoder;->close()[B

    move-result-object v3

    .line 113
    .restart local v3       #lastChunk:[B
    sget-object v5, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/glass/voice/VorbisStreamProducer;->transitionTo(Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;)V

    .line 114
    array-length v5, v3

    invoke-static {v3, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 116
    .end local v3           #lastChunk:[B
    .end local v4           #length:I
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/glass/voice/VorbisStreamProducer;->close()V

    .line 118
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error encoding audio."

    invoke-direct {v5, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
