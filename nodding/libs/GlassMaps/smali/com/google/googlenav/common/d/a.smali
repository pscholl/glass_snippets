.class public abstract Lcom/google/googlenav/common/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/googlenav/common/d/a;


# instance fields
.field protected b:Lcom/google/googlenav/common/d/c;

.field protected c:Ljava/lang/Runnable;

.field protected d:Ljava/util/Vector;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/common/d/a;

    sput-object v0, Lcom/google/googlenav/common/d/a;->a:[Lcom/google/googlenav/common/d/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    const-string v0, "Runner cannot be null"

    invoke-static {v0, p1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/googlenav/common/d/a;->b:Lcom/google/googlenav/common/d/c;

    iput-object p2, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/googlenav/common/d/a;->h:Ljava/lang/String;

    return-void
.end method

.method private h()[Lcom/google/googlenav/common/d/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->d:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/common/d/a;

    iget-object v1, p0, Lcom/google/googlenav/common/d/a;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/common/d/a;->a:[Lcom/google/googlenav/common/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/common/d/a;->e:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->b(Lcom/google/googlenav/common/d/a;)I

    move-result v0

    return v0
.end method

.method abstract c()I
.end method

.method protected final d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/d/a;->e:I

    return v0
.end method

.method public e()V
    .locals 2

    iget-object v1, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/googlenav/common/d/a;->f:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->b:Lcom/google/googlenav/common/d/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/d/c;->a(Lcom/google/googlenav/common/d/a;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method abstract f()V
.end method

.method g()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/common/d/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/common/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/d/a;->f:I

    iget-object v0, p0, Lcom/google/googlenav/common/d/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/google/googlenav/common/d/a;->h()[Lcom/google/googlenav/common/d/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/googlenav/common/d/a;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime exception ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] thrown by runnable ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/d/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method
