.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->startZoomBackInAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.7;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.7;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1152
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1153
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-result-object v2

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2200(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    move-result-object v2

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->bindedViewForItem:Landroid/view/View;
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;->access$2300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_in_view:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1158
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1159
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1160
    .local v1, view:Landroid/view/View;
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1161
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_scale:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateToItemRequest:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;
    invoke-static {v2, v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2202(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;)Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$AnimateToItemRequest;

    .line 1164
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->isAnimatingInView:Z
    invoke-static {v2, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2402(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    .line 1167
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 1168
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$7;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChildren()V
    invoke-static {v2}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 1169
    return-void
.end method
