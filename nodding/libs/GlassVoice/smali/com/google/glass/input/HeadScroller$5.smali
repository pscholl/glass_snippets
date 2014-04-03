.class Lcom/google/glass/input/HeadScroller$5;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->setupScreenOffReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$5;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/google/glass/input/HeadScroller;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 324
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$5;->this$0:Lcom/google/glass/input/HeadScroller;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$402(Lcom/google/glass/input/HeadScroller;Z)Z

    .line 328
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$5;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$500(Lcom/google/glass/input/HeadScroller;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$5;->this$0:Lcom/google/glass/input/HeadScroller;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$502(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/util/SafeBroadcastReceiver;)Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 332
    :cond_0
    return-void
.end method
