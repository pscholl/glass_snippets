.class public final Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeStreamParams"
.end annotation


# static fields
.field public static final ADDITIONAL_INTERNAL_CGI_PARAMS_FIELD_NUMBER:I = 0x2

.field public static final ADDITIONAL_INTERNAL_HEADERS_FIELD_NUMBER:I = 0x3

.field public static final ADD_X_USER_IP_HEADER_FIELD_NUMBER:I = 0x4

.field public static final SERVER_RESOURCE_FIELD_NUMBER:I = 0x1


# instance fields
.field private addXUserIpHeader_:Z

.field private additionalInternalCgiParams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;",
            ">;"
        }
    .end annotation
.end field

.field private additionalInternalHeaders_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeHeader;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasAddXUserIpHeader:Z

.field private hasServerResource:Z

.field private serverResource_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    .line 725
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    .line 671
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    return-object v0
.end method


# virtual methods
.method public addAdditionalInternalCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    return-object p0
.end method

.method public addAdditionalInternalHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 742
    if-nez p1, :cond_0

    .line 743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->clearServerResource()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    .line 775
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->clearAdditionalInternalCgiParams()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    .line 776
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->clearAdditionalInternalHeaders()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    .line 777
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->clearAddXUserIpHeader()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    .line 778
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    .line 779
    return-object p0
.end method

.method public clearAddXUserIpHeader()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasAddXUserIpHeader:Z

    .line 769
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 770
    return-object p0
.end method

.method public clearAdditionalInternalCgiParams()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    .line 720
    return-object p0
.end method

.method public clearAdditionalInternalHeaders()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    .line 753
    return-object p0
.end method

.method public clearServerResource()Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasServerResource:Z

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 687
    return-object p0
.end method

.method public getAddXUserIpHeader()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    return v0
.end method

.method public getAdditionalInternalCgiParams(I)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .parameter "index"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    return-object v0
.end method

.method public getAdditionalInternalCgiParamsCount()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalInternalCgiParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    return-object v0
.end method

.method public getAdditionalInternalHeaders(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "index"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    return-object v0
.end method

.method public getAdditionalInternalHeadersCount()I
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalInternalHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getSerializedSize()I

    .line 810
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasServerResource()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getServerResource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getAdditionalInternalCgiParamsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 821
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 824
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getAdditionalInternalHeadersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 825
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 828
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasAddXUserIpHeader()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 829
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getAddXUserIpHeader()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 832
    :cond_3
    iput v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->cachedSize:I

    .line 833
    return v2
.end method

.method public getServerResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddXUserIpHeader()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasAddXUserIpHeader:Z

    return v0
.end method

.method public hasServerResource()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasServerResource:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 783
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
    .line 668
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 842
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 846
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    :sswitch_0
    return-object p0

    .line 852
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->setServerResource(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    goto :goto_0

    .line 856
    :sswitch_2
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    .line 857
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 858
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addAdditionalInternalCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    goto :goto_0

    .line 862
    .end local v1           #value:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :sswitch_3
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    .line 863
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 864
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addAdditionalInternalHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    goto :goto_0

    .line 868
    .end local v1           #value:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->setAddXUserIpHeader(Z)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;

    goto :goto_0

    .line 842
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAddXUserIpHeader(Z)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasAddXUserIpHeader:Z

    .line 764
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->addXUserIpHeader_:Z

    .line 765
    return-object p0
.end method

.method public setAdditionalInternalCgiParams(ILcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 702
    if-nez p2, :cond_0

    .line 703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalCgiParams_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 706
    return-object p0
.end method

.method public setAdditionalInternalHeaders(ILcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 735
    if-nez p2, :cond_0

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->additionalInternalHeaders_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    return-object p0
.end method

.method public setServerResource(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasServerResource:Z

    .line 681
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->serverResource_:Ljava/lang/String;

    .line 682
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasServerResource()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getServerResource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getAdditionalInternalCgiParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 793
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 795
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getAdditionalInternalHeadersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 796
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 798
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->hasAddXUserIpHeader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 799
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeStreamParams;->getAddXUserIpHeader()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 801
    :cond_3
    return-void
.end method
