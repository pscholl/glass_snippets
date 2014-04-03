.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSearchClientLog"
.end annotation


# static fields
.field public static final APPLICATION_ID_FIELD_NUMBER:I = 0x6

.field public static final APPLICATION_VERSION_FIELD_NUMBER:I = 0x8

.field public static final APPLICATION_VERSION_NAME_FIELD_NUMBER:I = 0x10

.field public static final BUNDLED_CLIENT_EVENTS_FIELD_NUMBER:I = 0xa

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x5

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0xf

.field public static final IME_LANG_COUNT_FIELD_NUMBER:I = 0xc

.field public static final INSTALL_ID_FIELD_NUMBER:I = 0x2

.field public static final LOCALE_FIELD_NUMBER:I = 0x9

.field public static final PACKAGE_ID_FIELD_NUMBER:I = 0xb

.field public static final PAIRED_BLUETOOTH_FIELD_NUMBER:I = 0xe

.field public static final PLATFORM_ID_FIELD_NUMBER:I = 0x3

.field public static final PLATFORM_VERSION_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_TIME_MSEC_FIELD_NUMBER:I = 0x1

.field public static final TRIGGER_APPLICATION_ID_FIELD_NUMBER:I = 0x7

.field public static final VOICESEARCH_LANG_COUNT_FIELD_NUMBER:I = 0xd


# instance fields
.field private applicationId_:Ljava/lang/String;

.field private applicationVersionName_:Ljava/lang/String;

.field private applicationVersion_:Ljava/lang/String;

.field private bundledClientEvents_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

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

.field private hasApplicationVersionName:Z

.field private hasDeviceModel:Z

.field private hasImeLangCount:Z

.field private hasInstallId:Z

.field private hasLocale:Z

.field private hasPackageId:Z

.field private hasPairedBluetooth:Z

.field private hasPlatformId:Z

.field private hasPlatformVersion:Z

.field private hasRequestTimeMsec:Z

.field private hasTriggerApplicationId:Z

.field private hasVoicesearchLangCount:Z

.field private imeLangCount_:I

.field private installId_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private packageId_:Ljava/lang/String;

.field private pairedBluetooth_:Z

.field private platformId_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private requestTimeMsec_:J

.field private triggerApplicationId_:Ljava/lang/String;

.field private voicesearchLangCount_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 259
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 276
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 293
    iput-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 67
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    return-object v0
.end method


