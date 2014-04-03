.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;


# instance fields
.field private cachedSize:I

.field public response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 630
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 666
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    .line 627
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 634
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    .line 635
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 640
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 643
    :goto_0
    return v1

    .line 641
    :cond_0
    instance-of v1, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 642
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    .line 643
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->getSerializedSize()I

    .line 673
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 678
    const/4 v4, 0x0

    .line 679
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v5, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 681
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iput v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    .line 686
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 647
    const/16 v1, 0x11

    .line 648
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 654
    :cond_0
    return v1

    .line 650
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 651
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 694
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 695
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 699
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 700
    :sswitch_0
    return-object p0

    .line 705
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 706
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v5, :cond_2

    move v1, v4

    .line 707
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 708
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v5, :cond_1

    .line 709
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 712
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 713
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 714
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 715
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 706
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v1, v5

    goto :goto_1

    .line 718
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 719
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 695
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
    .line 623
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

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
    .line 659
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v4, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 661
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method
