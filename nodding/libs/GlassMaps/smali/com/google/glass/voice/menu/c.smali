.class final Lcom/google/glass/voice/menu/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/menu/OverscrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/OverscrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/c;->a:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/google/glass/voice/menu/c;->a:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->a(Lcom/google/glass/voice/menu/OverscrollView;F)V

    return-void
.end method
