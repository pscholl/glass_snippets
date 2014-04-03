.class Lcom/google/glass/widget/MosaicView$2;
.super Ljava/lang/Object;
.source "MosaicView.java"

# interfaces
.implements Lcom/google/glass/util/DeferredContentLoader$LoadingTask$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/MosaicView;->bindImageView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 5
    .parameter "success"

    .prologue
    .line 339
    invoke-static {}, Lcom/google/glass/widget/MosaicView;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Completed loading task: %s, number left: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I
    invoke-static {v4}, Lcom/google/glass/widget/MosaicView;->access$400(Lcom/google/glass/widget/MosaicView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    if-eqz p1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->access$410(Lcom/google/glass/widget/MosaicView;)I

    .line 345
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I
    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->access$400(Lcom/google/glass/widget/MosaicView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;
    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->access$600(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;
    invoke-static {v0}, Lcom/google/glass/widget/MosaicView;->access$600(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/MosaicView$CellsLoadedListener;->onCellsLoaded()V

    .line 348
    :cond_0
    monitor-exit v1

    .line 350
    :cond_1
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
