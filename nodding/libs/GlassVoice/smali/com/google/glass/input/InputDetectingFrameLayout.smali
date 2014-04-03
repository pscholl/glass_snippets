.class public Lcom/google/glass/input/InputDetectingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "InputDetectingFrameLayout.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private childInputListener:Lcom/google/glass/input/InputListener;

.field private inputDetector:Lcom/google/glass/input/InputDetector;

.field private keyDetector:Lcom/google/glass/input/KeyDetector;

.field private touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/InputDetectingFrameLayout;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->setFocusableInTouchMode(Z)V

    .line 37
    new-instance v0, Lcom/google/glass/input/InputDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/InputDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->inputDetector:Lcom/google/glass/input/InputDetector;

    .line 38
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 39
    new-instance v0, Lcom/google/glass/input/KeyDetector;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/KeyDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->keyDetector:Lcom/google/glass/input/KeyDetector;

    .line 40
    return-void
.end method

.method private findInputListenerView()Lcom/google/glass/input/InputListener;
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 176
    .local v3, views:Ljava/util/Queue;,"Ljava/util/Queue<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 181
    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 182
    .local v0, currentView:Landroid/view/View;
    instance-of v4, v0, Lcom/google/glass/input/InputListener;

    if-eqz v4, :cond_1

    .line 183
    check-cast v0, Lcom/google/glass/input/InputListener;

    .line 191
    .end local v0           #currentView:Landroid/view/View;
    :goto_1
    return-object v0

    .line 184
    .restart local v0       #currentView:Landroid/view/View;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 185
    check-cast v2, Landroid/view/ViewGroup;

    .line 186
    .local v2, viewGroup:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 187
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 191
    .end local v0           #currentView:Landroid/view/View;
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2

    .line 54
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    .end local v0           #child:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingFrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->requestFocus()Z

    .line 46
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onCameraButtonPressed()Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 12

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 96
    .local v8, currentTime:J
    const-wide/16 v0, 0x64

    sub-long v0, v8, v0

    const-wide/16 v2, 0x64

    sub-long v2, v8, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 98
    .local v10, down:Landroid/view/MotionEvent;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 100
    .local v11, up:Landroid/view/MotionEvent;
    invoke-virtual {p0, v10}, Lcom/google/glass/input/InputDetectingFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v11}, Lcom/google/glass/input/InputDetectingFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onConfirm()Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->touchDetector:Lcom/google/glass/input/TouchDetector;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
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

    .line 79
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .line 90
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 111
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->findInputListenerView()Lcom/google/glass/input/InputListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    .line 114
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/google/glass/input/InputDetectingFrameLayout;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not find an InputListener in the children heirarchy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->childInputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->onVerticalHeadScroll(F)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
