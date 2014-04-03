.class public final Lcom/google/android/maps/driveabout/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/d/a;
.implements Lcom/google/android/maps/driveabout/store/bd;


# instance fields
.field private b:Lcom/google/android/maps/driveabout/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/e;->b:Lcom/google/android/maps/driveabout/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/e;->b:Lcom/google/android/maps/driveabout/d/b;
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
