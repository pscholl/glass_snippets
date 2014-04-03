.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;


# instance fields
.field private cachedSize:I

.field public id:Ljava/lang/Integer;

.field public toolType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 624
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 585
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    .line 593
    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 595
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 600
    if-ne p1, p0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v1

    .line 601
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 602
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 603
    .local v0, other:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    if-gez v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getSerializedSize()I

    .line 631
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 638
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 642
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 645
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 646
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 608
    const/16 v0, 0x11

    .line 609
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 610
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 611
    return v0

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 610
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 655
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 659
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    :sswitch_0
    return-object p0

    .line 665
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    goto :goto_0

    .line 669
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    goto :goto_0

    .line 655
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 581
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

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
    .line 616
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 620
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 622
    :cond_1
    return-void
.end method
