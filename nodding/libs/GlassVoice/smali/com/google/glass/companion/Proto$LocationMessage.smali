.class public final Lcom/google/glass/companion/Proto$LocationMessage;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationMessage;


# instance fields
.field private cachedSize:I

.field public location:Lcom/google/glass/companion/Proto$Location;

.field public provider:Ljava/lang/String;

.field public receiver:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocationMessage;

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1460
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 1465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    .line 1518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    .line 1450
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1600
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1594
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1472
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 1473
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 1474
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    .line 1475
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    .line 1476
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    .line 1477
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    .line 1478
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1483
    if-ne p1, p0, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v1

    .line 1484
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1485
    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1486
    .local v0, other:Lcom/google/glass/companion/Proto$LocationMessage;
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    iget v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1521
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    if-gez v0, :cond_0

    .line 1523
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getSerializedSize()I

    .line 1525
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1530
    const/4 v0, 0x0

    .line 1531
    .local v0, size:I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1533
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1535
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    if-eqz v1, :cond_0

    .line 1536
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1540
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1543
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1544
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1547
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->cachedSize:I

    .line 1548
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1494
    const/16 v0, 0x11

    .line 1495
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 1496
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 1497
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 1498
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 1499
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 1500
    return v0

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1497
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Location;->hashCode()I

    move-result v1

    goto :goto_1

    .line 1498
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 1499
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1556
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1557
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1561
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1562
    :sswitch_0
    return-object p0

    .line 1567
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1568
    .local v1, temp:I
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    goto :goto_0

    .line 1572
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    goto :goto_0

    .line 1576
    :sswitch_3
    new-instance v2, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    .line 1577
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1581
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    goto :goto_0

    .line 1585
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    goto :goto_0

    .line 1557
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 1446
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationMessage;

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
    .line 1505
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1506
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    if-eqz v0, :cond_0

    .line 1508
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1511
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1514
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1516
    :cond_2
    return-void
.end method
