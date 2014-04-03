.class public Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "SoundSearchInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

.field private final mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

.field private final mTtsEnabled:Z


# direct methods
.method public constructor <init>(ZLcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/params/DeviceParams;)V
    .locals 1
    .parameter "ttsEnabled"
    .end parameter
    .parameter "networkInformation"
    .end parameter
    .parameter "deviceParams"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 22
    const-string v0, "SoundSearchInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 23
    iput-boolean p1, p0, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->mTtsEnabled:Z

    .line 24
    iput-object p2, p0, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    .line 25
    iput-object p3, p0, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    .line 26
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 31
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    .line 34
    .local v0, lookup:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    iget-object v5, p0, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    invoke-virtual {v5}, Lcom/google/android/speech/utils/NetworkInformation;->getDeviceCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, simCountryCode:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 36
    invoke-virtual {v0, v2}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 43
    :cond_0
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->addDesiredResultType(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 45
    new-instance v4, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v4}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    .line 46
    .local v4, stream:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    invoke-virtual {v4, v6}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioContainer(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 47
    invoke-virtual {v4, v6}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioEncoding(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 49
    new-instance v3, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v3}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    .line 50
    .local v3, soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    invoke-virtual {v3, v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 51
    invoke-virtual {v3, v4}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 52
    iget-boolean v5, p0, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->mTtsEnabled:Z

    invoke-virtual {v3, v5}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setTtsOutputEnabled(Z)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 53
    return-object v3

    .line 38
    .end local v3           #soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .end local v4           #stream:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    :cond_1
    iget-object v5, p0, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v5}, Lcom/google/android/speech/params/DeviceParams;->getSearchDomainCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, searchDomainCountryCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    goto :goto_0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/SoundSearchInfoBuilderTask;->build()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v0

    return-object v0
.end method
