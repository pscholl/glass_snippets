.class public Lcom/google/glass/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# static fields
.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field private static instance:Lcom/google/glass/bluetooth/BluetoothAdapter;


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapter;->instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 47
    return-void
.end method

.method public static getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapter;->instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static setBluetoothAdapterForTest(Lcom/google/glass/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 108
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 109
    sput-object p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 110
    return-void
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 96
    :cond_0
    return-void
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v4, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 55
    .local v1, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 56
    .local v3, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 57
    .local v0, bondedDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v4, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0           #bondedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 2
    .parameter "address"

    .prologue
    .line 50
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public hasBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Lcom/google/glass/bluetooth/BluetoothServerSocket;
    .locals 2
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothServerSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothServerSocket;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    return-object v0
.end method

.method public startDiscovery()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method
