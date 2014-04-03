.class public final Lcom/google/android/maps/driveabout/store/ar;
.super Lcom/google/android/maps/driveabout/util/d;

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/store/ar;


# instance fields
.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final c:Lcom/google/android/maps/driveabout/store/am;

.field private final d:Ljava/io/File;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "ibs"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    new-instance v0, Lcom/google/android/maps/driveabout/store/am;

    invoke-direct {v0, p3}, Lcom/google/android/maps/driveabout/store/am;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/ar;->d:Ljava/io/File;

    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)Lcom/google/android/maps/driveabout/store/ar;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/store/ar;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/store/ar;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IndoorBuildingStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponse: Received unexpected response for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/store/am;->c(Lcom/google/android/maps/driveabout/e/p;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/aq;->a(Lcom/google/android/maps/driveabout/e/o;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->e()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/aq;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/android/maps/driveabout/store/at;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/at;)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/store/at;->a:Lcom/google/android/maps/driveabout/e/p;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/store/at;->b:Lcom/google/android/maps/driveabout/store/ap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "IndoorBuildingStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/e/o;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/maps/driveabout/store/ap;->a(Lcom/google/android/maps/driveabout/e/p;ILcom/google/android/maps/driveabout/e/o;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/o;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lcom/google/android/maps/driveabout/store/ap;->a(Lcom/google/android/maps/driveabout/e/p;ILcom/google/android/maps/driveabout/e/o;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aq;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/maps/driveabout/store/aq;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/aq;-><init>(Lcom/google/android/maps/driveabout/e/p;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/aq;->a(Lcom/google/android/maps/driveabout/store/ap;)V

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ar;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/store/ar;->h:Z

    goto :goto_1
.end method

.method private b(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/e/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static b()Lcom/google/android/maps/driveabout/store/ar;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IndoorBuildingStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError: Received unexpected response for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/aq;->b()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/aq;->a(Lcom/google/android/maps/driveabout/e/o;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/ar;Lcom/google/android/maps/driveabout/store/aq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->b(Lcom/google/android/maps/driveabout/store/aq;)V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/ar;->e()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/store/ar;->a:Lcom/google/android/maps/driveabout/store/ar;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ar;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/am;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "IndoorBuildingStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requests outstanding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ar;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ar;->h:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aq;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aq;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on IndoorBuildingStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/q;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/ar;->b(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/o;->a(Lcom/google/android/maps/driveabout/e/p;)Lcom/google/android/maps/driveabout/e/q;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/google/android/maps/driveabout/store/as;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/store/as;-><init>(Lcom/google/android/maps/driveabout/store/ar;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->c:Lcom/google/android/maps/driveabout/store/am;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/am;->a(Ljava/io/File;)V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/ar;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ar;->getName()Ljava/lang/String;

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
    .locals 3

    const-string v0, "IndoorBuildingStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/ap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/store/at;

    invoke-direct {v3, p1, p2}, Lcom/google/android/maps/driveabout/store/at;-><init>(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/ap;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ar;->start()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->f:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ar;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    return-void

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
