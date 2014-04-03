.class final Lcom/google/glass/maps/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/t;

.field final synthetic b:Lcom/google/common/util/concurrent/m;

.field final synthetic c:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/t;Lcom/google/common/util/concurrent/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/p;->c:Lcom/google/glass/maps/MapHelper;

    iput-object p2, p0, Lcom/google/glass/maps/p;->a:Lcom/google/glass/maps/t;

    iput-object p3, p0, Lcom/google/glass/maps/p;->b:Lcom/google/common/util/concurrent/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/p;->a:Lcom/google/glass/maps/t;

    iget-object v0, p0, Lcom/google/glass/maps/p;->b:Lcom/google/common/util/concurrent/m;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/google/glass/maps/t;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/maps/MapHelper;->a()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Interrupted"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/google/glass/maps/p;->a:Lcom/google/glass/maps/t;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/glass/maps/MapHelper;->a()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "ExecutionException"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/p;->a:Lcom/google/glass/maps/t;

    goto :goto_0
.end method
