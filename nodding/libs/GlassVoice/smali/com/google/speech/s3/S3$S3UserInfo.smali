.class public final Lcom/google/speech/s3/S3$S3UserInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3UserInfo"
.end annotation


# static fields
.field public static final ADAPTATION_ID_FIELD_NUMBER:I = 0xc

.field public static final AUTH_TOKEN_FIELD_NUMBER:I = 0x9

.field public static final INSTALL_ID_FIELD_NUMBER:I = 0x5

.field public static final LAT_LONG_FIELD_NUMBER:I = 0x6

.field public static final SPOKEN_LANGUAGE_FIELD_NUMBER:I = 0x2

.field public static final TRUSTED_DESCRIPTORS_FIELD_NUMBER:I = 0xb

.field public static final USER_LOCALE_FIELD_NUMBER:I = 0x3

.field public static final USE_PRECISE_GEOLOCATION_FIELD_NUMBER:I = 0xd

.field public static final X_GEO_LOCATION_FIELD_NUMBER:I = 0x8


# instance fields
.field private adaptationId_:Ljava/lang/String;

.field private authToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/S3$AuthToken;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasAdaptationId:Z

.field private hasInstallId:Z

.field private hasLatLong:Z

.field private hasSpokenLanguage:Z

.field private hasTrustedDescriptors:Z

.field private hasUsePreciseGeolocation:Z

.field private hasUserLocale:Z

.field private hasXGeoLocation:Z

.field private installId_:Ljava/lang/String;

.field private latLong_:Ljava/lang/String;

.field private spokenLanguage_:Lcom/google/speech/s3/S3$Locale;

.field private trustedDescriptors_:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

.field private usePreciseGeolocation_:Z

.field private userLocale_:Lcom/google/speech/s3/S3$Locale;

.field private xGeoLocation_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1343
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    .line 1381
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage_:Lcom/google/speech/s3/S3$Locale;

    .line 1401
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale_:Lcom/google/speech/s3/S3$Locale;

    .line 1421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1489
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->trustedDescriptors_:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    .line 1509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1573
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    .line 1343
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1697
    new-instance v0, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3UserInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1691
    new-instance v0, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3UserInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3UserInfo;

    check-cast v0, Lcom/google/speech/s3/S3$S3UserInfo;

    return-object v0
.end method


