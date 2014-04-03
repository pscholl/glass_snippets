.class public final Lcom/google/glass/util/BroadcastUnderWakeLock;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->b(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->a:Lcom/google/glass/logging/i;

    const-string v1, "sendBroadcastUnderWakeLock called with intent=%s, name=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/util/ba;->a()Lcom/google/glass/util/ba;

    move-result-object v0

    new-instance v4, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;

    invoke-direct {v4, p0, p2}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/util/ba;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method
