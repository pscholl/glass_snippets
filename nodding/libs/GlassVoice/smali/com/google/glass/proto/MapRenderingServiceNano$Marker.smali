.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/MapRenderingServiceNano$Marker$MarkerType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;


# instance fields
.field private cachedSize:I

.field public location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 127
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->cachedSize:I

    .line 119
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

    .prologue
    .line 133
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->cachedSize:I

    .line 136
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    if-ne p1, p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 144
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->cachedSize:I

    if-gez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->getSerializedSize()I

    .line 172
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 179
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_1

    .line 183
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_1
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->cachedSize:I

    .line 187
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 149
    const/16 v0, 0x11

    .line 150
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 151
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 152
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 196
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 200
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    :sswitch_0
    return-object p0

    .line 206
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 207
    .local v1, temp:I
    iput v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    goto :goto_0

    .line 211
    .end local v1           #temp:I
    :sswitch_2
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 212
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

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
    .line 157
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 158
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_1

    .line 161
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 163
    :cond_1
    return-void
.end method
