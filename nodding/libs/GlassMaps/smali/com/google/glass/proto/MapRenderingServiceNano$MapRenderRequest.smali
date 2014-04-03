.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;


# instance fields
.field private a:I

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

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->a:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->a:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-nez v2, :cond_3

    :goto_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-nez v2, :cond_3

    :goto_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-nez v2, :cond_3

    :goto_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v2, v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_8
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->a:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_0

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-eqz v2, :cond_6

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_7

    aget-object v3, v4, v2

    const/16 v6, 0xa

    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    const/16 v5, 0xb

    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->a:I

    return v0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v7, 0x20

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-nez v0, :cond_8

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v2, :cond_a

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v0, :cond_c

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_7

    :cond_a
    move v2, v0

    move v0, v1

    :goto_8
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v1

    :goto_9
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_c
    move v0, v1

    :goto_a
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    move v2, v1

    :goto_b
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->hashCode()I

    move-result v2

    goto :goto_b
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    :goto_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    :goto_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v0, v0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    goto/16 :goto_0

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

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_4
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    :cond_5
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ID)V

    :cond_6
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ID)V

    :cond_7
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_9

    aget-object v3, v1, v0

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_a
    return-void
.end method
