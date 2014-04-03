.class public Lcom/google/glass/companion/DebugConnectivityChecker;
.super Landroid/content/BroadcastReceiver;
.source "DebugConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
    }
.end annotation


# static fields
.field private static final DELAY_MS:J = 0x7530L

.field private static final INITIAL_DELAY_MS:J = 0x1388L

.field private static final LOG_FILENAME:Ljava/lang/String; = "connectivity.log"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;)Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-object p0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 115
    sget-object v2, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Starting companion connection debug."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v7, intent:Landroid/content/Intent;
    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 121
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v2, "connectivity.log"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 123
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 124
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 130
    sget-object v3, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Stopping companion connection debug."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 134
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 135
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 98
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 99
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 100
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    if-eqz v1, :cond_1

    .line 104
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    invoke-virtual {v1, v4}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->cancel(Z)Z

    .line 105
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    :cond_1
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Acquiring wakelock for companion connection debug."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 110
    new-instance v1, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;-><init>(Lcom/google/glass/companion/DebugConnectivityChecker;Landroid/content/Context;)V

    sput-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    .line 111
    sget-object v1, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method
