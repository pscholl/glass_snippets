.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenDimensions"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;


# instance fields
.field private cachedSize:I

.field public heightPixels:Ljava/lang/Integer;

.field public widthPixels:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1420
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    .line 1381
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1388
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    .line 1389
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    .line 1390
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    .line 1391
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1396
    if-ne p1, p0, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return v1

    .line 1397
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1398
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 1399
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1423
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    if-gez v0, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->getSerializedSize()I

    .line 1427
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1432
    const/4 v0, 0x0

    .line 1433
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1434
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1437
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1438
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1441
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    .line 1442
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1404
    const/16 v0, 0x11

    .line 1405
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1406
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 1407
    return v0

    .line 1405
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1406
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1451
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1455
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    :sswitch_0
    return-object p0

    .line 1461
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    goto :goto_0

    .line 1465
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    goto :goto_0

    .line 1451
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 1377
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1480
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1474
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

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
    .line 1412
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1413
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1416
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1418
    :cond_1
    return-void
.end method
