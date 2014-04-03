.class public final Lcom/google/speech/s3/S3$S3ResponseBatch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ResponseBatch"
.end annotation


# static fields
.field public static final RESPONSES_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private responses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3225
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3229
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    .line 3281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    .line 3225
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3335
    new-instance v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ResponseBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ResponseBatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3329
    new-instance v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ResponseBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    check-cast v0, Lcom/google/speech/s3/S3$S3ResponseBatch;

    return-object v0
.end method


# virtual methods
.method public addResponses(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 3246
    if-nez p1, :cond_0

    .line 3247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    .line 3252
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3253
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1

    .prologue
    .line 3261
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->clearResponses()Lcom/google/speech/s3/S3$S3ResponseBatch;

    .line 3262
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    .line 3263
    return-object p0
.end method

.method public clearResponses()Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1

    .prologue
    .line 3256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    .line 3257
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3284
    iget v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    if-gez v0, :cond_0

    .line 3286
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->getSerializedSize()I

    .line 3288
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    return v0
.end method

.method public getResponses(I)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "index"

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    return-object v0
.end method

.method public getResponsesCount()I
    .locals 1

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponsesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3293
    const/4 v2, 0x0

    .line 3294
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->getResponsesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    .line 3295
    .local v0, element:Lcom/google/speech/s3/S3$S3Response;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3298
    .end local v0           #element:Lcom/google/speech/s3/S3$S3Response;
    :cond_0
    iput v2, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->cachedSize:I

    .line 3299
    return v2
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 3267
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->getResponsesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    .line 3268
    .local v0, element:Lcom/google/speech/s3/S3$S3Response;
    invoke-virtual {v0}, Lcom/google/speech/s3/S3$S3Response;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 3270
    .end local v0           #element:Lcom/google/speech/s3/S3$S3Response;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
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
    .line 3222
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ResponseBatch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ResponseBatch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3308
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3312
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3313
    :sswitch_0
    return-object p0

    .line 3318
    :sswitch_1
    new-instance v1, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    .line 3319
    .local v1, value:Lcom/google/speech/s3/S3$S3Response;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3320
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ResponseBatch;->addResponses(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/speech/s3/S3$S3ResponseBatch;

    goto :goto_0

    .line 3308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public setResponses(ILcom/google/speech/s3/S3$S3Response;)Lcom/google/speech/s3/S3$S3ResponseBatch;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3239
    if-nez p2, :cond_0

    .line 3240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3242
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ResponseBatch;->responses_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3243
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3276
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ResponseBatch;->getResponsesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    .line 3277
    .local v0, element:Lcom/google/speech/s3/S3$S3Response;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3279
    .end local v0           #element:Lcom/google/speech/s3/S3$S3Response;
    :cond_0
    return-void
.end method
