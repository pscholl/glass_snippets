.class final Lcom/google/glass/widget/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/widget/GridLayout$LayoutParams;

.field final synthetic d:I

.field final synthetic e:Lcom/google/glass/widget/j;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;IILandroid/widget/GridLayout$LayoutParams;ILcom/google/glass/widget/j;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/t;->i:Lcom/google/glass/widget/MosaicView;

    iput p2, p0, Lcom/google/glass/widget/t;->a:I

    iput p3, p0, Lcom/google/glass/widget/t;->b:I

    iput-object p4, p0, Lcom/google/glass/widget/t;->c:Landroid/widget/GridLayout$LayoutParams;

    iput p5, p0, Lcom/google/glass/widget/t;->d:I

    iput-object p6, p0, Lcom/google/glass/widget/t;->e:Lcom/google/glass/widget/j;

    iput p7, p0, Lcom/google/glass/widget/t;->f:I

    iput p8, p0, Lcom/google/glass/widget/t;->g:I

    iput p9, p0, Lcom/google/glass/widget/t;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/glass/widget/t;->a:I

    iget-object v2, p0, Lcom/google/glass/widget/t;->i:Lcom/google/glass/widget/MosaicView;

    invoke-static {v2}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/MosaicView;)I

    move-result v2

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/glass/widget/MosaicView;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/google/glass/widget/t;->b:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/t;->i:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/google/glass/widget/t;->b:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/google/glass/d/f;->tag_cell_layout_type:I

    iget v2, p0, Lcom/google/glass/widget/t;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    move-object v2, v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/t;->i:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/widget/t;->c:Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/widget/MosaicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/google/glass/widget/t;->d:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/t;->i:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/widget/t;->e:Lcom/google/glass/widget/j;

    iget v3, p0, Lcom/google/glass/widget/t;->f:I

    iget v4, p0, Lcom/google/glass/widget/t;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/t;->i:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/widget/t;->e:Lcom/google/glass/widget/j;

    iget v3, p0, Lcom/google/glass/widget/t;->f:I

    iget v4, p0, Lcom/google/glass/widget/t;->g:I

    iget v5, p0, Lcom/google/glass/widget/t;->h:I

    invoke-static/range {v0 .. v5}, Lcom/google/glass/widget/MosaicView;->a(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/j;Landroid/widget/FrameLayout;III)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1
.end method
