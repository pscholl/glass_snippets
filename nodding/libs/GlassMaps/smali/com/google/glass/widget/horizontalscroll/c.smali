.class final Lcom/google/glass/widget/horizontalscroll/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/c;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/c;->a:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;Z)Z

    return-void
.end method
