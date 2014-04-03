.class public final Lcom/google/android/maps/driveabout/util/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static volatile c:Lcom/google/android/maps/driveabout/util/j;

.field private static volatile d:Lcom/google/android/maps/driveabout/vector/e;

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/util/j;

    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/i/a/a/b/e;->i:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/j;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/android/maps/driveabout/util/l;->c:Lcom/google/android/maps/driveabout/util/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/maps/driveabout/util/j;
    .locals 2

    const-class v0, Lcom/google/android/maps/driveabout/util/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/maps/driveabout/util/l;->c:Lcom/google/android/maps/driveabout/util/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/util/j;)Lcom/google/android/maps/driveabout/util/j;
    .locals 0

    sput-object p0, Lcom/google/android/maps/driveabout/util/l;->c:Lcom/google/android/maps/driveabout/util/j;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/e;)Lcom/google/android/maps/driveabout/vector/e;
    .locals 0

    sput-object p0, Lcom/google/android/maps/driveabout/util/l;->d:Lcom/google/android/maps/driveabout/vector/e;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/util/l;->b(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Z)V
    .locals 6

    sget-boolean v0, Lcom/google/android/maps/driveabout/util/l;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/util/l;->a:Z

    new-instance v0, Lcom/google/android/maps/driveabout/util/m;

    const-string v1, "ParameterManagerLoad"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/util/m;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/m;->start()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/android/maps/driveabout/util/l;->e:Z

    return p0
.end method

.method public static declared-synchronized b()Lcom/google/android/maps/driveabout/util/j;
    .locals 2

    const-class v1, Lcom/google/android/maps/driveabout/util/l;

    monitor-enter v1

    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/google/android/maps/driveabout/util/l;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/maps/driveabout/util/l;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-class v0, Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    sget-boolean v0, Lcom/google/android/maps/driveabout/util/l;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/maps/driveabout/util/l;->c:Lcom/google/android/maps/driveabout/util/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const-class v7, Lcom/google/android/maps/driveabout/util/l;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {p0, p3, v0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/android/maps/driveabout/util/j;

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/util/j;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v2, Lcom/google/android/maps/driveabout/util/l;->c:Lcom/google/android/maps/driveabout/util/j;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    sget-object v0, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {p0, p4, v0}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/vector/e;

    move-result-object v1

    sput-object v1, Lcom/google/android/maps/driveabout/util/l;->d:Lcom/google/android/maps/driveabout/vector/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_0
    const-class v0, Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    if-eqz p1, :cond_4

    sget-object v0, Lcom/google/android/maps/driveabout/util/l;->d:Lcom/google/android/maps/driveabout/vector/e;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/util/l;->e:Z

    const-class v0, Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    new-instance v0, Lcom/google/android/maps/driveabout/util/n;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/util/n;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    new-instance v0, Lcom/google/android/maps/driveabout/util/o;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/util/o;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/maps/driveabout/util/m;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v7

    return-void

    :cond_5
    :try_start_1
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/i/a/a/b/e;->i:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_6
    move-object v2, v4

    goto :goto_1
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/android/maps/driveabout/util/l;->b:Z

    return p0
.end method

.method static synthetic c()Lcom/google/android/maps/driveabout/vector/e;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/util/l;->d:Lcom/google/android/maps/driveabout/vector/e;

    return-object v0
.end method
