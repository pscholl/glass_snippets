.class Lcom/google/common/util/concurrent/AbstractService$6$1;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractService$6;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService$6;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$6$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$6$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$6;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$6;->val$pair:Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/Service$Listener;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$6$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$6;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$6;->val$from:Lcom/google/common/util/concurrent/Service$State;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService$6$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$6;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$6;->val$cause:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/Service$Listener;->failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    .line 451
    return-void
.end method
