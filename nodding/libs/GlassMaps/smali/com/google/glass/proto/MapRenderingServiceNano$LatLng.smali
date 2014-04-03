.class public final Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;


# instance fields
.field private a:I

.field public lat:Ljava/lang/Double;

.field public lng:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->a:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->a:I

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
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->a:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->a:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 2

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ID)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ID)V

    :cond_1
    return-void
.end method
