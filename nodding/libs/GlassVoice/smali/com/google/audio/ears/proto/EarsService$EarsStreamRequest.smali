.class public final Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsStreamRequest"
.end annotation


# static fields
.field public static final AUDIO_CONTAINER_ADTS:I = 0x4

.field public static final AUDIO_CONTAINER_FIELD_NUMBER:I = 0x1

.field public static final AUDIO_CONTAINER_OGG:I = 0x1

.field public static final AUDIO_CONTAINER_PROTO:I = 0x3

.field public static final AUDIO_CONTAINER_THREEGP:I = 0x2

.field public static final AUDIO_CONTAINER_WAV:I = 0x0

.field public static final AUDIO_ENCODING_AAC:I = 0x4

.field public static final AUDIO_ENCODING_AMR:I = 0x2

.field public static final AUDIO_ENCODING_FIELD_NUMBER:I = 0x2

.field public static final AUDIO_ENCODING_FINGERPRINT:I = 0x3

.field public static final AUDIO_ENCODING_PCM:I = 0x0

.field public static final AUDIO_ENCODING_VORBIS:I = 0x1


# instance fields
.field private audioContainer_:I

.field private audioEncoding_:I

.field private cachedSize:I

.field private hasAudioContainer:Z

.field private hasAudioEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 617
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 634
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    .line 598
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->clearAudioContainer()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 650
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->clearAudioEncoding()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 651
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    .line 652
    return-object p0
.end method

.method public clearAudioContainer()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioContainer:Z

    .line 627
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 628
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioEncoding:Z

    .line 644
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 645
    return-object p0
.end method

.method public getAudioContainer()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    return v0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->getSerializedSize()I

    .line 677
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->getAudioContainer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioEncoding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->getAudioEncoding()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 691
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->cachedSize:I

    .line 692
    return v0
.end method

.method public hasAudioContainer()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioContainer:Z

    return v0
.end method

.method public hasAudioEncoding()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioEncoding:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 701
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 705
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    :sswitch_0
    return-object p0

    .line 711
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioContainer(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    goto :goto_0

    .line 715
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioEncoding(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    goto :goto_0

    .line 701
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
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
    .line 595
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAudioContainer(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioContainer:Z

    .line 622
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioContainer_:I

    .line 623
    return-object p0
.end method

.method public setAudioEncoding(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioEncoding:Z

    .line 639
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->audioEncoding_:I

    .line 640
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
    .line 662
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->getAudioContainer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->hasAudioEncoding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->getAudioEncoding()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 668
    :cond_1
    return-void
.end method
