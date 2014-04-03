.class final Lcom/google/glass/a/b;
.super Lcom/google/glass/a/c;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/a/c;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    invoke-super {p0, p1}, Lcom/google/glass/a/c;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/a/a;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    invoke-static {}, Lcom/google/glass/a/a;->d()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "serialInstance Executor Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/a/a;->d()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
