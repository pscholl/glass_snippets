.class Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5$1;->this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5$1;->this$1:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState$5;->val$pair:Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ListenerExecutorPair;->listener:Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->stopped()V

    .line 559
    return-void
.end method
