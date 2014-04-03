.class Lcom/google/glass/entity/EntityCache$11;
.super Landroid/database/ContentObserver;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;Lcom/google/glass/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$11;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/entity/EntityCache$11;->onChange(ZLandroid/net/Uri;)V

    .line 298
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 285
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/entity/EntityCache$11$1;

    invoke-direct {v1, p0}, Lcom/google/glass/entity/EntityCache$11$1;-><init>(Lcom/google/glass/entity/EntityCache$11;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method
