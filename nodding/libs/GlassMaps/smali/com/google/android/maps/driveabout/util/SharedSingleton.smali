.class public abstract Lcom/google/android/maps/driveabout/util/SharedSingleton;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b:Landroid/content/Context;
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

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/util/SharedSingleton$CircularDependencyException;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/util/SharedSingleton$CircularDependencyException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->c:Z

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/SharedSingleton;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
