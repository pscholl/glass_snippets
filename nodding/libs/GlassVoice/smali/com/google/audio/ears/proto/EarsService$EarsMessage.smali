.class public final Lcom/google/audio/ears/proto/EarsService$EarsMessage;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsMessage"
.end annotation


# static fields
.field public static final LOOKUP_REQUEST_FIELD_NUMBER:I = 0x1

.field public static final MEDIA_PACKET_FIELD_NUMBER:I = 0x3

.field public static final RESULTS_REQUEST_FIELD_NUMBER:I = 0x4

.field public static final RESULTS_RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final STREAM_REQUEST_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLookupRequest:Z

.field private hasMediaPacket:Z

.field private hasResultsRequest:Z

.field private hasResultsResponse:Z

.field private hasStreamRequest:Z

.field private lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

.field private mediaPacket_:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

.field private resultsRequest_:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

.field private resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

.field private streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 41
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 61
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket_:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 81
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest_:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    .line 101
    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    .line 16
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->clearLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 120
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->clearStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 121
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->clearMediaPacket()Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 122
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->clearResultsRequest()Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 123
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->clearResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    .line 125
    return-object p0
.end method

.method public clearLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasLookupRequest:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 35
    return-object p0
.end method

.method public clearMediaPacket()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasMediaPacket:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket_:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 75
    return-object p0
.end method

.method public clearResultsRequest()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsRequest:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest_:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    .line 95
    return-object p0
.end method

.method public clearResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsResponse:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 115
    return-object p0
.end method

.method public clearStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasStreamRequest:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 55
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    if-gez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getSerializedSize()I

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    return v0
.end method

.method public getLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    return-object v0
.end method

.method public getMediaPacket()Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket_:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    return-object v0
.end method

.method public getResultsRequest()Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest_:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    return-object v0
.end method

.method public getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasLookupRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasStreamRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasMediaPacket()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getMediaPacket()Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsRequest()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getResultsRequest()Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_4
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->cachedSize:I

    .line 186
    return v0
.end method

.method public getStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    return-object v0
.end method

.method public hasLookupRequest()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasLookupRequest:Z

    return v0
.end method

.method public hasMediaPacket()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasMediaPacket:Z

    return v0
.end method

.method public hasResultsRequest()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsRequest:Z

    return v0
.end method

.method public hasResultsResponse()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsResponse:Z

    return v0
.end method

.method public hasStreamRequest()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasStreamRequest:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 195
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :sswitch_0
    return-object p0

    .line 205
    :sswitch_1
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    .line 206
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 207
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    goto :goto_0

    .line 211
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    :sswitch_2
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    .line 212
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 213
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    goto :goto_0

    .line 217
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    :sswitch_3
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$MediaPacket;-><init>()V

    .line 218
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->setMediaPacket(Lcom/google/audio/ears/proto/EarsService$MediaPacket;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    goto :goto_0

    .line 223
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$MediaPacket;
    :sswitch_4
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;-><init>()V

    .line 224
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->setResultsRequest(Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    goto :goto_0

    .line 229
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    :sswitch_5
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    .line 230
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->setResultsResponse(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;

    move-result-object v0

    return-object v0
.end method

.method public setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasLookupRequest:Z

    .line 29
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 30
    return-object p0
.end method

.method public setMediaPacket(Lcom/google/audio/ears/proto/EarsService$MediaPacket;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "value"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasMediaPacket:Z

    .line 69
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->mediaPacket_:Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    .line 70
    return-object p0
.end method

.method public setResultsRequest(Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsRequest:Z

    .line 89
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsRequest_:Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    .line 90
    return-object p0
.end method

.method public setResultsResponse(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "value"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsResponse:Z

    .line 109
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 110
    return-object p0
.end method

.method public setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/audio/ears/proto/EarsService$EarsMessage;
    .locals 1
    .parameter "value"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasStreamRequest:Z

    .line 49
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 50
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
    .line 135
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasLookupRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasMediaPacket()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getMediaPacket()Lcom/google/audio/ears/proto/EarsService$MediaPacket;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getResultsRequest()Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->hasResultsResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsMessage;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 150
    :cond_4
    return-void
.end method
