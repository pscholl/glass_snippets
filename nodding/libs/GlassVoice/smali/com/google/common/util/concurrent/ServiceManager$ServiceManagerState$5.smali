.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->serviceStopped(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final synthetic val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;->this$0:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5$1;-><init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->execute(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method
