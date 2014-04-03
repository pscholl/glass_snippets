.class public final Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelServiceEvent"
.end annotation


# static fields
.field public static final COMPRESSED_MAJEL_RESPONSE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasCompressedMajelResponse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 383
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 378
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->clearCompressedMajelResponse()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 400
    return-object p0
.end method

.method public clearCompressedMajelResponse()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse:Z

    .line 393
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 394
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getSerializedSize()I

    .line 422
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    return v0
.end method

.method public getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_0
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->cachedSize:I

    .line 433
    return v0
.end method

.method public hasCompressedMajelResponse()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 404
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
    .line 375
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 442
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 446
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    :sswitch_0
    return-object p0

    .line 452
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->setCompressedMajelResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    goto :goto_0

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCompressedMajelResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse:Z

    .line 388
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->compressedMajelResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 389
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
    .line 410
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 413
    :cond_0
    return-void
.end method
