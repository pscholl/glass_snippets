.class public Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;,
        Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;
    }
.end annotation


# static fields
.field private static appVersion:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;)Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 8
    .parameter "context"
    .parameter "speechSettings"
    .parameter "networkInfo"
    .parameter "locationHelper"
    .parameter "cookies"

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/speech/params/NetworkRequestProducerParams;

    new-instance v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;-><init>(Landroid/content/Context;)V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v4, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

    const/4 v3, 0x0

    invoke-direct {v4, p3, p4, p0, v3}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;-><init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;)V

    invoke-static {p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->getDeviceParams(Landroid/content/Context;)Lcom/google/android/speech/params/DeviceParams;

    move-result-object v7

    move-object v3, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/params/NetworkRequestProducerParams;-><init>(Lcom/google/android/speech/helper/AuthTokenHelper;Landroid/view/WindowManager;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/params/DeviceParams;)V

    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getDeviceParams(Landroid/content/Context;)Lcom/google/android/speech/params/DeviceParams;
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
