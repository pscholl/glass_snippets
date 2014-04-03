.class public final Lcom/google/glass/companion/Proto$TimelineItemResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItemResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;


# instance fields
.field private cachedSize:I

.field public id:Ljava/lang/String;

.field public syncStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2705
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2706
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2711
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    .line 2746
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    .line 2706
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2807
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2801
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 2714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    .line 2715
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    .line 2716
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    .line 2717
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2722
    if-ne p1, p0, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return v1

    .line 2723
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2724
    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 2725
    .local v0, other:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    iget v4, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2749
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 2751
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSerializedSize()I

    .line 2753
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2758
    const/4 v0, 0x0

    .line 2759
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2760
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2763
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1

    .line 2764
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2767
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->cachedSize:I

    .line 2768
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2730
    const/16 v0, 0x11

    .line 2731
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2732
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    add-int v0, v1, v2

    .line 2733
    return v0

    .line 2731
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2777
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2781
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2782
    :sswitch_0
    return-object p0

    .line 2787
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    goto :goto_0

    .line 2791
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2792
    .local v1, temp:I
    iput v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    goto :goto_0

    .line 2777
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 2702
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$TimelineItemResponse;

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
    .line 2738
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2739
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2741
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_1

    .line 2742
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2744
    :cond_1
    return-void
.end method
