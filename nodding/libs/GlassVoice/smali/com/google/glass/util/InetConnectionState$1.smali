.class Lcom/google/glass/util/InetConnectionState$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/InetConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/InetConnectionState;


# direct methods
.method constructor <init>(Lcom/google/glass/util/InetConnectionState;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/util/InetConnectionState;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/util/InetConnectionState$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/InetConnectionState$1$1;-><init>(Lcom/google/glass/util/InetConnectionState$1;)V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/InetConnectionState$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method
