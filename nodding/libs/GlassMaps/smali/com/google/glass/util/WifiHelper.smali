.class public final Lcom/google/glass/util/WifiHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/glass/logging/i;

.field private static final d:Lcom/google/glass/logging/i;

.field private static final k:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/net/wifi/WifiManager;

.field private final g:Landroid/net/ConnectivityManager;

.field private final h:Landroid/os/Handler;

.field private i:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->b:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/util/WifiHelper;->b:Lcom/google/glass/logging/i;

    const-string v1, "wifiScanReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->c:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/util/WifiHelper;->b:Lcom/google/glass/logging/i;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->d:Lcom/google/glass/logging/i;

    const-string v0, "[0-9a-fA-F]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->k:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/glass/util/cj;

    invoke-direct {v0}, Lcom/google/glass/util/cj;-><init>()V

    sput-object v0, Lcom/google/glass/util/WifiHelper;->a:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->f:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/WifiHelper;->c:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->g:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/WifiHelper;->d:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->i:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->i:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->i:Lcom/google/glass/util/SafeBroadcastReceiver;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/glass/util/WifiHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/WifiHelper;->b:Lcom/google/glass/logging/i;

    const-string v1, "Canceling timeout."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/glass/util/WifiHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->c()V

    return-void
.end method
