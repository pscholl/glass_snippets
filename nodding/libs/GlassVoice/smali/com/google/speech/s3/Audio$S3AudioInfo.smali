.class public final Lcom/google/speech/s3/Audio$S3AudioInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3AudioInfo"
.end annotation


# static fields
.field public static final CHANNEL_COUNT_FIELD_NUMBER:I = 0x4

.field public static final ENCODING_FIELD_NUMBER:I = 0x3

.field public static final SAMPLE_RATE_HZ_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private channelCount_:I

.field private encoding_:I

.field private hasChannelCount:Z

.field private hasEncoding:Z

.field private hasSampleRateHz:Z

.field private sampleRateHz_:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->encoding_:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->sampleRateHz_:F

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->channelCount_:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    check-cast v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->clearEncoding()Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 65
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->clearSampleRateHz()Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 66
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->clearChannelCount()Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->cachedSize:I

    .line 68
    return-object p0
.end method

.method public clearChannelCount()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasChannelCount:Z

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->channelCount_:I

    .line 60
    return-object p0
.end method

.method public clearEncoding()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasEncoding:Z

    .line 25
    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->encoding_:I

    .line 26
    return-object p0
.end method

.method public clearSampleRateHz()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasSampleRateHz:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->sampleRateHz_:F

    .line 43
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getSerializedSize()I

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->cachedSize:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->channelCount_:I

    return v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->encoding_:I

    return v0
.end method

.method public getSampleRateHz()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->sampleRateHz_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasSampleRateHz()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getSampleRateHz()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasEncoding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getEncoding()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasChannelCount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getChannelCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->cachedSize:I

    .line 115
    return v0
.end method

.method public hasChannelCount()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasChannelCount:Z

    return v0
.end method

.method public hasEncoding()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasEncoding:Z

    return v0
.end method

.method public hasSampleRateHz()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasSampleRateHz:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 124
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :sswitch_0
    return-object p0

    .line 134
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    goto :goto_0

    .line 142
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setChannelCount(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public setChannelCount(I)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasChannelCount:Z

    .line 54
    iput p1, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->channelCount_:I

    .line 55
    return-object p0
.end method

.method public setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasEncoding:Z

    .line 20
    iput p1, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->encoding_:I

    .line 21
    return-object p0
.end method

.method public setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasSampleRateHz:Z

    .line 37
    iput p1, p0, Lcom/google/speech/s3/Audio$S3AudioInfo;->sampleRateHz_:F

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasSampleRateHz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getSampleRateHz()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasEncoding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getEncoding()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->hasChannelCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioInfo;->getChannelCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 87
    :cond_2
    return-void
.end method
