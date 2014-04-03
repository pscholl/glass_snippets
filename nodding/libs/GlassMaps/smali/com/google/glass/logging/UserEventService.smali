.class public Lcom/google/glass/logging/UserEventService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/net/f;

.field private static final c:Lcom/google/glass/net/f;

.field private static final d:Lcom/google/glass/net/f;

.field private static final e:Lcom/google/glass/net/f;

.field private static final f:J

.field private static final g:J


# instance fields
.field private h:Ljava/util/List;

.field private i:I

.field private j:Landroid/content/SharedPreferences;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/util/concurrent/ScheduledExecutorService;

.field private n:Lcom/google/glass/net/h;

.field private o:Lcom/google/glass/util/b;

.field private p:J

.field private q:Z

.field private r:J

.field private s:Lcom/google/glass/util/bm;

.field private t:Lcom/google/glass/net/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/glass/logging/UserEventService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/logging/u;

    invoke-direct {v1}, Lcom/google/glass/logging/u;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->b:Lcom/google/glass/net/f;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/logging/z;

    invoke-direct {v1}, Lcom/google/glass/logging/z;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->c:Lcom/google/glass/net/f;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/logging/aa;

    invoke-direct {v1}, Lcom/google/glass/logging/aa;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->d:Lcom/google/glass/net/f;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/logging/ab;

    invoke-direct {v1}, Lcom/google/glass/logging/ab;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->e:Lcom/google/glass/net/f;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->f:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/logging/UserEventService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/glass/logging/UserEventService;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/common/a/c;)Lcom/google/common/a/c;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/logging/UserEventService;->b(Lcom/google/common/a/c;)Lcom/google/common/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)Lcom/google/common/a/d;
    .locals 1

    invoke-static {p1}, Lcom/google/glass/logging/UserEventService;->b(Lcom/google/common/a/d;)Lcom/google/common/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/logging/UserEventService;)Lcom/google/glass/util/bm;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->s:Lcom/google/glass/util/bm;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Lcom/google/glass/a/c;

    invoke-direct {v0, v1, p0}, Lcom/google/glass/a/c;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/common/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Lcom/google/googlex/glass/common/proto/u;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/u;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/a/d;

    aput-object p1, v0, v3

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/u;->h:[Lcom/google/common/a/d;

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/u;->d:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/googlex/glass/common/proto/u;->f:Ljava/lang/String;

    iput-object p3, v2, Lcom/google/googlex/glass/common/proto/u;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/logging/UserEventService;->e:Lcom/google/glass/net/f;

    new-instance v5, Lcom/google/glass/logging/y;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/logging/y;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)V

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->c(Lcom/google/common/a/d;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/common/a/d;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/logging/w;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/logging/UserEventService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-nez p1, :cond_2

    iget-wide v2, p0, Lcom/google/glass/logging/UserEventService;->p:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/google/glass/logging/UserEventService;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/logging/UserEventService;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Cannot send user events as there is no data connection."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->o:Lcom/google/glass/util/b;

    invoke-virtual {v2}, Lcom/google/glass/util/b;->b()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Cannot send user events as the device is not plugged in, log is not forced."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->f()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Cannot send user events as we have no session ID."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v3, "Attempting a user event log flush."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->p:J

    const-string v0, "ro.build.display.id"

    const-string v1, "unknown build version"

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/glass/logging/ah;

    invoke-direct {v0}, Lcom/google/glass/logging/ah;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/logging/ah;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/google/glass/logging/UserEventService;->i:I

    if-lez v0, :cond_6

    new-instance v0, Lcom/google/common/a/d;

    invoke-direct {v0}, Lcom/google/common/a/d;-><init>()V

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v3, v3, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/common/a/d;->d:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/logging/UserEventService;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/a/d;->b:Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;)Lcom/google/common/a/d;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/google/glass/logging/UserEventService;->i:I

    :cond_6
    if-eqz p1, :cond_7

    new-instance v0, Lcom/google/common/a/d;

    invoke-direct {v0}, Lcom/google/common/a/d;-><init>()V

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    iget-object v3, v3, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/common/a/d;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;)Lcom/google/common/a/d;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/d;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    invoke-virtual {v0}, Lcom/google/glass/net/h;->a()V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->s:Lcom/google/glass/util/bm;

    invoke-virtual {v0}, Lcom/google/glass/util/bm;->d()V

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b()J
    .locals 2

    sget-wide v0, Lcom/google/glass/logging/UserEventService;->g:J

    return-wide v0
.end method

.method private static b(Lcom/google/common/a/c;)Lcom/google/common/a/c;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/a/c;->a([B)Lcom/google/common/a/c;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t clone performance stats"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/common/a/d;)Lcom/google/common/a/d;
    .locals 8

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v4, Lcom/google/common/a/c;

    invoke-direct {v4}, Lcom/google/common/a/c;-><init>()V

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->e()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->c()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->b()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->d()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v2}, Lcom/google/glass/logging/PerformanceUtil;->a(Ljava/util/Map;)V

    const-wide/16 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v7, Lcom/google/common/a/b;

    invoke-direct {v7}, Lcom/google/common/a/b;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v7, Lcom/google/common/a/b;->b:Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v7, Lcom/google/common/a/b;->c:Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/b;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/a/b;

    iput-object v0, v4, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    iput-object v4, p0, Lcom/google/common/a/d;->f:Lcom/google/common/a/c;

    return-object p0
.end method

