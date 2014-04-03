.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;


# instance fields
.field private a:I

.field public location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->a:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->a:I

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
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    iget v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v2, v3}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->a:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->a:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_1
    return-void
.end method
