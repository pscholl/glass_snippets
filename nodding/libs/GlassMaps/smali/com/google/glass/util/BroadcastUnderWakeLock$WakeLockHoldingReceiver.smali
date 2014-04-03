.class Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/glass/util/BroadcastUnderWakeLock;->a(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->b:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/google/glass/util/BroadcastUnderWakeLock;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Acquiring broadcast wakelock: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/BroadcastUnderWakeLock;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Releasing broadcast wakelock: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->b()V

    return-void
.end method
