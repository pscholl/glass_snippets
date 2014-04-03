.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# static fields
.field public static final ACTION_FEATURE_FLAGS_FIELD_NUMBER:I = 0x16

.field public static final AUTH_FIELD_NUMBER:I = 0xf

.field public static final BLUETOOTH_FIELD_NUMBER:I = 0x12

.field public static final DEBUG_FIELD_NUMBER:I = 0x11

.field public static final DICTATION_FIELD_NUMBER:I = 0x8

.field public static final EMBEDDED_RECOGNITION_RESOURCES_FIELD_NUMBER:I = 0x6

.field public static final EMBEDDED_RECOGNIZER_FIELD_NUMBER:I = 0x15

.field public static final ENDPOINTER_PARAMS_FIELD_NUMBER:I = 0xb

.field public static final HELP_FIELD_NUMBER:I = 0xa

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final INTENT_API_FIELD_NUMBER:I = 0x7

.field public static final LANGUAGES_FIELD_NUMBER:I = 0x2

.field public static final LOCALIZED_RESOURCES_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_RECOGNIZER_FIELD_NUMBER:I = 0xc

.field public static final PAIR_HTTP_SERVER_INFO_FIELD_NUMBER:I = 0x10

.field public static final PERSONALIZATION_FIELD_NUMBER:I = 0x5

.field public static final PLATFORM_FIELD_NUMBER:I = 0x13

.field public static final SERVICE_API_FIELD_NUMBER:I = 0xe

.field public static final SINGLE_HTTP_SERVER_INFO_FIELD_NUMBER:I = 0x14

.field public static final SOUND_SEARCH_FIELD_NUMBER:I = 0x17

.field public static final TCP_SERVER_INFO_FIELD_NUMBER:I = 0x9

.field public static final VOICE_SEARCH_FIELD_NUMBER:I = 0xd


# instance fields
.field private actionFeatureFlags_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

.field private auth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

.field private bluetooth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

.field private cachedSize:I

.field private debug_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

.field private dictation_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

.field private embeddedRecognitionResources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private embeddedRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

.field private endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private hasActionFeatureFlags:Z

.field private hasAuth:Z

.field private hasBluetooth:Z

.field private hasDebug:Z

.field private hasDictation:Z

.field private hasEmbeddedRecognizer:Z

.field private hasEndpointerParams:Z

.field private hasHelp:Z

.field private hasId:Z

.field private hasIntentApi:Z

.field private hasNetworkRecognizer:Z

.field private hasPairHttpServerInfo:Z

.field private hasPersonalization:Z

.field private hasPlatform:Z

.field private hasServiceApi:Z

.field private hasSingleHttpServerInfo:Z

.field private hasSoundSearch:Z

.field private hasTcpServerInfo:Z

.field private hasVoiceSearch:Z

.field private help_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

.field private id_:Ljava/lang/String;

.field private intentApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

.field private languages_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;",
            ">;"
        }
    .end annotation
.end field

.field private localizedResources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;",
            ">;"
        }
    .end annotation
.end field

.field private networkRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

.field private pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field private personalization_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

.field private platform_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

.field private serviceApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

.field private singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

.field private soundSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

.field private tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

.field private voiceSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id_:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    .line 98
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    .line 151
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 171
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 191
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 211
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 231
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 251
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 271
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 291
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 311
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 331
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 351
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 371
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 391
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 411
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 431
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 451
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 471
    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 847
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method


