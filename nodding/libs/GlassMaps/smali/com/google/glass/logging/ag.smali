.class final Lcom/google/glass/logging/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/ag;->a:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing checkin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/logging/ag;->a:Lcom/google/glass/logging/UserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->b(Lcom/google/glass/logging/UserEventService;)V

    return-void
.end method
