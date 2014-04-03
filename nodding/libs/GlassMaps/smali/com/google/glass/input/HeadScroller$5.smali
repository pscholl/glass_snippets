.class Lcom/google/glass/input/HeadScroller$5;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/input/a;


# virtual methods
.method protected final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/input/a;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$5;->a:Lcom/google/glass/input/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/input/a;->a(Lcom/google/glass/input/a;Z)Z

    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$5;->a:Lcom/google/glass/input/a;

    invoke-static {v0}, Lcom/google/glass/input/a;->b(Lcom/google/glass/input/a;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/a/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$5;->a:Lcom/google/glass/input/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/input/a;->a(Lcom/google/glass/input/a;Lcom/google/glass/util/SafeBroadcastReceiver;)Lcom/google/glass/util/SafeBroadcastReceiver;

    :cond_0
    return-void
.end method
