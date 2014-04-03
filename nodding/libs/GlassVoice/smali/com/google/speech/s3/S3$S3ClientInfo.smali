.class public final Lcom/google/speech/s3/S3$S3ClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3ClientInfo"
.end annotation


# static fields
.field public static final APPLICATION_ID_FIELD_NUMBER:I = 0x2

.field public static final APPLICATION_VERSION_FIELD_NUMBER:I = 0xa

.field public static final CLIENT_ID_FIELD_NUMBER:I = 0x1

.field public static final DEVICE_DISPLAY_DENSITY_DPI_FIELD_NUMBER:I = 0xe

.field public static final DEVICE_DISPLAY_HEIGHT_PIXELS_FIELD_NUMBER:I = 0xd

.field public static final DEVICE_DISPLAY_WIDTH_PIXELS_FIELD_NUMBER:I = 0xc

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0xb

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x5

.field public static final NOISE_SUPPRESSOR_ID_FIELD_NUMBER:I = 0xf

.field public static final PLATFORM_ID_FIELD_NUMBER:I = 0x8

.field public static final PLATFORM_VERSION_FIELD_NUMBER:I = 0x9

.field public static final TRIGGER_APPLICATION_ID_FIELD_NUMBER:I = 0x10

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x4


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private cachedSize:I

.field private clientId_:Ljava/lang/String;

.field private deviceDisplayDensityDpi_:I

.field private deviceDisplayHeightPixels_:I

.field private deviceDisplayWidthPixels_:I

.field private deviceModel_:Ljava/lang/String;

.field private experimentId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasApplicationId:Z

.field private hasApplicationVersion:Z

.field private hasClientId:Z

.field private hasDeviceDisplayDensityDpi:Z

.field private hasDeviceDisplayHeightPixels:Z

.field private hasDeviceDisplayWidthPixels:Z

.field private hasDeviceModel:Z

.field private hasPlatformId:Z

.field private hasPlatformVersion:Z

.field private hasTriggerApplicationId:Z

.field private hasUserAgent:Z

.field private noiseSuppressorId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private triggerApplicationId_:Ljava/lang/String;

.field private userAgent_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1705
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 1727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 1743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    .line 1777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 1794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 1811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 1828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 1845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 1862
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 1879
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 1896
    iput v1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 1912
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    .line 1946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 2026
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    .line 1705
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2184
    new-instance v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2178
    new-instance v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    check-cast v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    return-object v0
.end method


# virtual methods
.method public addExperimentId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1760
    if-nez p1, :cond_0

    .line 1761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    return-object p0
.end method

.method public addNoiseSuppressorId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1929
    if-nez p1, :cond_0

    .line 1930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    .line 1935
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1961
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearClientId()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1962
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearUserAgent()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1963
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearExperimentId()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1964
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearPlatformId()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1965
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearPlatformVersion()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1966
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearApplicationId()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1967
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearApplicationVersion()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1968
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearDeviceModel()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1969
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearDeviceDisplayWidthPixels()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1970
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearDeviceDisplayHeightPixels()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1971
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearDeviceDisplayDensityDpi()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1972
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearNoiseSuppressorId()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1973
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->clearTriggerApplicationId()Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 1974
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    .line 1975
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationId:Z

    .line 1821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 1822
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationVersion:Z

    .line 1838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 1839
    return-object p0
.end method

.method public clearClientId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasClientId:Z

    .line 1720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 1721
    return-object p0
.end method

.method public clearDeviceDisplayDensityDpi()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1905
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayDensityDpi:Z

    .line 1906
    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 1907
    return-object p0
.end method

.method public clearDeviceDisplayHeightPixels()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1888
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayHeightPixels:Z

    .line 1889
    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 1890
    return-object p0
.end method

.method public clearDeviceDisplayWidthPixels()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1871
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayWidthPixels:Z

    .line 1872
    iput v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 1873
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceModel:Z

    .line 1855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 1856
    return-object p0
.end method

.method public clearExperimentId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    .line 1771
    return-object p0
.end method

.method public clearNoiseSuppressorId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1939
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    .line 1940
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformId:Z

    .line 1787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 1788
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformVersion:Z

    .line 1804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 1805
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasTriggerApplicationId:Z

    .line 1956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 1957
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasUserAgent:Z

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 1738
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2029
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2031
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getSerializedSize()I

    .line 2033
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDisplayDensityDpi()I
    .locals 1

    .prologue
    .line 1897
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    return v0
.end method

.method public getDeviceDisplayHeightPixels()I
    .locals 1

    .prologue
    .line 1880
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    return v0
.end method

.method public getDeviceDisplayWidthPixels()I
    .locals 1

    .prologue
    .line 1863
    iget v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdCount()I
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentIdList()Ljava/util/List;
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
    .line 1746
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    return-object v0
.end method

