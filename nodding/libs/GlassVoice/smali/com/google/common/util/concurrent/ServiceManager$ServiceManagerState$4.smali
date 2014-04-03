.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceFailed(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final synthetic val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

.field final synthetic val$service:Lcom/google/common/util/concurrent/Service;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;Lcom/google/common/util/concurrent/Service;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->val$service:Lcom/google/common/util/concurrent/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4$1;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$4;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->execute(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method
