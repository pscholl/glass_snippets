.class final Lcom/google/common/util/concurrent/i;
.super Lcom/google/common/util/concurrent/AbstractFuture;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/common/util/concurrent/b;

.field private b:Lcom/google/common/util/concurrent/m;

.field private volatile c:Lcom/google/common/util/concurrent/m;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/m;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/b;

    iput-object v0, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/m;

    iput-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/i;-><init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/i;Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/i;->c:Lcom/google/common/util/concurrent/m;

    return-object p1
.end method

.method private static a(Ljava/util/concurrent/Future;Z)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/i;->a(Ljava/util/concurrent/Future;Z)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->c:Lcom/google/common/util/concurrent/m;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/i;->a(Ljava/util/concurrent/Future;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    invoke-static {v0}, Lcom/google/common/util/concurrent/u;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/b;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/i;->c:Lcom/google/common/util/concurrent/m;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/i;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/i;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/m;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/i;->c:Lcom/google/common/util/concurrent/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    :try_start_4
    new-instance v1, Lcom/google/common/util/concurrent/j;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/util/concurrent/m;)V

    invoke-static {}, Lcom/google/common/util/concurrent/p;->a()Lcom/google/common/util/concurrent/o;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->a(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->a(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/i;->a(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/b;

    iput-object v3, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/m;

    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
