.class Lcom/google/glass/voice/GuardHintAnimator$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "GuardHintAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/GuardHintAnimator;->animateOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/GuardHintAnimator;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/GuardHintAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    #calls: Lcom/google/glass/voice/GuardHintAnimator;->nullifyAnimators()V
    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->access$000(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    #calls: Lcom/google/glass/voice/GuardHintAnimator;->setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 151
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    #calls: Lcom/google/glass/voice/GuardHintAnimator;->nullifyAnimators()V
    invoke-static {v0}, Lcom/google/glass/voice/GuardHintAnimator;->access$000(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    const/4 v1, 0x0

    #calls: Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$200(Lcom/google/glass/voice/GuardHintAnimator;Z)V

    .line 156
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator$2;->this$0:Lcom/google/glass/voice/GuardHintAnimator;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    #calls: Lcom/google/glass/voice/GuardHintAnimator;->setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator;->access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 157
    return-void
.end method
