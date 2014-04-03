.class public final Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Synthesis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Synthesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtsServiceEvent"
.end annotation


# static fields
.field public static final AUDIO_FIELD_NUMBER:I = 0x1

.field public static final END_OF_DATA_FIELD_NUMBER:I = 0x2


# instance fields
.field private audio_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private endOfData_:Z

.field private hasAudio:Z

.field private hasEndOfData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 474
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->endOfData_:Z

    .line 527
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->cachedSize:I

    .line 469
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    check-cast v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->clearAudio()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    .line 507
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->clearEndOfData()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    .line 508
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->cachedSize:I

    .line 509
    return-object p0
.end method

.method public clearAudio()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasAudio:Z

    .line 484
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 485
    return-object p0
.end method

.method public clearEndOfData()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasEndOfData:Z

    .line 501
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->endOfData_:Z

    .line 502
    return-object p0
.end method

.method public getAudio()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getSerializedSize()I

    .line 534
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->cachedSize:I

    return v0
.end method

.method public getEndOfData()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->endOfData_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasEndOfData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getEndOfData()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 548
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->cachedSize:I

    .line 549
    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasAudio:Z

    return v0
.end method

.method public hasEndOfData()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasEndOfData:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 513
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
    .line 466
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 558
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 562
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    :sswitch_0
    return-object p0

    .line 568
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->setAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    goto :goto_0

    .line 572
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->setEndOfData(Z)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasAudio:Z

    .line 479
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->audio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 480
    return-object p0
.end method

.method public setEndOfData(Z)Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasEndOfData:Z

    .line 496
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->endOfData_:Z

    .line 497
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
    .line 519
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->hasEndOfData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getEndOfData()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 525
    :cond_1
    return-void
.end method
