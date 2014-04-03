.class final Lcom/google/glass/logging/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/b;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/glass/logging/b;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling response for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    invoke-static {v2}, Lcom/google/glass/logging/b;->a(Lcom/google/glass/logging/b;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/glass/companion/a;->a(Landroid/os/Message;)Lcom/google/glass/companion/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    iget-object v1, v0, Lcom/google/glass/companion/m;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    invoke-static {v3}, Lcom/google/glass/logging/b;->a(Lcom/google/glass/logging/b;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    iget-object v0, v0, Lcom/google/glass/companion/m;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/glass/logging/b;->a(Lcom/google/glass/logging/b;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/logging/b;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "get the companion log"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    invoke-static {v0}, Lcom/google/glass/logging/b;->b(Lcom/google/glass/logging/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/glass/logging/b;->b()Lcom/google/glass/logging/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got different replyable id: expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    invoke-static {v3}, Lcom/google/glass/logging/b;->a(Lcom/google/glass/logging/b;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/glass/companion/m;->b:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/glass/logging/b;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/c;->a:Lcom/google/glass/logging/b;

    invoke-static {v2}, Lcom/google/glass/logging/b;->a(Lcom/google/glass/logging/b;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
