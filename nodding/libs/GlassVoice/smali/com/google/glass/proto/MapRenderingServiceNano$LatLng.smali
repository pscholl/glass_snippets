.class public final Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;


# instance fields
.field private cachedSize:I

.field public lat:Ljava/lang/Double;

.field public lng:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    .line 11
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    .line 19
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    .line 21
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p1, p0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 29
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getSerializedSize()I

    .line 57
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 68
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_1
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    .line 72
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 34
    const/16 v0, 0x11

    .line 35
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 36
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 37
    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 81
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 85
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    :sswitch_0
    return-object p0

    .line 91
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    goto :goto_0

    .line 95
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

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
    .line 42
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 48
    :cond_1
    return-void
.end method
