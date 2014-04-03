.class Lcom/google/glass/companion/UuidFetcher$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/companion/ah;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher$1;->a:Lcom/google/glass/companion/ah;

    invoke-static {v0}, Lcom/google/glass/companion/ah;->a(Lcom/google/glass/companion/ah;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/glass/companion/ah;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "looking for addresses %s but got null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/companion/UuidFetcher$1;->a:Lcom/google/glass/companion/ah;

    invoke-static {v4}, Lcom/google/glass/companion/ah;->a(Lcom/google/glass/companion/ah;)Ljava/util/Set;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher$1;->a:Lcom/google/glass/companion/ah;

    new-instance v2, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v2, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/ah;->a(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method
