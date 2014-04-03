.class final Lcom/google/glass/companion/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/companion/c;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/companion/d;->a:Lcom/google/glass/companion/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/glass/companion/a;->a(Landroid/os/Message;)Lcom/google/glass/companion/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/companion/c;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Message is canceled."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/glass/companion/c;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "No companion info specified."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/google/glass/companion/m;->d:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v2

    const-string v3, "t"

    const-string v4, "0"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const-string v0, "d"

    aput-object v0, v5, v7

    if-eqz v2, :cond_3

    const-string v0, "y"

    :goto_1
    aput-object v0, v5, v8

    const-string v0, "v"

    aput-object v0, v5, v9

    const/4 v6, 0x3

    iget-object v0, v1, Lcom/google/glass/companion/m;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/google/glass/companion/m;->e:Ljava/lang/Integer;

    :goto_2
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/companion/c;->d()Lcom/google/glass/logging/i;

    move-result-object v3

    const-string v4, "Logging %s for %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v7

    iget-object v6, v1, Lcom/google/glass/companion/m;->b:Ljava/lang/Long;

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/glass/companion/m;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/google/glass/companion/m;->e:Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/companion/d;->a:Lcom/google/glass/companion/c;

    invoke-static {v1}, Lcom/google/glass/companion/c;->a(Lcom/google/glass/companion/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    invoke-static {}, Lcom/google/glass/companion/c;->d()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Send tethering error message to companion.."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/companion/d;->a:Lcom/google/glass/companion/c;

    invoke-static {v1}, Lcom/google/glass/companion/c;->b(Lcom/google/glass/companion/c;)V

    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/d;->a:Lcom/google/glass/companion/c;

    invoke-static {v1}, Lcom/google/glass/companion/c;->c(Lcom/google/glass/companion/c;)Lcom/google/glass/userevent/a;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "n"

    goto :goto_1

    :cond_4
    const-string v0, "0"

    goto :goto_2
.end method