.method static synthetic b(Lcom/google/glass/logging/UserEventService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->c()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->c(Lcom/google/common/a/d;)V

    return-void
.end method

.method static synthetic c(Lcom/google/glass/logging/UserEventService;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->r:J

    return-wide v0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->DEVICE_CHECKIN:Lcom/google/glass/net/ServerConstants$Action;

    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->d()Lcom/google/googlex/glass/common/proto/l;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/logging/UserEventService;->b:Lcom/google/glass/net/f;

    iget-object v5, p0, Lcom/google/glass/logging/UserEventService;->t:Lcom/google/glass/net/s;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;ZLcom/google/glass/net/f;Lcom/google/glass/net/s;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Failed to schedule checkin request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/google/common/a/d;)V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->s:Lcom/google/glass/util/bm;

    invoke-virtual {v0}, Lcom/google/glass/util/bm;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    const-wide/32 v2, 0x9c4000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwing away log event because queue is full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events; file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v0, v0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/common/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/glass/logging/UserEventService;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/logging/UserEventService;->i:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->s:Lcom/google/glass/util/bm;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/bm;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0
.end method

.method private d()Lcom/google/googlex/glass/common/proto/l;
    .locals 3

    new-instance v0, Lcom/google/glass/util/by;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/by;-><init>(Landroid/content/ContentResolver;)V

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Lcom/google/glass/util/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/googlex/glass/common/proto/l;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/l;-><init>()V

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/l;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->e()Lcom/google/googlex/glass/common/proto/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/l;->d:Lcom/google/googlex/glass/common/proto/i;

    :cond_0
    const-string v0, "ro.serialno.glass"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/l;->c:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/l;->e:Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method static synthetic d(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/glass/logging/UserEventService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static e()Lcom/google/googlex/glass/common/proto/i;
    .locals 9

    const/high16 v2, -0x8000

    const/4 v0, 0x0

    const-string v1, "ro.build.display.id"

    invoke-static {v1, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "ro.build.type"

    invoke-static {v1, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ro.build.version.glass"

    invoke-static {v1, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-class v1, Lcom/google/googlex/glass/common/proto/j;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/glass/util/bl;->a(Ljava/lang/Class;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v3, :cond_2

    if-ne v1, v2, :cond_2

    if-nez v5, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported build type [buildType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v4, v7}, Lcom/google/glass/logging/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/googlex/glass/common/proto/i;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/i;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/i;->c:Ljava/lang/String;

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v5, v0, Lcom/google/googlex/glass/common/proto/i;->d:Ljava/lang/String;

    :cond_4
    if-eq v1, v2, :cond_0

    iput v1, v0, Lcom/google/googlex/glass/common/proto/i;->b:I

    goto :goto_1
.end method

.method private f()Z
    .locals 3

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->j:Landroid/content/SharedPreferences;

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->g()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

    new-instance v2, Lcom/google/googlex/glass/common/proto/s;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/s;-><init>()V

    sget-object v3, Lcom/google/glass/logging/UserEventService;->d:Lcom/google/glass/net/f;

    new-instance v4, Lcom/google/glass/logging/x;

    invoke-direct {v4, p0}, Lcom/google/glass/logging/x;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;Lcom/google/glass/net/s;)Z

    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/a/d;)Lcom/google/common/a/d;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p1, Lcom/google/common/a/d;->c:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/glass/f/a;->b(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->l:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->j:Landroid/content/SharedPreferences;

    const-string v1, "serial"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->l:J

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/common/a/d;->c:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->l:J

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serial"

    iget-wide v2, p0, Lcom/google/glass/logging/UserEventService;->l:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UserEventPrefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->j:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/google/glass/util/b;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->o:Lcom/google/glass/util/b;

    const-string v0, "UserEventBackgroundThread"

    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/glass/util/bm;

    const-string v1, "user_events_1"

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lcom/google/glass/logging/UserEventService;->c:Lcom/google/glass/net/f;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/util/bm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/net/f;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->s:Lcom/google/glass/util/bm;

    new-instance v0, Lcom/google/glass/net/h;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/net/a;

    invoke-direct {v2, p0}, Lcom/google/glass/net/a;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/net/h;-><init>(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    new-instance v0, Lcom/google/glass/logging/ac;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/logging/ac;-><init>(Lcom/google/glass/logging/UserEventService;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/glass/logging/ac;->start()V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/ad;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/ad;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance v0, Lcom/google/glass/logging/ae;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/ae;-><init>(Lcom/google/glass/logging/UserEventService;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->t:Lcom/google/glass/net/s;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    invoke-virtual {v0}, Lcom/google/glass/net/h;->b()V

    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->n:Lcom/google/glass/net/h;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/af;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/af;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->h:Ljava/util/List;

    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->s:Lcom/google/glass/util/bm;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/logging/UserEventService;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/UserEventService;->q:Z

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->o:Lcom/google/glass/util/b;

    invoke-virtual {v0}, Lcom/google/glass/util/b;->a()Lcom/google/glass/util/c;

    move-result-object v0

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Lcom/google/glass/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v1, v0}, Lcom/google/glass/userevent/a;->b(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/a/d;

    move-result-object v1

    sget-object v2, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging user event [action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/google/glass/logging/o;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;Z)V

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "user_event"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/a/d;->a([B)Lcom/google/common/a/d;

    move-result-object v0

    iget-object v1, v0, Lcom/google/common/a/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v2, "User event logging requested with empty action."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;Z)V
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    const-string v0, "checkin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Scheduling checkin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/ag;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/ag;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const-string v0, "force_flush"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Forcing log flush."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;Z)V

    :cond_4
    const-string v0, "force_save_to_disk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    const-string v1, "Forcing save to disk."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/v;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/v;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return v6

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Unable to parse user event proto"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/google/glass/logging/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/glass/logging/UserEventService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ender (or some other old apk) sent an incompatible proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
