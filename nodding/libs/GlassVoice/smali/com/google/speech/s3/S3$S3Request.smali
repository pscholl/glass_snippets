.class public final Lcom/google/speech/s3/S3$S3Request;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3Request"
.end annotation


# static fields
.field public static final CLIENT_LOG_REQUEST_EXTENSION_FIELD_NUMBER:I = 0x1a833e7

.field public static final DEBUGGING_ENABLED_FIELD_NUMBER:I = 0x4

.field public static final END_OF_DATA_FIELD_NUMBER:I = 0x3

.field public static final GOGGLES_CLIENT_LOG_EXTENSION_FIELD_NUMBER:I = 0x21bd8a3

.field public static final GOGGLES_S3_SESSION_OPTIONS_EXTENSION_FIELD_NUMBER:I = 0x21bdb9a

.field public static final GOGGLES_STREAM_REQUEST_EXTENSION_FIELD_NUMBER:I = 0x21ec2a6

.field public static final LOGGING_ENABLED_FIELD_NUMBER:I = 0x2

.field public static final MAJEL_CLIENT_INFO_EXTENSION_FIELD_NUMBER:I = 0x1c5b670

.field public static final MAJEL_SERVICE_REQUEST_EXTENSION_FIELD_NUMBER:I = 0x1a8ba0c

.field public static final MOBILE_USER_INFO_EXTENSION_FIELD_NUMBER:I = 0x1a09496

.field public static final PINHOLE_PARAMS_EXTENSION_FIELD_NUMBER:I = 0x20c2c16

.field public static final PINHOLE_TTS_BRIDGE_PARAMS_EXTENSION_FIELD_NUMBER:I = 0x270b683

.field public static final S3_AUDIO_DATA_EXTENSION_FIELD_NUMBER:I = 0x478ed

.field public static final S3_AUDIO_INFO_EXTENSION_FIELD_NUMBER:I = 0x478ec

.field public static final S3_CLIENT_INFO_EXTENSION_FIELD_NUMBER:I = 0x47c70

.field public static final S3_CONNECTION_INFO_EXTENSION_FIELD_NUMBER:I = 0x20f3b67

.field public static final S3_EXPERIMENT_INFO_EXTENSION_FIELD_NUMBER:I = 0x1fcfef8

.field public static final S3_RECOGNIZER_INFO_EXTENSION_FIELD_NUMBER:I = 0x47e64

.field public static final S3_SESSION_INFO_EXTENSION_FIELD_NUMBER:I = 0x1a27214

.field public static final S3_USER_INFO_EXTENSION_FIELD_NUMBER:I = 0x47888

.field public static final SERVICE_FIELD_NUMBER:I = 0x1

.field public static final SOUND_SEARCH_INFO_EXTENSION_FIELD_NUMBER:I = 0x21b6d89

.field public static final TTS_SERVICE_REQUEST_EXTENSION_FIELD_NUMBER:I = 0x1a837ac


# instance fields
.field private cachedSize:I

.field private clientLogRequestExtension_:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

.field private debuggingEnabled_:Z

.field private endOfData_:Z

.field private gogglesClientLogExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

.field private gogglesS3SessionOptionsExtension_:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

.field private gogglesStreamRequestExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

.field private hasClientLogRequestExtension:Z

.field private hasDebuggingEnabled:Z

.field private hasEndOfData:Z

.field private hasGogglesClientLogExtension:Z

.field private hasGogglesS3SessionOptionsExtension:Z

.field private hasGogglesStreamRequestExtension:Z

.field private hasLoggingEnabled:Z

.field private hasMajelClientInfoExtension:Z

.field private hasMajelServiceRequestExtension:Z

.field private hasMobileUserInfoExtension:Z

.field private hasPinholeParamsExtension:Z

.field private hasPinholeTtsBridgeParamsExtension:Z

.field private hasS3AudioDataExtension:Z

.field private hasS3AudioInfoExtension:Z

.field private hasS3ClientInfoExtension:Z

.field private hasS3ConnectionInfoExtension:Z

.field private hasS3ExperimentInfoExtension:Z

.field private hasS3RecognizerInfoExtension:Z

.field private hasS3SessionInfoExtension:Z

.field private hasS3UserInfoExtension:Z

.field private hasService:Z

