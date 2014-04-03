.class public final Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptorSet"
.end annotation


# static fields
.field public static final DESCRIPTORS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private descriptors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llocation/unified/LocationDescriptorProto$LocationDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    .line 1539
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    .line 1486
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1593
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1587
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    return-object v0
.end method


# virtual methods
.method public addDescriptors(Llocation/unified/LocationDescriptorProto$LocationDescriptor;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1
    .parameter "value"

    .prologue
    .line 1507
    if-nez p1, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1510
    :cond_0
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    .line 1513
    :cond_1
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    return-object p0
.end method

.method public final clear()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1

    .prologue
    .line 1522
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->clearDescriptors()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    .line 1523
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    .line 1524
    return-object p0
.end method

.method public clearDescriptors()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1

    .prologue
    .line 1517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    .line 1518
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    if-gez v0, :cond_0

    .line 1544
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->getSerializedSize()I

    .line 1546
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    return v0
.end method

.method public getDescriptors(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "index"

    .prologue
    .line 1497
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method

.method public getDescriptorsCount()I
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDescriptorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llocation/unified/LocationDescriptorProto$LocationDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1551
    const/4 v2, 0x0

    .line 1552
    .local v2, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->getDescriptorsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1553
    .local v0, element:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1556
    .end local v0           #element:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    :cond_0
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->cachedSize:I

    .line 1557
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1566
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1570
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1571
    :sswitch_0
    return-object p0

    .line 1576
    :sswitch_1
    new-instance v1, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    .line 1577
    .local v1, value:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1578
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->addDescriptors(Llocation/unified/LocationDescriptorProto$LocationDescriptor;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    goto :goto_0

    .line 1566
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setDescriptors(ILlocation/unified/LocationDescriptorProto$LocationDescriptor;)Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1500
    if-nez p2, :cond_0

    .line 1501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1503
    :cond_0
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->descriptors_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1504
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;->getDescriptorsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1535
    .local v0, element:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1537
    .end local v0           #element:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    :cond_0
    return-void
.end method
