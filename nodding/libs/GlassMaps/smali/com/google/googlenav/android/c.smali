.class public final Lcom/google/googlenav/android/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/BroadcastReceiver;

.field private static volatile d:Landroid/net/NetworkInfo;

.field private static e:Lcom/google/googlenav/android/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/c;->a:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/c;->b:Landroid/content/IntentFilter;

    new-instance v0, Lcom/google/googlenav/android/DeviceStatus$1;

    invoke-direct {v0}, Lcom/google/googlenav/android/DeviceStatus$1;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/c;->c:Landroid/content/BroadcastReceiver;

    sput-object v2, Lcom/google/googlenav/android/c;->d:Landroid/net/NetworkInfo;

    sput-object v2, Lcom/google/googlenav/android/c;->e:Lcom/google/googlenav/android/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/android/c;->d:Landroid/net/NetworkInfo;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/c;->d:Landroid/net/NetworkInfo;

    goto :goto_0
.end method
