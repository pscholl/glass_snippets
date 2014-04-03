.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impression"
.end annotation


# static fields
.field public static final RESULT_ID_FIELD_NUMBER:I = 0x2

.field public static final RESULT_INFOS_FIELD_NUMBER:I = 0x3

.field public static final RESULT_SET_NUMBER_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasResultId:Z

.field private hasResultSetNumber:Z

.field private resultId_:Ljava/lang/String;

.field private resultInfos_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resultSetNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2728
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2733
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    .line 2823
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2728
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2893
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2887
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    return-object v0
.end method


# virtual methods
.method public addResultInfos(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "value"

    .prologue
    .line 2783
    if-nez p1, :cond_0

    .line 2784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2790
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2798
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2799
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2800
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clearResultInfos()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2801
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2802
    return-object p0
.end method

.method public clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId:Z

    .line 2760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2761
    return-object p0
.end method

.method public clearResultInfos()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2793
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    .line 2794
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2742
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber:Z

    .line 2743
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2744
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2826
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    if-gez v0, :cond_0

    .line 2828
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getSerializedSize()I

    .line 2830
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultInfos(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    return-object v0
.end method

.method public getResultInfosCount()I
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2734
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2835
    const/4 v2, 0x0

    .line 2836
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2837
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultSetNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2840
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2841
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2844
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultInfosList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2845
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2848
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    :cond_2
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2849
    return v2
.end method

.method public hasResultId()Z
    .locals 1

    .prologue
    .line 2752
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId:Z

    return v0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2735
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2806
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2858
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2862
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2863
    :sswitch_0
    return-object p0

    .line 2868
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    goto :goto_0

    .line 2872
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    goto :goto_0

    .line 2876
    :sswitch_3
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    .line 2877
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2878
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->addResultInfos(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    goto :goto_0

    .line 2858
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
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
    .line 2725
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v0

    return-object v0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "value"

    .prologue
    .line 2754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId:Z

    .line 2755
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2756
    return-object p0
.end method

.method public setResultInfos(ILcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2776
    if-nez p2, :cond_0

    .line 2777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2780
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "value"

    .prologue
    .line 2737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber:Z

    .line 2738
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2739
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
    .line 2812
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2813
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultSetNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2815
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2816
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2818
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultInfosList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2819
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2821
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    :cond_2
    return-void
.end method
