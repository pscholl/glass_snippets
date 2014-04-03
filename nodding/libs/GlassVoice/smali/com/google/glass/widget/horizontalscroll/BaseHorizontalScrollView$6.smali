.class Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->animateTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1132
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.6;"
    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iput p2, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1135
    .local p0, this:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView.6;"
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;->this$0:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$6;->val$position:I

    #calls: Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->startZoomBackInAnimation(I)V
    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->access$2100(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;I)V

    .line 1136
    return-void
.end method
