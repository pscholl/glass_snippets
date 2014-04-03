.class public final Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsLookupRequest"
.end annotation


# static fields
.field public static final CLIENT_COUNTRY_CODE_FIELD_NUMBER:I = 0x7

.field public static final CLIENT_ID_FIELD_NUMBER:I = 0x9

.field public static final CLIENT_LOCALE_FIELD_NUMBER:I = 0x4

.field public static final CLIENT_NAME_FIELD_NUMBER:I = 0x5

.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x6

.field public static final DEBUG_FIELD_NUMBER:I = 0x3

.field public static final DESIRED_RESULT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final MAX_RESULTS_FIELD_NUMBER:I = 0x8

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private clientCountryCode_:Ljava/lang/String;

.field private clientId_:Ljava/lang/String;

.field private clientLocale_:Ljava/lang/String;

.field private clientName_:Ljava/lang/String;

.field private clientVersion_:Ljava/lang/String;

.field private debug_:Z

.field private desiredResultType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasClientCountryCode:Z

.field private hasClientId:Z

.field private hasClientLocale:Z

.field private hasClientName:Z

.field private hasClientVersion:Z

.field private hasDebug:Z

.field private hasMaxResults:Z

.field private hasSessionId:Z

.field private maxResults_:I

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    .line 303
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 320
    iput-boolean v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    .line 254
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    return-object v0
.end method


# virtual methods
.method public addDesiredResultType(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 2
    .parameter "value"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearSessionId()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 421
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearDesiredResultType()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 422
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearMaxResults()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 423
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearDebug()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 424
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearClientLocale()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 425
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearClientName()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 426
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearClientVersion()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 427
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearClientId()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 428
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clearClientCountryCode()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    .line 430
    return-object p0
.end method

.method public clearClientCountryCode()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientCountryCode:Z

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public clearClientId()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientId:Z

    .line 398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 399
    return-object p0
.end method

.method public clearClientLocale()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientLocale:Z

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public clearClientName()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientName:Z

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientVersion:Z

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public clearDebug()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasDebug:Z

    .line 330
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 331
    return-object p0
.end method

.method public clearDesiredResultType()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    .line 297
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasMaxResults:Z

    .line 313
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 314
    return-object p0
.end method

.method public clearSessionId()Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasSessionId:Z

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getSerializedSize()I

    .line 476
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    return v0
.end method

.method public getClientCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    return v0
.end method

.method public getDesiredResultType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDesiredResultTypeCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDesiredResultTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasSessionId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 488
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getDesiredResultTypeList()Ljava/util/List;

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

    check-cast v1, Ljava/lang/Integer;

    .line 489
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 492
    .end local v1           #element:Ljava/lang/Integer;
    :cond_1
    add-int/2addr v3, v0

    .line 493
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getDesiredResultTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 495
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getDebug()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientLocale()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 503
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientName()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 507
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 508
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 511
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientCountryCode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 512
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 515
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasMaxResults()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 516
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getMaxResults()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 519
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientId()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 520
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 523
    :cond_8
    iput v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->cachedSize:I

    .line 524
    return v3
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientCountryCode()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientCountryCode:Z

    return v0
.end method

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientId:Z

    return v0
.end method

.method public hasClientLocale()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientLocale:Z

    return v0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientName:Z

    return v0
.end method

.method public hasClientVersion()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientVersion:Z

    return v0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasDebug:Z

    return v0
.end method

.method public hasMaxResults()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasMaxResults:Z

    return v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasSessionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 533
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    :sswitch_0
    return-object p0

    .line 543
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setSessionId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 547
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->addDesiredResultType(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 551
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setDebug(Z)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 555
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientLocale(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 559
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 563
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientVersion(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 567
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 571
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setMaxResults(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 575
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientCountryCode:Z

    .line 410
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientCountryCode_:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientId:Z

    .line 393
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientId_:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public setClientLocale(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientLocale:Z

    .line 342
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientLocale_:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientName:Z

    .line 359
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientName_:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientVersion:Z

    .line 376
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->clientVersion_:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setDebug(Z)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasDebug:Z

    .line 325
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->debug_:Z

    .line 326
    return-object p0
.end method

.method public setDesiredResultType(II)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->desiredResultType_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-object p0
.end method

.method public setMaxResults(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasMaxResults:Z

    .line 308
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->maxResults_:I

    .line 309
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasSessionId:Z

    .line 264
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->sessionId_:Ljava/lang/String;

    .line 265
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
    .line 440
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasSessionId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getDesiredResultTypeList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/Integer;

    .line 444
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 446
    .end local v0           #element:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getDebug()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientLocale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 452
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientName()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 455
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 456
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 458
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientCountryCode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 459
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 461
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasMaxResults()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 462
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getMaxResults()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 464
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->hasClientId()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 465
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 467
    :cond_8
    return-void
.end method
