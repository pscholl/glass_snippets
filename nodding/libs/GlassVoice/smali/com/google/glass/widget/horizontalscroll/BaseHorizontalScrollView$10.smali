.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addScaleAnimation(Landroid/animation/ValueAnimator;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

.field final synthetic val$diff:F

.field final synthetic val$fromValue:F


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1249
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.10;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iput p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;->val$fromValue:F

    iput p3, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;->val$diff:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 1252
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.10;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1253
    .local v0, animateValue:Ljava/lang/Float;
    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;
    invoke-static {v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2700(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/input/ItemScroller$Scrollable;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;->val$fromValue:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$10;->val$diff:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    .line 1254
    return-void
.end method
