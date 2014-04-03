.class final Lcom/google/glass/widget/horizontalscroll/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/d;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/d;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/d;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Z)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/d;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-static {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->b(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    return-void
.end method
