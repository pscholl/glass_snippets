.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentGetRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;


# instance fields
.field public attachmentId:Ljava/lang/String;

.field private cachedSize:I

.field public screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1374
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 1523
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->cachedSize:I

    .line 1375
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1578
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1491
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    .line 1492
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 1493
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->cachedSize:I

    .line 1494
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1499
    if-ne p1, p0, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return v1

    .line 1500
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1501
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    .line 1502
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1526
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->getSerializedSize()I

    .line 1530
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1535
    const/4 v0, 0x0

    .line 1536
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1537
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1540
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-eqz v1, :cond_1

    .line 1541
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1544
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->cachedSize:I

    .line 1545
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1507
    const/16 v0, 0x11

    .line 1508
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1509
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 1510
    return v0

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1509
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1554
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1558
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1559
    :sswitch_0
    return-object p0

    .line 1564
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    goto :goto_0

    .line 1568
    :sswitch_2
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 1569
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1554
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1371
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

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
    .line 1515
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1516
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-eqz v0, :cond_1

    .line 1519
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1521
    :cond_1
    return-void
.end method
