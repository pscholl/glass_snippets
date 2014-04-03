.class public final Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper$ErrorCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# instance fields
.field private cachedSize:I

.field public data:[B

.field public errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 515
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    .line 504
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1

    .prologue
    .line 520
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    .line 522
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    .line 523
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 528
    if-ne p1, p0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 529
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 530
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 531
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    if-gez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->getSerializedSize()I

    .line 564
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 571
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    if-eqz v1, :cond_1

    .line 575
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    .line 579
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 536
    const/16 v1, 0x11

    .line 537
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    add-int/lit16 v1, v2, 0x20f

    .line 538
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 544
    :cond_0
    return v1

    .line 540
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 541
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 588
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 592
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    :sswitch_0
    return-object p0

    .line 598
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 599
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    goto :goto_0

    .line 603
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    goto :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 500
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

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
    .line 549
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 550
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    if-eqz v0, :cond_1

    .line 553
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 555
    :cond_1
    return-void
.end method
