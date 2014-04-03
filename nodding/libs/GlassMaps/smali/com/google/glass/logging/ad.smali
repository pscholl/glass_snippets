.class final Lcom/google/glass/logging/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/ad;->a:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/logging/ad;->a:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/ad;->a:Lcom/google/glass/logging/UserEventService;

    invoke-static {v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;)Lcom/google/glass/util/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/bm;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
