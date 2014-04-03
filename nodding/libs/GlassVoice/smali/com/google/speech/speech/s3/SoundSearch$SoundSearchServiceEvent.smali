.class public final Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SoundSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/SoundSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearchServiceEvent"
.end annotation


# static fields
.field public static final RESULTS_RESPONSE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasResultsResponse:Z

.field private resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->cachedSize:I

    .line 175
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    check-cast v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->clearResultsResponse()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->cachedSize:I

    .line 200
    return-object p0
.end method

.method public clearResultsResponse()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->hasResultsResponse:Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 194
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getSerializedSize()I

    .line 222
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->cachedSize:I

    return v0
.end method

.method public getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->hasResultsResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_0
    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->cachedSize:I

    .line 233
    return v0
.end method

.method public hasResultsResponse()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->hasResultsResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 204
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
    .line 172
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 242
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    :sswitch_0
    return-object p0

    .line 252
    :sswitch_1
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;-><init>()V

    .line 253
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->setResultsResponse(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setResultsResponse(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->hasResultsResponse:Z

    .line 188
    iput-object p1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->resultsResponse_:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    .line 189
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
    .line 210
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->hasResultsResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 213
    :cond_0
    return-void
.end method
