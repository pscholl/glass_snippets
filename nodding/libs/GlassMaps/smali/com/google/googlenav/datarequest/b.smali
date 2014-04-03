.class public final Lcom/google/googlenav/datarequest/b;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/b/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/datarequest/b;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/datarequest/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    const-string v0, "Cohort"

    invoke-static {v0}, Lcom/google/googlenav/common/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/datarequest/b;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v0, Lcom/google/i/a/a/b/f;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/datarequest/b;->a:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    const-string v2, "Cohort"

    invoke-static {v2, v1}, Lcom/google/googlenav/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/common/io/b/a;)V

    :cond_1
    return v3
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

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
