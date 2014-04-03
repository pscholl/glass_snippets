.class public final Lcom/google/glass/companion/Proto$Location;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Location;


# instance fields
.field public accuracy:Ljava/lang/Float;

.field public altitude:Ljava/lang/Double;

.field public bearing:Ljava/lang/Float;

.field private cachedSize:I

.field public latitude:Ljava/lang/Double;

.field public levelId:Ljava/lang/String;

.field public levelNumberE3:Ljava/lang/Integer;

.field public longitude:Ljava/lang/Double;

.field public satellitesUsedInFix:Ljava/lang/Integer;

.field public speed:Ljava/lang/Float;

.field public time:Ljava/lang/Long;

.field public visibleSatellites:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1608
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Location;

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1609
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1720
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 1609
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1852
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1846
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1634
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    .line 1635
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    .line 1636
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    .line 1637
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    .line 1638
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    .line 1639
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    .line 1640
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    .line 1641
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    .line 1642
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    .line 1643
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    .line 1644
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    .line 1645
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 1646
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1651
    if-ne p1, p0, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return v1

    .line 1652
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1653
    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    .line 1654
    .local v0, other:Lcom/google/glass/companion/Proto$Location;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1723
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    if-gez v0, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location;->getSerializedSize()I

    .line 1727
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1732
    const/4 v0, 0x0

    .line 1733
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 1734
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1737
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 1738
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1741
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 1742
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1745
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 1746
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1749
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 1750
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1753
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 1754
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1757
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 1758
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1761
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 1762
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1765
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 1766
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1769
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1770
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1773
    :cond_9
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 1774
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1777
    :cond_a
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 1778
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 1668
    const/16 v0, 0x11

    .line 1669
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1670
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 1671
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 1672
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 1673
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 1674
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 1675
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 1676
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v3, v1

    .line 1677
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-nez v1, :cond_8

    move v1, v2

    :goto_8
    add-int v0, v3, v1

    .line 1678
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    if-nez v1, :cond_9

    move v1, v2

    :goto_9
    add-int v0, v3, v1

    .line 1679
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-nez v3, :cond_a

    :goto_a
    add-int v0, v1, v2

    .line 1680
    return v0

    .line 1669
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0

    .line 1670
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto/16 :goto_1

    .line 1671
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto/16 :goto_2

    .line 1672
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto/16 :goto_3

    .line 1673
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto/16 :goto_4

    .line 1674
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto/16 :goto_5

    .line 1675
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto/16 :goto_6

    .line 1676
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_7

    .line 1677
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_8

    .line 1678
    :cond_9
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_9

    .line 1679
    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_a
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1786
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1787
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1791
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    :sswitch_0
    return-object p0

    .line 1797
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    goto :goto_0

    .line 1801
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    goto :goto_0

    .line 1805
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    goto :goto_0

    .line 1809
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    goto :goto_0

    .line 1813
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    goto :goto_0

    .line 1817
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    goto :goto_0

    .line 1821
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    goto :goto_0

    .line 1825
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    goto :goto_0

    .line 1829
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    goto :goto_0

    .line 1833
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    goto :goto_0

    .line 1837
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1787
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1d -> :sswitch_3
        0x21 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 1605
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

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
    .line 1685
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 1686
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 1689
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1692
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 1695
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 1698
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1700
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1701
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1703
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 1704
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1706
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1707
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1709
    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 1710
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1712
    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1713
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1715
    :cond_9
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 1716
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1718
    :cond_a
    return-void
.end method
