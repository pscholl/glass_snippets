.class final Lcom/google/glass/util/aa;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/google/glass/util/Stopwatch;

.field final synthetic b:Lcom/google/glass/util/z;


# direct methods
.method constructor <init>(Lcom/google/glass/util/z;)V
    .locals 1

    iput-object p1, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/aa;->a:Lcom/google/glass/util/Stopwatch;

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-static {v0}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;)Lcom/google/glass/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/aa;->a:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->a()Lcom/google/glass/util/Stopwatch;

    iget-object v0, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    iget-object v1, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-static {v1}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;)Lcom/google/glass/util/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/u;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/glass/util/aa;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-static {v0}, Lcom/google/glass/util/z;->b(Lcom/google/glass/util/z;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v2, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-static {v2}, Lcom/google/glass/util/z;->b(Lcom/google/glass/util/z;)V

    iget-object v2, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-static {v2}, Lcom/google/glass/util/z;->a(Lcom/google/glass/util/z;)Lcom/google/glass/util/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/u;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/glass/util/aa;->a:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v2}, Lcom/google/glass/util/Stopwatch;->b()Lcom/google/glass/util/Stopwatch;

    iget-object v2, p0, Lcom/google/glass/util/aa;->a:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v2}, Lcom/google/glass/util/Stopwatch;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-static {v4}, Lcom/google/glass/util/z;->c(Lcom/google/glass/util/z;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->DEFERRED_CONTENT_LOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v6, "t"

    iget-object v7, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-virtual {v7}, Lcom/google/glass/util/z;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "l"

    aput-object v9, v8, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/z;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/aa;->b:Lcom/google/glass/util/z;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/glass/util/z;->b(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