.field private hasSoundSearchInfoExtension:Z

.field private hasTtsServiceRequestExtension:Z

.field private loggingEnabled_:Z

.field private majelClientInfoExtension_:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

.field private majelServiceRequestExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

.field private mobileUserInfoExtension_:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

.field private pinholeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeParams;

.field private pinholeTtsBridgeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

.field private s3AudioDataExtension_:Lcom/google/speech/s3/Audio$S3AudioData;

.field private s3AudioInfoExtension_:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field private s3ClientInfoExtension_:Lcom/google/speech/s3/S3$S3ClientInfo;

.field private s3ConnectionInfoExtension_:Lcom/google/speech/s3/S3$S3ConnectionInfo;

.field private s3ExperimentInfoExtension_:Lcom/google/speech/s3/S3$S3ExperimentInfo;

.field private s3RecognizerInfoExtension_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private s3SessionInfoExtension_:Lcom/google/speech/s3/S3$S3SessionInfo;

.field private s3UserInfoExtension_:Lcom/google/speech/s3/S3$S3UserInfo;

.field private service_:Ljava/lang/String;

.field private soundSearchInfoExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

.field private ttsServiceRequestExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 66
    iput-boolean v2, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 83
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension_:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 103
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension_:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 123
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension_:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 143
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension_:Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 163
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 183
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension_:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 203
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension_:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 223
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension_:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 243
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 263
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 283
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension_:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 303
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension_:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 323
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 343
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension_:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 363
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 383
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 403
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension_:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 423
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 443
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    new-instance v0, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Request;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 826
    new-instance v0, Lcom/google/speech/s3/S3$S3Request;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Request;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Request;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearService()Lcom/google/speech/s3/S3$S3Request;

    .line 462
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearLoggingEnabled()Lcom/google/speech/s3/S3$S3Request;

    .line 463
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearDebuggingEnabled()Lcom/google/speech/s3/S3$S3Request;

    .line 464
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearEndOfData()Lcom/google/speech/s3/S3$S3Request;

    .line 465
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3UserInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 466
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3AudioInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 467
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3AudioDataExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 468
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3ClientInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 469
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3RecognizerInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 470
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearMobileUserInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 471
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3SessionInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 472
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearClientLogRequestExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 473
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearTtsServiceRequestExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 474
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearMajelServiceRequestExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 475
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearMajelClientInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 476
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3ExperimentInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 477
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearPinholeParamsExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 478
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearS3ConnectionInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 479
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearSoundSearchInfoExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 480
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearGogglesClientLogExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 481
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearGogglesS3SessionOptionsExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 482
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearGogglesStreamRequestExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 483
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->clearPinholeTtsBridgeParamsExtension()Lcom/google/speech/s3/S3$S3Request;

    .line 484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    .line 485
    return-object p0
.end method

.method public clearClientLogRequestExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasClientLogRequestExtension:Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension_:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 237
    return-object p0
.end method

.method public clearDebuggingEnabled()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasDebuggingEnabled:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 60
    return-object p0
.end method

.method public clearEndOfData()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasEndOfData:Z

    .line 76
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 77
    return-object p0
.end method

.method public clearGogglesClientLogExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesClientLogExtension:Z

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 397
    return-object p0
.end method

.method public clearGogglesS3SessionOptionsExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesS3SessionOptionsExtension:Z

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension_:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 417
    return-object p0
.end method

.method public clearGogglesStreamRequestExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesStreamRequestExtension:Z

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 437
    return-object p0
.end method

.method public clearLoggingEnabled()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasLoggingEnabled:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 43
    return-object p0
.end method

.method public clearMajelClientInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMajelClientInfoExtension:Z

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension_:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 297
    return-object p0
.end method

.method public clearMajelServiceRequestExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMajelServiceRequestExtension:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 277
    return-object p0
.end method

.method public clearMobileUserInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMobileUserInfoExtension:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension_:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 197
    return-object p0
.end method

.method public clearPinholeParamsExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasPinholeParamsExtension:Z

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 337
    return-object p0
.end method

.method public clearPinholeTtsBridgeParamsExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasPinholeTtsBridgeParamsExtension:Z

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 457
    return-object p0
