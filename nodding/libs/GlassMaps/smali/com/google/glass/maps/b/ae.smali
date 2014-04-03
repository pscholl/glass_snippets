.class public final Lcom/google/glass/maps/b/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/util/g;

.field private final b:Ljava/util/HashSet;

.field private final c:Lcom/google/android/maps/driveabout/store/bv;

.field private final d:Lcom/google/glass/maps/b/v;

.field private final e:Ljava/util/ArrayList;

.field private final f:Lcom/google/android/maps/driveabout/store/bt;

.field private g:Lcom/google/glass/maps/b/ah;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILcom/google/glass/maps/b/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/glass/maps/b/af;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/b/af;-><init>(Lcom/google/glass/maps/b/ae;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/ae;->f:Lcom/google/android/maps/driveabout/store/bt;

    new-instance v0, Lcom/google/glass/maps/b/ag;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/maps/b/ag;-><init>(Lcom/google/glass/maps/b/ae;I)V

    iput-object v0, p0, Lcom/google/glass/maps/b/ae;->a:Lcom/google/android/maps/driveabout/util/g;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/ae;->b:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/ae;->c:Lcom/google/android/maps/driveabout/store/bv;

    iput-object p3, p0, Lcom/google/glass/maps/b/ae;->d:Lcom/google/glass/maps/b/v;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/av;ILcom/google/android/maps/driveabout/e/au;)V
    .locals 2

    if-nez p2, :cond_2

    new-instance v0, Lcom/google/glass/maps/b/y;

    check-cast p3, Lcom/google/android/maps/driveabout/e/bd;

    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->d:Lcom/google/glass/maps/b/v;

    invoke-direct {v0, p3, v1}, Lcom/google/glass/maps/b/y;-><init>(Lcom/google/android/maps/driveabout/e/bd;Lcom/google/glass/maps/b/v;)V

    :goto_0
    monitor-enter p0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->g:Lcom/google/glass/maps/b/ah;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->g:Lcom/google/glass/maps/b/ah;

    invoke-interface {v1, p0, p1, v0}, Lcom/google/glass/maps/b/ah;->a(Lcom/google/glass/maps/b/ae;Lcom/google/android/maps/driveabout/e/av;Lcom/google/glass/maps/b/y;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/google/glass/maps/b/y;

    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->d:Lcom/google/glass/maps/b/v;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/maps/b/y;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/glass/maps/b/v;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/glass/maps/b/ae;Lcom/google/android/maps/driveabout/e/av;ILcom/google/android/maps/driveabout/e/au;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/android/maps/driveabout/e/av;ILcom/google/android/maps/driveabout/e/au;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/b/ae;Lcom/google/glass/maps/b/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/glass/maps/b/y;)V

    return-void
.end method

.method private a(Lcom/google/glass/maps/b/y;)V
    .locals 2

    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 3

    iget-object v2, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/y;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/glass/maps/b/y;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/maps/b/ae;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/b/ae;->c:Lcom/google/android/maps/driveabout/store/bv;

    iget-object v1, p0, Lcom/google/glass/maps/b/ae;->f:Lcom/google/android/maps/driveabout/store/bt;

    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/glass/maps/b/ah;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/maps/b/ae;->g:Lcom/google/glass/maps/b/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
