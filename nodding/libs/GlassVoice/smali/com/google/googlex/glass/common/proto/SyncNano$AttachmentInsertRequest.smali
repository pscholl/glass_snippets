.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentInsertRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;


# instance fields
.field private cachedSize:I

.field public content:[B

.field public creationTime:Ljava/lang/Long;

.field public description:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1728
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1729
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1813
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->cachedSize:I

    .line 1729
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1913
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1907
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1746
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    .line 1747
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    .line 1748
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    .line 1749
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    .line 1750
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    .line 1751
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    .line 1752
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    .line 1753
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->cachedSize:I

    .line 1754
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1759
    if-ne p1, p0, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return v1

    .line 1760
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1761
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    .line 1762
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1816
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 1818
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->getSerializedSize()I

    .line 1820
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1825
    const/4 v0, 0x0

    .line 1826
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1827
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1830
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1831
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1834
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    if-eqz v1, :cond_2

    .line 1835
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1838
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1839
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1842
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1843
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1846
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1847
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1850
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1851
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1854
    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->cachedSize:I

    .line 1855
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1772
    const/16 v1, 0x11

    .line 1773
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1774
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1775
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 1781
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1782
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1783
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1784
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    if-nez v4, :cond_7

    :goto_5
    add-int v1, v2, v3

    .line 1785
    return v1

    .line 1773
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1774
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1777
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1778
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 1777
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1781
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 1782
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 1783
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_4

    .line 1784
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1864
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1868
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1869
    :sswitch_0
    return-object p0

    .line 1874
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 1878
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 1882
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    goto :goto_0

    .line 1886
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    goto :goto_0

    .line 1890
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    goto :goto_0

    .line 1894
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    goto :goto_0

    .line 1898
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    goto :goto_0

    .line 1864
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 1725
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1791
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1794
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1796
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    if-eqz v0, :cond_2

    .line 1797
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1799
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1800
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1802
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1803
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1805
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 1806
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1808
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1809
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1811
    :cond_6
    return-void
.end method
