.class final Lcom/google/common/cache/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/cache/ah;


# instance fields
.field volatile a:Lcom/google/common/cache/ah;

.field final b:Lcom/google/common/util/concurrent/s;

.field final c:Lcom/google/common/base/at;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/w;-><init>(Lcom/google/common/cache/ah;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/ah;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/util/concurrent/s;->c()Lcom/google/common/util/concurrent/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    new-instance v0, Lcom/google/common/base/at;

    invoke-direct {v0}, Lcom/google/common/base/at;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/at;

    iput-object p1, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    return-void
.end method

.method private static a(Lcom/google/common/util/concurrent/s;Ljava/lang/Throwable;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/s;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/m;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/s;->c()Lcom/google/common/util/concurrent/s;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/cache/w;->a(Lcom/google/common/util/concurrent/s;Ljava/lang/Throwable;)Z

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/y;)Lcom/google/common/cache/ah;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/m;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/at;

    invoke-virtual {v0}, Lcom/google/common/base/at;->a()Lcom/google/common/base/at;

    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/google/common/cache/w;->b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/cache/w;->b(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    invoke-static {v0, p1}, Lcom/google/common/cache/w;->a(Lcom/google/common/util/concurrent/s;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/common/cache/y;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/s;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    invoke-static {v0}, Lcom/google/common/util/concurrent/u;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/at;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/at;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Lcom/google/common/cache/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
