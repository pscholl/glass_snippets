.class public Lcom/google/glass/companion/UuidFetcher;
.super Ljava/lang/Object;
.source "UuidFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/UuidFetcher$Callback;
    }
.end annotation


# static fields
.field private static final BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final btUuidReceiver:Landroid/content/BroadcastReceiver;

.field private final callback:Lcom/google/glass/companion/UuidFetcher$Callback;

.field private context:Landroid/content/Context;

.field private final pendingAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuidReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/UuidFetcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/UuidFetcher;->BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/companion/UuidFetcher$Callback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/google/glass/companion/UuidFetcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/UuidFetcher$1;-><init>(Lcom/google/glass/companion/UuidFetcher;)V

    iput-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    .line 63
    iput-object p1, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/google/glass/companion/UuidFetcher;->callback:Lcom/google/glass/companion/UuidFetcher$Callback;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/companion/UuidFetcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public clearPendingFetch()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 120
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    return-void
.end method

.method public fetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 96
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/UuidFetcher;->internalFetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 105
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPendingFetch()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 115
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method internalFetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .parameter "device"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->fetchUuidsWithSdp()V

    .line 111
    return-void
.end method

.method public onUuidReceived(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 5
    .parameter "device"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/google/glass/companion/UuidFetcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "looking for addresses %s but it got %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->callback:Lcom/google/glass/companion/UuidFetcher$Callback;

    invoke-interface {v0, p1}, Lcom/google/glass/companion/UuidFetcher$Callback;->onUuidFetchCallback(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 71
    monitor-exit v1

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/google/glass/companion/UuidFetcher;->BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 75
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 82
    monitor-exit v1

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 86
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
