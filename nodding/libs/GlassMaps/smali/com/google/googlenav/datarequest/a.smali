.class public abstract Lcom/google/googlenav/datarequest/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/datarequest/d;


# instance fields
.field private volatile a:Z

.field private b:I

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/a;->a:Z

    iput v0, p0, Lcom/google/googlenav/datarequest/a;->b:I

    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/a;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/a;->c:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/datarequest/a;->e:Ljava/lang/Long;

    return-void
.end method

.method public c_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d_()Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/datarequest/a;->b:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/datarequest/a;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->g()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/datarequest/a;->d:Ljava/lang/Long;

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/google/googlenav/datarequest/a;->d:Ljava/lang/Long;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/googlenav/datarequest/a;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/googlenav/datarequest/a;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/datarequest/a;->a:Z

    return v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v()V
    .locals 1

    iget v0, p0, Lcom/google/googlenav/datarequest/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/a;->b:I

    return-void
.end method

.method public final w()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/a;->e:Ljava/lang/Long;

    return-object v0
.end method
