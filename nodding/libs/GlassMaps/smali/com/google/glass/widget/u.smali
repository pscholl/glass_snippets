.class final Lcom/google/glass/widget/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/util/ac;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    invoke-static {}, Lcom/google/glass/widget/MosaicView;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Completed loading task: %s, number left: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    invoke-static {v4}, Lcom/google/glass/widget/MosaicView;->b(Lcom/google/glass/widget/MosaicView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->c(Lcom/google/glass/widget/MosaicView;)I

    iget-object v0, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->b(Lcom/google/glass/widget/MosaicView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->d(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/u;->a:Lcom/google/glass/widget/MosaicView;

    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->d(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/w;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
