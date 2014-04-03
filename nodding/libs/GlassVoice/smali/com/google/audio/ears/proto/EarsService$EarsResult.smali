.class public final Lcom/google/audio/ears/proto/EarsService$EarsResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x1

.field public static final COUNTRY_FIELD_NUMBER:I = 0xa

.field public static final DEBUG_FIELD_NUMBER:I = 0x2

.field public static final ELAPSED_MS_FIELD_NUMBER:I = 0x5

.field public static final FAMOUS_SPEECH_RESULT_FIELD_NUMBER:I = 0x9

.field public static final MUSIC_RESULT_FIELD_NUMBER:I = 0x3

.field public static final ORIGINAL_REFERENCE_ID_FIELD_NUMBER:I = 0xc

.field public static final PROBE_RANGE_FIELD_NUMBER:I = 0x7

.field public static final REFERENCE_ID_FIELD_NUMBER:I = 0x6

.field public static final REF_RANGE_FIELD_NUMBER:I = 0x8

.field public static final TTS_RESPONSE_FIELD_NUMBER:I = 0xb

.field public static final TV_RESULT_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private confidence_:F

.field private country_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug_:Ljava/lang/String;

.field private elapsedMs_:J

.field private famousSpeechResult_:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

.field private hasConfidence:Z

.field private hasDebug:Z

.field private hasElapsedMs:Z

.field private hasFamousSpeechResult:Z

.field private hasMusicResult:Z

.field private hasOriginalReferenceId:Z

.field private hasProbeRange:Z

.field private hasRefRange:Z

.field private hasReferenceId:Z

.field private hasTtsResponse:Z

.field private hasTvResult:Z

.field private musicResult_:Lcom/google/audio/ears/proto/EarsService$MusicResult;

.field private originalReferenceId_:J

.field private probeRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

.field private refRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

.field private referenceId_:J

.field private ttsResponse_:Ljava/lang/String;

.field private tvResult_:Lcom/google/audio/ears/proto/EarsService$TvResult;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1139
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1270
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1304
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1321
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1338
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1355
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1375
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1394
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    .line 1428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1445
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult_:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 1465
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult_:Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 1485
    iput-object v1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult_:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 1564
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    .line 1139
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1719
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1713
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    return-object v0
.end method


# virtual methods
.method public addCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1411
    if-nez p1, :cond_0

    .line 1412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearConfidence()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1504
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearDebug()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1505
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearElapsedMs()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1506
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearReferenceId()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1507
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearOriginalReferenceId()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1508
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearProbeRange()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1509
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearRefRange()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1510
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearCountry()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1511
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearTtsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1512
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearMusicResult()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1513
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearTvResult()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1514
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->clearFamousSpeechResult()Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 1515
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    .line 1516
    return-object p0
.end method

.method public clearConfidence()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasConfidence:Z

    .line 1280
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1281
    return-object p0
.end method

.method public clearCountry()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    .line 1422
    return-object p0
.end method

.method public clearDebug()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasDebug:Z

    .line 1297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1298
    return-object p0
.end method

.method public clearElapsedMs()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasElapsedMs:Z

    .line 1314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1315
    return-object p0
.end method

.method public clearFamousSpeechResult()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasFamousSpeechResult:Z

    .line 1498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult_:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 1499
    return-object p0
.end method

.method public clearMusicResult()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasMusicResult:Z

    .line 1458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult_:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 1459
    return-object p0
.end method

.method public clearOriginalReferenceId()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasOriginalReferenceId:Z

    .line 1348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1349
    return-object p0
.end method

.method public clearProbeRange()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasProbeRange:Z

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1369
    return-object p0
.end method

.method public clearRefRange()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasRefRange:Z

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1389
    return-object p0
.end method

.method public clearReferenceId()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 2

    .prologue
    .line 1330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasReferenceId:Z

    .line 1331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1332
    return-object p0
.end method

.method public clearTtsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTtsResponse:Z

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1439
    return-object p0
.end method

.method public clearTvResult()Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1

    .prologue
    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTvResult:Z

    .line 1478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult_:Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 1479
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1567
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getSerializedSize()I

    .line 1571
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    return v0
.end method

