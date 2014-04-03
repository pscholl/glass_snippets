.class public final Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SoundSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/SoundSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearchInfo"
.end annotation


# static fields
.field public static final LOOKUP_REQUEST_FIELD_NUMBER:I = 0x1

.field public static final STREAM_REQUEST_FIELD_NUMBER:I = 0x2

.field public static final TTS_OUTPUT_ENABLED_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasLookupRequest:Z

.field private hasStreamRequest:Z

.field private hasTtsOutputEnabled:Z

.field private lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

.field private streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

.field private ttsOutputEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 35
    iput-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    check-cast v0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->clearLookupRequest()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 71
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->clearStreamRequest()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 72
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->clearTtsOutputEnabled()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    .line 74
    return-object p0
.end method

.method public clearLookupRequest()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasLookupRequest:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 29
    return-object p0
.end method

.method public clearStreamRequest()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasStreamRequest:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 49
    return-object p0
.end method

.method public clearTtsOutputEnabled()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasTtsOutputEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 66
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getSerializedSize()I

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    return v0
.end method

.method public getLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasLookupRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasStreamRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasTtsOutputEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getTtsOutputEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_2
    iput v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->cachedSize:I

    .line 121
    return v0
.end method

.method public getStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    return-object v0
.end method

.method public getTtsOutputEnabled()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    return v0
.end method

.method public hasLookupRequest()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasLookupRequest:Z

    return v0
.end method

.method public hasStreamRequest()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasStreamRequest:Z

    return v0
.end method

.method public hasTtsOutputEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasTtsOutputEnabled:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 78
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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 130
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    :sswitch_0
    return-object p0

    .line 140
    :sswitch_1
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    .line 141
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    goto :goto_0

    .line 146
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    :sswitch_2
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    .line 147
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    goto :goto_0

    .line 152
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setTtsOutputEnabled(Z)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
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

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasLookupRequest:Z

    .line 23
    iput-object p1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->lookupRequest_:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 24
    return-object p0
.end method

.method public setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasStreamRequest:Z

    .line 43
    iput-object p1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->streamRequest_:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 44
    return-object p0
.end method

.method public setTtsOutputEnabled(Z)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasTtsOutputEnabled:Z

    .line 60
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->ttsOutputEnabled_:Z

    .line 61
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
    .line 84
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasLookupRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getLookupRequest()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getStreamRequest()Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->hasTtsOutputEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->getTtsOutputEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 93
    :cond_2
    return-void
.end method
