.class public abstract Lcom/google/glass/util/al;
.super Lcom/google/glass/util/z;


# static fields
.field static final c:J

.field static final d:J

.field protected static final e:Landroid/util/LruCache;

.field private static final f:Lcom/google/glass/logging/i;

.field private static final g:Lcom/google/glass/net/f;


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/glass/util/CachedFilesManager;

.field private final l:Lcom/google/glass/net/h;

.field private final m:Landroid/util/LruCache;

.field private final n:Lcom/google/glass/util/o;

.field private final o:Ljava/util/concurrent/Executor;

.field private p:Lcom/google/glass/util/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/util/am;

    invoke-direct {v1}, Lcom/google/glass/util/am;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/util/al;->g:Lcom/google/glass/net/f;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/al;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/al;->d:J

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/util/al;->e:Landroid/util/LruCache;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/h;Landroid/util/LruCache;Lcom/google/glass/util/o;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/glass/util/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/glass/util/al;->k:Lcom/google/glass/util/CachedFilesManager;

    iput-object p3, p0, Lcom/google/glass/util/al;->l:Lcom/google/glass/net/h;

    iput-object p4, p0, Lcom/google/glass/util/al;->m:Landroid/util/LruCache;

    iput-object p5, p0, Lcom/google/glass/util/al;->n:Lcom/google/glass/util/o;

    iput-object p6, p0, Lcom/google/glass/util/al;->o:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p8}, Lcom/google/glass/util/al;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    iput p8, p0, Lcom/google/glass/util/al;->i:I

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const-string v0, "MEDIUM"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "SMALL"

    goto :goto_0

    :pswitch_2
    const-string v0, "MESSAGES"

    goto :goto_0

    :pswitch_3
    const-string v0, "STYLESHEET"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(J[B)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/util/al;->k:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/util/ao;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/glass/util/ao;-><init>(Lcom/google/glass/util/al;J[B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/aj;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/al;->k()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/util/al;)Lcom/google/glass/util/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/util/al;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/util/al;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic i()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private j()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/util/al;->k:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->b(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/util/al;->k()V

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/al;->m()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v1, "Failed to load from cache: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    new-array v1, v4, [B

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/ap;->a([BJ)V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 5

    invoke-direct {p0}, Lcom/google/glass/util/al;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    iget-object v1, p0, Lcom/google/glass/util/al;->n:Lcom/google/glass/util/o;

    invoke-interface {v1}, Lcom/google/glass/util/o;->c()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/al;->c:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/ap;->a(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    iget-object v1, p0, Lcom/google/glass/util/al;->n:Lcom/google/glass/util/o;

    invoke-interface {v1}, Lcom/google/glass/util/o;->c()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/al;->d:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/ap;->a(J)V

    goto :goto_0
.end method

.method private l()Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v3, "Requesting resource: %s:%s, fingerprint=%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/google/glass/util/al;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-virtual {v5}, Lcom/google/glass/util/ap;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlex/glass/common/proto/x;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/x;-><init>()V

    iget v3, p0, Lcom/google/glass/util/al;->i:I

    iput v3, v0, Lcom/google/googlex/glass/common/proto/x;->b:I

    iget-object v3, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/x;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-virtual {v3}, Lcom/google/glass/util/ap;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/x;->d:Ljava/lang/Long;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/al;->l:Lcom/google/glass/net/h;

    sget-object v5, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v6, Lcom/google/glass/util/al;->g:Lcom/google/glass/net/f;

    invoke-virtual {v4, v5, v0, v6}, Lcom/google/glass/net/h;->a(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/b;Lcom/google/glass/net/f;)Lcom/google/glass/net/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/r;->e()Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/y;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/google/googlex/glass/common/proto/y;->b:I

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/y;->c:[B

    invoke-static {v3}, Lcom/google/glass/util/a;->a([B)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/y;->d:Ljava/lang/Long;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v4, "New resource: %s:%s, fingerprint=%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    aput-object v6, v5, v2

    iget v2, p0, Lcom/google/glass/util/al;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/y;->d:Ljava/lang/Long;

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/y;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/y;->c:[B

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/al;->a(J[B)V

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v5, "Interrupted while requesting resource from clientproxy!"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v3, "No update: %s:%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/google/glass/util/al;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/google/googlex/glass/common/proto/y;->b:I

    if-ne v0, v7, :cond_2

    sget-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v3, "Resource not found: %s:%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/google/glass/util/al;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    new-array v0, v2, [B

    invoke-direct {p0, v3, v4, v0}, Lcom/google/glass/util/al;->a(J[B)V

    move v0, v1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v3, "Request failed: %s:%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/google/glass/util/al;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2
.end method

.method private m()Z
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/util/al;->k:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v3, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    new-instance v4, Lcom/google/glass/util/m;

    invoke-direct {v4}, Lcom/google/glass/util/m;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v2, v5, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->a([B)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/util/ap;->a([BJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/google/glass/util/u;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-virtual {p0}, Lcom/google/glass/util/al;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/glass/util/al;->m:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/al;->m:Landroid/util/LruCache;

    iget-object v4, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/ap;

    iput-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/glass/util/al;->g()Lcom/google/glass/util/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    iget-object v0, p0, Lcom/google/glass/util/al;->m:Landroid/util/LruCache;

    iget-object v4, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-virtual {v0, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/glass/util/al;->j()V

    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-virtual {v0}, Lcom/google/glass/util/ap;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-static {v3}, Lcom/google/glass/util/ap;->b(Lcom/google/glass/util/ap;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/util/al;->n:Lcom/google/glass/util/o;

    invoke-interface {v3}, Lcom/google/glass/util/o;->c()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-virtual {v5}, Lcom/google/glass/util/ap;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/google/glass/util/al;->o:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/util/an;

    invoke-direct {v3, p0}, Lcom/google/glass/util/an;-><init>(Lcom/google/glass/util/al;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-static {v1}, Lcom/google/glass/util/ap;->b(Lcom/google/glass/util/ap;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    sget-object v3, Lcom/google/glass/util/al;->f:Lcom/google/glass/logging/i;

    const-string v4, "Already updating resource: %s:%s, fingerprint=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/util/al;->h:Ljava/lang/String;

    aput-object v6, v5, v2

    iget v2, p0, Lcom/google/glass/util/al;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-virtual {v2}, Lcom/google/glass/util/ap;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()Lcom/google/glass/util/ap;
.end method

.method protected final h()Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/google/glass/util/al;->m:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/al;->m:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/google/glass/util/al;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/ap;

    iput-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/al;->p:Lcom/google/glass/util/ap;

    invoke-static {v0}, Lcom/google/glass/util/ap;->a(Lcom/google/glass/util/ap;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