# virtual methods
.method public addAuthToken(Lcom/google/speech/s3/S3$AuthToken;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1364
    if-nez p1, :cond_0

    .line 1365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearAuthToken()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1525
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearSpokenLanguage()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1526
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearUserLocale()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1527
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearInstallId()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1528
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearAdaptationId()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1529
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearLatLong()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1530
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearXGeoLocation()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1531
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearTrustedDescriptors()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1532
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->clearUsePreciseGeolocation()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 1533
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    .line 1534
    return-object p0
.end method

.method public clearAdaptationId()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasAdaptationId:Z

    .line 1448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1449
    return-object p0
.end method

.method public clearAuthToken()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    .line 1375
    return-object p0
.end method

.method public clearInstallId()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasInstallId:Z

    .line 1431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1432
    return-object p0
.end method

.method public clearLatLong()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasLatLong:Z

    .line 1465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1466
    return-object p0
.end method

.method public clearSpokenLanguage()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasSpokenLanguage:Z

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage_:Lcom/google/speech/s3/S3$Locale;

    .line 1395
    return-object p0
.end method

.method public clearTrustedDescriptors()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasTrustedDescriptors:Z

    .line 1502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->trustedDescriptors_:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    .line 1503
    return-object p0
.end method

.method public clearUsePreciseGeolocation()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasUsePreciseGeolocation:Z

    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1520
    return-object p0
.end method

.method public clearUserLocale()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasUserLocale:Z

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale_:Lcom/google/speech/s3/S3$Locale;

    .line 1415
    return-object p0
.end method

.method public clearXGeoLocation()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasXGeoLocation:Z

    .line 1482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1483
    return-object p0
.end method

.method public getAdaptationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken(I)Lcom/google/speech/s3/S3$AuthToken;
    .locals 1
    .parameter "index"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$AuthToken;

    return-object v0
.end method

.method public getAuthTokenCount()I
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAuthTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/S3$AuthToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1576
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getSerializedSize()I

    .line 1580
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1585
    const/4 v2, 0x0

    .line 1586
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasSpokenLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1587
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getSpokenLanguage()Lcom/google/speech/s3/S3$Locale;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasUserLocale()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1591
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getUserLocale()Lcom/google/speech/s3/S3$Locale;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1594
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasInstallId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1595
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getInstallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1598
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasLatLong()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1599
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getLatLong()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1602
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasXGeoLocation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1603
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getXGeoLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1606
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getAuthTokenList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$AuthToken;

    .line 1607
    .local v0, element:Lcom/google/speech/s3/S3$AuthToken;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1610
    .end local v0           #element:Lcom/google/speech/s3/S3$AuthToken;
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasTrustedDescriptors()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1611
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getTrustedDescriptors()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1614
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasAdaptationId()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1615
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getAdaptationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1618
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasUsePreciseGeolocation()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1619
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getUsePreciseGeolocation()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1622
    :cond_8
    iput v2, p0, Lcom/google/speech/s3/S3$S3UserInfo;->cachedSize:I

    .line 1623
    return v2
.end method

.method public getSpokenLanguage()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage_:Lcom/google/speech/s3/S3$Locale;

    return-object v0
.end method

.method public getTrustedDescriptors()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->trustedDescriptors_:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    return-object v0
.end method

.method public getUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 1510
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    return v0
.end method

.method public getUserLocale()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale_:Lcom/google/speech/s3/S3$Locale;

    return-object v0
.end method

.method public getXGeoLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdaptationId()Z
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasAdaptationId:Z

    return v0
.end method

.method public hasInstallId()Z
    .locals 1

    .prologue
    .line 1423
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasInstallId:Z

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 1457
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasLatLong:Z

    return v0
.end method

.method public hasSpokenLanguage()Z
    .locals 1

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasSpokenLanguage:Z

    return v0
.end method

.method public hasTrustedDescriptors()Z
    .locals 1

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasTrustedDescriptors:Z

    return v0
.end method

.method public hasUsePreciseGeolocation()Z
    .locals 1

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasUsePreciseGeolocation:Z

    return v0
.end method

.method public hasUserLocale()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasUserLocale:Z

    return v0
.end method

.method public hasXGeoLocation()Z
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasXGeoLocation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1538
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
    .line 1340
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3UserInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1631
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1632
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1636
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3UserInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1637
    :sswitch_0
    return-object p0

    .line 1642
    :sswitch_1
    new-instance v1, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    .line 1643
    .local v1, value:Lcom/google/speech/s3/S3$Locale;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1644
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3UserInfo;->setSpokenLanguage(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1648
    .end local v1           #value:Lcom/google/speech/s3/S3$Locale;
    :sswitch_2
    new-instance v1, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    .line 1649
    .restart local v1       #value:Lcom/google/speech/s3/S3$Locale;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1650
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3UserInfo;->setUserLocale(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1654
    .end local v1           #value:Lcom/google/speech/s3/S3$Locale;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3UserInfo;->setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1658
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3UserInfo;->setLatLong(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1662
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1666
    :sswitch_6
    new-instance v1, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    .line 1667
    .local v1, value:Lcom/google/speech/s3/S3$AuthToken;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1668
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3UserInfo;->addAuthToken(Lcom/google/speech/s3/S3$AuthToken;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1672
    .end local v1           #value:Lcom/google/speech/s3/S3$AuthToken;
    :sswitch_7
    new-instance v1, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;-><init>()V

    .line 1673
    .local v1, value:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1674
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3UserInfo;->setTrustedDescriptors(Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1678
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3UserInfo;->setAdaptationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1682
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3UserInfo;->setUsePreciseGeolocation(Z)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 1632
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x42 -> :sswitch_5
        0x4a -> :sswitch_6
        0x5a -> :sswitch_7
        0x62 -> :sswitch_8
        0x68 -> :sswitch_9
    .end sparse-switch
.end method

.method public setAdaptationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasAdaptationId:Z

    .line 1443
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->adaptationId_:Ljava/lang/String;

    .line 1444
    return-object p0
.end method

.method public setAuthToken(ILcom/google/speech/s3/S3$AuthToken;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1357
    if-nez p2, :cond_0

    .line 1358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1361
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasInstallId:Z

    .line 1426
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->installId_:Ljava/lang/String;

    .line 1427
    return-object p0
.end method

.method public setLatLong(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasLatLong:Z

    .line 1460
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->latLong_:Ljava/lang/String;

    .line 1461
    return-object p0
.end method

.method public setSpokenLanguage(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1385
    if-nez p1, :cond_0

    .line 1386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1388
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasSpokenLanguage:Z

    .line 1389
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage_:Lcom/google/speech/s3/S3$Locale;

    .line 1390
    return-object p0
.end method

.method public setTrustedDescriptors(Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1493
    if-nez p1, :cond_0

    .line 1494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1496
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasTrustedDescriptors:Z

    .line 1497
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->trustedDescriptors_:Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    .line 1498
    return-object p0
.end method

.method public setUsePreciseGeolocation(Z)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasUsePreciseGeolocation:Z

    .line 1514
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->usePreciseGeolocation_:Z

    .line 1515
    return-object p0
.end method

.method public setUserLocale(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1405
    if-nez p1, :cond_0

    .line 1406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1408
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasUserLocale:Z

    .line 1409
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale_:Lcom/google/speech/s3/S3$Locale;

    .line 1410
    return-object p0
.end method

.method public setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3UserInfo;->hasXGeoLocation:Z

    .line 1477
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3UserInfo;->xGeoLocation_:Ljava/lang/String;

    .line 1478
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
    .line 1544
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasSpokenLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getSpokenLanguage()Lcom/google/speech/s3/S3$Locale;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1547
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasUserLocale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1548
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getUserLocale()Lcom/google/speech/s3/S3$Locale;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1550
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasInstallId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1551
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getInstallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1553
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasLatLong()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1554
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getLatLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1556
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasXGeoLocation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1557
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getXGeoLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1559
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getAuthTokenList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$AuthToken;

    .line 1560
    .local v0, element:Lcom/google/speech/s3/S3$AuthToken;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1562
    .end local v0           #element:Lcom/google/speech/s3/S3$AuthToken;
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasTrustedDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1563
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getTrustedDescriptors()Llocation/unified/LocationDescriptorProto$LocationDescriptorSet;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1565
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasAdaptationId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1566
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getAdaptationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1568
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->hasUsePreciseGeolocation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1569
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3UserInfo;->getUsePreciseGeolocation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1571
    :cond_8
    return-void
.end method
