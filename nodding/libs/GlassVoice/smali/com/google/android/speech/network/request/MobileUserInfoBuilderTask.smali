.class public Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "MobileUserInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNetworkInfo:Lcom/google/android/speech/utils/NetworkInformation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/utils/NetworkInformation;)V
    .locals 1
    .parameter "networkInfo"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 16
    const-string v0, "MobileUserInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;->mNetworkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    .line 18
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 22
    new-instance v0, Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;-><init>()V

    .line 24
    .local v0, info:Lcom/google/speech/s3/MobileUser$MobileUserInfo;
    iget-object v4, p0, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;->mNetworkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    invoke-virtual {v4}, Lcom/google/android/speech/utils/NetworkInformation;->getNetworkMccMnc()[I

    move-result-object v1

    .line 25
    .local v1, networkMccMnc:[I
    sget-object v4, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    if-eq v1, v4, :cond_0

    .line 26
    aget v4, v1, v5

    invoke-virtual {v0, v4}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setNetworkMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 27
    aget v4, v1, v6

    invoke-virtual {v0, v4}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setNetworkMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 30
    :cond_0
    iget-object v4, p0, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;->mNetworkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    invoke-virtual {v4}, Lcom/google/android/speech/utils/NetworkInformation;->getSimMccMnc()[I

    move-result-object v3

    .line 31
    .local v3, simMccMnc:[I
    sget-object v4, Lcom/google/android/speech/utils/NetworkInformation;->MISSING_TELEPHONY_RESULT:[I

    if-eq v3, v4, :cond_1

    .line 32
    aget v4, v3, v5

    invoke-virtual {v0, v4}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setSimMcc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 33
    aget v4, v3, v6

    invoke-virtual {v0, v4}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setSimMnc(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 36
    :cond_1
    iget-object v4, p0, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;->mNetworkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    invoke-virtual {v4}, Lcom/google/android/speech/utils/NetworkInformation;->getConnectionId()I

    move-result v2

    .line 37
    .local v2, networkType:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/speech/s3/MobileUser$MobileUserInfo;->setNetworkType(I)Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    .line 41
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;->build()Lcom/google/speech/s3/MobileUser$MobileUserInfo;

    move-result-object v0

    return-object v0
.end method
