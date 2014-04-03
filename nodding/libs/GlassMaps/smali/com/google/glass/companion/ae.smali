.class public final Lcom/google/glass/companion/ae;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/glass/logging/i;

.field private static volatile d:Ljava/lang/Boolean;


# instance fields
.field private final e:Landroid/app/Application;

.field private f:Lcom/google/glass/companion/f;

.field private volatile g:Z

.field private h:I

.field private i:I

.field private final j:Lcom/google/glass/companion/c;

.field private k:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private l:Ljava/util/Set;

.field private final m:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final n:Landroid/content/ServiceConnection;

.field private final o:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ae;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/companion/ae;->a:Lcom/google/glass/logging/i;

    const-string v1, "companionStateListener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ae;->b:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/companion/ae;->a:Lcom/google/glass/logging/i;

    const-string v1, "pairedDeviceReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ae;->c:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/companion/ae;-><init>(Landroid/app/Application;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/google/glass/companion/ae;->g:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/ae;->l:Ljava/util/Set;

    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;-><init>(Lcom/google/glass/companion/ae;)V

    iput-object v0, p0, Lcom/google/glass/companion/ae;->m:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-instance v0, Lcom/google/glass/companion/af;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/af;-><init>(Lcom/google/glass/companion/ae;)V

    iput-object v0, p0, Lcom/google/glass/companion/ae;->n:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$3;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$3;-><init>(Lcom/google/glass/companion/ae;)V

    iput-object v0, p0, Lcom/google/glass/companion/ae;->o:Lcom/google/glass/util/SafeBroadcastReceiver;

    iput-object p1, p0, Lcom/google/glass/companion/ae;->e:Landroid/app/Application;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/glass/companion/c;

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/glass/companion/c;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/a;)V

    iput-object v0, p0, Lcom/google/glass/companion/ae;->j:Lcom/google/glass/companion/c;

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/companion/ae;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/google/glass/companion/ae;->o:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/ae;->j:Lcom/google/glass/companion/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/companion/ae;I)I
    .locals 0

    iput p1, p0, Lcom/google/glass/companion/ae;->i:I

    return p1
.end method

.method static synthetic a(Lcom/google/glass/companion/ae;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/ae;->k:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/companion/ae;Lcom/google/glass/companion/f;)Lcom/google/glass/companion/f;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/ae;->f:Lcom/google/glass/companion/f;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/companion/ae;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/companion/ae;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/google/glass/companion/ae;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/companion/ae;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/google/glass/companion/ae;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/ae;->i:I

    return v0
.end method

.method static synthetic b(Lcom/google/glass/companion/ae;I)I
    .locals 0

    iput p1, p0, Lcom/google/glass/companion/ae;->h:I

    return p1
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/ae;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/companion/ae;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/ae;->h:I

    return v0
.end method

.method static synthetic c()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/ae;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/ae;->c:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic d(Lcom/google/glass/companion/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/companion/ae;->f()V

    return-void
.end method

.method static synthetic e(Lcom/google/glass/companion/ae;)Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/companion/ae;->e:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/ae;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f(Lcom/google/glass/companion/ae;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/companion/ae;->m:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/google/glass/companion/ae;->j:Lcom/google/glass/companion/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/ae;->j:Lcom/google/glass/companion/c;

    iget-boolean v1, p0, Lcom/google/glass/companion/ae;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/c;->a(Z)V

    iget-object v0, p0, Lcom/google/glass/companion/ae;->j:Lcom/google/glass/companion/c;

    iget-object v1, p0, Lcom/google/glass/companion/ae;->f:Lcom/google/glass/companion/f;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/c;->a(Lcom/google/glass/companion/f;)V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/ae;->l:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/companion/ae;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/b;

    iget-boolean v3, p0, Lcom/google/glass/companion/ae;->g:Z

    iget v4, p0, Lcom/google/glass/companion/ae;->i:I

    iget v5, p0, Lcom/google/glass/companion/ae;->h:I

    invoke-interface {v0, v3, v4, v5}, Lcom/google/glass/companion/b;->a(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/companion/b;)V
    .locals 3

    new-instance v0, Lcom/google/glass/companion/ag;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/ag;-><init>(Lcom/google/glass/companion/ae;Lcom/google/glass/companion/b;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/companion/ae;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/google/glass/util/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/companion/ae;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/companion/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/companion/ae;->g:Z

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/companion/ae;->f:Lcom/google/glass/companion/f;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/glass/companion/f;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/glass/companion/ae;->a:Lcom/google/glass/logging/i;

    const-string v3, "Failed to send envelope."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
