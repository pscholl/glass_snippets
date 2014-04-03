.class public final Lcom/google/glass/util/ay;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:Ljava/util/Set;

.field private f:Z

.field private g:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ay;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/util/ay;->a:Lcom/google/glass/logging/i;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ay;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/util/InetConnectionState$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/InetConnectionState$1;-><init>(Lcom/google/glass/util/ay;)V

    iput-object v0, p0, Lcom/google/glass/util/ay;->g:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/ay;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/ay;->d:Landroid/net/ConnectivityManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/ay;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/ay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/util/ay;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/google/glass/util/ay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/util/ay;->f:Z

    return p1
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/ay;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/util/ay;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/ay;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/util/ay;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/util/ay;->c:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "inetCondition"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
