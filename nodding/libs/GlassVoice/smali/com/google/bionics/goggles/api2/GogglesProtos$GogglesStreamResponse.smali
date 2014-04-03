.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesStreamResponse"
.end annotation


# static fields
.field public static final HIGHEST_SEQUENCE_NUMBER_COMPLETE_FIELD_NUMBER:I = 0x5

.field public static final HIGHEST_SEQUENCE_NUMBER_RECEIVED_FIELD_NUMBER:I = 0x4

.field public static final RESULTS_FIELD_NUMBER:I = 0x3

.field public static final RESULT_SET_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final SESSION_METADATA_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasHighestSequenceNumberComplete:Z

.field private hasHighestSequenceNumberReceived:Z

.field private hasResultSetNumber:Z

.field private hasSessionMetadata:Z

.field private highestSequenceNumberComplete_:I

.field private highestSequenceNumberReceived_:I

.field private resultSetNumber_:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private sessionMetadata_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1923
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1928
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 1945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 1964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    .line 1998
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 2015
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 2063
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    .line 1923
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2151
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2145
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    return-object v0
.end method


# virtual methods
.method public addResults(Lcom/google/bionics/goggles/api2/GogglesProtos$Result;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1981
    if-nez p1, :cond_0

    .line 1982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    .line 1987
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1988
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2031
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->clearSessionMetadata()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2032
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->clearResults()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2033
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->clearHighestSequenceNumberReceived()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2034
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->clearHighestSequenceNumberComplete()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2035
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    .line 2036
    return-object p0
.end method

.method public clearHighestSequenceNumberComplete()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 2024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberComplete:Z

    .line 2025
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 2026
    return-object p0
.end method

.method public clearHighestSequenceNumberReceived()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 2007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberReceived:Z

    .line 2008
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 2009
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1937
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasResultSetNumber:Z

    .line 1938
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 1939
    return-object p0
.end method

.method public clearResults()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 1991
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    .line 1992
    return-object p0
.end method

.method public clearSessionMetadata()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasSessionMetadata:Z

    .line 1958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 1959
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2066
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 2068
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getSerializedSize()I

    .line 2070
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    return v0
.end method

.method public getHighestSequenceNumberComplete()I
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    return v0
.end method

.method public getHighestSequenceNumberReceived()I
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    return v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 1929
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    return v0
.end method

.method public getResults(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    .locals 1
    .parameter "index"

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    return-object v0
.end method

.method public getResultsCount()I
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2075
    const/4 v2, 0x0

    .line 2076
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasResultSetNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2077
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getResultSetNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2080
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasSessionMetadata()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2081
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getSessionMetadata()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2084
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getResultsList()Ljava/util/List;

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

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    .line 2085
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2088
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberReceived()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2089
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getHighestSequenceNumberReceived()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2092
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2093
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getHighestSequenceNumberComplete()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2096
    :cond_4
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->cachedSize:I

    .line 2097
    return v2
.end method

.method public getSessionMetadata()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    return-object v0
.end method

.method public hasHighestSequenceNumberComplete()Z
    .locals 1

    .prologue
    .line 2017
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberComplete:Z

    return v0
.end method

.method public hasHighestSequenceNumberReceived()Z
    .locals 1

    .prologue
    .line 2000
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberReceived:Z

    return v0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasResultSetNumber:Z

    return v0
.end method

.method public hasSessionMetadata()Z
    .locals 1

    .prologue
    .line 1946
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasSessionMetadata:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2040
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2106
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2110
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2111
    :sswitch_0
    return-object p0

    .line 2116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    goto :goto_0

    .line 2120
    :sswitch_2
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;-><init>()V

    .line 2121
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2122
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->setSessionMetadata(Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    goto :goto_0

    .line 2126
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    :sswitch_3
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;-><init>()V

    .line 2127
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2128
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->addResults(Lcom/google/bionics/goggles/api2/GogglesProtos$Result;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    goto :goto_0

    .line 2132
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->setHighestSequenceNumberReceived(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    goto :goto_0

    .line 2136
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->setHighestSequenceNumberComplete(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    goto :goto_0

    .line 2106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 1920
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHighestSequenceNumberComplete(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberComplete:Z

    .line 2020
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberComplete_:I

    .line 2021
    return-object p0
.end method

.method public setHighestSequenceNumberReceived(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberReceived:Z

    .line 2003
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->highestSequenceNumberReceived_:I

    .line 2004
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasResultSetNumber:Z

    .line 1933
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->resultSetNumber_:I

    .line 1934
    return-object p0
.end method

.method public setResults(ILcom/google/bionics/goggles/api2/GogglesProtos$Result;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1974
    if-nez p2, :cond_0

    .line 1975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1978
    return-object p0
.end method

.method public setSessionMetadata(Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1949
    if-nez p1, :cond_0

    .line 1950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1952
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasSessionMetadata:Z

    .line 1953
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->sessionMetadata_:Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 1954
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
    .line 2046
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasResultSetNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2047
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getResultSetNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2049
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasSessionMetadata()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2050
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getSessionMetadata()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2052
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getResultsList()Ljava/util/List;

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

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Result;

    .line 2053
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2055
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$Result;
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberReceived()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2056
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getHighestSequenceNumberReceived()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2058
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->hasHighestSequenceNumberComplete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2059
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;->getHighestSequenceNumberComplete()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2061
    :cond_4
    return-void
.end method
