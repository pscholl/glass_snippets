.class public final Lcom/google/speech/s3/S3$S3ConnectionInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ConnectionInfo"
.end annotation


# static fields
.field public static final CLIENT_IP_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_PORT_FIELD_NUMBER:I = 0x3

.field public static final DEBUG_IP_FIELD_NUMBER:I = 0x4

.field public static final GFE_FRONTLINE_INFO_FIELD_NUMBER:I = 0x5

.field public static final HOST_FIELD_NUMBER:I = 0x6

.field public static final IMMEDIATE_CLIENT_IP_FIELD_NUMBER:I = 0x7

.field public static final IMMEDIATE_CLIENT_PORT_FIELD_NUMBER:I = 0x8

.field public static final LEGACY_CLIENT_TARGET_VIP_FIELD_NUMBER:I = 0x9

.field public static final TYPE_BLOCKING_STUBBY:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_PAIRED_HTTP:I = 0x4

.field public static final TYPE_SINGLE_HTTP:I = 0x5

.field public static final TYPE_STREAMING_STUBBY:I = 0x1

.field public static final TYPE_TCP:I = 0x3


# instance fields
.field private cachedSize:I

.field private clientIp_:Ljava/lang/String;

.field private clientPort_:I

.field private debugIp_:Z

.field private gfeFrontlineInfo_:Ljava/lang/String;

.field private hasClientIp:Z

.field private hasClientPort:Z

.field private hasDebugIp:Z

.field private hasGfeFrontlineInfo:Z

.field private hasHost:Z

.field private hasImmediateClientIp:Z

.field private hasImmediateClientPort:Z

.field private hasLegacyClientTargetVip:Z

.field private hasType:Z

.field private host_:Ljava/lang/String;

.field private immediateClientIp_:Ljava/lang/String;

.field private immediateClientPort_:I

.field private legacyClientTargetVip_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2289
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2301
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2335
    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2352
    iput-boolean v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2386
    iput v1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2501
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    .line 2289
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2617
    new-instance v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2611
    new-instance v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    check-cast v0, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2452
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearType()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2453
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearClientIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2454
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearClientPort()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2455
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearDebugIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2456
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearImmediateClientIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2457
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearImmediateClientPort()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2458
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearLegacyClientTargetVip()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2459
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearGfeFrontlineInfo()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2460
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clearHost()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 2461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    .line 2462
    return-object p0
.end method

.method public clearClientIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientIp:Z

    .line 2328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2329
    return-object p0
.end method

.method public clearClientPort()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2344
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientPort:Z

    .line 2345
    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2346
    return-object p0
.end method

.method public clearDebugIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2361
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasDebugIp:Z

    .line 2362
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2363
    return-object p0
.end method

.method public clearGfeFrontlineInfo()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasGfeFrontlineInfo:Z

    .line 2430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2431
    return-object p0
.end method

.method public clearHost()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasHost:Z

    .line 2447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2448
    return-object p0
.end method

.method public clearImmediateClientIp()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientIp:Z

    .line 2379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2380
    return-object p0
.end method

.method public clearImmediateClientPort()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2395
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientPort:Z

    .line 2396
    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2397
    return-object p0
.end method

.method public clearLegacyClientTargetVip()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasLegacyClientTargetVip:Z

    .line 2413
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2414
    return-object p0
.end method

.method public clearType()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 2310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasType:Z

    .line 2311
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2312
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2504
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2506
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getSerializedSize()I

    .line 2508
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    return v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPort()I
    .locals 1

    .prologue
    .line 2336
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    return v0
.end method

.method public getDebugIp()Z
    .locals 1

    .prologue
    .line 2353
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    return v0
.end method

.method public getGfeFrontlineInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateClientPort()I
    .locals 1

    .prologue
    .line 2387
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    return v0
.end method