.end method

.method public clearS3AudioDataExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioDataExtension:Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension_:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 137
    return-object p0
.end method

.method public clearS3AudioInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioInfoExtension:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension_:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 117
    return-object p0
.end method

.method public clearS3ClientInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ClientInfoExtension:Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension_:Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 157
    return-object p0
.end method

.method public clearS3ConnectionInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ConnectionInfoExtension:Z

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension_:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 357
    return-object p0
.end method

.method public clearS3ExperimentInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ExperimentInfoExtension:Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension_:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 317
    return-object p0
.end method

.method public clearS3RecognizerInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3RecognizerInfoExtension:Z

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 177
    return-object p0
.end method

.method public clearS3SessionInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3SessionInfoExtension:Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension_:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 217
    return-object p0
.end method

.method public clearS3UserInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3UserInfoExtension:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension_:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 97
    return-object p0
.end method

.method public clearService()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasService:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearSoundSearchInfoExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasSoundSearchInfoExtension:Z

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 377
    return-object p0
.end method

.method public clearTtsServiceRequestExtension()Lcom/google/speech/s3/S3$S3Request;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasTtsServiceRequestExtension:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 257
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    if-gez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getSerializedSize()I

    .line 573
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    return v0
.end method

.method public getClientLogRequestExtension()Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension_:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    return-object v0
.end method

.method public getDebuggingEnabled()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    return v0
.end method

.method public getEndOfData()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    return v0
.end method

.method public getGogglesClientLogExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    return-object v0
.end method

.method public getGogglesS3SessionOptionsExtension()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension_:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    return-object v0
.end method

.method public getGogglesStreamRequestExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    return-object v0
.end method

.method public getLoggingEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    return v0
.end method

.method public getMajelClientInfoExtension()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension_:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    return-object v0
.end method

.method public getMajelServiceRequestExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    return-object v0
.end method

.method public getMobileUserInfoExtension()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension_:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    return-object v0
.end method

.method public getPinholeParamsExtension()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    return-object v0
.end method

.method public getPinholeTtsBridgeParamsExtension()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    return-object v0
.end method

.method public getS3AudioDataExtension()Lcom/google/speech/s3/Audio$S3AudioData;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension_:Lcom/google/speech/s3/Audio$S3AudioData;

    return-object v0
.end method

.method public getS3AudioInfoExtension()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension_:Lcom/google/speech/s3/Audio$S3AudioInfo;

    return-object v0
.end method

.method public getS3ClientInfoExtension()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension_:Lcom/google/speech/s3/S3$S3ClientInfo;

    return-object v0
.end method

.method public getS3ConnectionInfoExtension()Lcom/google/speech/s3/S3$S3ConnectionInfo;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension_:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    return-object v0
.end method

.method public getS3ExperimentInfoExtension()Lcom/google/speech/s3/S3$S3ExperimentInfo;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension_:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    return-object v0
.end method

.method public getS3RecognizerInfoExtension()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0
.end method

.method public getS3SessionInfoExtension()Lcom/google/speech/s3/S3$S3SessionInfo;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension_:Lcom/google/speech/s3/S3$S3SessionInfo;

    return-object v0
.end method

