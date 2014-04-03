.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
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
    .line 353
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.4;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.4;"
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z
    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$202(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    .line 357
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->updateViews(Z)V

    .line 358
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$4;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->translateAndScaleChildren()V
    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$300(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 359
    return-void
.end method