# virtual methods
.method public addEmbeddedRecognitionResources(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public addLanguages(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public addLocalizedResources(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearId()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 490
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearLanguages()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 491
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearLocalizedResources()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 492
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearPersonalization()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 493
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearEmbeddedRecognitionResources()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 494
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearIntentApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 495
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 496
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 497
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 498
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 499
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 500
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 501
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearHelp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 502
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 503
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearNetworkRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 504
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearAuth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 505
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearDebug()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 506
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearBluetooth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 507
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearPlatform()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 508
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearEmbeddedRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 509
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearActionFeatureFlags()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 510
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    .line 512
    return-object p0
.end method

.method public clearActionFeatureFlags()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasActionFeatureFlags:Z

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 465
    return-object p0
.end method

.method public clearAuth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasAuth:Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 365
    return-object p0
.end method

.method public clearBluetooth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasBluetooth:Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 405
    return-object p0
.end method

.method public clearDebug()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDebug:Z

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 385
    return-object p0
.end method

.method public clearDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDictation:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 185
    return-object p0
.end method

.method public clearEmbeddedRecognitionResources()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    .line 145
    return-object p0
.end method

.method public clearEmbeddedRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEmbeddedRecognizer:Z

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 445
    return-object p0
.end method

.method public clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEndpointerParams:Z

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 325
    return-object p0
.end method

.method public clearHelp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasHelp:Z

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 305
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasId:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearIntentApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasIntentApi:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 165
    return-object p0
.end method

.method public clearLanguages()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    .line 59
    return-object p0
.end method

.method public clearLocalizedResources()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    .line 92
    return-object p0
.end method

.method public clearNetworkRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasNetworkRecognizer:Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 345
    return-object p0
.end method

.method public clearPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPairHttpServerInfo:Z

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 265
    return-object p0
.end method

.method public clearPersonalization()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPersonalization:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 112
    return-object p0
.end method

.method public clearPlatform()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPlatform:Z

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 425
    return-object p0
.end method

.method public clearServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasServiceApi:Z

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 225
    return-object p0
.end method

.method public clearSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSingleHttpServerInfo:Z

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 285
    return-object p0
.end method

.method public clearSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSoundSearch:Z

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 485
    return-object p0
.end method

.method public clearTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasTcpServerInfo:Z

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 245
    return-object p0
.end method

.method public clearVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasVoiceSearch:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 205
    return-object p0
.end method

.method public getActionFeatureFlags()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    return-object v0
.end method

.method public getAuth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    return-object v0
.end method

.method public getBluetooth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    if-gez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSerializedSize()I

    .line 598
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    return v0
.end method

.method public getDebug()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    return-object v0
.end method

.method public getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    return-object v0
.end method

.method public getEmbeddedRecognitionResources(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "index"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    return-object v0
.end method

.method public getEmbeddedRecognitionResourcesCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEmbeddedRecognitionResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    return-object v0
.end method

.method public getEmbeddedRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    return-object v0
.end method

.method public getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method

.method public getHelp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    return-object v0
.end method

.method public getLanguages(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    return-object v0
.end method

.method public getLanguagesCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLanguagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedResources(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .parameter "index"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    return-object v0
.end method

.method public getLocalizedResourcesCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalizedResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    return-object v0
.end method

.method public getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    return-object v0
.end method

.method public getPersonalization()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    return-object v0
.end method

.method public getPlatform()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 603
    const/4 v2, 0x0

    .line 604
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getLanguagesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 609
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 612
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getLocalizedResourcesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 613
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 616
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPersonalization()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 617
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPersonalization()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 620
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getEmbeddedRecognitionResourcesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 621
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 624
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasIntentApi()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 625
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getIntentApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 628
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDictation()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 629
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 632
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasTcpServerInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 633
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 636
    :cond_7
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasHelp()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 637
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getHelp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 640
    :cond_8
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEndpointerParams()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 641
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 644
    :cond_9
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasNetworkRecognizer()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 645
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getNetworkRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 648
    :cond_a
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasVoiceSearch()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 649
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 652
    :cond_b
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasServiceApi()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 653
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 656
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasAuth()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 657
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getAuth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 660
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPairHttpServerInfo()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 661
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 664
    :cond_e
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDebug()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 665
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDebug()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 668
    :cond_f
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasBluetooth()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 669
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getBluetooth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 672
    :cond_10
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPlatform()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 673
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPlatform()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 676
    :cond_11
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSingleHttpServerInfo()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 677
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 680
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEmbeddedRecognizer()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 681
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getEmbeddedRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 684
    :cond_13
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasActionFeatureFlags()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 685
    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getActionFeatureFlags()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 688
    :cond_14
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSoundSearch()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 689
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 692
    :cond_15
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->cachedSize:I

    .line 693
    return v2
.end method

.method public getServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    return-object v0
.end method

.method public getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0
.end method

.method public getSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    return-object v0
.end method

.method public getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    return-object v0
.end method

.method public getVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    return-object v0
.end method

.method public hasActionFeatureFlags()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasActionFeatureFlags:Z

    return v0
.end method

.method public hasAuth()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasAuth:Z

    return v0
.end method

.method public hasBluetooth()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasBluetooth:Z

    return v0
.end method

.method public hasDebug()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDebug:Z

    return v0
.end method

.method public hasDictation()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDictation:Z

    return v0
.end method

.method public hasEmbeddedRecognizer()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEmbeddedRecognizer:Z

    return v0
.end method

.method public hasEndpointerParams()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEndpointerParams:Z

    return v0
.end method

.method public hasHelp()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasHelp:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasId:Z

    return v0
.end method

.method public hasIntentApi()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasIntentApi:Z

    return v0
.end method

.method public hasNetworkRecognizer()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasNetworkRecognizer:Z

    return v0
.end method

.method public hasPairHttpServerInfo()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPairHttpServerInfo:Z

    return v0
.end method

.method public hasPersonalization()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPersonalization:Z

    return v0
.end method

.method public hasPlatform()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPlatform:Z

    return v0
.end method

.method public hasServiceApi()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasServiceApi:Z

    return v0
.end method

.method public hasSingleHttpServerInfo()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSingleHttpServerInfo:Z

    return v0
.end method

.method public hasSoundSearch()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSoundSearch:Z

    return v0
.end method

.method public hasTcpServerInfo()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasTcpServerInfo:Z

    return v0
.end method

.method public hasVoiceSearch()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasVoiceSearch:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasId:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 702
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 706
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 707
    :sswitch_0
    return-object p0

    .line 712
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setId(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 716
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    .line 717
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 718
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->addLanguages(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 722
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :sswitch_3
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    .line 723
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 724
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->addLocalizedResources(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 728
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    :sswitch_4
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;-><init>()V

    .line 729
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setPersonalization(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 734
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    :sswitch_5
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    .line 735
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 736
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->addEmbeddedRecognitionResources(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 740
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :sswitch_6
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;-><init>()V

    .line 741
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 742
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setIntentApi(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 746
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    :sswitch_7
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;-><init>()V

    .line 747
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 748
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setDictation(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 752
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    :sswitch_8
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    .line 753
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 754
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setTcpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 758
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    :sswitch_9
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;-><init>()V

    .line 759
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 760
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setHelp(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto :goto_0

    .line 764
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    :sswitch_a
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    .line 765
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 766
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 770
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :sswitch_b
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;-><init>()V

    .line 771
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 772
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setNetworkRecognizer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 776
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    :sswitch_c
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;-><init>()V

    .line 777
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 778
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setVoiceSearch(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 782
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    :sswitch_d
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;-><init>()V

    .line 783
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 784
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setServiceApi(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 788
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    :sswitch_e
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;-><init>()V

    .line 789
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 790
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setAuth(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 794
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;
    :sswitch_f
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    .line 795
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 796
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setPairHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 800
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    :sswitch_10
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;-><init>()V

    .line 801
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 802
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setDebug(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 806
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;
    :sswitch_11
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;-><init>()V

    .line 807
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 808
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setBluetooth(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 812
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;
    :sswitch_12
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;-><init>()V

    .line 813
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 814
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setPlatform(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 818
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    :sswitch_13
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    .line 819
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 820
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setSingleHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 824
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :sswitch_14
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;-><init>()V

    .line 825
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 826
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setEmbeddedRecognizer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 830
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    :sswitch_15
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;-><init>()V

    .line 831
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 832
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setActionFeatureFlags(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 836
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;
    :sswitch_16
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;-><init>()V

    .line 837
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 838
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setSoundSearch(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    goto/16 :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa2 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb2 -> :sswitch_15
        0xba -> :sswitch_16
    .end sparse-switch
.end method

.method public setActionFeatureFlags(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasActionFeatureFlags:Z

    .line 459
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->actionFeatureFlags_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    .line 460
    return-object p0
.end method

.method public setAuth(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 358
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasAuth:Z

    .line 359
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->auth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    .line 360
    return-object p0
.end method

.method public setBluetooth(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasBluetooth:Z

    .line 399
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->bluetooth_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    .line 400
    return-object p0
.end method

.method public setDebug(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDebug:Z

    .line 379
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->debug_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    .line 380
    return-object p0
.end method

.method public setDictation(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDictation:Z

    .line 179
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 180
    return-object p0
.end method

.method public setEmbeddedRecognitionResources(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-object p0
.end method

.method public setEmbeddedRecognizer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 438
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEmbeddedRecognizer:Z

    .line 439
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 440
    return-object p0
.end method

.method public setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEndpointerParams:Z

    .line 319
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 320
    return-object p0
.end method

.method public setHelp(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasHelp:Z

    .line 299
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->help_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 300
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasId:Z

    .line 20
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->id_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setIntentApi(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasIntentApi:Z

    .line 159
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 160
    return-object p0
.end method

.method public setLanguages(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object p0
.end method

.method public setLocalizedResources(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->localizedResources_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method

.method public setNetworkRecognizer(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasNetworkRecognizer:Z

    .line 339
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 340
    return-object p0
.end method

.method public setPairHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPairHttpServerInfo:Z

    .line 259
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->pairHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 260
    return-object p0
.end method

.method public setPersonalization(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPersonalization:Z

    .line 106
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->personalization_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 107
    return-object p0
.end method

.method public setPlatform(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPlatform:Z

    .line 419
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 420
    return-object p0
.end method

.method public setServiceApi(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasServiceApi:Z

    .line 219
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 220
    return-object p0
.end method

.method public setSingleHttpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSingleHttpServerInfo:Z

    .line 279
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->singleHttpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 280
    return-object p0
.end method

.method public setSoundSearch(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSoundSearch:Z

    .line 479
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 480
    return-object p0
.end method

.method public setTcpServerInfo(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 238
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasTcpServerInfo:Z

    .line 239
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->tcpServerInfo_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 240
    return-object p0
.end method

.method public setVoiceSearch(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "value"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasVoiceSearch:Z

    .line 199
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 200
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
    .line 523
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getLanguagesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 527
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 529
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getLocalizedResourcesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 530
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 532
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPersonalization()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPersonalization()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 535
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getEmbeddedRecognitionResourcesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 536
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 538
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasIntentApi()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getIntentApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 541
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDictation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 542
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDictation()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 544
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasTcpServerInfo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 545
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 547
    :cond_7
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasHelp()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 548
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getHelp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 550
    :cond_8
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEndpointerParams()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 551
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 553
    :cond_9
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasNetworkRecognizer()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 554
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getNetworkRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 556
    :cond_a
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 557
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getVoiceSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 559
    :cond_b
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasServiceApi()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 560
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 562
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasAuth()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 563
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getAuth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Authentication;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 565
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPairHttpServerInfo()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 566
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 568
    :cond_e
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasDebug()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 569
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getDebug()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Debug;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 571
    :cond_f
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasBluetooth()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 572
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getBluetooth()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Bluetooth;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 574
    :cond_10
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasPlatform()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 575
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPlatform()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 577
    :cond_11
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSingleHttpServerInfo()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 578
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 580
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasEmbeddedRecognizer()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 581
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getEmbeddedRecognizer()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 583
    :cond_13
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasActionFeatureFlags()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 584
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getActionFeatureFlags()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ActionFeatureFlags;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 586
    :cond_14
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->hasSoundSearch()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 587
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSoundSearch()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 589
    :cond_15
    return-void
.end method
