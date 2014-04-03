.class public Lcom/google/glass/hidden/AndroidUpdate;
.super Ljava/lang/Object;
.source "AndroidUpdate.java"


# static fields
.field public static final ACTION_CANCEL_UPDATE:Ljava/lang/String; = "com.google.glass.update.CANCEL_UPDATE"

.field public static final ACTION_INSTALL_UPDATE:Ljava/lang/String; = "com.google.glass.update.INSTALL_UPDATE"

.field public static final ACTION_UPDATE_AVAILABLE:Ljava/lang/String; = "com.google.glass.update.UPDATE_AVAILABLE"

.field public static final ACTION_UPDATE_COMPLETED:Ljava/lang/String; = "com.google.glass.update.UPDATE_COMPLETED"

.field public static final EXTRA_IS_SUCCESS:Ljava/lang/String; = "is_success"

.field public static final KEY_DIALOG_MESSAGE:Ljava/lang/String; = "update_dialog_message"

.field public static final MINIMUM_PERCENT_TO_INSTALL:I = 0x32

.field private static final PERMISSION_TRIGGER_OTA:Ljava/lang/String; = "com.google.glass.permission.TRIGGER_OTA"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final battery:Lcom/google/glass/util/BatteryHelper;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/hidden/AndroidUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/hidden/AndroidUpdate;->TAG:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/glass/hidden/AndroidUpdate;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/hidden/AndroidUpdate;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/glass/hidden/AndroidUpdate;->context:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/hidden/AndroidUpdate;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 56
    return-void
.end method

.method private getUpdateAvailableIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/hidden/AndroidUpdate;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.update.UPDATE_AVAILABLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forceInstall()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/hidden/AndroidUpdate;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.update.INSTALL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.glass.permission.TRIGGER_OTA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/hidden/AndroidUpdate;->getUpdateAvailableIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "update_dialog_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public install()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/google/glass/hidden/AndroidUpdate;->isReadyForInstall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/google/glass/hidden/AndroidUpdate;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Ready for install, requesting platform start install."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/hidden/AndroidUpdate;->forceInstall()V

    .line 83
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_0
    sget-object v1, Lcom/google/glass/hidden/AndroidUpdate;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Preqs not met, not requesting install."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/hidden/AndroidUpdate;->getUpdateAvailableIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyForInstall()Z
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/glass/hidden/AndroidUpdate;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    .line 101
    .local v0, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    iget-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidUpdate [isAvailable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/hidden/AndroidUpdate;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/hidden/AndroidUpdate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isReadyForInstall()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/hidden/AndroidUpdate;->isReadyForInstall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
