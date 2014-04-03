.class Lcom/google/glass/companion/UuidFetcher$1;
.super Landroid/content/BroadcastReceiver;
.source "UuidFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/UuidFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/UuidFetcher;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/UuidFetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    #getter for: Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;
    invoke-static {v1}, Lcom/google/glass/companion/UuidFetcher;->access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 41
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/google/glass/companion/UuidFetcher;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "looking for addresses %s but got null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    #getter for: Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;
    invoke-static {v5}, Lcom/google/glass/companion/UuidFetcher;->access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .end local v0           #btDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v0       #btDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher$1;->this$0:Lcom/google/glass/companion/UuidFetcher;

    new-instance v2, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v2, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/UuidFetcher;->onUuidReceived(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method
