.class public final Lcom/google/glass/sync/SyncHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:Ljava/util/Map;

.field private static final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->a:Lcom/google/glass/logging/i;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->d:J

    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->e:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/glass/sync/SyncHelper;->f:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 4

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/glass/sync/a;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/glass/sync/a;-><init>(Lcom/google/glass/sync/SyncHelper$SyncSource;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->a:Lcom/google/glass/logging/i;

    const-string v1, "There is no account to sync %s for"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 1

    new-instance v0, Lcom/google/glass/b/a;

    invoke-direct {v0, p0}, Lcom/google/glass/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/b/a;->b()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/SyncHelper;->a(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    return-void
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/sync/SyncHelper;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method
