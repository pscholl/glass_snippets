.class public final Lcom/google/speech/s3/S3$S3RequestBatch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3RequestBatch"
.end annotation


# static fields
.field public static final REQUESTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private requests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/S3$S3Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3110
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    .line 3163
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->cachedSize:I

    .line 3110
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3217
    new-instance v0, Lcom/google/speech/s3/S3$S3RequestBatch;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3RequestBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3RequestBatch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3RequestBatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3211
    new-instance v0, Lcom/google/speech/s3/S3$S3RequestBatch;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3RequestBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3RequestBatch;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3RequestBatch;

    check-cast v0, Lcom/google/speech/s3/S3$S3RequestBatch;

    return-object v0
.end method


# virtual methods
.method public addRequests(Lcom/google/speech/s3/S3$S3Request;)Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 1
    .parameter "value"

    .prologue
    .line 3131
    if-nez p1, :cond_0

    .line 3132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3134
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    .line 3137
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3138
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3RequestBatch;->clearRequests()Lcom/google/speech/s3/S3$S3RequestBatch;

    .line 3147
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->cachedSize:I

    .line 3148
    return-object p0
.end method

.method public clearRequests()Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 1

    .prologue
    .line 3141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    .line 3142
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3166
    iget v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->cachedSize:I

    if-gez v0, :cond_0

    .line 3168
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3RequestBatch;->getSerializedSize()I

    .line 3170
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->cachedSize:I

    return v0
.end method

.method public getRequests(I)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "index"

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    return-object v0
.end method

.method public getRequestsCount()I
    .locals 1

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/S3$S3Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3175
    const/4 v2, 0x0

    .line 3176
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3RequestBatch;->getRequestsList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    .line 3177
    .local v0, element:Lcom/google/speech/s3/S3$S3Request;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3180
    .end local v0           #element:Lcom/google/speech/s3/S3$S3Request;
    :cond_0
    iput v2, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->cachedSize:I

    .line 3181
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3152
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
    .line 3107
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3RequestBatch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3RequestBatch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3189
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3190
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3194
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3RequestBatch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3195
    :sswitch_0
    return-object p0

    .line 3200
    :sswitch_1
    new-instance v1, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    .line 3201
    .local v1, value:Lcom/google/speech/s3/S3$S3Request;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3202
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3RequestBatch;->addRequests(Lcom/google/speech/s3/S3$S3Request;)Lcom/google/speech/s3/S3$S3RequestBatch;

    goto :goto_0

    .line 3190
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setRequests(ILcom/google/speech/s3/S3$S3Request;)Lcom/google/speech/s3/S3$S3RequestBatch;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3124
    if-nez p2, :cond_0

    .line 3125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3127
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3RequestBatch;->requests_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3128
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
    .line 3158
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3RequestBatch;->getRequestsList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    .line 3159
    .local v0, element:Lcom/google/speech/s3/S3$S3Request;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3161
    .end local v0           #element:Lcom/google/speech/s3/S3$S3Request;
    :cond_0
    return-void
.end method
