.class final Lcom/google/android/maps/driveabout/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/g;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/h;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/h;->a:Lcom/google/android/maps/driveabout/b/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/h;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/g;->b(Lcom/google/android/maps/driveabout/b/g;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/h;->a:Lcom/google/android/maps/driveabout/b/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b/g;->a(Lcom/google/android/maps/driveabout/b/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/h;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/g;->c(Lcom/google/android/maps/driveabout/b/g;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
