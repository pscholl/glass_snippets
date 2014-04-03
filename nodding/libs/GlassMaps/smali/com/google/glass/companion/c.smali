.class public final Lcom/google/glass/companion/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/net/d;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:J

.field private c:J

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/glass/userevent/a;

.field private volatile f:Z

.field private g:Lcom/google/glass/companion/f;

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/a;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/glass/companion/c;->b:J

    iput-wide v0, p0, Lcom/google/glass/companion/c;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/companion/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/companion/d;

    invoke-direct {v1, p0}, Lcom/google/glass/companion/d;-><init>(Lcom/google/glass/companion/c;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/companion/c;->i:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/google/glass/companion/c;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/companion/c;->e:Lcom/google/glass/userevent/a;

    invoke-static {p0}, Lcom/google/glass/net/c;->a(Lcom/google/glass/net/d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/companion/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/companion/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/companion/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/companion/c;->e()V

    return-void
.end method

.method static synthetic c(Lcom/google/glass/companion/c;)Lcom/google/glass/userevent/a;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/companion/c;->e:Lcom/google/glass/userevent/a;

    return-object v0
.end method

.method static synthetic d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    const-string v1, "xxxxSend tethering error message to glass."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/companion/o;

    invoke-direct {v0}, Lcom/google/glass/companion/o;-><init>()V

    iput v3, v0, Lcom/google/glass/companion/o;->b:I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/glass/companion/a;->b()Lcom/google/glass/companion/n;

    move-result-object v1

    iput-object v0, v1, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    iget-object v0, p0, Lcom/google/glass/companion/c;->i:Landroid/os/Messenger;

    invoke-static {v1, v0}, Lcom/google/glass/companion/a;->a(Lcom/google/glass/companion/n;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    invoke-interface {v1, v0}, Lcom/google/glass/companion/f;->a(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    const-string v2, "Error sending envelope to companion service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-wide/32 v4, 0xc350

    iget-wide v0, p0, Lcom/google/glass/companion/c;->b:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/companion/c;->b:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/companion/c;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    if-nez v0, :cond_3

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/c;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    invoke-interface {v0}, Lcom/google/glass/companion/f;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    const-string v2, "Error occurs while pinging."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/google/glass/companion/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/glass/companion/c;->f:Z

    iget-object v0, p0, Lcom/google/glass/companion/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 7

    const-wide/32 v4, 0xc350

    iget-wide v0, p0, Lcom/google/glass/companion/c;->c:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/companion/c;->c:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/companion/c;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/companion/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/net/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    if-nez v0, :cond_3

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/c;->c:J

    invoke-static {}, Lcom/google/glass/companion/a;->a()J

    move-result-wide v0

    new-instance v2, Lcom/google/glass/companion/m;

    invoke-direct {v2}, Lcom/google/glass/companion/m;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/glass/companion/m;->b:Ljava/lang/Long;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/glass/companion/m;->c:Ljava/lang/Boolean;

    sget-object v3, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    const-string v4, "xxxxx Requesting companion info, id = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/companion/a;->b()Lcom/google/glass/companion/n;

    move-result-object v0

    iput-object v2, v0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    iget-object v1, p0, Lcom/google/glass/companion/c;->i:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/google/glass/companion/a;->a(Lcom/google/glass/companion/n;Landroid/os/Messenger;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lcom/google/glass/companion/c;->g:Lcom/google/glass/companion/f;

    invoke-interface {v1, v0}, Lcom/google/glass/companion/f;->a(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/companion/c;->a:Lcom/google/glass/logging/i;

    const-string v2, "Error sending envelope to companion service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/companion/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
