.class final Lcom/google/glass/util/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/util/al;


# direct methods
.method constructor <init>(Lcom/google/glass/util/al;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/an;->a:Lcom/google/glass/util/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/an;->a:Lcom/google/glass/util/al;

    invoke-static {v0}, Lcom/google/glass/util/al;->a(Lcom/google/glass/util/al;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/glass/util/an;->a:Lcom/google/glass/util/al;

    invoke-static {v0}, Lcom/google/glass/util/al;->b(Lcom/google/glass/util/al;)Lcom/google/glass/util/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/ap;->b(Lcom/google/glass/util/ap;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/glass/util/an;->a:Lcom/google/glass/util/al;

    invoke-static {v0}, Lcom/google/glass/util/al;->c(Lcom/google/glass/util/al;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/util/an;->a:Lcom/google/glass/util/al;

    invoke-static {v1}, Lcom/google/glass/util/al;->b(Lcom/google/glass/util/al;)Lcom/google/glass/util/ap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/util/ap;->b(Lcom/google/glass/util/ap;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
