.class public abstract Lcom/google/glass/input/InputDetectingActivity;
.super Landroid/app/Activity;
.source "InputDetectingActivity.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# instance fields
.field private inputDetector:Lcom/google/glass/input/InputDetector;

.field private keyDetector:Lcom/google/glass/input/KeyDetector;

.field private touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->areOrientationSensorsStarted()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 91
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method protected identityHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 128
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onCreate(%s, %s):"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lcom/google/glass/input/InputDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/InputDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    .line 35
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 36
    new-instance v0, Lcom/google/glass/input/KeyDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/KeyDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onDestroy: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 100
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDisallowedInput()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

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
    .parameter "intent"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onNewIntent(%s, %s):"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPause: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipeX"
    .parameter "numSwipeY"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onResume: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 42
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onStart: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onStop: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected startOrientationSensors()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->startOrientationSensors()V

    .line 192
    return-void
.end method

.method protected stopOrientationSensors()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->stopOrientationSensors()V

    .line 197
    return-void
.end method
