.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassExtensionsProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;


# instance fields
.field private cachedSize:I

.field public hardwareVersion:I

.field public sessionId:Ljava/lang/String;

.field public softwareVersion:Ljava/lang/String;

.field public userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 520
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 523
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    .line 577
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->cachedSize:I

    .line 513
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    .line 527
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    .line 528
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 529
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    .line 530
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->cachedSize:I

    .line 531
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 536
    if-ne p1, p0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 537
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 538
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

    .line 539
    .local v0, other:Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->getSerializedSize()I

    .line 584
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 589
    const/4 v4, 0x0

    .line 590
    .local v4, size:I
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 591
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 594
    :cond_0
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 595
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 598
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v5, :cond_2

    .line 599
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 600
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    const/high16 v6, -0x8000

    if-eq v5, v6, :cond_3

    .line 605
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 608
    :cond_3
    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->cachedSize:I

    .line 609
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 546
    const/16 v1, 0x11

    .line 547
    .local v1, result:I
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 548
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 549
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 555
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    add-int v1, v2, v3

    .line 556
    return v1

    .line 547
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 548
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 551
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 552
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 552
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 617
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 618
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 622
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 623
    :sswitch_0
    return-object p0

    .line 628
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 632
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    goto :goto_0

    .line 636
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 637
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v6, :cond_2

    move v1, v5

    .line 638
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 639
    .local v2, newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v6, :cond_1

    .line 640
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    :cond_1
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 643
    :goto_2
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 644
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v7, v6, v1

    .line 645
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 646
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 637
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_2
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v1, v6

    goto :goto_1

    .line 649
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v7, v6, v1

    .line 650
    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 654
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 655
    .local v4, temp:I
    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    goto :goto_0

    .line 618
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 509
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;

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
    .line 561
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 562
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 564
    :cond_0
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 565
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->softwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 567
    :cond_1
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v4, :cond_2

    .line 568
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 569
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_3

    .line 573
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassExtensionsProto;->hardwareVersion:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 575
    :cond_3
    return-void
.end method
