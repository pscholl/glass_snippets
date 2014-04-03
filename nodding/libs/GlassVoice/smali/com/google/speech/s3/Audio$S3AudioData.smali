.class public final Lcom/google/speech/s3/Audio$S3AudioData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3AudioData"
.end annotation


# static fields
.field public static final AUDIO_FIELD_NUMBER:I = 0x1


# instance fields
.field private audio_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private hasAudio:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 170
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    .line 165
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Audio$S3AudioData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/Audio$S3AudioData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/Audio$S3AudioData;

    check-cast v0, Lcom/google/speech/s3/Audio$S3AudioData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->clearAudio()Lcom/google/speech/s3/Audio$S3AudioData;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    .line 187
    return-object p0
.end method

.method public clearAudio()Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->hasAudio:Z

    .line 180
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 181
    return-object p0
.end method

.method public getAudio()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    if-gez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->getSerializedSize()I

    .line 209
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->cachedSize:I

    .line 220
    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->hasAudio:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 191
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
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/Audio$S3AudioData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 229
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/Audio$S3AudioData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    :sswitch_0
    return-object p0

    .line 239
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/Audio$S3AudioData;->setAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/s3/Audio$S3AudioData;

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/Audio$S3AudioData;->hasAudio:Z

    .line 175
    iput-object p1, p0, Lcom/google/speech/s3/Audio$S3AudioData;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 176
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
    .line 197
    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/Audio$S3AudioData;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 200
    :cond_0
    return-void
.end method
