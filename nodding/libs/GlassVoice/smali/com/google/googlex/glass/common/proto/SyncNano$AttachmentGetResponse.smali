.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentGetResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;


# instance fields
.field private cachedSize:I

.field public content:[B

.field public mimeType:Ljava/lang/String;

.field public responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1592
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1593
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1601
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    .line 1651
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->cachedSize:I

    .line 1593
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1714
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1608
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    .line 1609
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    .line 1610
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    .line 1611
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->cachedSize:I

    .line 1612
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1617
    if-ne p1, p0, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return v1

    .line 1618
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1619
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    .line 1620
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->getSerializedSize()I

    .line 1658
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 1665
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1669
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1672
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    if-eqz v1, :cond_2

    .line 1673
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1676
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->cachedSize:I

    .line 1677
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1626
    const/16 v1, 0x11

    .line 1627
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    add-int/lit16 v1, v2, 0x20f

    .line 1628
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 1629
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1635
    :cond_0
    return v1

    .line 1628
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1631
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1632
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1685
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1686
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1690
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1691
    :sswitch_0
    return-object p0

    .line 1696
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1697
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    goto :goto_0

    .line 1701
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 1705
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    goto :goto_0

    .line 1686
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 1641
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1644
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1646
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    if-eqz v0, :cond_2

    .line 1647
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1649
    :cond_2
    return-void
.end method
