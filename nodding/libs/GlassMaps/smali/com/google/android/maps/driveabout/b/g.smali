.class final Lcom/google/android/maps/driveabout/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/as;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/a;

.field private final b:Lcom/google/android/maps/driveabout/a/at;

.field private c:Lcom/google/android/maps/driveabout/a/a;

.field private final d:Lcom/google/android/maps/driveabout/b/d;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/b/a;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/b/g;->d:Lcom/google/android/maps/driveabout/b/d;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->c:Lcom/google/android/maps/driveabout/a/a;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    :cond_2
    new-instance v3, Lcom/google/android/maps/driveabout/a/aj;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/a/aj;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/a;->c(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/c;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v2, v4}, Lcom/google/android/maps/driveabout/a/c;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/a/aj;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/b/a;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/b/a;->d(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/b/a;->e(Lcom/google/android/maps/driveabout/b/a;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/a;->d(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v2, v4}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b/a;->d(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v1, v2, p0}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    goto :goto_0

    :cond_4
    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->f(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->f(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->g(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/ar;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/a;->h(Lcom/google/android/maps/driveabout/b/a;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/a;->i(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/a/c;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-interface {v2, v4}, Lcom/google/android/maps/driveabout/a/c;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/a/aj;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_7
    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/a/aj;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_8
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/a/aj;->a()Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->c:Lcom/google/android/maps/driveabout/a/a;

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    goto :goto_1

    :cond_a
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/b/g;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/g;->a(Z)Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/g;->d()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/b/h;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/b/h;-><init>(Lcom/google/android/maps/driveabout/b/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/g;->b()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->c:Lcom/google/android/maps/driveabout/a/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->c:Lcom/google/android/maps/driveabout/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->j(Lcom/google/android/maps/driveabout/b/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->c:Lcom/google/android/maps/driveabout/a/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->b(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/j;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->b(Lcom/google/android/maps/driveabout/b/a;)Lcom/google/android/maps/driveabout/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/j;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->c:Lcom/google/android/maps/driveabout/a/a;

    new-instance v1, Lcom/google/android/maps/driveabout/b/i;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/b/i;-><init>(Lcom/google/android/maps/driveabout/b/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/a;->a(Lcom/google/android/maps/driveabout/a/b;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/b/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->d:Lcom/google/android/maps/driveabout/b/d;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/g;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/g;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/g;->b()V
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

.method public final a(Lcom/google/android/maps/driveabout/b/g;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/b/g;->b:Lcom/google/android/maps/driveabout/a/at;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
