.class public final Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientLogRequestProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/ClientLogRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientLogRequest"
.end annotation


# static fields
.field public static final VOICE_SEARCH_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasVoiceSearch:Z

.field private voiceSearch_:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->voiceSearch_:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-direct {v0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-direct {v0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    check-cast v0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->clearVoiceSearch()Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->cachedSize:I

    .line 35
    return-object p0
.end method

.method public clearVoiceSearch()Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->hasVoiceSearch:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->voiceSearch_:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 29
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->getSerializedSize()I

    .line 57
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->hasVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->getVoiceSearch()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->cachedSize:I

    .line 68
    return v0
.end method

.method public getVoiceSearch()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->voiceSearch_:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    return-object v0
.end method

.method public hasVoiceSearch()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->hasVoiceSearch:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 39
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 77
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :sswitch_0
    return-object p0

    .line 87
    :sswitch_1
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    .line 88
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->setVoiceSearch(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setVoiceSearch(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->hasVoiceSearch:Z

    .line 23
    iput-object p1, p0, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->voiceSearch_:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 24
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
    .line 45
    invoke-virtual {p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->hasVoiceSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->getVoiceSearch()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 48
    :cond_0
    return-void
.end method
