.class Lcom/google/glass/widget/MosaicView$1;
.super Ljava/lang/Object;
.source "MosaicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/MosaicView;->addCell(IIIIIILandroid/widget/GridLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MosaicView;

.field final synthetic val$elementIdx:I

.field final synthetic val$height:I

.field final synthetic val$layoutId:I

.field final synthetic val$layoutParams:Landroid/widget/GridLayout$LayoutParams;

.field final synthetic val$remainingCount:I

.field final synthetic val$subtaskIndex:I

.field final synthetic val$thisImageLoader:Lcom/google/glass/widget/ImageLoader;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;IILandroid/widget/GridLayout$LayoutParams;ILcom/google/glass/widget/ImageLoader;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView$1;->this$0:Lcom/google/glass/widget/MosaicView;

    iput p2, p0, Lcom/google/glass/widget/MosaicView$1;->val$subtaskIndex:I

    iput p3, p0, Lcom/google/glass/widget/MosaicView$1;->val$layoutId:I

    iput-object p4, p0, Lcom/google/glass/widget/MosaicView$1;->val$layoutParams:Landroid/widget/GridLayout$LayoutParams;

    iput p5, p0, Lcom/google/glass/widget/MosaicView$1;->val$remainingCount:I

    iput-object p6, p0, Lcom/google/glass/widget/MosaicView$1;->val$thisImageLoader:Lcom/google/glass/widget/ImageLoader;

    iput p7, p0, Lcom/google/glass/widget/MosaicView$1;->val$elementIdx:I

    iput p8, p0, Lcom/google/glass/widget/MosaicView$1;->val$width:I

    iput p9, p0, Lcom/google/glass/widget/MosaicView$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 302
    iget v0, p0, Lcom/google/glass/widget/MosaicView$1;->val$subtaskIndex:I

    iget-object v1, p0, Lcom/google/glass/widget/MosaicView$1;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->subtaskIndex:I
    invoke-static {v1}, Lcom/google/glass/widget/MosaicView;->access$000(Lcom/google/glass/widget/MosaicView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 307
    :cond_0
    const/4 v2, 0x0

    .line 308
    .local v2, cellView:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/google/glass/widget/MosaicView;->access$100()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/widget/MosaicView$1;->val$layoutId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 309
    .local v6, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    if-eqz v6, :cond_1

    .line 310
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cellView:Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 312
    .restart local v2       #cellView:Landroid/widget/FrameLayout;
    :cond_1
    if-nez v2, :cond_2

    .line 313
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$1;->this$0:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 314
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/google/glass/widget/MosaicView$1;->val$layoutId:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #cellView:Landroid/widget/FrameLayout;
    check-cast v2, Landroid/widget/FrameLayout;

    .line 317
    .restart local v2       #cellView:Landroid/widget/FrameLayout;
    sget v0, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    iget v1, p0, Lcom/google/glass/widget/MosaicView$1;->val$layoutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 320
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$1;->this$0:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/widget/MosaicView$1;->val$layoutParams:Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/widget/MosaicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget v0, p0, Lcom/google/glass/widget/MosaicView$1;->val$remainingCount:I

    if-lez v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$1;->this$0:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/widget/MosaicView$1;->val$thisImageLoader:Lcom/google/glass/widget/ImageLoader;

    iget v3, p0, Lcom/google/glass/widget/MosaicView$1;->val$elementIdx:I

    iget v4, p0, Lcom/google/glass/widget/MosaicView$1;->val$remainingCount:I

    #calls: Lcom/google/glass/widget/MosaicView;->bindRemainingCountView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;II)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/widget/MosaicView;->access$200(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;II)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView$1;->this$0:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/widget/MosaicView$1;->val$thisImageLoader:Lcom/google/glass/widget/ImageLoader;

    iget v3, p0, Lcom/google/glass/widget/MosaicView$1;->val$elementIdx:I

    iget v4, p0, Lcom/google/glass/widget/MosaicView$1;->val$width:I

    iget v5, p0, Lcom/google/glass/widget/MosaicView$1;->val$height:I

    #calls: Lcom/google/glass/widget/MosaicView;->bindImageView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/widget/MosaicView;->access$300(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V

    goto :goto_0
.end method
