.class public final Llocation/unified/LocationDescriptorProto$LatLngRect;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLngRect"
.end annotation


# static fields
.field public static final HI_FIELD_NUMBER:I = 0x2

.field public static final LO_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasHi:Z

.field private hasLo:Z

.field private hi_:Llocation/unified/LocationDescriptorProto$LatLng;

.field private lo_:Llocation/unified/LocationDescriptorProto$LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 476
    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 496
    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    .line 471
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLngRect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LatLngRect;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->clearLo()Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 515
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->clearHi()Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 516
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    .line 517
    return-object p0
.end method

.method public clearHi()Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasHi:Z

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 510
    return-object p0
.end method

.method public clearLo()Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasLo:Z

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 490
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    if-gez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->getSerializedSize()I

    .line 542
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    return v0
.end method

.method public getHi()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLo()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasLo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->getLo()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 552
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasHi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->getHi()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->cachedSize:I

    .line 557
    return v0
.end method

.method public hasHi()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasHi:Z

    return v0
.end method

.method public hasLo()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasLo:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 521
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
    .line 468
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LatLngRect;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLngRect;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 566
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 570
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    :sswitch_0
    return-object p0

    .line 576
    :sswitch_1
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 577
    .local v1, value:Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 578
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LatLngRect;->setLo(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LatLngRect;

    goto :goto_0

    .line 582
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$LatLng;
    :sswitch_2
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 583
    .restart local v1       #value:Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 584
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LatLngRect;->setHi(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LatLngRect;

    goto :goto_0

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setHi(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .parameter "value"

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 503
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasHi:Z

    .line 504
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 505
    return-object p0
.end method

.method public setLo(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1
    .parameter "value"

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 483
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasLo:Z

    .line 484
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 485
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasLo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->getLo()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 530
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->hasHi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLngRect;->getHi()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 533
    :cond_1
    return-void
.end method
