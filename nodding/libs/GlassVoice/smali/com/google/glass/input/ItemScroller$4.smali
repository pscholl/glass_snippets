.class Lcom/google/glass/input/ItemScroller$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/ItemScroller;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/ItemScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ItemScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/glass/input/ItemScroller$4;->this$0:Lcom/google/glass/input/ItemScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 243
    check-cast p1, Landroid/animation/ValueAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller$4;->this$0:Lcom/google/glass/input/ItemScroller;

    const-string v1, "scaleAnimator race condition occurred"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    #calls: Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/input/ItemScroller;->access$1000(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller$4;->this$0:Lcom/google/glass/input/ItemScroller;

    #getter for: Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/ItemScroller;->access$1300(Lcom/google/glass/input/ItemScroller;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :cond_0
    return-void
.end method
