.class public final Lcom/google/audio/ears/proto/EarsService$TvResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvResult"
.end annotation


# static fields
.field public static final CACHED_SCREENSHOT_FIELD_NUMBER:I = 0x9

.field public static final CHANNEL_ID_FIELD_NUMBER:I = 0x1

.field public static final CHANNEL_LOGO_URL_FIELD_NUMBER:I = 0x3

.field public static final CHANNEL_NAME_FIELD_NUMBER:I = 0x2

.field public static final PROGRAM_END_MS_FIELD_NUMBER:I = 0x8

.field public static final PROGRAM_ID_FIELD_NUMBER:I = 0xb

.field public static final PROGRAM_IMAGE_URL_FIELD_NUMBER:I = 0x5

.field public static final PROGRAM_SECONDARY_TITLE_FIELD_NUMBER:I = 0xa

.field public static final PROGRAM_START_MS_FIELD_NUMBER:I = 0x7

.field public static final PROGRAM_SYNOPSIS_FIELD_NUMBER:I = 0x6

.field public static final PROGRAM_TITLE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedScreenshot_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private channelId_:Ljava/lang/String;

.field private channelLogoUrl_:Ljava/lang/String;

.field private channelName_:Ljava/lang/String;

.field private hasCachedScreenshot:Z

.field private hasChannelId:Z

.field private hasChannelLogoUrl:Z

.field private hasChannelName:Z

.field private hasProgramEndMs:Z

.field private hasProgramId:Z

.field private hasProgramImageUrl:Z

.field private hasProgramSecondaryTitle:Z

.field private hasProgramStartMs:Z

.field private hasProgramSynopsis:Z

.field private hasProgramTitle:Z

.field private programEndMs_:J

.field private programId_:Ljava/lang/String;

.field private programImageUrl_:Ljava/lang/String;

.field private programSecondaryTitle_:Ljava/lang/String;

.field private programStartMs_:J

.field private programSynopsis_:Ljava/lang/String;

.field private programTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 2237
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2242
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelId_:Ljava/lang/String;

    .line 2259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelName_:Ljava/lang/String;

    .line 2276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelLogoUrl_:Ljava/lang/String;

    .line 2293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programId_:Ljava/lang/String;

    .line 2310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programTitle_:Ljava/lang/String;

    .line 2327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSecondaryTitle_:Ljava/lang/String;

    .line 2344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programImageUrl_:Ljava/lang/String;

    .line 2361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSynopsis_:Ljava/lang/String;

    .line 2378
    iput-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programStartMs_:J

    .line 2395
    iput-wide v1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programEndMs_:J

    .line 2412
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedScreenshot_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 2484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    .line 2237
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2616
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$TvResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2610
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$TvResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$TvResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2427
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearChannelId()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2428
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearChannelName()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2429
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearChannelLogoUrl()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2430
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramId()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2431
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramTitle()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2432
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramSecondaryTitle()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2433
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramImageUrl()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2434
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramSynopsis()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2435
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramStartMs()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2436
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearProgramEndMs()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2437
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->clearCachedScreenshot()Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 2438
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    .line 2439
    return-object p0
.end method

.method public clearCachedScreenshot()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasCachedScreenshot:Z

    .line 2422
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedScreenshot_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 2423
    return-object p0
.end method

.method public clearChannelId()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelId:Z

    .line 2252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelId_:Ljava/lang/String;

    .line 2253
    return-object p0
.end method

.method public clearChannelLogoUrl()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelLogoUrl:Z

    .line 2286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelLogoUrl_:Ljava/lang/String;

    .line 2287
    return-object p0
.end method

.method public clearChannelName()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelName:Z

    .line 2269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelName_:Ljava/lang/String;

    .line 2270
    return-object p0
.end method

.method public clearProgramEndMs()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 2

    .prologue
    .line 2404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramEndMs:Z

    .line 2405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programEndMs_:J

    .line 2406
    return-object p0
.end method

.method public clearProgramId()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramId:Z

    .line 2303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programId_:Ljava/lang/String;

    .line 2304
    return-object p0
.end method

.method public clearProgramImageUrl()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramImageUrl:Z

    .line 2354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programImageUrl_:Ljava/lang/String;

    .line 2355
    return-object p0
.end method

.method public clearProgramSecondaryTitle()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSecondaryTitle:Z

    .line 2337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSecondaryTitle_:Ljava/lang/String;

    .line 2338
    return-object p0
.end method

.method public clearProgramStartMs()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 2

    .prologue
    .line 2387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramStartMs:Z

    .line 2388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programStartMs_:J

    .line 2389
    return-object p0
.end method

.method public clearProgramSynopsis()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSynopsis:Z

    .line 2371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSynopsis_:Ljava/lang/String;

    .line 2372
    return-object p0
.end method

.method public clearProgramTitle()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 2319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramTitle:Z

    .line 2320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programTitle_:Ljava/lang/String;

    .line 2321
    return-object p0
.end method

.method public getCachedScreenshot()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedScreenshot_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2487
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getSerializedSize()I

    .line 2491
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramEndMs()J
    .locals 2

    .prologue
    .line 2396
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programEndMs_:J

    return-wide v0
