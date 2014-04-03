.class final Lcom/google/glass/logging/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/net/s;


# instance fields
.field final synthetic a:Lcom/google/common/a/d;

.field final synthetic b:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/y;->b:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/y;->a:Lcom/google/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User event request cancelled. Will retry."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/logging/y;->b:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/y;->a:Lcom/google/common/a/d;

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->b(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/logging/y;->b:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/y;->a:Lcom/google/common/a/d;

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->b(Lcom/google/glass/logging/UserEventService;Lcom/google/common/a/d;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/protobuf/nano/b;)V
    .locals 0

    return-void
.end method
