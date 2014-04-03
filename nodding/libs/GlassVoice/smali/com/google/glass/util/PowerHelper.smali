.class public Lcom/google/glass/util/PowerHelper;
.super Ljava/lang/Object;
.source "PowerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final powerManager:Landroid/os/PowerManager;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PowerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Landroid/os/PowerManager;

    .line 23
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Landroid/os/PowerManager;

    const v1, 0x1000001a

    sget-object v2, Lcom/google/glass/util/PowerHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public dontStayAwake()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 59
    :cond_0
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public goToSleep()V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 31
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 32
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isStayingAwake()Z
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stayAwake()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stayAwake(J)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 91
    return-void
.end method

.method public wakeUp()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->userActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    throw v0

    .line 83
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
