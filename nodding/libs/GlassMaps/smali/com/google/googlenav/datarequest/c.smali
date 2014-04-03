.class public final Lcom/google/googlenav/datarequest/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private g:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/common/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    iput-object v1, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iput-object p2, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "o"

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ns"

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1, p0, v0}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "f"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->l()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget v2, p0, Lcom/google/googlenav/datarequest/c;->a:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/common/i;->a()Lcom/google/googlenav/common/i;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/i;->a(Z)V

    goto :goto_0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    const-string v1, "d"

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/googlenav/datarequest/c;->d:J

    sub-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;J)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/datarequest/c;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/c;->c()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/c;->d:J

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    iput-object p1, p0, Lcom/google/googlenav/datarequest/c;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;JII)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->e:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/googlenav/datarequest/c;->d:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/googlenav/datarequest/c;->e:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v1, p2, v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;III)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