.end method

.method public getProgramId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSecondaryTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramStartMs()J
    .locals 2

    .prologue
    .line 2379
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programStartMs_:J

    return-wide v0
.end method

.method public getProgramSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSynopsis_:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2496
    const/4 v0, 0x0

    .line 2497
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2498
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2501
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2502
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2505
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelLogoUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2506
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getChannelLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2509
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2510
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2513
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramImageUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2514
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2517
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSynopsis()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2518
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramSynopsis()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2521
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramStartMs()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2522
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramStartMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2525
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramEndMs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2526
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramEndMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2529
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasCachedScreenshot()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2530
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getCachedScreenshot()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2533
    :cond_8
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSecondaryTitle()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2534
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramSecondaryTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2537
    :cond_9
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramId()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2538
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2541
    :cond_a
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedSize:I

    .line 2542
    return v0
.end method

.method public hasCachedScreenshot()Z
    .locals 1

    .prologue
    .line 2414
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasCachedScreenshot:Z

    return v0
.end method

.method public hasChannelId()Z
    .locals 1

    .prologue
    .line 2244
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelId:Z

    return v0
.end method

.method public hasChannelLogoUrl()Z
    .locals 1

    .prologue
    .line 2278
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelLogoUrl:Z

    return v0
.end method

.method public hasChannelName()Z
    .locals 1

    .prologue
    .line 2261
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelName:Z

    return v0
.end method

.method public hasProgramEndMs()Z
    .locals 1

    .prologue
    .line 2397
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramEndMs:Z

    return v0
.end method

.method public hasProgramId()Z
    .locals 1

    .prologue
    .line 2295
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramId:Z

    return v0
.end method

.method public hasProgramImageUrl()Z
    .locals 1

    .prologue
    .line 2346
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramImageUrl:Z

    return v0
.end method

.method public hasProgramSecondaryTitle()Z
    .locals 1

    .prologue
    .line 2329
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSecondaryTitle:Z

    return v0
.end method

.method public hasProgramStartMs()Z
    .locals 1

    .prologue
    .line 2380
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramStartMs:Z

    return v0
.end method

.method public hasProgramSynopsis()Z
    .locals 1

    .prologue
    .line 2363
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSynopsis:Z

    return v0
.end method

.method public hasProgramTitle()Z
    .locals 1

    .prologue
    .line 2312
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2443
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2550
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2551
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2555
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2556
    :sswitch_0
    return-object p0

    .line 2561
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setChannelId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2565
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setChannelName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2569
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setChannelLogoUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2573
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2577
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramImageUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2581
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramSynopsis(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2585
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramStartMs(J)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2589
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramEndMs(J)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2593
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setCachedScreenshot(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2597
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramSecondaryTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2601
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->setProgramId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    goto :goto_0

    .line 2551
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
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
    .line 2234
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$TvResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$TvResult;

    move-result-object v0

    return-object v0
.end method

.method public setCachedScreenshot(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasCachedScreenshot:Z

    .line 2417
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->cachedScreenshot_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 2418
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelId:Z

    .line 2247
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelId_:Ljava/lang/String;

    .line 2248
    return-object p0
.end method

.method public setChannelLogoUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelLogoUrl:Z

    .line 2281
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelLogoUrl_:Ljava/lang/String;

    .line 2282
    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelName:Z

    .line 2264
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->channelName_:Ljava/lang/String;

    .line 2265
    return-object p0
.end method

.method public setProgramEndMs(J)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramEndMs:Z

    .line 2400
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programEndMs_:J

    .line 2401
    return-object p0
.end method

.method public setProgramId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramId:Z

    .line 2298
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programId_:Ljava/lang/String;

    .line 2299
    return-object p0
.end method

.method public setProgramImageUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramImageUrl:Z

    .line 2349
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programImageUrl_:Ljava/lang/String;

    .line 2350
    return-object p0
.end method

.method public setProgramSecondaryTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSecondaryTitle:Z

    .line 2332
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSecondaryTitle_:Ljava/lang/String;

    .line 2333
    return-object p0
.end method

.method public setProgramStartMs(J)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramStartMs:Z

    .line 2383
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programStartMs_:J

    .line 2384
    return-object p0
.end method

.method public setProgramSynopsis(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSynopsis:Z

    .line 2366
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programSynopsis_:Ljava/lang/String;

    .line 2367
    return-object p0
.end method

.method public setProgramTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramTitle:Z

    .line 2315
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$TvResult;->programTitle_:Ljava/lang/String;

    .line 2316
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
    .line 2449
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2450
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2452
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2453
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2455
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasChannelLogoUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2456
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getChannelLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2458
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2459
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2461
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramImageUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2462
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2464
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSynopsis()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2465
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2467
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramStartMs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2468
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramStartMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2470
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramEndMs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2471
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramEndMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2473
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasCachedScreenshot()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2474
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getCachedScreenshot()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 2476
    :cond_8
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramSecondaryTitle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2477
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramSecondaryTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2479
    :cond_9
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->hasProgramId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2480
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$TvResult;->getProgramId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2482
    :cond_a
    return-void
.end method
