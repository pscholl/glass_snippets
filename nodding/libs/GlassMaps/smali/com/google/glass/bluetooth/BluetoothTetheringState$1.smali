.class Lcom/google/glass/bluetooth/BluetoothTetheringState$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/bluetooth/e;


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/bluetooth/e;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->a:Lcom/google/glass/bluetooth/e;

    invoke-static {v0}, Lcom/google/glass/bluetooth/e;->b(Lcom/google/glass/bluetooth/e;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->a:Lcom/google/glass/bluetooth/e;

    invoke-static {v1}, Lcom/google/glass/bluetooth/e;->a(Lcom/google/glass/bluetooth/e;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->a:Lcom/google/glass/bluetooth/e;

    invoke-static {v0}, Lcom/google/glass/bluetooth/e;->a(Lcom/google/glass/bluetooth/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->a:Lcom/google/glass/bluetooth/e;

    invoke-static {v0}, Lcom/google/glass/bluetooth/e;->b(Lcom/google/glass/bluetooth/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method
