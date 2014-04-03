.class public final Lcom/google/googlex/glass/common/proto/SyncNano$Select;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Select"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Select;


# instance fields
.field private cachedSize:I

.field public continuationToken:[B

.field public maxItems:Ljava/lang/Integer;

.field public modifiedAfterTime:Ljava/lang/Long;

.field public modifiedBeforeTime:Ljava/lang/Long;

.field public startTime:Ljava/lang/Long;

.field public writeAfterTime:Ljava/lang/Long;

.field public writeBeforeTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 678
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->cachedSize:I

    .line 594
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 772
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 611
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    .line 612
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    .line 613
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    .line 614
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    .line 615
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    .line 616
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    .line 617
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    .line 618
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->cachedSize:I

    .line 619
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    if-ne p1, p0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v1

    .line 625
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 626
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 627
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->cachedSize:I

    if-gez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->getSerializedSize()I

    .line 685
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 692
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 696
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 700
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    if-eqz v1, :cond_3

    .line 704
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 707
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 708
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 711
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 712
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 715
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 716
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 719
    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->cachedSize:I

    .line 720
    return v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x0

    .line 637
    const/16 v1, 0x11

    .line 638
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 639
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 640
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 641
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 642
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 643
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    if-nez v4, :cond_6

    :goto_5
    add-int v1, v2, v3

    .line 644
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 650
    :cond_0
    return v1

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 639
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_1

    .line 640
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_2

    .line 641
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_3

    .line 642
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_4

    .line 643
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v9

    xor-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_5

    .line 646
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 647
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 729
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 733
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    :sswitch_0
    return-object p0

    .line 739
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    goto :goto_0

    .line 743
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    goto :goto_0

    .line 747
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    goto :goto_0

    .line 751
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    goto :goto_0

    .line 755
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    goto :goto_0

    .line 759
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    goto :goto_0

    .line 763
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    goto :goto_0

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
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
    .line 590
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;

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
    .line 655
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 659
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 662
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    if-eqz v0, :cond_3

    .line 665
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 668
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 671
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 674
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 676
    :cond_6
    return-void
.end method
