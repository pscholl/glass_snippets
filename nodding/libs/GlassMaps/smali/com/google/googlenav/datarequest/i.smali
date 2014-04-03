.class public final Lcom/google/googlenav/datarequest/i;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private b:Ljava/util/Vector;

.field private c:Z

.field private final d:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 2

    iput-object p1, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/f;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/datarequest/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/i;)Lcom/google/googlenav/common/io/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->d:Lcom/google/googlenav/common/io/b/a;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/i;Z)Lcom/google/googlenav/datarequest/j;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/datarequest/i;->b(Z)Lcom/google/googlenav/datarequest/j;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/google/googlenav/datarequest/j;
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    if-nez v1, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/googlenav/datarequest/j;

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/datarequest/j;-><init>(Lcom/google/googlenav/datarequest/i;Ljava/util/Vector;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    iget-object v0, v1, Lcom/google/googlenav/datarequest/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/datarequest/d;

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->w()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/googlenav/common/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    invoke-interface {v0}, Lcom/google/googlenav/datarequest/d;->w()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/googlenav/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/datarequest/i;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/i;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/i;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/googlenav/datarequest/d;->c_()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/i;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e:Lcom/google/googlenav/datarequest/h;

    invoke-static {v0}, Lcom/google/googlenav/datarequest/h;->d(Lcom/google/googlenav/datarequest/h;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
