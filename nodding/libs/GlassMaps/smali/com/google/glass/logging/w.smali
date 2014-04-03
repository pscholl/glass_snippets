.class final Lcom/google/glass/logging/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/a/d;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/w;->a:Lcom/google/common/a/d;

    iput-boolean p3, p0, Lcom/google/glass/logging/w;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/glass/logging/w;->a:Lcom/google/common/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    iget-object v2, p0, Lcom/google/glass/logging/w;->a:Lcom/google/common/a/d;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/d;)Lcom/google/common/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)Lcom/google/common/a/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging user event: [action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/a/d;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/glass/userevent/UserEventAction;->fromAction(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    invoke-static {v4}, Lcom/google/glass/logging/UserEventService;->c(Lcom/google/glass/logging/UserEventService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->b()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    invoke-static {v4, v2, v3}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;J)J

    const-string v2, ", performance stats: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/common/a/d;->f:Lcom/google/common/a/c;

    invoke-static {v2}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/common/a/c;)Lcom/google/common/a/c;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/a/d;->f:Lcom/google/common/a/c;

    sget-object v4, Lcom/google/common/a/b;->a:[Lcom/google/common/a/b;

    iput-object v4, v3, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    invoke-virtual {v2}, Lcom/google/common/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/google/glass/logging/o;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    invoke-static {v1, v0}, Lcom/google/glass/logging/UserEventService;->b(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/logging/w;->c:Lcom/google/glass/logging/UserEventService;

    iget-boolean v1, p0, Lcom/google/glass/logging/w;->b:Z

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;Z)V

    return-void
.end method
