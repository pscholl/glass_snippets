.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;


# instance fields
.field private cachedSize:I

.field public header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

.field public request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 376
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    .line 370
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 380
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 381
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    .line 382
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    if-ne p1, p0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v1

    .line 388
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 389
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    .line 390
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->getSerializedSize()I

    .line 425
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 430
    const/4 v4, 0x0

    .line 431
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v5, :cond_0

    .line 432
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 435
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v5, :cond_1

    .line 436
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 437
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->cachedSize:I

    .line 442
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 395
    const/16 v1, 0x11

    .line 396
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 397
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 403
    :cond_0
    return v1

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->hashCode()I

    move-result v2

    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 400
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 451
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 455
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    :sswitch_0
    return-object p0

    .line 461
    :sswitch_1
    new-instance v5, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 462
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 466
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 467
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v5, :cond_2

    move v1, v4

    .line 468
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 469
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v5, :cond_1

    .line 470
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 473
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 474
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 475
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 476
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 467
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    array-length v1, v5

    goto :goto_1

    .line 479
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 480
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

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
    .line 408
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-eqz v4, :cond_0

    .line 409
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-eqz v4, :cond_1

    .line 412
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 413
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
