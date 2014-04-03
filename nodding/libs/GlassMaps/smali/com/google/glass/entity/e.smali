.class final Lcom/google/glass/entity/e;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/google/glass/entity/b;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/e;->a:Lcom/google/glass/entity/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/entity/e;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/entity/f;

    invoke-direct {v1, p0}, Lcom/google/glass/entity/f;-><init>(Lcom/google/glass/entity/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
