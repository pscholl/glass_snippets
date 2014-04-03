.class public abstract Lcom/google/glass/input/InputDetectingActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/google/glass/input/InputListener;


# instance fields
.field private a:Lcom/google/glass/input/d;

.field private b:Lcom/google/glass/input/r;

.field private c:Lcom/google/glass/input/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(IFFFFII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()Lcom/google/glass/logging/i;
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->a(Lcom/google/glass/input/InputListener$DismissAction;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onCreate(%s, %s):"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/input/d;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/d;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->a:Lcom/google/glass/input/d;

    new-instance v0, Lcom/google/glass/input/r;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/r;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->b:Lcom/google/glass/input/r;

    new-instance v0, Lcom/google/glass/input/l;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/l;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->c:Lcom/google/glass/input/l;

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onDestroy: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->b:Lcom/google/glass/input/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->b:Lcom/google/glass/input/r;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/r;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/glass/input/InputDetectingActivity;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->k()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingActivity;->c:Lcom/google/glass/input/l;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/l;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->c:Lcom/google/glass/input/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/l;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onNewIntent(%s, %s):"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onPause: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onResume: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onStart: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onStop: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->w()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected r()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->a:Lcom/google/glass/input/d;

    invoke-virtual {v0}, Lcom/google/glass/input/d;->b()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final u()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->a:Lcom/google/glass/input/d;

    invoke-virtual {v0}, Lcom/google/glass/input/d;->a()V

    return-void
.end method

.method protected final v()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->a:Lcom/google/glass/input/d;

    invoke-virtual {v0}, Lcom/google/glass/input/d;->c()V

    return-void
.end method

.method protected final w()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
