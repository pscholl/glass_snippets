.class public final Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Majel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Majel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelServiceRequest"
.end annotation


# static fields
.field public static final ORIGINAL_QUERY_FIELD_NUMBER:I = 0x2

.field public static final QUERY_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasOriginalQuery:Z

.field private hasQuery:Z

.field private originalQuery_:Ljava/lang/String;

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    .line 252
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    check-cast v0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->clearQuery()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 290
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->clearOriginalQuery()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    .line 292
    return-object p0
.end method

.method public clearOriginalQuery()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasOriginalQuery:Z

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public clearQuery()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasQuery:Z

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->getSerializedSize()I

    .line 317
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    return v0
.end method

.method public getOriginalQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasOriginalQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->getOriginalQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->cachedSize:I

    .line 332
    return v0
.end method

.method public hasOriginalQuery()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasOriginalQuery:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasQuery:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 296
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
    .line 249
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 341
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    :sswitch_0
    return-object p0

    .line 351
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->setQuery(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    goto :goto_0

    .line 355
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->setOriginalQuery(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOriginalQuery(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasOriginalQuery:Z

    .line 279
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->originalQuery_:Ljava/lang/String;

    .line 280
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasQuery:Z

    .line 262
    iput-object p1, p0, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->query_:Ljava/lang/String;

    .line 263
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
    .line 302
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->hasOriginalQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;->getOriginalQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 308
    :cond_1
    return-void
.end method
