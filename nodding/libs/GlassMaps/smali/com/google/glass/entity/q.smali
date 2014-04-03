.class final Lcom/google/glass/entity/q;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/glass/entity/p;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/p;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/q;->b:Lcom/google/glass/entity/p;

    iput-object p3, p0, Lcom/google/glass/entity/q;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/entity/r;

    invoke-direct {v1, p0}, Lcom/google/glass/entity/r;-><init>(Lcom/google/glass/entity/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
