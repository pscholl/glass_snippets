.class public Lcom/google/android/speech/params/NetworkRequestProducerParams;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParams.java"


# instance fields
.field private final mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

.field private final mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

.field private final mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

.field private final mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

.field private final mPinholeParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/helper/AuthTokenHelper;Landroid/view/WindowManager;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/params/DeviceParams;)V
    .locals 0
    .parameter "authTokenHelper"
    .parameter "windowManager"
    .parameter "networkInformation"
    .parameter "pinholeParamsBuilder"
    .parameter "locationHelper"
    .parameter "speechSettings"
    .parameter "deviceParams"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    .line 29
    iput-object p2, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    iput-object p3, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    .line 31
    iput-object p4, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mPinholeParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;

    .line 32
    iput-object p5, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 33
    iput-object p6, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 34
    iput-object p7, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    .line 35
    return-void
.end method


# virtual methods
.method public getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    return-object v0
.end method

.method public getDeviceParams()Lcom/google/android/speech/params/DeviceParams;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    return-object v0
.end method

.method public getLocationHelper()Lcom/google/android/speech/helper/SpeechLocationHelper;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    return-object v0
.end method

.method public getNetworkInformation()Lcom/google/android/speech/utils/NetworkInformation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    return-object v0
.end method

.method public getPinholeParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mPinholeParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method