# virtual methods
.method public addBundledClientEvents(Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-object p0
.end method

.method public addExperimentId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearRequestTimeMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 375
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearInstallId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 376
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPackageId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 377
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPlatformId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 378
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPlatformVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 379
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearDeviceModel()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 380
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 381
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearTriggerApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 382
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearApplicationVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 383
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearApplicationVersionName()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 384
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearLocale()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 385
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearImeLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 386
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearVoicesearchLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 387
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearPairedBluetooth()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 388
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearBundledClientEvents()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 389
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->clearExperimentId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 391
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId:Z

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public clearApplicationVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion:Z

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public clearApplicationVersionName()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName:Z

    .line 235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public clearBundledClientEvents()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    .line 337
    return-object p0
.end method

.method public clearDeviceModel()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel:Z

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public clearExperimentId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    .line 370
    return-object p0
.end method

.method public clearImeLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount:Z

    .line 269
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 270
    return-object p0
.end method

.method public clearInstallId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale:Z

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public clearPackageId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId:Z

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public clearPairedBluetooth()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth:Z

    .line 303
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 304
    return-object p0
.end method

.method public clearPlatformId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId:Z

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public clearPlatformVersion()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion:Z

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public clearRequestTimeMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 83
    return-object p0
.end method

.method public clearTriggerApplicationId()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId:Z

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public clearVoicesearchLangCount()Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount:Z

    .line 286
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 287
    return-object p0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getBundledClientEvents(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    return-object v0
.end method

.method public getBundledClientEventsCount()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBundledClientEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getSerializedSize()I

    .line 458
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentIdCount()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

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
    .line 345
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    return-object v0
.end method

.method public getImeLangCount()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    return v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPairedBluetooth()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    return v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeMsec()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getRequestTimeMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getInstallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 473
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 477
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 481
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 484
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 485
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 488
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 489
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 492
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 493
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 496
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 497
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 500
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getBundledClientEventsList()Ljava/util/List;

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

    check-cast v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 501
    .local v1, element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 504
    .end local v1           #element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 505
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPackageId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 508
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 509
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getImeLangCount()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 512
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 513
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getVoicesearchLangCount()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 516
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 517
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPairedBluetooth()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 521
    :cond_d
    const/4 v0, 0x0

    .line 522
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 523
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 526
    .end local v1           #element:Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 527
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getExperimentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 529
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 530
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 533
    :cond_f
    iput v3, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->cachedSize:I

    .line 534
    return v3
.end method

.method public getTriggerApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicesearchLangCount()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    return v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId:Z

    return v0
.end method

.method public hasApplicationVersion()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion:Z

    return v0
.end method

.method public hasApplicationVersionName()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName:Z

    return v0
.end method

.method public hasDeviceModel()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel:Z

    return v0
.end method

.method public hasImeLangCount()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount:Z

    return v0
.end method

.method public hasInstallId()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale:Z

    return v0
.end method

.method public hasPackageId()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId:Z

    return v0
.end method

.method public hasPairedBluetooth()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth:Z

    return v0
.end method

.method public hasPlatformId()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId:Z

    return v0
.end method

.method public hasPlatformVersion()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion:Z

    return v0
.end method

.method public hasRequestTimeMsec()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec:Z

    return v0
.end method

.method public hasTriggerApplicationId()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId:Z

    return v0
.end method

.method public hasVoicesearchLangCount()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 395
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
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 543
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 547
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    :sswitch_0
    return-object p0

    .line 553
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setRequestTimeMsec(J)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 557
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 561
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 565
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 569
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 573
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 577
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 581
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 585
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 589
    :sswitch_a
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    .line 590
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 591
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->addBundledClientEvents(Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 595
    .end local v1           #value:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 599
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setImeLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 603
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setVoicesearchLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto :goto_0

    .line 607
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPairedBluetooth(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 611
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->addExperimentId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 615
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationVersionName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    goto/16 :goto_0

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
    .end sparse-switch
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId:Z

    .line 179
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationId_:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion:Z

    .line 213
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersion_:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setApplicationVersionName(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName:Z

    .line 230
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->applicationVersionName_:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setBundledClientEvents(ILcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 319
    if-nez p2, :cond_0

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->bundledClientEvents_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-object p0
.end method

.method public setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel:Z

    .line 162
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->deviceModel_:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setExperimentId(ILjava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 352
    if-nez p2, :cond_0

    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->experimentId_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-object p0
.end method

.method public setImeLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount:Z

    .line 264
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->imeLangCount_:I

    .line 265
    return-object p0
.end method

.method public setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId:Z

    .line 94
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->installId_:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale:Z

    .line 247
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->locale_:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId:Z

    .line 111
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->packageId_:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setPairedBluetooth(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth:Z

    .line 298
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->pairedBluetooth_:Z

    .line 299
    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId:Z

    .line 128
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformId_:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion:Z

    .line 145
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->platformVersion_:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setRequestTimeMsec(J)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec:Z

    .line 77
    iput-wide p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->requestTimeMsec_:J

    .line 78
    return-object p0
.end method

.method public setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId:Z

    .line 196
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->triggerApplicationId_:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public setVoicesearchLangCount(I)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount:Z

    .line 281
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->voicesearchLangCount_:I

    .line 282
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
    .line 401
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasRequestTimeMsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getRequestTimeMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasInstallId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getInstallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPlatformVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPlatformVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasDeviceModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 416
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 417
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 419
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasTriggerApplicationId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 420
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getTriggerApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 422
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 425
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasLocale()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 426
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 428
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getBundledClientEventsList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 429
    .local v0, element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 431
    .end local v0           #element:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPackageId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 432
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 434
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasImeLangCount()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 435
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getImeLangCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 437
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasVoicesearchLangCount()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 438
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getVoicesearchLangCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 440
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasPairedBluetooth()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 441
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getPairedBluetooth()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 443
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getExperimentIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 446
    .end local v0           #element:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->hasApplicationVersionName()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 447
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->getApplicationVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 449
    :cond_f
    return-void
.end method
