.class public Lcom/google/googlenav/common/d/d;
.super Lcom/google/googlenav/common/d/b;


# instance fields
.field private a:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/d/c;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/d/d;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/d/d;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/d/b;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->a:J

    iput-wide v2, p0, Lcom/google/googlenav/common/d/d;->e:J

    iput-wide v2, p0, Lcom/google/googlenav/common/d/d;->f:J

    iput-wide v2, p0, Lcom/google/googlenav/common/d/d;->g:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/d/d;->i:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v3, "delay"

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v3, v2}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Z)V

    const-string v2, "scheduled"

    iget-wide v3, p0, Lcom/google/googlenav/common/d/d;->g:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v2, v0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Z)V

    iput-wide p1, p0, Lcom/google/googlenav/common/d/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()I
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/d;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->c(Lcom/google/googlenav/common/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/common/d/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/googlenav/common/d/d;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/a;)V

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->e:J

    iget-wide v2, p0, Lcom/google/googlenav/common/d/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/d/d;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()V
    .locals 4

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/googlenav/common/d/b;->g()V

    iget-object v0, p0, Lcom/google/googlenav/common/d/d;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/a;)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    :cond_1
    iget v0, p0, Lcom/google/googlenav/common/d/d;->h:I

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/google/googlenav/common/d/d;->i:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    iget-wide v2, p0, Lcom/google/googlenav/common/d/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/common/d/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized i()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlenav/common/d/d;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
