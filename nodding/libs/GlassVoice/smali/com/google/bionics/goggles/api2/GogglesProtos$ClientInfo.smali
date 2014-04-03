.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# static fields
.field public static final APPLICATION_ID_FIELD_NUMBER:I = 0x5

.field public static final APPLICATION_VERSION_FIELD_NUMBER:I = 0x6

.field public static final CAN_LOG_IMAGE_FIELD_NUMBER:I = 0xd

.field public static final CAN_LOG_LOCATION_FIELD_NUMBER:I = 0xe

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x4

.field public static final DISCLOSED_CAPABILITIES_FIELD_NUMBER:I = 0x10

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_ARTWORK:I = 0x1

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_SHOPPING:I = 0x0

.field public static final FRONTEND_NAME_FIELD_NUMBER:I = 0xf

.field public static final FRONTEND_NAME_FRONTEND_S3:I = 0x1

.field public static final FRONTEND_NAME_FRONTEND_UNKNOWN:I = 0x0

.field public static final INSTALL_ID_FIELD_NUMBER:I = 0x1

.field public static final IS_SPDY_FIELD_NUMBER:I = 0x9

.field public static final IS_SSL_FIELD_NUMBER:I = 0xa

.field public static final NETWORK_TYPE_FIELD_NUMBER:I = 0x8

.field public static final NETWORK_TYPE_NETWORK_BLUETOOTH:I = 0x3

.field public static final NETWORK_TYPE_NETWORK_MOBILE:I = 0x2

.field public static final NETWORK_TYPE_NETWORK_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_NETWORK_WIFI:I = 0x1

.field public static final NETWORK_TYPE_NETWORK_WIMAX:I = 0x5

.field public static final NETWORK_TYPE_NETWORK_WIRED:I = 0x4

.field public static final PLATFORM_ID_FIELD_NUMBER:I = 0x2

.field public static final PLATFORM_VERSION_FIELD_NUMBER:I = 0x3

.field public static final ROUND_TRIP_TIME_MS_FIELD_NUMBER:I = 0xb

.field public static final TRIGGER_APPLICATION_ID_FIELD_NUMBER:I = 0x7

.field public static final USER_IP_ADDRESS_FIELD_NUMBER:I = 0x11


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private cachedSize:I

.field private canLogImage_:Z

.field private canLogLocation_:Z

.field private deviceModel_:Ljava/lang/String;

.field private disclosedCapabilities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private frontendName_:I

.field private hasApplicationId:Z

.field private hasApplicationVersion:Z

.field private hasCanLogImage:Z

.field private hasCanLogLocation:Z

.field private hasDeviceModel:Z

.field private hasFrontendName:Z

.field private hasInstallId:Z

.field private hasIsSpdy:Z

.field private hasIsSsl:Z

.field private hasNetworkType:Z

.field private hasPlatformId:Z

.field private hasPlatformVersion:Z

.field private hasRoundTripTimeMs:Z

.field private hasTriggerApplicationId:Z

.field private hasUserIpAddress:Z

.field private installId_:Ljava/lang/String;

.field private isSpdy_:Z

.field private isSsl_:Z

.field private networkType_:I

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private roundTripTimeMs_:I

.field private triggerApplicationId_:Ljava/lang/String;

.field private userIpAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 194
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 211
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 228
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 245
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 262
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 279
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 388
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    return-object v0
.end method


