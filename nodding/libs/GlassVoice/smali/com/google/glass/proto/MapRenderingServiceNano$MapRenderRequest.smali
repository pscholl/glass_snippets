.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapRenderRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;


# instance fields
.field private cachedSize:I

.field public center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field public height:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field public latSpan:Ljava/lang/Double;

.field public lngSpan:Ljava/lang/Double;

.field public marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

.field public polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

.field public type:I

.field public uri:Ljava/lang/String;

.field public width:Ljava/lang/Integer;

.field public zoom:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 394
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 412
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 415
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 384
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 418
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    .line 419
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    .line 420
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    .line 422
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    .line 423
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 424
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    .line 425
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    .line 426
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    .line 427
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 428
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 430
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    if-ne p1, p0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 437
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 438
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getSerializedSize()I

    .line 525
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 530
    const/4 v4, 0x0

    .line 531
    .local v4, size:I
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 532
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 535
    :cond_0
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/high16 v6, -0x8000

    if-eq v5, v6, :cond_1

    .line 536
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 539
    :cond_1
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 540
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 543
    :cond_2
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 544
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 547
    :cond_3
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v5, :cond_4

    .line 548
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 551
    :cond_4
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-eqz v5, :cond_5

    .line 552
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 555
    :cond_5
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-eqz v5, :cond_6

    .line 556
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v5

    add-int/2addr v4, v5

    .line 559
    :cond_6
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-eqz v5, :cond_7

    .line 560
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v5

    add-int/2addr v4, v5

    .line 563
    :cond_7
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v5, :cond_8

    .line 564
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 565
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    const/16 v5, 0xa

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v5, :cond_9

    .line 570
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 571
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    const/16 v5, 0xb

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_9
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 576
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 579
    :cond_a
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 580
    return v4
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x0

    .line 452
    const/16 v1, 0x11

    .line 453
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 454
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    add-int v1, v2, v4

    .line 455
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 456
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 457
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 458
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 459
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-nez v2, :cond_7

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 460
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-nez v2, :cond_8

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 461
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-nez v2, :cond_9

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 462
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v2, :cond_a

    mul-int/lit8 v1, v1, 0x1f

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v2, :cond_c

    mul-int/lit8 v1, v1, 0x1f

    .line 474
    :cond_1
    return v1

    .line 453
    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 457
    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    .line 458
    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_4

    .line 459
    :cond_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_5

    .line 460
    :cond_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_6

    .line 461
    :cond_9
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_7

    .line 464
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 465
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 465
    :cond_b
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->hashCode()I

    move-result v2

    goto :goto_9

    .line 470
    .end local v0           #i:I
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 471
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 471
    :cond_d
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->hashCode()I

    move-result v2

    goto :goto_b
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 588
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 589
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 593
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 594
    :sswitch_0
    return-object p0

    .line 599
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    goto :goto_0

    .line 603
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 604
    .local v4, temp:I
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    goto :goto_0

    .line 608
    .end local v4           #temp:I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    goto :goto_0

    .line 612
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    goto :goto_0

    .line 616
    :sswitch_5
    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 617
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 621
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    goto :goto_0

    .line 625
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    goto :goto_0

    .line 629
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    goto :goto_0

    .line 633
    :sswitch_9
    const/16 v6, 0x52

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 634
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v6, :cond_2

    move v1, v5

    .line 635
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 636
    .local v2, newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v6, :cond_1

    .line 637
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    :cond_1
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 640
    :goto_2
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 641
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v7, v6, v1

    .line 642
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 643
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 634
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_2
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v1, v6

    goto :goto_1

    .line 646
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_3
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v7, v6, v1

    .line 647
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 651
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :sswitch_a
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 652
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v6, :cond_5

    move v1, v5

    .line 653
    .restart local v1       #i:I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 654
    .local v2, newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v6, :cond_4

    .line 655
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    :cond_4
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 658
    :goto_4
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 659
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v7, v6, v1

    .line 660
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 661
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 652
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_5
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v1, v6

    goto :goto_3

    .line 664
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_6
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v7, v6, v1

    .line 665
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 669
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    goto/16 :goto_0

    .line 589
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x41 -> :sswitch_7
        0x49 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
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
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 480
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 482
    :cond_0
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_1

    .line 483
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 486
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 488
    :cond_2
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 489
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 491
    :cond_3
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v4, :cond_4

    .line 492
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 494
    :cond_4
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 495
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 497
    :cond_5
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 498
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 500
    :cond_6
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 501
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 503
    :cond_7
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v4, :cond_8

    .line 504
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 505
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v4, :cond_9

    .line 509
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 510
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_9
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 514
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 516
    :cond_a
    return-void
.end method
