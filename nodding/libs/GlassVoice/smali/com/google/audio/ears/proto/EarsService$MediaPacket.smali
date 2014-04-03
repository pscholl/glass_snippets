.class public final Lcom/google/audio/ears/proto/EarsService$MediaPacket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPacket"
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field public static final IS_LAST_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private data_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasData:Z

.field private hasIsLast:Z

.field private isLast_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 743
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 796
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    .line 738
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 850
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->clearData()Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 776
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->clearIsLast()Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 777
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    .line 778
    return-object p0
.end method

.method public clearData()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasData:Z

    .line 753
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 754
    return-object p0
.end method

.method public clearIsLast()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 769
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasIsLast:Z

    .line 770
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 771
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    if-gez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->getSerializedSize()I

    .line 803
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    return v0
.end method

.method public getData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getIsLast()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasIsLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->getIsLast()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 817
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->cachedSize:I

    .line 818
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasData:Z

    return v0
.end method

.method public hasIsLast()Z
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasIsLast:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 827
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 831
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    :sswitch_0
    return-object p0

    .line 837
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    goto :goto_0

    .line 841
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->setIsLast(Z)Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    goto :goto_0

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 735
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .parameter "value"

    .prologue
    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasData:Z

    .line 748
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 749
    return-object p0
.end method

.method public setIsLast(Z)Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1
    .parameter "value"

    .prologue
    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasIsLast:Z

    .line 765
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->isLast_:Z

    .line 766
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
    .line 788
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->hasIsLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;->getIsLast()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 794
    :cond_1
    return-void
.end method
