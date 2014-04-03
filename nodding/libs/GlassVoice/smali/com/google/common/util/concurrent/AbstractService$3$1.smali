.class Lcom/google/common/util/concurrent/AbstractService$3$1;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractService$3;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService$3;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$3$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$3$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$3;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$3;->val$pair:Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/Service$Listener;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service$Listener;->running()V

    .line 404
    return-void
.end method
