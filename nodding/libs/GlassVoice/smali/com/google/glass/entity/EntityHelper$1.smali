.class Lcom/google/glass/entity/EntityHelper$1;
.super Landroid/database/ContentObserver;
.source "EntityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityHelper;->loadSelfEntity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper$1;->this$0:Lcom/google/glass/entity/EntityHelper;

    iput-object p3, p0, Lcom/google/glass/entity/EntityHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 225
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/entity/EntityHelper$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/entity/EntityHelper$1$1;-><init>(Lcom/google/glass/entity/EntityHelper$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method
