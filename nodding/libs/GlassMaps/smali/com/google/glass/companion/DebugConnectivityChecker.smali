.class public Lcom/google/glass/companion/DebugConnectivityChecker;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static b:Lcom/google/glass/companion/e;

.field private static c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/companion/e;)Lcom/google/glass/companion/e;
    .locals 0

    sput-object p0, Lcom/google/glass/companion/DebugConnectivityChecker;->b:Lcom/google/glass/companion/e;

    return-object p0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b()Landroid/os/PowerManager$WakeLock;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->c:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->c:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->c:Landroid/os/PowerManager$WakeLock;

    :cond_0
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->b:Lcom/google/glass/companion/e;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->b:Lcom/google/glass/companion/e;

    invoke-virtual {v0, v3}, Lcom/google/glass/companion/e;->cancel(Z)Z

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->a:Lcom/google/glass/logging/i;

    const-string v1, "Acquiring wakelock for companion connection debug."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Lcom/google/glass/companion/e;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/e;-><init>(Lcom/google/glass/companion/DebugConnectivityChecker;Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->b:Lcom/google/glass/companion/e;

    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->b:Lcom/google/glass/companion/e;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/companion/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
