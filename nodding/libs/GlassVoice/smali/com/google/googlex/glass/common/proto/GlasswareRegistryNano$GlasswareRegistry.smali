.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlasswareRegistryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareRegistry"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;


# instance fields
.field private cachedSize:I

.field public registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 543
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .line 579
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->cachedSize:I

    .line 540
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 641
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->cachedSize:I

    .line 548
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 553
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 556
    :goto_0
    return v1

    .line 554
    :cond_0
    instance-of v1, p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 555
    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    .line 556
    .local v0, other:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->cachedSize:I

    if-gez v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->getSerializedSize()I

    .line 586
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 591
    const/4 v4, 0x0

    .line 592
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    if-eqz v5, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 594
    .local v1, element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iput v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->cachedSize:I

    .line 599
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 560
    const/16 v1, 0x11

    .line 561
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 567
    :cond_0
    return v1

    .line 563
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 564
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 608
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 612
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 613
    :sswitch_0
    return-object p0

    .line 618
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 619
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    if-nez v5, :cond_2

    move v1, v4

    .line 620
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .line 621
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    if-eqz v5, :cond_1

    .line 622
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .line 625
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 626
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    new-instance v6, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;-><init>()V

    aput-object v6, v5, v1

    .line 627
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 628
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    array-length v1, v5

    goto :goto_1

    .line 631
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    new-instance v6, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;-><init>()V

    aput-object v6, v5, v1

    .line 632
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 536
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    if-eqz v4, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistry;->registryEntries:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 574
    .local v1, element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method
