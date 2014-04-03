.class public Lcom/google/glass/voice/VoiceApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "VoiceApplication.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private enableSync(Landroid/accounts/Account;)V
    .locals 2
    .parameter "primaryAccount"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceApplication$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceApplication$1;-><init>(Lcom/google/glass/voice/VoiceApplication;Landroid/accounts/Account;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 22
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 25
    new-instance v0, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, p0}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, authUtils:Lcom/google/glass/auth/AuthUtils;
    invoke-virtual {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 27
    .local v1, primaryAccount:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 28
    sget-object v2, Lcom/google/glass/voice/VoiceApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No Google account available! Cannot configure saved audio sync."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceApplication;->enableSync(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
