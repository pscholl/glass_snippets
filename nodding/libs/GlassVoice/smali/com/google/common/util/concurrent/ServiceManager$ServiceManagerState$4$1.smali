.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4$1;->this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4$1;->this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/ServiceManager$Listener;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4$1;->this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->failure(Lcom/google/common/util/concurrent/Service;)V

    .line 532
    return-void
.end method