.method public getCountry(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCount()I
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountryList()Ljava/util/List;
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
    .line 1397
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    return-object v0
.end method

.method public getDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    return-object v0
.end method

.method public getElapsedMs()J
    .locals 2

    .prologue
    .line 1305
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    return-wide v0
.end method

.method public getFamousSpeechResult()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult_:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    return-object v0
.end method

.method public getMusicResult()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult_:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    return-object v0
.end method

.method public getOriginalReferenceId()J
    .locals 2

    .prologue
    .line 1339
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    return-wide v0
.end method

.method public getProbeRange()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    return-object v0
.end method

.method public getRefRange()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    return-object v0
.end method

.method public getReferenceId()J
    .locals 2

    .prologue
    .line 1322
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1576
    const/4 v3, 0x0

    .line 1577
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasConfidence()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1578
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getConfidence()F

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 1581
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1582
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getDebug()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1585
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasMusicResult()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1586
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getMusicResult()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1589
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTvResult()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1590
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getTvResult()Lcom/google/audio/ears/proto/EarsService$TvResult;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1593
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasElapsedMs()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1594
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getElapsedMs()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1597
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasReferenceId()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1598
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getReferenceId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1601
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasProbeRange()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1602
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getProbeRange()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1605
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasRefRange()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1606
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getRefRange()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1609
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasFamousSpeechResult()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1610
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getFamousSpeechResult()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1614
    :cond_8
    const/4 v0, 0x0

    .line 1615
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1616
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1619
    .end local v1           #element:Ljava/lang/String;
    :cond_9
    add-int/2addr v3, v0

    .line 1620
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1622
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTtsResponse()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1623
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getTtsResponse()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1626
    :cond_a
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasOriginalReferenceId()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1627
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getOriginalReferenceId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1630
    :cond_b
    iput v3, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->cachedSize:I

    .line 1631
    return v3
.end method

.method public getTtsResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    return-object v0
.end method

.method public getTvResult()Lcom/google/audio/ears/proto/EarsService$TvResult;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult_:Lcom/google/audio/ears/proto/EarsService$TvResult;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasConfidence:Z

    return v0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasDebug:Z

    return v0
.end method

.method public hasElapsedMs()Z
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasElapsedMs:Z

    return v0
.end method

.method public hasFamousSpeechResult()Z
    .locals 1

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasFamousSpeechResult:Z

    return v0
.end method

.method public hasMusicResult()Z
    .locals 1

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasMusicResult:Z

    return v0
.end method

.method public hasOriginalReferenceId()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasOriginalReferenceId:Z

    return v0
.end method

.method public hasProbeRange()Z
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasProbeRange:Z

    return v0
.end method

.method public hasRefRange()Z
    .locals 1

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasRefRange:Z

    return v0
.end method

.method public hasReferenceId()Z
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasReferenceId:Z

    return v0
.end method

.method public hasTtsResponse()Z
    .locals 1

    .prologue
    .line 1430
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTtsResponse:Z

    return v0
.end method

.method public hasTvResult()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTvResult:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1520
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1640
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1644
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1645
    :sswitch_0
    return-object p0

    .line 1650
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setConfidence(F)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1654
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setDebug(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1658
    :sswitch_3
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$MusicResult;-><init>()V

    .line 1659
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$MusicResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1660
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setMusicResult(Lcom/google/audio/ears/proto/EarsService$MusicResult;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1664
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$MusicResult;
    :sswitch_4
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$TvResult;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$TvResult;-><init>()V

    .line 1665
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$TvResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1666
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setTvResult(Lcom/google/audio/ears/proto/EarsService$TvResult;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1670
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$TvResult;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setElapsedMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1674
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setReferenceId(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1678
    :sswitch_7
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    .line 1679
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1680
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setProbeRange(Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1684
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    :sswitch_8
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    .line 1685
    .restart local v1       #value:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1686
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setRefRange(Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1690
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    :sswitch_9
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;-><init>()V

    .line 1691
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1692
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setFamousSpeechResult(Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1696
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->addCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1700
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setTtsResponse(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto :goto_0

    .line 1704
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->setOriginalReferenceId(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    goto/16 :goto_0

    .line 1640
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
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
    .line 1136
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v0

    return-object v0
.end method

.method public setConfidence(F)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasConfidence:Z

    .line 1275
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->confidence_:F

    .line 1276
    return-object p0
.end method

.method public setCountry(ILjava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1404
    if-nez p2, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->country_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1408
    return-object p0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasDebug:Z

    .line 1292
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->debug_:Ljava/lang/String;

    .line 1293
    return-object p0
.end method

.method public setElapsedMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasElapsedMs:Z

    .line 1309
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->elapsedMs_:J

    .line 1310
    return-object p0
.end method

.method public setFamousSpeechResult(Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1489
    if-nez p1, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1492
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasFamousSpeechResult:Z

    .line 1493
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->famousSpeechResult_:Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 1494
    return-object p0
.end method

.method public setMusicResult(Lcom/google/audio/ears/proto/EarsService$MusicResult;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1449
    if-nez p1, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1452
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasMusicResult:Z

    .line 1453
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->musicResult_:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 1454
    return-object p0
.end method

.method public setOriginalReferenceId(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasOriginalReferenceId:Z

    .line 1343
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->originalReferenceId_:J

    .line 1344
    return-object p0
.end method

.method public setProbeRange(Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1359
    if-nez p1, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1362
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasProbeRange:Z

    .line 1363
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->probeRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1364
    return-object p0
.end method

.method public setRefRange(Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1379
    if-nez p1, :cond_0

    .line 1380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1382
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasRefRange:Z

    .line 1383
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->refRange_:Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1384
    return-object p0
.end method

.method public setReferenceId(J)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasReferenceId:Z

    .line 1326
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->referenceId_:J

    .line 1327
    return-object p0
.end method

.method public setTtsResponse(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTtsResponse:Z

    .line 1433
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->ttsResponse_:Ljava/lang/String;

    .line 1434
    return-object p0
.end method

.method public setTvResult(Lcom/google/audio/ears/proto/EarsService$TvResult;)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1469
    if-nez p1, :cond_0

    .line 1470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTvResult:Z

    .line 1473
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult;->tvResult_:Lcom/google/audio/ears/proto/EarsService$TvResult;

    .line 1474
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1527
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1530
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getDebug()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1532
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasMusicResult()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1533
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getMusicResult()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1535
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTvResult()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1536
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getTvResult()Lcom/google/audio/ears/proto/EarsService$TvResult;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1538
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasElapsedMs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1539
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getElapsedMs()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1541
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasReferenceId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1542
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getReferenceId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 1544
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasProbeRange()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1545
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getProbeRange()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1547
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasRefRange()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1548
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getRefRange()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1550
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasFamousSpeechResult()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1551
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getFamousSpeechResult()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1553
    :cond_8
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getCountryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1554
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1556
    .end local v0           #element:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTtsResponse()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1557
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getTtsResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1559
    :cond_a
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasOriginalReferenceId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1560
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getOriginalReferenceId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 1562
    :cond_b
    return-void
.end method
