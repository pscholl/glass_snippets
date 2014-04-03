.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Debug"
.end annotation


# static fields
.field public static final DEBUG_SERVER_FIELD_NUMBER:I = 0x8

.field public static final GOGGLES_DEBUG_SERVER_FIELD_NUMBER:I = 0x9


# instance fields
.field private cachedSize:I

.field private debugServer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;",
            ">;"
        }
    .end annotation
.end field

.field private gogglesDebugServer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4488
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    .line 4525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    .line 4578
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    .line 4488
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4642
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4636
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    return-object v0
.end method


# virtual methods
.method public addDebugServer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .parameter "value"

    .prologue
    .line 4509
    if-nez p1, :cond_0

    .line 4510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4512
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    .line 4515
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4516
    return-object p0
.end method

.method public addGogglesDebugServer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .parameter "value"

    .prologue
    .line 4542
    if-nez p1, :cond_0

    .line 4543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4545
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    .line 4548
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4549
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1

    .prologue
    .line 4557
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->clearDebugServer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 4558
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->clearGogglesDebugServer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 4559
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    .line 4560
    return-object p0
.end method

.method public clearDebugServer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1

    .prologue
    .line 4519
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    .line 4520
    return-object p0
.end method

.method public clearGogglesDebugServer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1

    .prologue
    .line 4552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    .line 4553
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4581
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    if-gez v0, :cond_0

    .line 4583
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->getSerializedSize()I

    .line 4585
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    return v0
.end method

.method public getDebugServer(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "index"

    .prologue
    .line 4499
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    return-object v0
.end method

.method public getDebugServerCount()I
    .locals 1

    .prologue
    .line 4497
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDebugServerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4495
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    return-object v0
.end method

.method public getGogglesDebugServer(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "index"

    .prologue
    .line 4532
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    return-object v0
.end method

.method public getGogglesDebugServerCount()I
    .locals 1

    .prologue
    .line 4530
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGogglesDebugServerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4528
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4590
    const/4 v2, 0x0

    .line 4591
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->getDebugServerList()Ljava/util/List;

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

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4592
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 4595
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->getGogglesDebugServerList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4596
    .restart local v0       #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 4599
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :cond_1
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->cachedSize:I

    .line 4600
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4564
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
    .line 4485
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4608
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4609
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4613
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4614
    :sswitch_0
    return-object p0

    .line 4619
    :sswitch_1
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    .line 4620
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4621
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->addDebugServer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    goto :goto_0

    .line 4625
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    .line 4626
    .restart local v1       #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4627
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->addGogglesDebugServer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    goto :goto_0

    .line 4609
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x42 -> :sswitch_1
        0x4a -> :sswitch_2
    .end sparse-switch
.end method

.method public setDebugServer(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4502
    if-nez p2, :cond_0

    .line 4503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4505
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->debugServer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4506
    return-object p0
.end method

.method public setGogglesDebugServer(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4535
    if-nez p2, :cond_0

    .line 4536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4538
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->gogglesDebugServer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4539
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
    .line 4570
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->getDebugServerList()Ljava/util/List;

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

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4571
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 4573
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;->getGogglesDebugServerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4574
    .restart local v0       #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 4576
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    :cond_1
    return-void
.end method
