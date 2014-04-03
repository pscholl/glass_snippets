.class final Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addTagAnimator(Landroid/animation/ValueAnimator;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$beginningValue:F

.field final synthetic val$tagKey:I

.field final synthetic val$totalChange:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$tagKey:I

    iput p3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$beginningValue:F

    iput p4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$totalChange:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1236
    .local v0, animatedValue:Ljava/lang/Float;
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$tagKey:I

    iget v3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$beginningValue:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$9;->val$totalChange:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1237
    return-void
.end method
