.class public Lcom/google/android/speech/network/producers/AacStreamProducer;
.super Ljava/lang/Object;
.source "AacStreamProducer.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mAudio:Ljava/io/InputStream;

.field private final mBuffer:[B

.field private mComplete:Z

.field protected mEncoderInputStream:Lcom/google/android/speech/audio/AudioEncoderInputStream;

.field private final mEncoderMimeType:Ljava/lang/String;

.field private final mInputReadSize:I

.field private final mMaxRecordingLengthSeconds:I

.field private final mNumChannels:I

.field private final mOutputBitRate:I

.field private final mRequestSize:I

.field private final mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

.field private final mSampleRateHz:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;IIIIII)V
    .locals 1
    .parameter "audio"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "encoderMimeType"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "sampleRateHz"
    .end parameter
    .parameter "numChannels"
    .end parameter
    .parameter "inputReadSize"
    .end parameter
    .parameter "requestSize"
    .end parameter
    .parameter "outputBitRate"
    .end parameter
    .parameter "maxRecordingLengthSeconds"
    .end parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mAudio:Ljava/io/InputStream;

    .line 54
    iput-object p2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderMimeType:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mSampleRateHz:I

    .line 56
    iput p4, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mNumChannels:I

    .line 57
    iput p5, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mInputReadSize:I

    .line 58
    iput p6, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mRequestSize:I

    .line 59
    iput p7, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mOutputBitRate:I

    .line 60
    iput p8, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mMaxRecordingLengthSeconds:I

    .line 61
    iget v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mRequestSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mBuffer:[B

    .line 62
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 63
    return-void
.end method

.method private closeAndMarkComplete()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mComplete:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mComplete:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderInputStream:Lcom/google/android/speech/audio/AudioEncoderInputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 108
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AacStreamProducer;->closeAndMarkComplete()V

    .line 109
    return-void
.end method

.method protected maybeInitEncoderStream()V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderInputStream:Lcom/google/android/speech/audio/AudioEncoderInputStream;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/speech/audio/AudioEncoderInputStream;

    iget-object v1, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mAudio:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mSampleRateHz:I

    iget v4, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mInputReadSize:I

    iget v5, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mOutputBitRate:I

    iget v6, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mNumChannels:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/audio/AudioEncoderInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderInputStream:Lcom/google/android/speech/audio/AudioEncoderInputStream;

    .line 118
    :cond_0
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
    .line 67
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v2}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 70
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mComplete:Z

    if-eqz v2, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 95
    :goto_0
    return-object v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/speech/network/producers/AacStreamProducer;->maybeInitEncoderStream()V

    .line 82
    iget v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mMaxRecordingLengthSeconds:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderInputStream:Lcom/google/android/speech/audio/AudioEncoderInputStream;

    invoke-virtual {v2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->getTotalRead()I

    move-result v2

    iget v3, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mSampleRateHz:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mMaxRecordingLengthSeconds:I

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AacStreamProducer;->closeAndMarkComplete()V

    .line 87
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mEncoderInputStream:Lcom/google/android/speech/audio/AudioEncoderInputStream;

    iget-object v3, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mBuffer:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mBuffer:[B

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 91
    .local v1, length:I
    if-lez v1, :cond_2

    .line 92
    iget-object v2, p0, Lcom/google/android/speech/network/producers/AacStreamProducer;->mBuffer:[B

    invoke-static {v2, v1}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AacStreamProducer;->closeAndMarkComplete()V

    .line 95
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 97
    .end local v1           #length:I
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/google/android/speech/network/producers/AacStreamProducer;->closeAndMarkComplete()V

    .line 101
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error encoding audio."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
