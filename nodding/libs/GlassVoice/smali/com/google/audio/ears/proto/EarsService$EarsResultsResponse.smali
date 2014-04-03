.class public final Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResultsResponse"
.end annotation


# static fields
.field public static final DETECTED_COUNTRY_CODE_FIELD_NUMBER:I = 0x3

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field public static final STATUS_CODE_COMPLETE:I = 0x1

.field public static final STATUS_CODE_FAILURE:I = 0x2

.field public static final STATUS_CODE_FIELD_NUMBER:I = 0x2

.field public static final STATUS_CODE_IN_PROGRESS:I


# instance fields
.field private cachedSize:I

.field private detectedCountryCode_:Ljava/lang/String;

.field private hasDetectedCountryCode:Z

.field private hasStatusCode:Z

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$EarsResult;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 970
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    .line 1004
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1061
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    .line 961
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    return-object v0
.end method


# virtual methods
.method public addResult(Lcom/google/audio/ears/proto/EarsService$EarsResult;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 987
    if-nez p1, :cond_0

    .line 988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->clearResult()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 1037
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->clearStatusCode()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 1038
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->clearDetectedCountryCode()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    .line 1040
    return-object p0
.end method

.method public clearDetectedCountryCode()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasDetectedCountryCode:Z

    .line 1031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1032
    return-object p0
.end method

.method public clearResult()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    .line 998
    return-object p0
.end method

.method public clearStatusCode()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasStatusCode:Z

    .line 1014
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1015
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getSerializedSize()I

    .line 1068
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    return v0
.end method

.method public getDetectedCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getResult(I)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    return-object v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$EarsResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1073
    const/4 v2, 0x0

    .line 1074
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getResultList()Ljava/util/List;

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

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1075
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1078
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasStatusCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getStatusCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1082
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasDetectedCountryCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1083
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getDetectedCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1086
    :cond_2
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->cachedSize:I

    .line 1087
    return v2
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    return v0
.end method

.method public hasDetectedCountryCode()Z
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasDetectedCountryCode:Z

    return v0
.end method

.method public hasStatusCode()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasStatusCode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1096
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1100
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    :sswitch_0
    return-object p0

    .line 1106
    :sswitch_1
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    .line 1107
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1108
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->addResult(Lcom/google/audio/ears/proto/EarsService$EarsResult;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    goto :goto_0

    .line 1112
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->setStatusCode(I)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    goto :goto_0

    .line 1116
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->setDetectedCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    goto :goto_0

    .line 1096
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 958
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDetectedCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasDetectedCountryCode:Z

    .line 1026
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->detectedCountryCode_:Ljava/lang/String;

    .line 1027
    return-object p0
.end method

.method public setResult(ILcom/google/audio/ears/proto/EarsService$EarsResult;)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 980
    if-nez p2, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 984
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasStatusCode:Z

    .line 1009
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->statusCode_:I

    .line 1010
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
    .line 1050
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getResultList()Ljava/util/List;

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

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1051
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1053
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasStatusCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1054
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1056
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->hasDetectedCountryCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getDetectedCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1059
    :cond_2
    return-void
.end method
