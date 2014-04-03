.class final Lcom/google/android/maps/driveabout/a/e;
.super Lcom/google/android/maps/driveabout/util/g;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/d;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/a/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/e;->a:Lcom/google/android/maps/driveabout/a/d;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/maps/driveabout/a/h;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/a/h;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/e;->a:Lcom/google/android/maps/driveabout/a/d;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/e;->a:Lcom/google/android/maps/driveabout/a/d;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/a/h;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/android/maps/driveabout/a/h;

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/a/e;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/a/h;)V

    return-void
.end method
