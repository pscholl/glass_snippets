.class public final Lcom/google/glass/input/TouchDetector;
.super Ljava/lang/Object;
.source "TouchDetector.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$TwoFingerScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/TouchDetector$1;
    }
.end annotation


# static fields
.field private static final DEPRECATED_PARAM_FLOAT:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEPRECATED_PARAM_INT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private fingerCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private final inputListener:Lcom/google/glass/input/InputListener;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/TouchDetector;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2
    .parameter "context"
    .parameter "inputListener"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    .line 64
    new-instance v0, Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-direct {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setTwoFingerScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$TwoFingerScrollListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setFingerListener(Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/TouchDetector;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 70
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    .line 72
    return-void
.end method

.method private dispatchConfirm()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchFingerCountChanged(IZ)V
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onFingerCountChanged(IZ)Z

    .line 139
    return-void
.end method

.method private dispatchPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFingerCountChanged(II)V
    .locals 1
    .parameter "previousCount"
    .parameter "currentCount"

    .prologue
    .line 116
    iput p2, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    .line 117
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/google/glass/input/TouchDetector;->dispatchFingerCountChanged(IZ)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 4
    .parameter "gesture"

    .prologue
    const/4 v0, 0x0

    .line 76
    sget-object v1, Lcom/google/glass/input/TouchDetector;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGesture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v1, Lcom/google/glass/input/TouchDetector$1;->$SwitchMap$com$google$android$glass$touchpad$Gesture:[I

    invoke-virtual {p1}, Lcom/google/android/glass/touchpad/Gesture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 97
    :goto_0
    return v0

    .line 80
    :pswitch_0
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 83
    :pswitch_1
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 86
    :pswitch_2
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 89
    :pswitch_3
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-direct {p0}, Lcom/google/glass/input/TouchDetector;->dispatchConfirm()Z

    move-result v0

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onScroll(FFF)Z
    .locals 8
    .parameter "displacement"
    .parameter "delta"
    .parameter "velocity"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 102
    iget v1, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    neg-float v4, p3

    move-object v0, p0

    move v2, p1

    move v5, v3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/input/TouchDetector;->dispatchPrepareSwipe(IFFFFII)Z

    .line 104
    return v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTwoFingerScroll(FFF)Z
    .locals 8
    .parameter "displacement"
    .parameter "delta"
    .parameter "velocity"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 109
    iget v1, p0, Lcom/google/glass/input/TouchDetector;->fingerCount:I

    neg-float v4, p3

    move-object v0, p0

    move v2, p1

    move v5, v3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/input/TouchDetector;->dispatchPrepareSwipe(IFFFFII)Z

    .line 111
    return v6
.end method
