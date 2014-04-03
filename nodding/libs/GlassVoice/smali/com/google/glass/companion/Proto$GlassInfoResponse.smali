.class public final Lcom/google/glass/companion/Proto$GlassInfoResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoResponse;


# instance fields
.field public batteryLevel:Ljava/lang/Integer;

.field private cachedSize:I

.field public deviceName:Ljava/lang/String;

.field public externalStorageAvailableBytes:Ljava/lang/Long;

.field public externalStorageTotalBytes:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2245
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2300
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 2245
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2376
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2370
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2256
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    .line 2257
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    .line 2258
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    .line 2259
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    .line 2260
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 2261
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2266
    if-ne p1, p0, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return v1

    .line 2267
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2268
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 2269
    .local v0, other:Lcom/google/glass/companion/Proto$GlassInfoResponse;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2303
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 2305
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->getSerializedSize()I

    .line 2307
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2312
    const/4 v0, 0x0

    .line 2313
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2314
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2317
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2318
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2321
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 2322
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2325
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2326
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2329
    :cond_3
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 2330
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 2276
    const/16 v0, 0x11

    .line 2277
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2278
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 2279
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 2280
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 2281
    return v0

    .line 2277
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 2278
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_1

    .line 2279
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_2

    .line 2280
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2339
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2343
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2344
    :sswitch_0
    return-object p0

    .line 2349
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 2353
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    goto :goto_0

    .line 2357
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    goto :goto_0

    .line 2361
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 2339
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2241
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

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
    .line 2286
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2287
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2290
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2292
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2293
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2295
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2296
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2298
    :cond_3
    return-void
.end method
