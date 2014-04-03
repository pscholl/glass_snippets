.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugServer"
.end annotation


# static fields
.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final PAIR_HTTP_SERVER_INFO_FIELD_NUMBER:I = 0x4

.field public static final SINGLE_HTTP_SERVER_INFO_FIELD_NUMBER:I = 0x3

.field public static final TCP_SERVER_INFO_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLabel:Z

.field private hasPairHttpServerInfo:Z

.field private hasSingleHttpServerInfo:Z

.field private hasTcpServerInfo:Z

.field private label_:Ljava/lang/String;

.field private pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field private singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

.field private tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4650
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4672
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 4692
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 4712
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 4759
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    .line 4650
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4841
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4835
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1

    .prologue
    .line 4730
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->clearLabel()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4731
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->clearTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4732
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->clearSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4733
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->clearPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    .line 4734
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    .line 4735
    return-object p0
.end method

.method public clearLabel()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1

    .prologue
    .line 4664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasLabel:Z

    .line 4665
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4666
    return-object p0
.end method

.method public clearPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1

    .prologue
    .line 4724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasPairHttpServerInfo:Z

    .line 4725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 4726
    return-object p0
.end method

.method public clearSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1

    .prologue
    .line 4704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasSingleHttpServerInfo:Z

    .line 4705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 4706
    return-object p0
.end method

.method public clearTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1

    .prologue
    .line 4684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasTcpServerInfo:Z

    .line 4685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 4686
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4762
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    if-gez v0, :cond_0

    .line 4764
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getSerializedSize()I

    .line 4766
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 4714
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4771
    const/4 v0, 0x0

    .line 4772
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4773
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4776
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasTcpServerInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4777
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4780
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasSingleHttpServerInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4781
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4784
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasPairHttpServerInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4785
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4788
    :cond_3
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->cachedSize:I

    .line 4789
    return v0
.end method

.method public getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 4694
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0
.end method

.method public getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 4674
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 4657
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasLabel:Z

    return v0
.end method

.method public hasPairHttpServerInfo()Z
    .locals 1

    .prologue
    .line 4713
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasPairHttpServerInfo:Z

    return v0
.end method

.method public hasSingleHttpServerInfo()Z
    .locals 1

    .prologue
    .line 4693
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasSingleHttpServerInfo:Z

    return v0
.end method

.method public hasTcpServerInfo()Z
    .locals 1

    .prologue
    .line 4673
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasTcpServerInfo:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4739
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
    .line 4647
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4798
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4802
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4803
    :sswitch_0
    return-object p0

    .line 4808
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->setLabel(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    goto :goto_0

    .line 4812
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    .line 4813
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4814
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->setTcpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    goto :goto_0

    .line 4818
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    :sswitch_3
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    .line 4819
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4820
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->setSingleHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    goto :goto_0

    .line 4824
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :sswitch_4
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    .line 4825
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4826
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->setPairHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;

    goto :goto_0

    .line 4798
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "value"

    .prologue
    .line 4659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasLabel:Z

    .line 4660
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->label_:Ljava/lang/String;

    .line 4661
    return-object p0
.end method

.method public setPairHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "value"

    .prologue
    .line 4716
    if-nez p1, :cond_0

    .line 4717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4719
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasPairHttpServerInfo:Z

    .line 4720
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 4721
    return-object p0
.end method

.method public setSingleHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "value"

    .prologue
    .line 4696
    if-nez p1, :cond_0

    .line 4697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4699
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasSingleHttpServerInfo:Z

    .line 4700
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 4701
    return-object p0
.end method

.method public setTcpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;
    .locals 1
    .parameter "value"

    .prologue
    .line 4676
    if-nez p1, :cond_0

    .line 4677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4679
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasTcpServerInfo:Z

    .line 4680
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 4681
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
    .line 4745
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4746
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4748
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasTcpServerInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4749
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4751
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasSingleHttpServerInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4752
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4754
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->hasPairHttpServerInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4755
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$DebugServer;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4757
    :cond_3
    return-void
.end method
