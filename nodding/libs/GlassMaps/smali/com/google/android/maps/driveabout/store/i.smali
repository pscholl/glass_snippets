.class public abstract Lcom/google/android/maps/driveabout/store/i;
.super Lcom/google/android/maps/driveabout/util/d;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ax;
.implements Lcom/google/android/maps/driveabout/store/bv;
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/store/bs;

.field protected b:Lcom/google/android/maps/driveabout/store/m;

.field volatile c:I

.field protected d:Lcom/google/googlenav/common/a;

.field volatile e:I

.field volatile f:I

.field private g:Lcom/google/android/maps/driveabout/store/v;

.field private volatile h:Z

.field private final i:Z

.field private j:I

.field private k:Ljava/util/Locale;

.field private volatile l:Lcom/google/android/maps/driveabout/store/n;

.field private final m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Looper;

.field private p:Z

.field private final q:Ljava/util/List;

.field private final r:Lcom/google/android/maps/driveabout/util/g;

.field private final s:Ljava/util/Map;

.field private final t:I

.field private u:Z

.field private final v:Ljava/io/File;

.field private w:Lcom/google/googlenav/h;

.field private final x:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bs;Lcom/google/android/maps/driveabout/store/v;IZILjava/util/Locale;Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    iput p5, p0, Lcom/google/android/maps/driveabout/store/i;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/i;->j:I

    iput-boolean p6, p0, Lcom/google/android/maps/driveabout/store/i;->i:Z

    iput-object p8, p0, Lcom/google/android/maps/driveabout/store/i;->k:Ljava/util/Locale;

    iput-object p9, p0, Lcom/google/android/maps/driveabout/store/i;->v:Ljava/io/File;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->g()Lcom/google/android/maps/driveabout/store/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/m;Lcom/google/android/maps/driveabout/store/i;)Lcom/google/android/maps/driveabout/store/i;

    new-instance v0, Lcom/google/android/maps/driveabout/store/j;

    invoke-direct {v0, p0, p7}, Lcom/google/android/maps/driveabout/store/j;-><init>(Lcom/google/android/maps/driveabout/store/i;I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/store/v;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    :cond_0
    iput p1, p0, Lcom/google/android/maps/driveabout/store/i;->j:I

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/i;->i:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/bs;->a()Z

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->i()V

    :cond_3
    return-void
.end method

.method private a(II)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x8

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6d

    const-string v6, "u"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    const/4 v0, 0x2

    aput-object v4, v7, v0

    invoke-static {v7}, Lcom/google/googlenav/common/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private a(IIIIII)V
    .locals 12

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->r()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "d="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/google/android/maps/driveabout/e/bd;->e()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x6d

    const-string v9, "b"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const/4 v1, 0x4

    aput-object v5, v10, v1

    const/4 v1, 0x5

    aput-object v6, v10, v1

    const/4 v1, 0x6

    aput-object v7, v10, v1

    invoke-static {v10}, Lcom/google/googlenav/common/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9, v1}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/au;Z)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->h()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v5, :cond_2

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/e/au;->b()I

    move-result v2

    if-eq v1, v2, :cond_2

    move v0, v4

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/maps/driveabout/store/l;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/store/l;-><init>(Lcom/google/android/maps/driveabout/store/i;)V

    new-instance v0, Lcom/google/android/maps/driveabout/store/p;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/e/au;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v1

    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/e/au;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->a()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/maps/driveabout/store/i;->a(II)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {p1, v1}, Lcom/google/android/maps/driveabout/e/au;->b(Lcom/google/googlenav/common/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/e/au;->c()I

    move-result v5

    move v0, v4

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/av;)V
    .locals 4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bw;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/e/av;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/e/av;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/store/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/store/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/m;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/g;->b()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/store/p;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/m;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->h()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cached version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Clear: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/maps/driveabout/store/i;->i:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/i;->a(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request not found in list of outstanding requests"

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/m;->c()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/m;->c()I

    move-result v8

    if-ge v1, v8, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->e()I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->c:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/maps/driveabout/store/i;->c:I

    :try_start_0
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->f:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/maps/driveabout/store/i;->f:I

    :goto_3
    const/4 v8, 0x0

    if-eqz v9, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->c(I)[B

    move-result-object v12

    if-eqz v12, :cond_5

    array-length v8, v12

    new-array v8, v8, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v12

    invoke-static {v12, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->b(I)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v13, :cond_6

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v13, v11, v12}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V

    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9, v11, v12, v8}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;[B)V

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v10, v8, v12}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->e:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/maps/driveabout/store/i;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": Could not parse tile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    :try_start_1
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/e/av;)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/e/av;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/e/av;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response received. Total tiles: prefetch: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/store/i;->f:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " normal: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/store/i;->e:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/n;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    new-instance v1, Lcom/google/android/maps/driveabout/store/n;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/store/n;-><init>(Lcom/google/android/maps/driveabout/store/i;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    :cond_f
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/store/i;->a(IIIIII)V

    goto/16 :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/n;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/e/av;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/store/bs;->a_(Lcom/google/android/maps/driveabout/e/av;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/p;Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v1, v4}, Lcom/google/android/maps/driveabout/store/bs;->c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v5}, Lcom/google/android/maps/driveabout/e/au;->a(Lcom/google/googlenav/common/a;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v4, v1}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/e/au;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v4}, Lcom/google/googlenav/h;->a()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/e/au;Z)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {p1, v3, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v4}, Lcom/google/android/maps/driveabout/store/v;->b(Lcom/google/android/maps/driveabout/e/av;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v3, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    move v0, v2

    goto :goto_1

    :cond_4
    invoke-interface {v1, v4}, Lcom/google/android/maps/driveabout/store/v;->c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/e/au;->a(Lcom/google/googlenav/common/a;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/e/au;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()V

    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/e/av;)V

    :goto_3
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->b()V

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v1, v4, v0}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/e/au;Z)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()V

    :cond_a
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/p;->a(I)V

    move v0, v3

    goto/16 :goto_1
