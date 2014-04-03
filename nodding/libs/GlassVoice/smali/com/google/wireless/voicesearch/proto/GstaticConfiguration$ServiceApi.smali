.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceApi"
.end annotation


# static fields
.field public static final ENDPOINTER_PARAMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private hasEndpointerParams:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3182
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    .line 3182
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3276
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3270
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1

    .prologue
    .line 3205
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 3206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    .line 3207
    return-object p0
.end method

.method public clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1

    .prologue
    .line 3199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->hasEndpointerParams:Z

    .line 3200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3201
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3225
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    if-gez v0, :cond_0

    .line 3227
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->getSerializedSize()I

    .line 3229
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    return v0
.end method

.method public getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3234
    const/4 v0, 0x0

    .line 3235
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->hasEndpointerParams()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3236
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3239
    :cond_0
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    .line 3240
    return v0
.end method

.method public hasEndpointerParams()Z
    .locals 1

    .prologue
    .line 3188
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->hasEndpointerParams:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3211
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
    .line 3179
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3249
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3253
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3254
    :sswitch_0
    return-object p0

    .line 3259
    :sswitch_1
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    .line 3260
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3261
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    goto :goto_0

    .line 3249
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1
    .parameter "value"

    .prologue
    .line 3191
    if-nez p1, :cond_0

    .line 3192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3194
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->hasEndpointerParams:Z

    .line 3195
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3196
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
    .line 3217
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->hasEndpointerParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3218
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3220
    :cond_0
    return-void
.end method
