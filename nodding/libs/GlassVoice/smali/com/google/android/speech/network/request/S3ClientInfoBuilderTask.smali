.class public Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "S3ClientInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/S3$S3ClientInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mTriggerApplicationId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;Lcom/google/android/speech/params/DeviceParams;Ljava/lang/String;Landroid/view/WindowManager;)V
    .locals 1
    .parameter "speechSettings"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "appId"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "deviceParams"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "triggerApplicationId"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "windowManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 33
    const-string v0, "S3ClientInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 35
    iput-object p2, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mAppId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    .line 37
    iput-object p4, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mTriggerApplicationId:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 4

    .prologue
    .line 43
    new-instance v2, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setClientId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v3}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->addExperimentId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v3}, Lcom/google/android/speech/params/DeviceParams;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v3}, Lcom/google/android/speech/params/DeviceParams;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setUserAgent(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    .line 53
    .local v0, info:Lcom/google/speech/s3/S3$S3ClientInfo;
    iget-object v2, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 54
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayWidthPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayHeightPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayDensityDpi(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 61
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mTriggerApplicationId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mTriggerApplicationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3ClientInfo;->setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 65
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->build()Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method
