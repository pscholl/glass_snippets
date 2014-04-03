.class final Lcom/google/glass/logging/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/v;->a:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/v;->a:Lcom/google/glass/logging/UserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;)Lcom/google/glass/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/bm;->b()V

    return-void
.end method
