.class public final Lcom/google/android/maps/driveabout/store/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bs;


# static fields
.field protected static final b:Lcom/google/android/maps/driveabout/e/au;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/store/br;->b:Lcom/google/android/maps/driveabout/e/au;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/au;)Z
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/br;->b:Lcom/google/android/maps/driveabout/e/au;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Lcom/google/android/maps/driveabout/e/av;)V
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/br;->b:Lcom/google/android/maps/driveabout/e/au;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/br;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/au;)V

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/e/av;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/br;->c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/au;
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/au;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/br;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
