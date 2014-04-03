.class public Lcom/google/glass/util/AnimationUtils;
.super Landroid/view/animation/AnimationUtils;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/view/animation/AnimationUtils;-><init>()V

    return-void
.end method

.method public static isAnimating(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 17
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "view"
    .parameter "animation"

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 23
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    return-void
.end method
