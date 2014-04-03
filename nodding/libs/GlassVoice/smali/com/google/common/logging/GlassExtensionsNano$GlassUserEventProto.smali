.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# instance fields
.field private cachedSize:I

.field public eventData:Ljava/lang/String;

.field public eventSerial:Ljava/lang/Long;

.field public eventTimeMs:Ljava/lang/Long;

.field public eventType:Ljava/lang/String;

.field public performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    .line 355
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    .line 370
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    .line 371
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    .line 372
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    .line 373
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    .line 375
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    if-ne p1, p0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 381
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 382
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 383
    .local v0, other:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getSerializedSize()I

    .line 426
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, size:I
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 437
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 441
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v1, :cond_3

    .line 445
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 449
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_4
    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    .line 453
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 391
    const/16 v0, 0x11

    .line 392
    .local v0, result:I
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 393
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 394
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 395
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 396
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 397
    return v0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v8

    xor-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_1

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 395
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 396
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 462
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 466
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    :sswitch_0
    return-object p0

    .line 472
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    goto :goto_0

    .line 476
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    goto :goto_0

    .line 480
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    goto :goto_0

    .line 484
    :sswitch_4
    new-instance v1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 485
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 489
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    goto :goto_0

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 351
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

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
    .line 402
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 406
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 409
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v0, :cond_3

    .line 412
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 415
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 417
    :cond_4
    return-void
.end method
