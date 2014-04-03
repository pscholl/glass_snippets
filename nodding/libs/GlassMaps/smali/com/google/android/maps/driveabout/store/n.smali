.class final Lcom/google/android/maps/driveabout/store/n;
.super Lcom/google/android/maps/driveabout/util/d;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/i;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/n;->a:Lcom/google/android/maps/driveabout/store/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/i;->d(Lcom/google/android/maps/driveabout/store/i;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->c:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/n;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/n;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/n;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/n;->b:Z

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/n;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/store/i;->d(Lcom/google/android/maps/driveabout/store/i;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/store/n;->sleep(J)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/n;->b:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->e_()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->c:Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->b:Z

    return-void
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->c:Z

    return v0
.end method