.method public getLegacyClientTargetVip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2513
    const/4 v0, 0x0

    .line 2514
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2515
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2518
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientIp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2519
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2522
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientPort()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2523
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getClientPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2526
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasDebugIp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2527
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getDebugIp()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2530
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasGfeFrontlineInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2531
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getGfeFrontlineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2534
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasHost()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2535
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2538
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientIp()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2539
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getImmediateClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2542
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientPort()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2543
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getImmediateClientPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2546
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasLegacyClientTargetVip()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2547
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getLegacyClientTargetVip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2550
    :cond_8
    iput v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->cachedSize:I

    .line 2551
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2303
    iget v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    return v0
.end method

.method public hasClientIp()Z
    .locals 1

    .prologue
    .line 2320
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientIp:Z

    return v0
.end method

.method public hasClientPort()Z
    .locals 1

    .prologue
    .line 2337
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientPort:Z

    return v0
.end method

.method public hasDebugIp()Z
    .locals 1

    .prologue
    .line 2354
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasDebugIp:Z

    return v0
.end method

.method public hasGfeFrontlineInfo()Z
    .locals 1

    .prologue
    .line 2422
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasGfeFrontlineInfo:Z

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 2439
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasHost:Z

    return v0
.end method

.method public hasImmediateClientIp()Z
    .locals 1

    .prologue
    .line 2371
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientIp:Z

    return v0
.end method

.method public hasImmediateClientPort()Z
    .locals 1

    .prologue
    .line 2388
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientPort:Z

    return v0
.end method

.method public hasLegacyClientTargetVip()Z
    .locals 1

    .prologue
    .line 2405
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasLegacyClientTargetVip:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2302
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2466
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
    .line 2286
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2559
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2560
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2564
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2565
    :sswitch_0
    return-object p0

    .line 2570
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setType(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2574
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setClientIp(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2578
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setClientPort(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2582
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setDebugIp(Z)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2586
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setGfeFrontlineInfo(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2590
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setHost(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2594
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setImmediateClientIp(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2598
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setImmediateClientPort(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2602
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->setLegacyClientTargetVip(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;

    goto :goto_0

    .line 2560
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public setClientIp(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientIp:Z

    .line 2323
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientIp_:Ljava/lang/String;

    .line 2324
    return-object p0
.end method

.method public setClientPort(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientPort:Z

    .line 2340
    iput p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->clientPort_:I

    .line 2341
    return-object p0
.end method

.method public setDebugIp(Z)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasDebugIp:Z

    .line 2357
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->debugIp_:Z

    .line 2358
    return-object p0
.end method

.method public setGfeFrontlineInfo(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasGfeFrontlineInfo:Z

    .line 2425
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->gfeFrontlineInfo_:Ljava/lang/String;

    .line 2426
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasHost:Z

    .line 2442
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->host_:Ljava/lang/String;

    .line 2443
    return-object p0
.end method

.method public setImmediateClientIp(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientIp:Z

    .line 2374
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientIp_:Ljava/lang/String;

    .line 2375
    return-object p0
.end method

.method public setImmediateClientPort(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientPort:Z

    .line 2391
    iput p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->immediateClientPort_:I

    .line 2392
    return-object p0
.end method

.method public setLegacyClientTargetVip(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasLegacyClientTargetVip:Z

    .line 2408
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->legacyClientTargetVip_:Ljava/lang/String;

    .line 2409
    return-object p0
.end method

.method public setType(I)Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasType:Z

    .line 2306
    iput p1, p0, Lcom/google/speech/s3/S3$S3ConnectionInfo;->type_:I

    .line 2307
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
    .line 2472
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2475
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientIp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2476
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getClientIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2478
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasClientPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2479
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getClientPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2481
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasDebugIp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2482
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getDebugIp()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2484
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasGfeFrontlineInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2485
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getGfeFrontlineInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2487
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2488
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2490
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientIp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2491
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getImmediateClientIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2493
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasImmediateClientPort()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2494
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getImmediateClientPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2496
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->hasLegacyClientTargetVip()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2497
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ConnectionInfo;->getLegacyClientTargetVip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2499
    :cond_8
    return-void
.end method
