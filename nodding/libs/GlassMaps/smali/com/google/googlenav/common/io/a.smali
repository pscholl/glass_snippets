.class public abstract Lcom/google/googlenav/common/io/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/common/io/e;


# instance fields
.field protected final a:Lcom/google/googlenav/common/io/PersistentStore;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->b:Z

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    iput-object p1, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/PersistentStore;

    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    iput-boolean p1, p0, Lcom/google/googlenav/common/io/a;->c:Z

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/PersistentStore;

    iget-object v1, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/PersistentStore;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/a;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/common/io/a;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    return v0
.end method

.method public final declared-synchronized a(Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/googlenav/common/io/a;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a;->c:Z

    iget-object v0, p0, Lcom/google/googlenav/common/io/a;->a:Lcom/google/googlenav/common/io/PersistentStore;

    iget-object v2, p0, Lcom/google/googlenav/common/io/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/common/io/a;->d()B

    move-result v5

    aput-byte v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/googlenav/common/io/PersistentStore;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a;->b:Z

    return v0
.end method
