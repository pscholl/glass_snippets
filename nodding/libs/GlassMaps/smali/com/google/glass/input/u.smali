.class final Lcom/google/glass/input/u;
.super Lcom/google/glass/util/bq;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/util/bq;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/input/t;->h()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/google/glass/input/t;->f()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "VoiceService connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/glass/voice/n;->a(Landroid/os/IBinder;)Lcom/google/glass/voice/m;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/t;->a:Lcom/google/glass/voice/m;

    invoke-static {}, Lcom/google/glass/input/t;->g()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/x;

    invoke-static {v0}, Lcom/google/glass/input/t;->a(Lcom/google/glass/input/x;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/ComponentName;Z)V
    .locals 3

    invoke-static {}, Lcom/google/glass/input/t;->f()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "VoiceService disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/input/t;->g()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/x;

    invoke-virtual {v0}, Lcom/google/glass/input/x;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
