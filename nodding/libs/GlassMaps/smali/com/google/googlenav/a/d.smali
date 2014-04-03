.class final Lcom/google/googlenav/a/d;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/a/d;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/googlenav/a/d;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/a/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 9

    const/4 v8, -0x1

    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/e;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const-class v2, Lcom/google/googlenav/a/c;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/a/c;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-static {}, Lcom/google/googlenav/a/c;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/common/io/b/a;

    sget-object v6, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v5, v6}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v6

    if-eq v6, v8, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v6

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/common/io/b/a;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/google/i/a/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    const-class v5, Lcom/google/googlenav/a/c;

    monitor-enter v5

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/google/googlenav/a/c;->b(Lcom/google/googlenav/common/io/b/a;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/google/googlenav/a/c;->c(Lcom/google/googlenav/common/io/b/a;)V

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/a/c;->b()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/a/d;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/googlenav/a/d;->b:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/googlenav/a/c;->c()Lcom/google/googlenav/a/f;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/googlenav/a/c;->d()Z

    :cond_4
    invoke-static {}, Lcom/google/googlenav/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/googlenav/a/c;->e()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/google/googlenav/a/c;->a(Z)Z

    invoke-static {}, Lcom/google/googlenav/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/a/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    return v1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_6
    :try_start_2
    new-instance v0, Lcom/google/googlenav/a/e;

    invoke-static {}, Lcom/google/googlenav/i;->a()Lcom/google/googlenav/common/d/c;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/a/e;-><init>(Lcom/google/googlenav/a/d;Lcom/google/googlenav/common/d/c;)V

    invoke-static {v0}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/common/d/d;)Lcom/google/googlenav/common/d/d;

    invoke-static {}, Lcom/google/googlenav/a/c;->g()Lcom/google/googlenav/common/d/d;

    move-result-object v0

    const-wide/32 v3, 0xa4cb80

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/d/d;->a(J)V

    invoke-static {}, Lcom/google/googlenav/a/c;->g()Lcom/google/googlenav/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final c_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
