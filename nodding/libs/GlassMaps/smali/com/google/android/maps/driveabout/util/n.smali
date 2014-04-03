.class final Lcom/google/android/maps/driveabout/util/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private final a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/n;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/util/n;->b:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/n;->c:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/n;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->c()Lcom/google/android/maps/driveabout/vector/e;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/n;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/n;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/n;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-class v1, Lcom/google/android/maps/driveabout/util/l;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/util/l;->a(Z)Z

    const-class v0, Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/maps/driveabout/util/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/n;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/n;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/n;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    return-void
.end method
