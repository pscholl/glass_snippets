.class public final Lcom/google/android/maps/driveabout/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ap;


# static fields
.field private static b:Lcom/google/android/maps/driveabout/d/c;

.field private static final n:Lcom/google/android/maps/driveabout/e/r;


# instance fields
.field private a:Ljava/util/Map;

.field private final c:Lcom/google/android/maps/driveabout/util/g;

.field private final d:Lcom/google/android/maps/driveabout/util/g;

.field private e:Lcom/google/android/maps/driveabout/e/p;

.field private f:Lcom/google/android/maps/driveabout/e/r;

.field private g:Lcom/google/android/maps/driveabout/e/o;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/lang/Object;

.field private final l:Lcom/google/android/maps/driveabout/store/ar;

.field private final m:Lcom/google/android/maps/driveabout/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/e/r;

    new-instance v1, Lcom/google/android/maps/driveabout/e/p;

    sget-object v2, Lcom/google/android/maps/driveabout/e/k;->a:Lcom/google/android/maps/driveabout/e/k;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/e/p;-><init>(Lcom/google/android/maps/driveabout/e/k;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/r;-><init>(Lcom/google/android/maps/driveabout/e/p;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/e/r;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/store/ar;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->h:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->i:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->j:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->d:Lcom/google/android/maps/driveabout/util/g;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    new-instance v0, Lcom/google/android/maps/driveabout/d/e;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/d/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->m:Lcom/google/android/maps/driveabout/d/a;

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/store/ar;)Lcom/google/android/maps/driveabout/d/c;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->b:Lcom/google/android/maps/driveabout/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/d/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/d/c;-><init>(Lcom/google/android/maps/driveabout/store/ar;)V

    sput-object v0, Lcom/google/android/maps/driveabout/d/c;->b:Lcom/google/android/maps/driveabout/d/c;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->b:Lcom/google/android/maps/driveabout/d/c;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/o;)Lcom/google/android/maps/driveabout/e/r;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/o;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/r;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/o;->c()Lcom/google/android/maps/driveabout/e/q;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/e/r;

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/o;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/e/r;

    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/d/c;->b(Lcom/google/android/maps/driveabout/e/o;)V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/q;->a()Lcom/google/android/maps/driveabout/e/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/d/c;Lcom/google/android/maps/driveabout/e/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/d/c;->b(Lcom/google/android/maps/driveabout/e/o;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/o;Lcom/google/android/maps/driveabout/e/r;)V
    .locals 5

    invoke-virtual {p1, p2}, Lcom/google/android/maps/driveabout/e/o;->a(Lcom/google/android/maps/driveabout/e/r;)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/q;->a()Lcom/google/android/maps/driveabout/e/r;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/e/r;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    new-instance v4, Lcom/google/android/maps/driveabout/d/d;

    invoke-direct {v4, p0}, Lcom/google/android/maps/driveabout/d/d;-><init>(Lcom/google/android/maps/driveabout/d/c;)V

    invoke-virtual {v3, v0, v4}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/ap;)V

    goto :goto_0

    :cond_1
    const-string v0, "IndoorState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to look up level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in building "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/o;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/e/r;Lcom/google/android/maps/driveabout/e/r;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->d:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/e/r;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/e/r;

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->d:Lcom/google/android/maps/driveabout/util/g;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    sget-object v5, Lcom/google/android/maps/driveabout/d/c;->n:Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->l:Lcom/google/android/maps/driveabout/store/ar;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/r;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v0

    if-nez v0, :cond_3

    monitor-exit v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/q;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/e/r;)Z
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/e/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->c:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/e/r;Lcom/google/android/maps/driveabout/e/r;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/e/o;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/p;ILcom/google/android/maps/driveabout/e/o;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    const-string v0, "IndoorState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/e/r;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/r;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/e/r;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->f:Lcom/google/android/maps/driveabout/e/r;

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-direct {p0, p3, v2}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/e/o;Lcom/google/android/maps/driveabout/e/r;)V

    :cond_3
    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/e/o;)Lcom/google/android/maps/driveabout/e/r;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->e:Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/e/o;

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/e/o;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/e/o;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/o;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_4
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/e/o;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/e/o;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/e/o;

    move v2, v0

    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/maps/driveabout/d/c;->e:Lcom/google/android/maps/driveabout/e/p;

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/d/c;->a()V

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/d/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/d/c;->h:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/d/c;->i:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/d/c;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    :try_start_3
    iput-object p3, p0, Lcom/google/android/maps/driveabout/d/c;->g:Lcom/google/android/maps/driveabout/e/o;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_1

    :cond_9
    move v2, v1

    goto :goto_2
.end method