.method public getNoiseSuppressorId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNoiseSuppressorIdCount()I
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNoiseSuppressorIdList()Ljava/util/List;
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
    .line 1915
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2038
    const/4 v3, 0x0

    .line 2039
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasClientId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2040
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2043
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2044
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2047
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasUserAgent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2048
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2052
    :cond_2
    const/4 v0, 0x0

    .line 2053
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2054
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2057
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 2058
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2060
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformId()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2061
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getPlatformId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2064
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2065
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2068
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationVersion()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2069
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2072
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceModel()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2073
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2076
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayWidthPixels()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2077
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceDisplayWidthPixels()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2080
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayHeightPixels()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2081
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceDisplayHeightPixels()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2084
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayDensityDpi()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2085
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceDisplayDensityDpi()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2089
    :cond_a
    const/4 v0, 0x0

    .line 2090
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getNoiseSuppressorIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2091
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 2094
    .end local v1           #element:Ljava/lang/String;
    :cond_b
    add-int/2addr v3, v0

    .line 2095
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getNoiseSuppressorIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2097
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasTriggerApplicationId()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2098
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2101
    :cond_c
    iput v3, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->cachedSize:I

    .line 2102
    return v3
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 1813
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationId:Z

    return v0
.end method

.method public hasApplicationVersion()Z
    .locals 1

    .prologue
    .line 1830
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationVersion:Z

    return v0
.end method

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasClientId:Z

    return v0
.end method

.method public hasDeviceDisplayDensityDpi()Z
    .locals 1

    .prologue
    .line 1898
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayDensityDpi:Z

    return v0
.end method

.method public hasDeviceDisplayHeightPixels()Z
    .locals 1

    .prologue
    .line 1881
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayHeightPixels:Z

    return v0
.end method

.method public hasDeviceDisplayWidthPixels()Z
    .locals 1

    .prologue
    .line 1864
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayWidthPixels:Z

    return v0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .prologue
    .line 1847
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceModel:Z

    return v0
.end method

.method public hasPlatformId()Z
    .locals 1

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformId:Z

    return v0
.end method

.method public hasPlatformVersion()Z
    .locals 1

    .prologue
    .line 1796
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformVersion:Z

    return v0
.end method

.method public hasTriggerApplicationId()Z
    .locals 1

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasTriggerApplicationId:Z

    return v0
.end method

.method public hasUserAgent()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasUserAgent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1979
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
    .line 1702
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2111
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2115
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3ClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2116
    :sswitch_0
    return-object p0

    .line 2121
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setClientId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2125
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2129
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setUserAgent(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2133
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->addExperimentId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2137
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2141
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2145
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2149
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2153
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayWidthPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2157
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayHeightPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2161
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayDensityDpi(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2165
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->addNoiseSuppressorId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2169
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    goto :goto_0

    .line 2111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x42 -> :sswitch_5
        0x4a -> :sswitch_6
        0x52 -> :sswitch_7
        0x5a -> :sswitch_8
        0x60 -> :sswitch_9
        0x68 -> :sswitch_a
        0x70 -> :sswitch_b
        0x7a -> :sswitch_c
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationId:Z

    .line 1816
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationId_:Ljava/lang/String;

    .line 1817
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationVersion:Z

    .line 1833
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 1834
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasClientId:Z

    .line 1715
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->clientId_:Ljava/lang/String;

    .line 1716
    return-object p0
.end method

.method public setDeviceDisplayDensityDpi(I)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayDensityDpi:Z

    .line 1901
    iput p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayDensityDpi_:I

    .line 1902
    return-object p0
.end method

.method public setDeviceDisplayHeightPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayHeightPixels:Z

    .line 1884
    iput p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayHeightPixels_:I

    .line 1885
    return-object p0
.end method

.method public setDeviceDisplayWidthPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayWidthPixels:Z

    .line 1867
    iput p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceDisplayWidthPixels_:I

    .line 1868
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceModel:Z

    .line 1850
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 1851
    return-object p0
.end method

.method public setExperimentId(ILjava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1753
    if-nez p2, :cond_0

    .line 1754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1757
    return-object p0
.end method

.method public setNoiseSuppressorId(ILjava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1922
    if-nez p2, :cond_0

    .line 1923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->noiseSuppressorId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1926
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformId:Z

    .line 1782
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformId_:Ljava/lang/String;

    .line 1783
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformVersion:Z

    .line 1799
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 1800
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasTriggerApplicationId:Z

    .line 1951
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 1952
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->hasUserAgent:Z

    .line 1732
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3ClientInfo;->userAgent_:Ljava/lang/String;

    .line 1733
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
    .line 1985
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasClientId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1986
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1988
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1989
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1991
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasUserAgent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1992
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1994
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getExperimentIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1995
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1997
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1998
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2000
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasPlatformVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2001
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2003
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasApplicationVersion()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2004
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2006
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceModel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2007
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2009
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayWidthPixels()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2010
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceDisplayWidthPixels()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2012
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayHeightPixels()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2013
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceDisplayHeightPixels()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2015
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasDeviceDisplayDensityDpi()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2016
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getDeviceDisplayDensityDpi()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2018
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getNoiseSuppressorIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2019
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 2021
    .end local v0           #element:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->hasTriggerApplicationId()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2022
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3ClientInfo;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2024
    :cond_c
    return-void
.end method
