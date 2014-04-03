.class Lcom/google/glass/companion/RemoteCompanionProxy$3;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/glass/companion/ae;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->a:Lcom/google/glass/companion/ae;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/companion/ae;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$3;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Got action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->a:Lcom/google/glass/companion/ae;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.glass.bluetooth.EXTRA_DEVICE"

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/ae;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    :cond_0
    return-void
.end method
