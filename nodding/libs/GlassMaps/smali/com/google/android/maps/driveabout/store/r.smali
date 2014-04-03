.class final Lcom/google/android/maps/driveabout/store/r;
.super Lcom/google/android/maps/driveabout/util/d;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/maps/driveabout/store/q;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/q;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCommitter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/maps/driveabout/store/r;->a:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/r;->b:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/r;->start()V

    return-void
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

    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/store/r;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/r;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/r;->b:Lcom/google/android/maps/driveabout/store/q;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/q;->a(Lcom/google/android/maps/driveabout/store/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/r;->getName()Ljava/lang/String;

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

    :catch_1
    move-exception v0

    goto :goto_1
.end method
