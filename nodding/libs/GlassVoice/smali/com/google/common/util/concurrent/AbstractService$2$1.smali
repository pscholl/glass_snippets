.class Lcom/google/common/util/concurrent/AbstractService$2$1;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractService$2;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$2$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$2$1;->this$1:Lcom/google/common/util/concurrent/AbstractService$2;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$2;->val$pair:Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/Service$Listener;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service$Listener;->starting()V

    .line 389
    return-void
.end method
