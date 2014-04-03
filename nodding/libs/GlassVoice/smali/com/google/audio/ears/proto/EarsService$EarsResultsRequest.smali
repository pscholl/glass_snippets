.class public final Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResultsRequest"
.end annotation


# static fields
.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasSessionId:Z

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->sessionId_:Ljava/lang/String;

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->cachedSize:I

    .line 864
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 947
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 1

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->clearSessionId()Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->cachedSize:I

    .line 886
    return-object p0
.end method

.method public clearSessionId()Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->hasSessionId:Z

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->sessionId_:Ljava/lang/String;

    .line 880
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->getSerializedSize()I

    .line 908
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->hasSessionId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 918
    :cond_0
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->cachedSize:I

    .line 919
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->hasSessionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 928
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 932
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    :sswitch_0
    return-object p0

    .line 938
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->setSessionId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    goto :goto_0

    .line 928
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 861
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->hasSessionId:Z

    .line 874
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->sessionId_:Ljava/lang/String;

    .line 875
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
    .line 896
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResultsRequest;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 899
    :cond_0
    return-void
.end method
