.class final Lcom/google/glass/voice/k;
.super Lcom/google/glass/util/ca;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/GuardHintAnimator;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GuardHintAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/k;->a:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {p0}, Lcom/google/glass/util/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/k;->a:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->a(Lcom/google/glass/voice/GuardHintAnimator;)V

    iget-object v0, p0, Lcom/google/glass/voice/k;->a:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->a(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/k;->a:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->a(Lcom/google/glass/voice/GuardHintAnimator;)V

    iget-object v0, p0, Lcom/google/glass/voice/k;->a:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->a(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    return-void
.end method
