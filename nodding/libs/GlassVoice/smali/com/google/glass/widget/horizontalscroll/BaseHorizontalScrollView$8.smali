.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$animateInView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1190
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.8;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iput-object p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->val$animateInView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .parameter "animation"

    .prologue
    .line 1194
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.8;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1195
    .local v1, animatedValue:Ljava/lang/Float;
    const/high16 v4, 0x4420

    iget-object v5, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v5}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v5

    mul-float v3, v4, v5

    .line 1196
    .local v3, cardWidthPx:F
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->calculateCardSpacingPx()I
    invoke-static {v4}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2500(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v4

    int-to-float v2, v4

    .line 1197
    .local v2, cardSpacingPx:F
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v5, v3, v2

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->val$animateInView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 1199
    .local v0, animateInViewScale:F
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->val$animateInView:Landroid/view/View;

    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_scale:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1202
    iget-object v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->val$animateInView:Landroid/view/View;

    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_animate_translate_x_offset:I

    iget-object v6, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v6}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v6

    iget-object v7, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$8;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v7}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1204
    return-void
.end method
