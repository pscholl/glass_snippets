.class public final Lcom/google/android/maps/driveabout/h/a;
.super Lcom/google/android/maps/driveabout/h/f;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/h/j;

.field private b:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/h/f;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x190

    new-array v0, v0, [Lcom/google/android/maps/driveabout/h/j;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/h/a;->a:[Lcom/google/android/maps/driveabout/h/j;

    iput v1, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    iput v1, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 5

    const/16 v1, 0x190

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    new-array v0, v0, [Lcom/google/android/maps/driveabout/h/j;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/h/a;->a:[Lcom/google/android/maps/driveabout/h/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    const/16 v0, 0x190

    :try_start_1
    new-array v0, v0, [Lcom/google/android/maps/driveabout/h/j;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/h/a;->a:[Lcom/google/android/maps/driveabout/h/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    rsub-int v4, v4, 0x190

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/h/a;->a:[Lcom/google/android/maps/driveabout/h/j;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    rsub-int v3, v3, 0x190

    iget v4, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/h/j;)V
    .locals 3

    const/16 v2, 0x190

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/h/a;->a:[Lcom/google/android/maps/driveabout/h/j;

    aput-object p1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/maps/driveabout/h/a;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/h/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/h/a;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
