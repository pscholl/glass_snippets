.class public Lcom/google/glass/sync/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/SyncHelper$SyncSource;
    }
.end annotation


# static fields
.field private static final BACKOFF_SYNC_MODE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_SYNC_INTERVAL_SECONDS:J = 0x0L

.field public static final GCM_SYNC:Ljava/lang/String; = "com.google.glass.sync.GCM_SYNC"

#the value of this static final field might be set in the static constructor
.field private static final GLASSWARE_SYNC_INTERVAL_SECONDS:J = 0x0L

.field private static final LAST_SYNC_TIME_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final LOCATION_SYNC_INTERVAL_SECONDS:J = 0x0L

.field public static final PERIODIC_SYNC:Ljava/lang/String; = "com.google.glass.sync.PERIODIC_SYNC"

.field public static final POWER_CONNECTED_SYNC:Ljava/lang/String; = "com.google.glass.sync.POWER_CONNECTED_SYNC"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->GLASSWARE_SYNC_INTERVAL_SECONDS:J

    .line 67
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    .line 74
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static clearLastSyncTimes()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 177
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    return-void
.end method

.method public static enableSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .parameter "primaryAccount"
    .parameter "authority"

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v1

    .line 84
    .local v1, intervalSeconds:J
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 85
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 89
    return-void
.end method

.method private static getSyncIntervalSeconds(Ljava/lang/String;)J
    .locals 2
    .parameter "authority"

    .prologue
    .line 165
    const-string v0, "com.google.glass.location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    .line 170
    :goto_0
    return-wide v0

    .line 167
    :cond_0
    const-string v0, "com.google.glass.boutique.glassware"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->GLASSWARE_SYNC_INTERVAL_SECONDS:J

    goto :goto_0

    .line 170
    :cond_1
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    goto :goto_0
.end method

.method public static shouldPerformPeriodicSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z
    .locals 7
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 158
    sget-object v4, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 160
    .local v2, lastSyncTime:J
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 161
    .local v0, intervalMillis:J
    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 158
    .end local v0           #intervalMillis:J
    .end local v2           #lastSyncTime:J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 161
    .restart local v0       #intervalMillis:J
    .restart local v2       #lastSyncTime:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 4
    .parameter "primaryAccount"
    .parameter "authority"
    .parameter "syncSource"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 111
    new-instance v0, Lcom/google/glass/sync/SyncHelper$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/glass/sync/SyncHelper$1;-><init>(Lcom/google/glass/sync/SyncHelper$SyncSource;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "There is no account to sync %s for"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 2
    .parameter "context"
    .parameter "authority"
    .parameter "syncSource"

    .prologue
    .line 95
    new-instance v1, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v1, p0}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 96
    .local v0, primaryAccount:Landroid/accounts/Account;
    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 97
    return-void
.end method

.method public static updateBackoffSyncMode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "authority"
    .parameter "shouldBackoff"

    .prologue
    .line 150
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public static updateLastSyncTime(Lcom/google/glass/util/Clock;Ljava/lang/String;)V
    .locals 3
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 142
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method
