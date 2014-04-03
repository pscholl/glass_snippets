.class public Lcom/google/android/speech/message/S3RequestUtils;
.super Ljava/lang/Object;
.source "S3RequestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .parameter "audioBytes"
    .parameter "length"

    .prologue
    .line 15
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/speech/message/S3RequestUtils;->createS3AudioData([BI)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioDataExtension(Lcom/google/speech/s3/Audio$S3AudioData;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public static createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    goto :goto_0
.end method

.method public static createEndOfData()Lcom/google/speech/s3/S3$S3Request;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setEndOfData(Z)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method private static createS3AudioData([BI)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 2
    .parameter "audioBytes"
    .parameter "length"

    .prologue
    .line 20
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioData;->setAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v0

    return-object v0
.end method
