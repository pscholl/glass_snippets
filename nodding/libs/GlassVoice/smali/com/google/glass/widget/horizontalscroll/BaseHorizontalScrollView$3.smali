.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;
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
    .line 342
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.3;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 345
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.3;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$3;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->inAnimationFrame:Z
    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$202(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    .line 346
    return-void
.end method
