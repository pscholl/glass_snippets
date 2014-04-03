.class public Lcom/google/googlenav/common/d/b;
.super Lcom/google/googlenav/common/d/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/d/c;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/google/googlenav/common/d/c;->a()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/common/d/b;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/googlenav/common/d/b;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/common/d/c;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/common/d/b;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/d/a;-><init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/google/googlenav/common/d/b;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/common/d/b;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/c;->c()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/common/e/a;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/common/d/b;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/c;->b()I

    move-result v0

    if-gt p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/googlenav/common/e/a;->a(Z)V

    iput p1, p0, Lcom/google/googlenav/common/d/b;->a:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method c()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/d/b;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->c(Lcom/google/googlenav/common/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/d/b;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/b;)V

    return-void
.end method

.method public final declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/common/d/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