.method public getS3UserInfoExtension()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension_:Lcom/google/speech/s3/S3$S3UserInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getService()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getLoggingEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasEndOfData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getEndOfData()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 592
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getDebuggingEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3UserInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    const v1, 0x47888

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3UserInfoExtension()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 599
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 600
    const v1, 0x478ec

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3AudioInfoExtension()Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 603
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioDataExtension()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 604
    const v1, 0x478ed

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3AudioDataExtension()Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 607
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3ClientInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 608
    const v1, 0x47c70

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3ClientInfoExtension()Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 611
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3RecognizerInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 612
    const v1, 0x47e64

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3RecognizerInfoExtension()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 615
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasMobileUserInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 616
    const v1, 0x1a09496

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getMobileUserInfoExtension()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 619
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3SessionInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 620
    const v1, 0x1a27214

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3SessionInfoExtension()Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasClientLogRequestExtension()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 624
    const v1, 0x1a833e7

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getClientLogRequestExtension()Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasTtsServiceRequestExtension()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 628
    const v1, 0x1a837ac

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getTtsServiceRequestExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 631
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasMajelServiceRequestExtension()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 632
    const v1, 0x1a8ba0c

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getMajelServiceRequestExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasMajelClientInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 636
    const v1, 0x1c5b670

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getMajelClientInfoExtension()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 639
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3ExperimentInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 640
    const v1, 0x1fcfef8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3ExperimentInfoExtension()Lcom/google/speech/s3/S3$S3ExperimentInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasPinholeParamsExtension()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 644
    const v1, 0x20c2c16

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getPinholeParamsExtension()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3ConnectionInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 648
    const v1, 0x20f3b67

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3ConnectionInfoExtension()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasSoundSearchInfoExtension()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 652
    const v1, 0x21b6d89

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getSoundSearchInfoExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasGogglesClientLogExtension()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 656
    const v1, 0x21bd8a3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getGogglesClientLogExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasGogglesS3SessionOptionsExtension()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 660
    const v1, 0x21bdb9a

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getGogglesS3SessionOptionsExtension()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 663
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasGogglesStreamRequestExtension()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 664
    const v1, 0x21ec2a6

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getGogglesStreamRequestExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 667
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasPinholeTtsBridgeParamsExtension()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 668
    const v1, 0x270b683

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getPinholeTtsBridgeParamsExtension()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 671
    :cond_16
    iput v0, p0, Lcom/google/speech/s3/S3$S3Request;->cachedSize:I

    .line 672
    return v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundSearchInfoExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    return-object v0
.end method

.method public getTtsServiceRequestExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    return-object v0
.end method

.method public hasClientLogRequestExtension()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasClientLogRequestExtension:Z

    return v0
.end method

.method public hasDebuggingEnabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasDebuggingEnabled:Z

    return v0
.end method

.method public hasEndOfData()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasEndOfData:Z

    return v0
.end method

.method public hasGogglesClientLogExtension()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesClientLogExtension:Z

    return v0
.end method

.method public hasGogglesS3SessionOptionsExtension()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesS3SessionOptionsExtension:Z

    return v0
.end method

.method public hasGogglesStreamRequestExtension()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesStreamRequestExtension:Z

    return v0
.end method

.method public hasLoggingEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasLoggingEnabled:Z

    return v0
.end method

.method public hasMajelClientInfoExtension()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMajelClientInfoExtension:Z

    return v0
.end method

.method public hasMajelServiceRequestExtension()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMajelServiceRequestExtension:Z

    return v0
.end method

.method public hasMobileUserInfoExtension()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMobileUserInfoExtension:Z

    return v0
.end method

.method public hasPinholeParamsExtension()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasPinholeParamsExtension:Z

    return v0
.end method

.method public hasPinholeTtsBridgeParamsExtension()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasPinholeTtsBridgeParamsExtension:Z

    return v0
.end method

.method public hasS3AudioDataExtension()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioDataExtension:Z

    return v0
.end method

.method public hasS3AudioInfoExtension()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioInfoExtension:Z

    return v0
.end method

.method public hasS3ClientInfoExtension()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ClientInfoExtension:Z

    return v0
.end method

.method public hasS3ConnectionInfoExtension()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ConnectionInfoExtension:Z

    return v0
.end method

.method public hasS3ExperimentInfoExtension()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ExperimentInfoExtension:Z

    return v0
.end method

.method public hasS3RecognizerInfoExtension()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3RecognizerInfoExtension:Z

    return v0
.end method

.method public hasS3SessionInfoExtension()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3SessionInfoExtension:Z

    return v0
.end method

.method public hasS3UserInfoExtension()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3UserInfoExtension:Z

    return v0
.end method

.method public hasService()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasService:Z

    return v0
.end method

.method public hasSoundSearchInfoExtension()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasSoundSearchInfoExtension:Z

    return v0
.end method