# virtual methods
.method public addDisclosedCapabilities(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearInstallId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 312
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearPlatformId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 313
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearPlatformVersion()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 314
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearDeviceModel()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 315
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearApplicationId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 316
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearApplicationVersion()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 317
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearDisclosedCapabilities()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 318
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearTriggerApplicationId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 319
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearNetworkType()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 320
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearIsSpdy()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 321
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearIsSsl()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 322
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearRoundTripTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 323
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearFrontendName()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 324
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearCanLogImage()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 325
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearCanLogLocation()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 326
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->clearUserIpAddress()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    .line 328
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationId:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationVersion:Z

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public clearCanLogImage()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogImage:Z

    .line 272
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 273
    return-object p0
.end method

.method public clearCanLogLocation()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogLocation:Z

    .line 289
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 290
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasDeviceModel:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public clearDisclosedCapabilities()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    .line 154
    return-object p0
.end method

.method public clearFrontendName()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasFrontendName:Z

    .line 255
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 256
    return-object p0
.end method

.method public clearInstallId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasInstallId:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public clearIsSpdy()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSpdy:Z

    .line 204
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 205
    return-object p0
.end method

.method public clearIsSsl()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSsl:Z

    .line 221
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 222
    return-object p0
.end method

.method public clearNetworkType()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasNetworkType:Z

    .line 187
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 188
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformId:Z

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformVersion:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public clearRoundTripTimeMs()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasRoundTripTimeMs:Z

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 239
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasTriggerApplicationId:Z

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public clearUserIpAddress()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasUserIpAddress:Z

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getSerializedSize()I

    .line 395
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    return v0
.end method

.method public getCanLogImage()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    return v0
.end method

.method public getCanLogLocation()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclosedCapabilities(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDisclosedCapabilitiesCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisclosedCapabilitiesList()Ljava/util/List;
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
    .line 135
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    return-object v0
.end method

.method public getFrontendName()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSpdy()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    return v0
.end method

.method public getIsSsl()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    return v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundTripTimeMs()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasInstallId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getInstallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getPlatformId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformVersion()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasDeviceModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 414
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 417
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationId()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 418
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 421
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 422
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 425
    :cond_5
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasTriggerApplicationId()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 426
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 429
    :cond_6
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasNetworkType()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 430
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getNetworkType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 433
    :cond_7
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSpdy()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 434
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getIsSpdy()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 437
    :cond_8
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSsl()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 438
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getIsSsl()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 441
    :cond_9
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasRoundTripTimeMs()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 442
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getRoundTripTimeMs()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 445
    :cond_a
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogImage()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 446
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getCanLogImage()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 449
    :cond_b
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogLocation()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 450
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getCanLogLocation()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 453
    :cond_c
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasFrontendName()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 454
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getFrontendName()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 458
    :cond_d
    const/4 v0, 0x0

    .line 459
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getDisclosedCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 460
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 463
    .end local v1           #element:Ljava/lang/Integer;
    :cond_e
    add-int/2addr v3, v0

    .line 464
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getDisclosedCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 466
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasUserIpAddress()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 467
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getUserIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 470
    :cond_f
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->cachedSize:I

    .line 471
    return v3
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationId:Z

    return v0
.end method

.method public hasApplicationVersion()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationVersion:Z

    return v0
.end method

.method public hasCanLogImage()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogImage:Z

    return v0
.end method

.method public hasCanLogLocation()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogLocation:Z

    return v0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasDeviceModel:Z

    return v0
.end method

.method public hasFrontendName()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasFrontendName:Z

    return v0
.end method

.method public hasInstallId()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasInstallId:Z

    return v0
.end method

.method public hasIsSpdy()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSpdy:Z

    return v0
.end method

.method public hasIsSsl()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSsl:Z

    return v0
.end method

.method public hasNetworkType()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasNetworkType:Z

    return v0
.end method

.method public hasPlatformId()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformId:Z

    return v0
.end method

.method public hasPlatformVersion()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformVersion:Z

    return v0
.end method

.method public hasRoundTripTimeMs()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasRoundTripTimeMs:Z

    return v0
.end method

.method public hasTriggerApplicationId()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasTriggerApplicationId:Z

    return v0
.end method

.method public hasUserIpAddress()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasUserIpAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 480
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 484
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    :sswitch_0
    return-object p0

    .line 490
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setInstallId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 494
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 498
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 502
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 506
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 510
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 514
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setTriggerApplicationId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 518
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setNetworkType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 522
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setIsSpdy(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 526
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setIsSsl(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 530
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setRoundTripTimeMs(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 534
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setCanLogImage(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 538
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setCanLogLocation(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 542
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setFrontendName(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto :goto_0

    .line 546
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->addDisclosedCapabilities(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto/16 :goto_0

    .line 550
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->setUserIpAddress(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    goto/16 :goto_0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x8a -> :sswitch_10
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationId:Z

    .line 104
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationId_:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationVersion:Z

    .line 121
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->applicationVersion_:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setCanLogImage(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogImage:Z

    .line 267
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogImage_:Z

    .line 268
    return-object p0
.end method

.method public setCanLogLocation(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogLocation:Z

    .line 284
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->canLogLocation_:Z

    .line 285
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasDeviceModel:Z

    .line 87
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->deviceModel_:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setDisclosedCapabilities(II)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->disclosedCapabilities_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object p0
.end method

.method public setFrontendName(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasFrontendName:Z

    .line 250
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->frontendName_:I

    .line 251
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasInstallId:Z

    .line 36
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->installId_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setIsSpdy(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSpdy:Z

    .line 199
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSpdy_:Z

    .line 200
    return-object p0
.end method

.method public setIsSsl(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSsl:Z

    .line 216
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->isSsl_:Z

    .line 217
    return-object p0
.end method

.method public setNetworkType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasNetworkType:Z

    .line 182
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->networkType_:I

    .line 183
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformId:Z

    .line 53
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformId_:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformVersion:Z

    .line 70
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->platformVersion_:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setRoundTripTimeMs(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasRoundTripTimeMs:Z

    .line 233
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->roundTripTimeMs_:I

    .line 234
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasTriggerApplicationId:Z

    .line 165
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->triggerApplicationId_:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setUserIpAddress(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasUserIpAddress:Z

    .line 301
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->userIpAddress_:Ljava/lang/String;

    .line 302
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
    .line 338
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasInstallId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getInstallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasPlatformVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasDeviceModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasApplicationVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 356
    :cond_5
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasTriggerApplicationId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 359
    :cond_6
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasNetworkType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 360
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getNetworkType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 362
    :cond_7
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSpdy()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 363
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getIsSpdy()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 365
    :cond_8
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasIsSsl()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 366
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getIsSsl()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 368
    :cond_9
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasRoundTripTimeMs()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 369
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getRoundTripTimeMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 371
    :cond_a
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogImage()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 372
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getCanLogImage()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 374
    :cond_b
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasCanLogLocation()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 375
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getCanLogLocation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 377
    :cond_c
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasFrontendName()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 378
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getFrontendName()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 380
    :cond_d
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getDisclosedCapabilitiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 381
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 383
    .end local v0           #element:Ljava/lang/Integer;
    :cond_e
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->hasUserIpAddress()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 384
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientInfo;->getUserIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 386
    :cond_f
    return-void
.end method
