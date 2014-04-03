.class final Lcom/google/glass/input/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/google/glass/input/ItemScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ItemScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/h;->a:Lcom/google/glass/input/ItemScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/h;->a:Lcom/google/glass/input/ItemScroller;

    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->d(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/k;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/glass/input/k;->b(F)V

    return-void
.end method
