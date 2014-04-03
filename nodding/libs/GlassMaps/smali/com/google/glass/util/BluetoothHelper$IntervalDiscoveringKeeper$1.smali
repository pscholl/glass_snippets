.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/util/e;


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/util/e;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "receive %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a:Lcom/google/glass/util/e;

    invoke-static {v0}, Lcom/google/glass/util/e;->a(Lcom/google/glass/util/e;)Lcom/google/glass/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a:Lcom/google/glass/util/e;

    invoke-static {v0}, Lcom/google/glass/util/e;->a(Lcom/google/glass/util/e;)Lcom/google/glass/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/a;->b()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a:Lcom/google/glass/util/e;

    invoke-static {v0}, Lcom/google/glass/util/e;->b(Lcom/google/glass/util/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a:Lcom/google/glass/util/e;

    invoke-static {v0}, Lcom/google/glass/util/e;->b(Lcom/google/glass/util/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/f;

    invoke-direct {v1, p0}, Lcom/google/glass/util/f;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;)V

    const-wide/32 v2, 0xe290

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
