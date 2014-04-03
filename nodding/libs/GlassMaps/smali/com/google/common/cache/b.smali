.class public final Lcom/google/common/cache/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/cache/c;


# instance fields
.field private final a:Lcom/google/common/cache/av;

.field private final b:Lcom/google/common/cache/av;

.field private final c:Lcom/google/common/cache/av;

.field private final d:Lcom/google/common/cache/av;

.field private final e:Lcom/google/common/cache/av;

.field private final f:Lcom/google/common/cache/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->a:Lcom/google/common/cache/av;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->b:Lcom/google/common/cache/av;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->c:Lcom/google/common/cache/av;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->d:Lcom/google/common/cache/av;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->e:Lcom/google/common/cache/av;

    invoke-static {}, Lcom/google/common/cache/LongAddables;->a()Lcom/google/common/cache/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/b;->f:Lcom/google/common/cache/av;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/b;->f:Lcom/google/common/cache/av;

    invoke-interface {v0}, Lcom/google/common/cache/av;->increment()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/b;->a:Lcom/google/common/cache/av;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/av;->add(J)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/b;->c:Lcom/google/common/cache/av;

    invoke-interface {v0}, Lcom/google/common/cache/av;->increment()V

    iget-object v0, p0, Lcom/google/common/cache/b;->e:Lcom/google/common/cache/av;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/av;->add(J)V

    return-void
.end method

.method public final a(Lcom/google/common/cache/c;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/b;->a:Lcom/google/common/cache/av;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/av;->add(J)V

    iget-object v1, p0, Lcom/google/common/cache/b;->b:Lcom/google/common/cache/av;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->b()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/av;->add(J)V

    iget-object v1, p0, Lcom/google/common/cache/b;->c:Lcom/google/common/cache/av;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->c()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/av;->add(J)V

    iget-object v1, p0, Lcom/google/common/cache/b;->d:Lcom/google/common/cache/av;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->d()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/av;->add(J)V

    iget-object v1, p0, Lcom/google/common/cache/b;->e:Lcom/google/common/cache/av;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->e()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/av;->add(J)V

    iget-object v1, p0, Lcom/google/common/cache/b;->f:Lcom/google/common/cache/av;

    invoke-virtual {v0}, Lcom/google/common/cache/h;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/av;->add(J)V

    return-void
.end method

.method public final b()Lcom/google/common/cache/h;
    .locals 13

    new-instance v0, Lcom/google/common/cache/h;

    iget-object v1, p0, Lcom/google/common/cache/b;->a:Lcom/google/common/cache/av;

    invoke-interface {v1}, Lcom/google/common/cache/av;->sum()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/common/cache/b;->b:Lcom/google/common/cache/av;

    invoke-interface {v3}, Lcom/google/common/cache/av;->sum()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/common/cache/b;->c:Lcom/google/common/cache/av;

    invoke-interface {v5}, Lcom/google/common/cache/av;->sum()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/common/cache/b;->d:Lcom/google/common/cache/av;

    invoke-interface {v7}, Lcom/google/common/cache/av;->sum()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/common/cache/b;->e:Lcom/google/common/cache/av;

    invoke-interface {v9}, Lcom/google/common/cache/av;->sum()J

    move-result-wide v9

    iget-object v11, p0, Lcom/google/common/cache/b;->f:Lcom/google/common/cache/av;

    invoke-interface {v11}, Lcom/google/common/cache/av;->sum()J

    move-result-wide v11

    invoke-direct/range {v0 .. v12}, Lcom/google/common/cache/h;-><init>(JJJJJJ)V

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/b;->b:Lcom/google/common/cache/av;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/av;->add(J)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/b;->d:Lcom/google/common/cache/av;

    invoke-interface {v0}, Lcom/google/common/cache/av;->increment()V

    iget-object v0, p0, Lcom/google/common/cache/b;->e:Lcom/google/common/cache/av;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/av;->add(J)V

    return-void
.end method
