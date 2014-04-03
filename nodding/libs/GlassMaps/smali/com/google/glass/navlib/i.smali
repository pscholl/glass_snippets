.class final Lcom/google/glass/navlib/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/maps/driveabout/location/t;

.field final synthetic c:Lcom/google/glass/navlib/h;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/h;Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/navlib/i;->c:Lcom/google/glass/navlib/h;

    iput-object p2, p0, Lcom/google/glass/navlib/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/navlib/i;->b:Lcom/google/android/maps/driveabout/location/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/navlib/i;->c:Lcom/google/glass/navlib/h;

    iget-object v1, p0, Lcom/google/glass/navlib/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/navlib/i;->b:Lcom/google/android/maps/driveabout/location/t;

    invoke-static {v0, v1, v2}, Lcom/google/glass/navlib/h;->a(Lcom/google/glass/navlib/h;Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/glass/navlib/i;->c:Lcom/google/glass/navlib/h;

    invoke-static {v0}, Lcom/google/glass/navlib/h;->a(Lcom/google/glass/navlib/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/navlib/i;->c:Lcom/google/glass/navlib/h;

    invoke-static {v1}, Lcom/google/glass/navlib/h;->a(Lcom/google/glass/navlib/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
