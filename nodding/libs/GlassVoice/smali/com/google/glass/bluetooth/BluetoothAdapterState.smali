.class public Lcom/google/glass/bluetooth/BluetoothAdapterState;
.super Ljava/lang/Object;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stateChangeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->hasBluetoothAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 86
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    invoke-interface {p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method

.method public removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->stateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 101
    :cond_0
    return-void
.end method
