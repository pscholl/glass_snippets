.class final Lcom/google/glass/input/x;
.super Lcom/google/glass/voice/q;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final synthetic a:Lcom/google/glass/input/t;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/google/glass/input/t;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-direct {p0}, Lcom/google/glass/voice/q;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/input/x;->b:J

    return-void
.end method

.method private a(Lcom/google/glass/input/x;)I
    .locals 4

    iget-wide v0, p0, Lcom/google/glass/input/x;->b:J

    iget-wide v2, p1, Lcom/google/glass/input/x;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/input/x;->b:J

    iget-wide v2, p1, Lcom/google/glass/input/x;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3

    invoke-static {}, Lcom/google/glass/input/t;->f()Lcom/google/glass/logging/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voice service listener callback thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/glass/input/z;

    invoke-direct {v1, p1}, Lcom/google/glass/input/z;-><init>(Lcom/google/glass/voice/VoiceCommand;)V

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->c(Lcom/google/glass/input/t;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    invoke-static {v1}, Lcom/google/glass/input/z;->a(Lcom/google/glass/input/z;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->c(Lcom/google/glass/input/t;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(D)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0, p1, p2}, Lcom/google/glass/input/t;->a(Lcom/google/glass/input/t;D)D

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->c(Lcom/google/glass/input/t;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->c(Lcom/google/glass/input/t;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a([BII)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->c(Lcom/google/glass/input/t;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->c(Lcom/google/glass/input/t;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/x;->a:Lcom/google/glass/input/t;

    invoke-static {v0}, Lcom/google/glass/input/t;->d(Lcom/google/glass/input/t;)Lcom/google/glass/input/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/input/ab;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/glass/input/x;

    invoke-direct {p0, p1}, Lcom/google/glass/input/x;->a(Lcom/google/glass/input/x;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/input/x;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
