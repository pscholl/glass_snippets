.class final Lcom/google/glass/net/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/protobuf/nano/b;

.field final c:Z

.field final d:Lcom/google/glass/net/f;

.field final e:Lcom/google/glass/net/s;

.field final f:Ljava/util/concurrent/Executor;

.field final g:Z

.field final synthetic h:Lcom/google/glass/net/h;


# direct methods
.method constructor <init>(Lcom/google/glass/net/h;Ljava/lang/String;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/net/l;->h:Lcom/google/glass/net/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/glass/net/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/net/l;->b:Lcom/google/protobuf/nano/b;

    iput-object p5, p0, Lcom/google/glass/net/l;->d:Lcom/google/glass/net/f;

    iput-boolean p4, p0, Lcom/google/glass/net/l;->c:Z

    iput-object p6, p0, Lcom/google/glass/net/l;->e:Lcom/google/glass/net/s;

    iput-object p7, p0, Lcom/google/glass/net/l;->f:Ljava/util/concurrent/Executor;

    iput-boolean p8, p0, Lcom/google/glass/net/l;->g:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/net/m;

    invoke-direct {v1, p0}, Lcom/google/glass/net/m;-><init>(Lcom/google/glass/net/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/net/h;->d()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Exception while dispatching cancel response."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/net/l;->h:Lcom/google/glass/net/h;

    invoke-static {v0}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/h;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/b/a;

    iget-object v1, p0, Lcom/google/glass/net/l;->h:Lcom/google/glass/net/h;

    invoke-static {v1}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/h;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/b/a;->a()V

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/glass/net/c;->a()V

    invoke-static {}, Lcom/google/glass/net/c;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/l;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/net/n;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/net/n;-><init>(Lcom/google/glass/net/l;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/net/h;->d()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Unexpected error logging network error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/glass/net/h;->d()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Exception while dispatching error response."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method final a([B)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/glass/net/c;->c()V

    iget-object v0, p0, Lcom/google/glass/net/l;->d:Lcom/google/glass/net/f;

    invoke-virtual {v0, p1}, Lcom/google/glass/net/f;->a([B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/net/l;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/net/o;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/net/o;-><init>(Lcom/google/glass/net/l;Lcom/google/protobuf/nano/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/glass/net/l;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/glass/net/h;->d()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Exception while dispatching success response."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
