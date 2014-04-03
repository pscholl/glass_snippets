.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingPersona"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;


# instance fields
.field public acceptType:[Ljava/lang/String;

.field private cachedSize:I

.field public isDefault:Ljava/lang/Boolean;

.field public personaId:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1573
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1582
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 1636
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    .line 1573
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1727
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1721
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1585
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    .line 1586
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    .line 1587
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    .line 1588
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 1589
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    .line 1590
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1595
    if-ne p1, p0, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return v1

    .line 1596
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1597
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 1598
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    if-gez v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSerializedSize()I

    .line 1643
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1648
    const/4 v5, 0x0

    .line 1649
    .local v5, size:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1650
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1653
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1654
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1657
    :cond_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 1658
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1661
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 1662
    const/4 v1, 0x0

    .line 1663
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 1664
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1663
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1667
    .end local v2           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v1

    .line 1668
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 1670
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    .line 1671
    return v5
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1605
    const/16 v1, 0x11

    .line 1606
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1607
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1608
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1609
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 1615
    :cond_0
    return v1

    .line 1606
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1607
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1608
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    .line 1611
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1612
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1611
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1612
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1679
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1680
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1684
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1685
    :sswitch_0
    return-object p0

    .line 1690
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    goto :goto_0

    .line 1694
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    goto :goto_0

    .line 1698
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    goto :goto_0

    .line 1702
    :sswitch_4
    const/16 v4, 0x22

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1703
    .local v0, arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v1, v4

    .line 1704
    .local v1, i:I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 1705
    .local v2, newArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1706
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 1707
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1708
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1709
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1707
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1712
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 1680
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 1569
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1620
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1621
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1623
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1624
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1626
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 1627
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1629
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1631
    .local v1, element:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1630
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1634
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    return-void
.end method