.end method

.method private b(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/store/bs;->b(Lcom/google/android/maps/driveabout/e/av;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/store/bs;->c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/store/v;->b(Lcom/google/android/maps/driveabout/e/av;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/store/v;->c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->l()V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/p;->a(Lcom/google/android/maps/driveabout/store/p;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/i;->c(Lcom/google/android/maps/driveabout/store/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/p;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/p;->a(Lcom/google/android/maps/driveabout/store/p;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/p;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->k()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/m;->b(Lcom/google/android/maps/driveabout/store/p;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/m;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->k()V

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/store/i;->p:Z

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/e/av;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/e/au;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/e/au;->c(Lcom/google/googlenav/common/a;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v2, p2, v1}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/e/av;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, p2, v1, v3}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;[B)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/e/au;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->m()V

    return-void
.end method

.method private static c(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/store/i;)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/i;->t:I

    return v0
.end method

.method private h()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/i;->j:I

    goto :goto_0
.end method

.method private i()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/store/bw;->a(Lcom/google/android/maps/driveabout/store/bv;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private j()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->p:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/m;->c()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/h/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/h/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->g()Lcom/google/android/maps/driveabout/store/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/m;Lcom/google/android/maps/driveabout/store/i;)Lcom/google/android/maps/driveabout/store/i;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    return-void
.end method

.method private m()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/m;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/m;->c()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final n()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on DashServerTileStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LABELS_ONLY:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/e/av;Z)Lcom/google/android/maps/driveabout/e/au;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/store/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/o;-><init>(Lcom/google/android/maps/driveabout/store/j;)V

    new-instance v1, Lcom/google/android/maps/driveabout/store/p;

    invoke-direct {v1, p1, v0}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V

    invoke-direct {p0, v1, p2}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Z)Z

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/o;->a(Lcom/google/android/maps/driveabout/store/o;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/maps/driveabout/store/k;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/store/k;-><init>(Lcom/google/android/maps/driveabout/store/i;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->v:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/v;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to init disk cache"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->k:Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/v;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->k:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/v;->a(Ljava/util/Locale;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    :cond_2
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/store/p;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;Z)V
    .locals 6

    new-instance v0, Lcom/google/android/maps/driveabout/store/p;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/store/bw;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/store/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/m;)Lcom/google/android/maps/driveabout/store/i;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/googlenav/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    return-void
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/bs;->a()Z

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->d()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final e()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/store/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract g()Lcom/google/android/maps/driveabout/store/m;
.end method
