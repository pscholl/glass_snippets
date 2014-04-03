.class public final Lcom/google/glass/entity/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Set;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/common/base/v;

.field private static final d:Lcom/google/common/base/aj;

.field private static final e:Lcom/google/common/base/aj;

.field private static final f:Lcom/google/common/base/aj;

.field private static final g:Lcom/google/common/base/aj;

.field private static final h:Lcom/google/common/base/aj;

.field private static final i:Lcom/google/common/base/aj;

.field private static final j:Lcom/google/common/base/aj;

.field private static final k:Lcom/google/common/base/aj;

.field private static final l:Lcom/google/common/base/aj;

.field private static final m:Ljava/util/Comparator;

.field private static n:Lcom/google/glass/entity/b;

.field private static q:Ljava/lang/String;


# instance fields
.field private final o:Ljava/util/List;

.field private final p:Lcom/google/glass/util/o;

.field private final r:Landroid/database/ContentObserver;

.field private final s:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/b;->b:Lcom/google/glass/logging/i;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DASHER_DOMAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "YOUR_CIRCLES"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/b;->a:Ljava/util/Set;

    new-instance v0, Lcom/google/glass/entity/c;

    invoke-direct {v0}, Lcom/google/glass/entity/c;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->c:Lcom/google/common/base/v;

    new-instance v0, Lcom/google/glass/entity/g;

    invoke-direct {v0}, Lcom/google/glass/entity/g;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->d:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/h;

    invoke-direct {v0}, Lcom/google/glass/entity/h;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->e:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/i;

    invoke-direct {v0}, Lcom/google/glass/entity/i;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->f:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/j;

    invoke-direct {v0}, Lcom/google/glass/entity/j;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->g:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/k;

    invoke-direct {v0}, Lcom/google/glass/entity/k;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->h:Lcom/google/common/base/aj;

    sget-object v0, Lcom/google/glass/entity/b;->h:Lcom/google/common/base/aj;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/b;->i:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/l;

    invoke-direct {v0}, Lcom/google/glass/entity/l;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->j:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/m;

    invoke-direct {v0}, Lcom/google/glass/entity/m;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->k:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/n;

    invoke-direct {v0}, Lcom/google/glass/entity/n;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->l:Lcom/google/common/base/aj;

    new-instance v0, Lcom/google/glass/entity/d;

    invoke-direct {v0}, Lcom/google/glass/entity/d;-><init>()V

    sput-object v0, Lcom/google/glass/entity/b;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/glass/util/p;

    invoke-direct {v0}, Lcom/google/glass/util/p;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/b;-><init>(Landroid/content/Context;Lcom/google/glass/util/o;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/util/o;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/glass/f/a;->b()V

    :cond_0
    iput-object p1, p0, Lcom/google/glass/entity/b;->s:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/entity/b;->p:Lcom/google/glass/util/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/b;->o:Ljava/util/List;

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    new-instance v0, Lcom/google/glass/entity/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/e;-><init>(Lcom/google/glass/entity/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/entity/b;->r:Landroid/database/ContentObserver;

    return-void
.end method

.method public static a()Lcom/google/glass/entity/b;
    .locals 1

    sget-object v0, Lcom/google/glass/entity/b;->n:Lcom/google/glass/entity/b;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/google/glass/entity/o;
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/google/glass/entity/p;->a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v0, "phone_number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "secondary_phone_numbers"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "email"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "share_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "share_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "share_priority"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v0, Lcom/google/glass/entity/o;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/entity/o;-><init>(Lcom/google/googlex/glass/common/proto/ac;Ljava/util/List;Ljava/lang/String;JII)V

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/google/glass/entity/b;)V
    .locals 3

    const-class v1, Lcom/google/glass/entity/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/entity/b;->n:Lcom/google/glass/entity/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Shared instance should only be set once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Lcom/google/glass/entity/b;->n:Lcom/google/glass/entity/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v6, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/entity/b;->b:Lcom/google/glass/logging/i;

    const-string v1, "Not loading entity cache for test"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/entity/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/glass/entity/b;->b:Lcom/google/glass/logging/i;

    const-string v1, "loadEntityDataCache started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    :try_start_2
    const-string v5, "share_time DESC,_id ASC"

    iget-object v0, p0, Lcom/google/glass/entity/b;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_3
    sget-object v0, Lcom/google/glass/entity/b;->b:Lcom/google/glass/logging/i;

    const-string v2, "null cursor returned for share target query"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :goto_1
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/entity/b;->o:Ljava/util/List;

    invoke-static {v1}, Lcom/google/glass/entity/b;->a(Landroid/database/Cursor;)Lcom/google/glass/entity/o;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    sget-object v0, Lcom/google/glass/entity/b;->b:Lcom/google/glass/logging/i;

    const-string v1, "loadEntityDataCache finished: %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/glass/entity/b;->q:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/entity/b;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/glass/entity/b;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/google/glass/entity/b;->q:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method static synthetic d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/entity/b;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/entity/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/entity/b;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/entity/b;->r:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
