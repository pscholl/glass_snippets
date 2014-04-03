.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpServerInfo"
.end annotation


# static fields
.field public static final CHUNK_SIZE_FIELD_NUMBER:I = 0x7

.field public static final CONNECTION_TIMEOUT_MSEC_FIELD_NUMBER:I = 0x5

.field public static final DISABLE_COMPRESSION_FIELD_NUMBER:I = 0x8

.field public static final HEADER_FIELD_NUMBER:I = 0x4

.field public static final HTTP_HEADER_KEY_FIELD_NUMBER:I = 0x2

.field public static final HTTP_HEADER_VALUE_FIELD_NUMBER:I = 0x3

.field public static final READ_TIMEOUT_MSEC_FIELD_NUMBER:I = 0x6

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private chunkSize_:I

.field private connectionTimeoutMsec_:I

.field private disableCompression_:Z

.field private hasChunkSize:Z

.field private hasConnectionTimeoutMsec:Z

.field private hasDisableCompression:Z

.field private hasHeader:Z

.field private hasReadTimeoutMsec:Z

.field private hasUrl:Z

.field private header_:Ljava/lang/String;

.field private httpHeaderKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpHeaderValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeoutMsec_:I

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2244
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    .line 2298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    .line 2332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2349
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2366
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2383
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2400
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2460
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    .line 2244
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2578
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2572
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0
.end method


# virtual methods
.method public addHttpHeaderKey(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2282
    if-nez p1, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    .line 2288
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2289
    return-object p0
.end method

.method public addHttpHeaderValue(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2315
    if-nez p1, :cond_0

    .line 2316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    .line 2321
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2322
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2416
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearHttpHeaderKey()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2417
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearHttpHeaderValue()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2418
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearHeader()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2419
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2420
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearReadTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2421
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearChunkSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2422
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->clearDisableCompression()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2423
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    .line 2424
    return-object p0
.end method

.method public clearChunkSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2392
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize:Z

    .line 2393
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2394
    return-object p0
.end method

.method public clearConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2358
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasConnectionTimeoutMsec:Z

    .line 2359
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2360
    return-object p0
.end method

.method public clearDisableCompression()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2409
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasDisableCompression:Z

    .line 2410
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2411
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasHeader:Z

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2343
    return-object p0
.end method

.method public clearHttpHeaderKey()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    .line 2293
    return-object p0
.end method

.method public clearHttpHeaderValue()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    .line 2326
    return-object p0
.end method

.method public clearReadTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2375
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasReadTimeoutMsec:Z

    .line 2376
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2377
    return-object p0
.end method

.method public clearUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasUrl:Z

    .line 2259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2260
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2463
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2465
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getSerializedSize()I

    .line 2467
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    return v0
.end method

.method public getChunkSize()I
    .locals 1

    .prologue
    .line 2384
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    return v0
.end method

.method public getConnectionTimeoutMsec()I
    .locals 1

    .prologue
    .line 2350
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    return v0
.end method

.method public getDisableCompression()Z
    .locals 1

    .prologue
    .line 2401
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaderKey(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaderKeyCount()I
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHttpHeaderKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    return-object v0
.end method

.method public getHttpHeaderValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaderValueCount()I
    .locals 1

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHttpHeaderValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    return-object v0
.end method

.method public getReadTimeoutMsec()I
    .locals 1

    .prologue
    .line 2367
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2472
    const/4 v3, 0x0

    .line 2473
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2474
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2478
    :cond_0
    const/4 v0, 0x0

    .line 2479
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderKeyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2480
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2483
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 2484
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderKeyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2487
    const/4 v0, 0x0

    .line 2488
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderValueList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2489
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 2492
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 2493
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderValueList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2495
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasHeader()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2496
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2499
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasConnectionTimeoutMsec()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2500
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getConnectionTimeoutMsec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2503
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasReadTimeoutMsec()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2504
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getReadTimeoutMsec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2507
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2508
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2511
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasDisableCompression()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2512
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getDisableCompression()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2515
    :cond_7
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->cachedSize:I

    .line 2516
    return v3
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasChunkSize()Z
    .locals 1

    .prologue
    .line 2385
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize:Z

    return v0
.end method

.method public hasConnectionTimeoutMsec()Z
    .locals 1

    .prologue
    .line 2351
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasConnectionTimeoutMsec:Z

    return v0
.end method

.method public hasDisableCompression()Z
    .locals 1

    .prologue
    .line 2402
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasDisableCompression:Z

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 2334
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasHeader:Z

    return v0
.end method

.method public hasReadTimeoutMsec()Z
    .locals 1

    .prologue
    .line 2368
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasReadTimeoutMsec:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2428
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
    .line 2241
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2525
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2529
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2530
    :sswitch_0
    return-object p0

    .line 2535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2539
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->addHttpHeaderKey(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2543
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->addHttpHeaderValue(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2547
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2551
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2555
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setReadTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2559
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setChunkSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2563
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setDisableCompression(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    goto :goto_0

    .line 2525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setChunkSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize:Z

    .line 2388
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->chunkSize_:I

    .line 2389
    return-object p0
.end method

.method public setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasConnectionTimeoutMsec:Z

    .line 2354
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->connectionTimeoutMsec_:I

    .line 2355
    return-object p0
.end method

.method public setDisableCompression(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasDisableCompression:Z

    .line 2405
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->disableCompression_:Z

    .line 2406
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasHeader:Z

    .line 2337
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->header_:Ljava/lang/String;

    .line 2338
    return-object p0
.end method

.method public setHttpHeaderKey(ILjava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2275
    if-nez p2, :cond_0

    .line 2276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderKey_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2279
    return-object p0
.end method

.method public setHttpHeaderValue(ILjava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2308
    if-nez p2, :cond_0

    .line 2309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->httpHeaderValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2312
    return-object p0
.end method

.method public setReadTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasReadTimeoutMsec:Z

    .line 2371
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->readTimeoutMsec_:I

    .line 2372
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasUrl:Z

    .line 2254
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->url_:Ljava/lang/String;

    .line 2255
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2434
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2435
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2437
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderKeyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2438
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2440
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2441
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 2443
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2444
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2446
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasConnectionTimeoutMsec()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2447
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getConnectionTimeoutMsec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2449
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasReadTimeoutMsec()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2450
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getReadTimeoutMsec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2452
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2453
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2455
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasDisableCompression()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2456
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getDisableCompression()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2458
    :cond_7
    return-void
.end method