.method public hasTtsServiceRequestExtension()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasTtsServiceRequestExtension:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 489
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3Request;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Request;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 681
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 685
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3Request;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 686
    :sswitch_0
    return-object p0

    .line 691
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 695
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Request;->setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 699
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Request;->setEndOfData(Z)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 703
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Request;->setDebuggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 707
    :sswitch_5
    new-instance v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    .line 708
    .local v1, value:Lcom/google/speech/s3/S3$S3UserInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 709
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 713
    .end local v1           #value:Lcom/google/speech/s3/S3$S3UserInfo;
    :sswitch_6
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    .line 714
    .local v1, value:Lcom/google/speech/s3/Audio$S3AudioInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 715
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioInfoExtension(Lcom/google/speech/s3/Audio$S3AudioInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 719
    .end local v1           #value:Lcom/google/speech/s3/Audio$S3AudioInfo;
    :sswitch_7
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioData;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioData;-><init>()V

    .line 720
    .local v1, value:Lcom/google/speech/s3/Audio$S3AudioData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 721
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioDataExtension(Lcom/google/speech/s3/Audio$S3AudioData;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 725
    .end local v1           #value:Lcom/google/speech/s3/Audio$S3AudioData;
    :sswitch_8
    new-instance v1, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    .line 726
    .local v1, value:Lcom/google/speech/s3/S3$S3ClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 727
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ClientInfoExtension(Lcom/google/speech/s3/S3$S3ClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 731
    .end local v1           #value:Lcom/google/speech/s3/S3$S3ClientInfo;
    :sswitch_9
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    .line 732
    .local v1, value:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 733
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3RecognizerInfoExtension(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 737
    .end local v1           #value:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    :sswitch_a
    new-instance v1, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    .line 738
    .local v1, value:Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 739
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setMobileUserInfoExtension(Lcom/google/speech/s3/MobileUser$MobileUserInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0

    .line 743
    .end local v1           #value:Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    :sswitch_b
    new-instance v1, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    .line 744
    .local v1, value:Lcom/google/speech/s3/S3$S3SessionInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 745
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 749
    .end local v1           #value:Lcom/google/speech/s3/S3$S3SessionInfo;
    :sswitch_c
    new-instance v1, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-direct {v1}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;-><init>()V

    .line 750
    .local v1, value:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 751
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setClientLogRequestExtension(Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 755
    .end local v1           #value:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;
    :sswitch_d
    new-instance v1, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;-><init>()V

    .line 756
    .local v1, value:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 757
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setTtsServiceRequestExtension(Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 761
    .end local v1           #value:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    :sswitch_e
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;-><init>()V

    .line 762
    .local v1, value:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 763
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setMajelServiceRequestExtension(Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 767
    .end local v1           #value:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;
    :sswitch_f
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelClientInfo;-><init>()V

    .line 768
    .local v1, value:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 769
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setMajelClientInfoExtension(Lcom/google/speech/speech/s3/Majel$MajelClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 773
    .end local v1           #value:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;
    :sswitch_10
    new-instance v1, Lcom/google/speech/s3/S3$S3ExperimentInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3ExperimentInfo;-><init>()V

    .line 774
    .local v1, value:Lcom/google/speech/s3/S3$S3ExperimentInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 775
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ExperimentInfoExtension(Lcom/google/speech/s3/S3$S3ExperimentInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 779
    .end local v1           #value:Lcom/google/speech/s3/S3$S3ExperimentInfo;
    :sswitch_11
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    .line 780
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 781
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setPinholeParamsExtension(Lcom/google/speech/s3/PinholeStream$PinholeParams;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 785
    .end local v1           #value:Lcom/google/speech/s3/PinholeStream$PinholeParams;
    :sswitch_12
    new-instance v1, Lcom/google/speech/s3/S3$S3ConnectionInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3ConnectionInfo;-><init>()V

    .line 786
    .local v1, value:Lcom/google/speech/s3/S3$S3ConnectionInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 787
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ConnectionInfoExtension(Lcom/google/speech/s3/S3$S3ConnectionInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 791
    .end local v1           #value:Lcom/google/speech/s3/S3$S3ConnectionInfo;
    :sswitch_13
    new-instance v1, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    .line 792
    .local v1, value:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 793
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setSoundSearchInfoExtension(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 797
    .end local v1           #value:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    :sswitch_14
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;-><init>()V

    .line 798
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 799
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setGogglesClientLogExtension(Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 803
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    :sswitch_15
    new-instance v1, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-direct {v1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;-><init>()V

    .line 804
    .local v1, value:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 805
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setGogglesS3SessionOptionsExtension(Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 809
    .end local v1           #value:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    :sswitch_16
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;-><init>()V

    .line 810
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 811
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setGogglesStreamRequestExtension(Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 815
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;
    :sswitch_17
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;-><init>()V

    .line 816
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 817
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Request;->setPinholeTtsBridgeParamsExtension(Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;)Lcom/google/speech/s3/S3$S3Request;

    goto/16 :goto_0

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x23c442 -> :sswitch_5
        0x23c762 -> :sswitch_6
        0x23c76a -> :sswitch_7
        0x23e382 -> :sswitch_8
        0x23f322 -> :sswitch_9
        0xd04a4b2 -> :sswitch_a
        0xd1390a2 -> :sswitch_b
        0xd419f3a -> :sswitch_c
        0xd41bd62 -> :sswitch_d
        0xd45d062 -> :sswitch_e
        0xe2db382 -> :sswitch_f
        0xfe7f7c2 -> :sswitch_10
        0x106160b2 -> :sswitch_11
        0x1079db3a -> :sswitch_12
        0x10db6c4a -> :sswitch_13
        0x10dec51a -> :sswitch_14
        0x10dedcd2 -> :sswitch_15
        0x10f61532 -> :sswitch_16
        0x1385b41a -> :sswitch_17
    .end sparse-switch
.end method

.method public setClientLogRequestExtension(Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasClientLogRequestExtension:Z

    .line 231
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->clientLogRequestExtension_:Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    .line 232
    return-object p0
.end method

.method public setDebuggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasDebuggingEnabled:Z

    .line 54
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3Request;->debuggingEnabled_:Z

    .line 55
    return-object p0
.end method

.method public setEndOfData(Z)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasEndOfData:Z

    .line 71
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3Request;->endOfData_:Z

    .line 72
    return-object p0
.end method

.method public setGogglesClientLogExtension(Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 390
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesClientLogExtension:Z

    .line 391
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesClientLogExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 392
    return-object p0
.end method

.method public setGogglesS3SessionOptionsExtension(Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesS3SessionOptionsExtension:Z

    .line 411
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesS3SessionOptionsExtension_:Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 412
    return-object p0
.end method

.method public setGogglesStreamRequestExtension(Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasGogglesStreamRequestExtension:Z

    .line 431
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->gogglesStreamRequestExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    .line 432
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasLoggingEnabled:Z

    .line 37
    iput-boolean p1, p0, Lcom/google/speech/s3/S3$S3Request;->loggingEnabled_:Z

    .line 38
    return-object p0
.end method

.method public setMajelClientInfoExtension(Lcom/google/speech/speech/s3/Majel$MajelClientInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 290
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMajelClientInfoExtension:Z

    .line 291
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->majelClientInfoExtension_:Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    .line 292
    return-object p0
.end method

.method public setMajelServiceRequestExtension(Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 270
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMajelServiceRequestExtension:Z

    .line 271
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->majelServiceRequestExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    .line 272
    return-object p0
.end method

.method public setMobileUserInfoExtension(Lcom/google/speech/s3/MobileUser$MobileUserInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasMobileUserInfoExtension:Z

    .line 191
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->mobileUserInfoExtension_:Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 192
    return-object p0
.end method

.method public setPinholeParamsExtension(Lcom/google/speech/s3/PinholeStream$PinholeParams;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasPinholeParamsExtension:Z

    .line 331
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 332
    return-object p0
.end method

.method public setPinholeTtsBridgeParamsExtension(Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasPinholeTtsBridgeParamsExtension:Z

    .line 451
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->pinholeTtsBridgeParamsExtension_:Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    .line 452
    return-object p0
.end method

.method public setS3AudioDataExtension(Lcom/google/speech/s3/Audio$S3AudioData;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioDataExtension:Z

    .line 131
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioDataExtension_:Lcom/google/speech/s3/Audio$S3AudioData;

    .line 132
    return-object p0
.end method

.method public setS3AudioInfoExtension(Lcom/google/speech/s3/Audio$S3AudioInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioInfoExtension:Z

    .line 111
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3AudioInfoExtension_:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 112
    return-object p0
.end method

.method public setS3ClientInfoExtension(Lcom/google/speech/s3/S3$S3ClientInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ClientInfoExtension:Z

    .line 151
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ClientInfoExtension_:Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 152
    return-object p0
.end method

.method public setS3ConnectionInfoExtension(Lcom/google/speech/s3/S3$S3ConnectionInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 350
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ConnectionInfoExtension:Z

    .line 351
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ConnectionInfoExtension_:Lcom/google/speech/s3/S3$S3ConnectionInfo;

    .line 352
    return-object p0
.end method

.method public setS3ExperimentInfoExtension(Lcom/google/speech/s3/S3$S3ExperimentInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3ExperimentInfoExtension:Z

    .line 311
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3ExperimentInfoExtension_:Lcom/google/speech/s3/S3$S3ExperimentInfo;

    .line 312
    return-object p0
.end method

.method public setS3RecognizerInfoExtension(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3RecognizerInfoExtension:Z

    .line 171
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3RecognizerInfoExtension_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 172
    return-object p0
.end method

.method public setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3SessionInfoExtension:Z

    .line 211
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3SessionInfoExtension_:Lcom/google/speech/s3/S3$S3SessionInfo;

    .line 212
    return-object p0
.end method

.method public setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasS3UserInfoExtension:Z

    .line 91
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension_:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 92
    return-object p0
.end method

.method public setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasService:Z

    .line 20
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->service_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setSoundSearchInfoExtension(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasSoundSearchInfoExtension:Z

    .line 371
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->soundSearchInfoExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 372
    return-object p0
.end method

.method public setTtsServiceRequestExtension(Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;)Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Request;->hasTtsServiceRequestExtension:Z

    .line 251
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Request;->ttsServiceRequestExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 252
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
    .line 495
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getLoggingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasEndOfData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getEndOfData()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 504
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getDebuggingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 507
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3UserInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    const v0, 0x47888

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3UserInfoExtension()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 511
    const v0, 0x478ec

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3AudioInfoExtension()Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 513
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3AudioDataExtension()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 514
    const v0, 0x478ed

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3AudioDataExtension()Lcom/google/speech/s3/Audio$S3AudioData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 516
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3ClientInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 517
    const v0, 0x47c70

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3ClientInfoExtension()Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 519
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3RecognizerInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 520
    const v0, 0x47e64

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3RecognizerInfoExtension()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 522
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasMobileUserInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 523
    const v0, 0x1a09496

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getMobileUserInfoExtension()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 525
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3SessionInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 526
    const v0, 0x1a27214

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3SessionInfoExtension()Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 528
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasClientLogRequestExtension()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 529
    const v0, 0x1a833e7

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getClientLogRequestExtension()Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 531
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasTtsServiceRequestExtension()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 532
    const v0, 0x1a837ac

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getTtsServiceRequestExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 534
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasMajelServiceRequestExtension()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 535
    const v0, 0x1a8ba0c

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getMajelServiceRequestExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 537
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasMajelClientInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 538
    const v0, 0x1c5b670

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getMajelClientInfoExtension()Lcom/google/speech/speech/s3/Majel$MajelClientInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 540
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3ExperimentInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 541
    const v0, 0x1fcfef8

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3ExperimentInfoExtension()Lcom/google/speech/s3/S3$S3ExperimentInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 543
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasPinholeParamsExtension()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 544
    const v0, 0x20c2c16

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getPinholeParamsExtension()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 546
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasS3ConnectionInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 547
    const v0, 0x20f3b67

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getS3ConnectionInfoExtension()Lcom/google/speech/s3/S3$S3ConnectionInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 549
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasSoundSearchInfoExtension()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 550
    const v0, 0x21b6d89

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getSoundSearchInfoExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 552
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasGogglesClientLogExtension()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 553
    const v0, 0x21bd8a3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getGogglesClientLogExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 555
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasGogglesS3SessionOptionsExtension()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 556
    const v0, 0x21bdb9a

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getGogglesS3SessionOptionsExtension()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 558
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasGogglesStreamRequestExtension()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 559
    const v0, 0x21ec2a6

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getGogglesStreamRequestExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 561
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->hasPinholeTtsBridgeParamsExtension()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 562
    const v0, 0x270b683

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Request;->getPinholeTtsBridgeParamsExtension()Lcom/google/speech/s3/PinholeStream$PinholeTtsBridgeParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 564
    :cond_16
    return-void
.end method
