.class public Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "S3UserInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/S3$S3UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VS.S3UserInfoBuilderTask"


# instance fields
.field private final mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

.field private final mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

.field private final mLocationOverride:Landroid/location/Location;

.field private final mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mSpokenLocale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;Lcom/google/speech/s3/S3$S3UserInfo;)V
    .locals 1
    .parameter "authTokenHelper"
    .parameter "speechSettings"
    .parameter "locationHelper"
    .parameter "spokenLocaleBcp47"
    .parameter "locationOverride"
    .parameter "s3UserInfo"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 63
    const-string v0, "S3UserInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    .line 65
    iput-object p2, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 66
    iput-object p3, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 67
    iput-object p4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpokenLocale:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationOverride:Landroid/location/Location;

    .line 69
    iput-object p6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 70
    return-void
.end method

.method private buildNewS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    new-instance v6, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v6}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    iget-object v7, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v7}, Lcom/google/android/speech/SpeechSettings;->getInstallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/speech/s3/S3$S3UserInfo;->setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v6

    new-instance v7, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v7}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/speech/s3/S3$S3UserInfo;->setUserLocale(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v5

    .line 122
    .local v5, s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Lcom/google/android/speech/helper/AuthTokenHelper;->blockingGetAuthTokens(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, authTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 124
    const-string v6, "VS.S3UserInfoBuilderTask"

    const-string v7, "Error fetching auth."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v5, 0x0

    .line 163
    .end local v5           #s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :goto_0
    return-object v5

    .line 128
    .restart local v5       #s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 130
    new-instance v6, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v6}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    iget-object v7, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    invoke-interface {v7}, Lcom/google/android/speech/helper/AuthTokenHelper;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/speech/s3/S3$AuthToken;->setName(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/speech/s3/S3$AuthToken;->setToken(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/s3/S3$S3UserInfo;->addAuthToken(Lcom/google/speech/s3/S3$AuthToken;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_1

    .line 137
    .end local v0           #authToken:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-interface {v6}, Lcom/google/android/speech/helper/SpeechLocationHelper;->shouldSendLocation()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 138
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-interface {v6}, Lcom/google/android/speech/helper/SpeechLocationHelper;->getXGeoLocation()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, location:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationOverride:Landroid/location/Location;

    if-eqz v6, :cond_3

    .line 141
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationOverride:Landroid/location/Location;

    invoke-static {v6}, Lcom/google/android/searchcommon/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, locationString:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    .line 159
    .end local v3           #location:Ljava/lang/String;
    .end local v4           #locationString:Ljava/lang/String;
    :goto_2
    new-instance v6, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v6}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    iget-object v7, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpokenLocale:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/s3/S3$S3UserInfo;->setSpokenLanguage(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 144
    .restart local v3       #location:Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {v5, v3}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_2

    .line 152
    :cond_4
    const-string v6, "w "

    invoke-virtual {v5, v6}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_2

    .line 156
    .end local v3           #location:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/speech/s3/S3$S3UserInfo;->setUsePreciseGeolocation(Z)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_2
.end method

.method public static getAuthTokenRefreshingBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/speech/s3/S3$S3UserInfo;)Ljava/util/concurrent/Callable;
    .locals 7
    .parameter "authTokenHelper"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "userInfo"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/helper/AuthTokenHelper;",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;-><init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;Lcom/google/speech/s3/S3$S3UserInfo;)V

    return-object v0
.end method

.method public static getBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;)Ljava/util/concurrent/Callable;
    .locals 7
    .parameter "authTokenHelper"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "speechSettings"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "locationHelper"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "spokenLocaleBcp47"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "locationOverride"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/helper/AuthTokenHelper;",
            "Lcom/google/android/speech/SpeechSettings;",
            "Lcom/google/android/speech/helper/SpeechLocationHelper;",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;-><init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;Lcom/google/speech/s3/S3$S3UserInfo;)V

    return-object v0
.end method

.method private refreshS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    invoke-interface {v6}, Lcom/google/android/speech/helper/AuthTokenHelper;->invalidateAuthTokens()V

    .line 88
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Lcom/google/android/speech/helper/AuthTokenHelper;->blockingGetAuthTokens(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, authTokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 91
    const-string v6, "VS.S3UserInfoBuilderTask"

    const-string v7, "Error fetching auth."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 112
    :cond_0
    :goto_0
    return-object v4

    .line 95
    :cond_1
    new-instance v4, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v4}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    .line 97
    .local v4, refreshedInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-virtual {v6}, Lcom/google/speech/s3/S3$S3UserInfo;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/speech/s3/S3$S3UserInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {v4}, Lcom/google/speech/s3/S3$S3UserInfo;->clearAuthToken()Lcom/google/speech/s3/S3$S3UserInfo;

    .line 104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, authToken:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 106
    new-instance v5, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    iget-object v6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    invoke-interface {v6}, Lcom/google/android/speech/helper/AuthTokenHelper;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/s3/S3$AuthToken;->setName(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/speech/s3/S3$AuthToken;->setToken(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/speech/s3/S3$S3UserInfo;->addAuthToken(Lcom/google/speech/s3/S3$AuthToken;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_1

    .line 98
    .end local v0           #authToken:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v6, "VS.S3UserInfoBuilderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid s3UserInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 100
    goto :goto_0
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->buildNewS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->refreshS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->build()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    return-object v0
.end method
