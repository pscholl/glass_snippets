.class public final Lcom/google/speech/s3/S3$S3SessionInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3SessionInfo"
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
    .line 2192
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->sessionId_:Ljava/lang/String;

    .line 2229
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->cachedSize:I

    .line 2192
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2281
    new-instance v0, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2275
    new-instance v0, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3SessionInfo;

    check-cast v0, Lcom/google/speech/s3/S3$S3SessionInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 1

    .prologue
    .line 2212
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->clearSessionId()Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 2213
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->cachedSize:I

    .line 2214
    return-object p0
.end method

.method public clearSessionId()Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 1

    .prologue
    .line 2206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->hasSessionId:Z

    .line 2207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->sessionId_:Ljava/lang/String;

    .line 2208
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2232
    iget v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2234
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->getSerializedSize()I

    .line 2236
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2241
    const/4 v0, 0x0

    .line 2242
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->hasSessionId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    :cond_0
    iput v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->cachedSize:I

    .line 2247
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->hasSessionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2218
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
    .line 2189
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3SessionInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2256
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2260
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3SessionInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2261
    :sswitch_0
    return-object p0

    .line 2266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    goto :goto_0

    .line 2256
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->hasSessionId:Z

    .line 2202
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3SessionInfo;->sessionId_:Ljava/lang/String;

    .line 2203
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
    .line 2224
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2227
    :cond_0
    return-void
.end method
