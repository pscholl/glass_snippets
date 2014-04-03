.class public final Lcom/google/android/maps/driveabout/store/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/store/be;


# instance fields
.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final c:Lcom/google/googlenav/common/a;

.field private final d:Lcom/google/android/maps/driveabout/util/g;

.field private final e:Lcom/google/android/maps/driveabout/util/g;

.field private final f:Lcom/google/android/maps/driveabout/store/u;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->c:Lcom/google/googlenav/common/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/store/u;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->c:Lcom/google/googlenav/common/a;

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {p2}, Lcom/google/android/maps/driveabout/store/u;->a(Ljava/io/File;)Lcom/google/android/maps/driveabout/store/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/store/u;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;Z)Lcom/google/android/maps/driveabout/store/bb;
    .locals 7

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bb;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/store/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/bb;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/bb;->a(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->e:Lcom/google/android/maps/driveabout/util/g;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->c:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/bb;->g()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bb;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bb;->a(J)V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/store/bb;->a(Lcom/google/android/maps/driveabout/store/bd;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bb;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/store/u;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/u;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/maps/driveabout/store/bb;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/bb;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/bb;->a(Z)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/be;->d:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/google/android/maps/driveabout/store/be;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)Lcom/google/android/maps/driveabout/store/be;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/store/be;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/store/be;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/be;)Lcom/google/android/maps/driveabout/store/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/store/u;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 4

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/w;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/bb;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/bg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/google/android/maps/driveabout/store/bg;-><init>(Lcom/google/android/maps/driveabout/store/be;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/bb;Lcom/google/android/maps/driveabout/store/bf;)V

    new-instance v0, Lcom/google/android/maps/driveabout/h/g;

    const-string v2, "addRequest"

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/h/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/be;->c()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/store/be;->a:Lcom/google/android/maps/driveabout/store/be;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/be;->f:Lcom/google/android/maps/driveabout/store/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/u;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;Z)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v0

    return-object v0
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/bg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/store/bg;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/bg;->b()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    return-void
.end method
