.class public Lcom/google/glass/companion/RemoteCompanionProxy;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"


# static fields
.field private static final companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static volatile isCompanionConnectedForTest:Ljava/lang/Boolean;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final application:Landroid/app/Application;

.field private companionLocalVersion:I

.field private companionRemoteVersion:I

.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

.field private volatile isCompanionConnected:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/companion/CompanionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final pairedDeviceReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "companionStateListener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pairedDeviceReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 4
    .parameter "application"
    .parameter "checkConnection"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    .line 93
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 114
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$2;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$2;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 139
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$3;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$3;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 156
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;

    .line 157
    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/glass/companion/ConnectionChecker;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    .line 163
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 166
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method private notifyCompanionStateChange()V
    .locals 6

    .prologue
    .line 174
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ConnectionChecker;->setConnectState(Z)V

    .line 176
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ConnectionChecker;->setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    monitor-enter v3

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 180
    .local v1, listener:Lcom/google/glass/companion/CompanionStateChangeListener;
    iget-boolean v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    iget v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    iget v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    invoke-interface {v1, v2, v4, v5}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    goto :goto_0

    .line 182
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/glass/companion/CompanionStateChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method

.method public static setIsConnectedForTest(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isConnected"

    .prologue
    .line 287
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 288
    sput-object p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    .line 289
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 260
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$4;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 273
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 274
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    return-void

    .line 276
    :cond_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    goto :goto_0
.end method

.method public isMulticastSupportedOnPairedDevice()Z
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->CNS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasMyGlassMulticastConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringErrorDetected()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    invoke-virtual {v0}, Lcom/google/glass/companion/ConnectionChecker;->isTetheringErrorDetected()Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public sendCompanionMessage(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 201
    .local v0, companionServiceCopy:Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    const/4 v2, 0x1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to send envelope."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 1
    .parameter "envelope"

    .prologue
    .line 191
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendMessageToCompanionService(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 233
    .local v0, companionServiceCopy:Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v2, 0x1

    .line 241
    :cond_0
    :goto_0
    return v2

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to send envelope."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
