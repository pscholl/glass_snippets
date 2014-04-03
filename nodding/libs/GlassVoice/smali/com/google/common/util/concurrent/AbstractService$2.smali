.class Lcom/google/common/util/concurrent/AbstractService$2;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService;->starting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;

.field final synthetic val$pair:Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$2;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractService$2;->val$pair:Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$2;->val$pair:Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$2$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractService$2$1;-><init>(Lcom/google/common/util/concurrent/AbstractService$2;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;->execute(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method
