.class public Lcom/google/glass/util/InetConnectionState;
.super Ljava/lang/Object;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/InetConnectionState$Listener;
    }
.end annotation


# static fields
.field private static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field private static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/util/InetConnectionState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private prevState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    sget-object v0, Lcom/google/glass/util/InetConnectionState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/glass/util/InetConnectionState$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/InetConnectionState$1;-><init>(Lcom/google/glass/util/InetConnectionState;)V

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    .line 83
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/InetConnectionState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/util/InetConnectionState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/util/InetConnectionState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 7
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 97
    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 98
    .local v0, shouldRegister:Z
    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance v1, Lcom/google/glass/util/InetConnectionState$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/util/InetConnectionState$2;-><init>(Lcom/google/glass/util/InetConnectionState;Lcom/google/glass/util/InetConnectionState$Listener;)V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/InetConnectionState$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void
.end method

.method public isConnected()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 142
    const-string v2, "inetCondition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 125
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 126
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 130
    :cond_0
    return-void
.end method
