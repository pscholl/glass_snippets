.class public Lcom/google/glass/ongoing/OngoingActivityManager;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/content/ComponentName;

.field private static final b:Lcom/google/glass/logging/i;

.field private static c:Lcom/google/glass/ongoing/OngoingActivityManager;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/glass/ongoing/c;

.field private f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

.field private g:Landroid/os/Messenger;

.field private final h:Landroid/os/Messenger;

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/content/ServiceConnection;

.field private final k:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.home"

    const-string v2, "com.google.glass.ongoing.OngoingActivityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->a:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/ongoing/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->g:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->h:Landroid/os/Messenger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->i:Ljava/lang/Object;

    new-instance v0, Lcom/google/glass/ongoing/b;

    invoke-direct {v0, p0}, Lcom/google/glass/ongoing/b;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->j:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->e:Lcom/google/glass/ongoing/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 4

    const-class v1, Lcom/google/glass/ongoing/OngoingActivityManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->c:Lcom/google/glass/ongoing/OngoingActivityManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/google/glass/ongoing/OngoingActivityManager;

    new-instance v3, Lcom/google/glass/ongoing/a;

    invoke-direct {v3}, Lcom/google/glass/ongoing/a;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/c;)V

    sput-object v2, Lcom/google/glass/ongoing/OngoingActivityManager;->c:Lcom/google/glass/ongoing/OngoingActivityManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->c:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a()V

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->c:Lcom/google/glass/ongoing/OngoingActivityManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 6

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v2, "Opening connection to OngoingActivityService from: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->j:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTING:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v2, "bindService() failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "Connected to %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->e:Lcom/google/glass/ongoing/c;

    invoke-interface {v0, p2}, Lcom/google/glass/ongoing/c;->a(Landroid/os/IBinder;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->g:Landroid/os/Messenger;

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->h:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v3, "Sending registration request"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->b(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v3, "RemoteException"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->g:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->b()V

    throw v0
.end method

.method static synthetic a(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private a(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 3

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->b(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->f:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->g:Landroid/os/Messenger;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "Disconnected from OngoingActivityService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->a()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "Sending message: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Landroid/os/Message;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "Sending message: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 3

    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->k:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
