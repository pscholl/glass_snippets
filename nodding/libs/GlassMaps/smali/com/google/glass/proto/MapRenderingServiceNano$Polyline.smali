.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;


# instance fields
.field private a:I

.field public colorArgb:Ljava/lang/Integer;

.field public vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field public width:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->a:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->a:I

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
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->a:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    const/4 v5, 0x1

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->a:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v2, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_3
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    :goto_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)V

    :cond_2
    return-void
.end method
