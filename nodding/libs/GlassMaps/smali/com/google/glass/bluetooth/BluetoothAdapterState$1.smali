.class Lcom/google/glass/bluetooth/BluetoothAdapterState$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/bluetooth/b;


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/bluetooth/b;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/16 v2, 0xa

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;->a:Lcom/google/glass/bluetooth/b;

    invoke-static {v0}, Lcom/google/glass/bluetooth/b;->a(Lcom/google/glass/bluetooth/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;->a:Lcom/google/glass/bluetooth/b;

    invoke-static {v0}, Lcom/google/glass/bluetooth/b;->a(Lcom/google/glass/bluetooth/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1
.end method
