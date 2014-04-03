.class final Lcom/google/android/maps/driveabout/store/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Lcom/google/android/maps/driveabout/store/ay;

.field private d:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/ay;I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/ae;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    iput p2, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/ae;->a:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/store/ay;->b([BII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    iput v5, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ae;->b()V

    return-void
.end method

.method final a([B)V
    .locals 4

    array-length v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ae;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/ae;->b()V

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ae;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/ae;->c:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ae;->d:I

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/ae;->a:[B

    iget v2, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/ae;->b:I

    goto :goto_0
.end method
