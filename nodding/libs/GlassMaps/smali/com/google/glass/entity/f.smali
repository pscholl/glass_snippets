.class final Lcom/google/glass/entity/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/entity/e;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/f;->a:Lcom/google/glass/entity/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/glass/entity/b;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Received broadcast that entity db changed, reloading entity cache."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/entity/f;->a:Lcom/google/glass/entity/e;

    iget-object v0, v0, Lcom/google/glass/entity/e;->a:Lcom/google/glass/entity/b;

    invoke-virtual {v0}, Lcom/google/glass/entity/b;->b()V

    return-void
.end method
