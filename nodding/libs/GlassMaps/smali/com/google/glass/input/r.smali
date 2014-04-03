.class public final Lcom/google/glass/input/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$TwoFingerScrollListener;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Lcom/google/glass/input/InputListener;

.field private final c:Lcom/google/glass/util/bj;

.field private final d:Lcom/google/android/glass/touchpad/GestureDetector;

.field private e:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/r;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/r;->b:Lcom/google/glass/input/InputListener;

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

    iput-object v0, p0, Lcom/google/glass/input/r;->d:Lcom/google/android/glass/touchpad/GestureDetector;

    new-instance v0, Lcom/google/glass/util/bj;

    invoke-direct {v0, p1}, Lcom/google/glass/util/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/r;->c:Lcom/google/glass/util/bj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/r;->e:I

    return-void
.end method

.method private a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/r;->b:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->a(IZ)Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/r;->b:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/r;->c:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IFFFFII)Z
    .locals 8

    iget-object v0, p0, Lcom/google/glass/input/r;->b:Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->a(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/r;->c:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/r;->b:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/r;->c:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/r;->d:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onFingerCountChanged(II)V
    .locals 1

    iput p2, p0, Lcom/google/glass/input/r;->e:I

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/google/glass/input/r;->a(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/input/r;->a:Lcom/google/glass/logging/i;

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

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/glass/input/s;->a:[I

    invoke-virtual {p1}, Lcom/google/android/glass/touchpad/Gesture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/google/glass/input/r;->e:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/r;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/google/glass/input/r;->e:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/r;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/google/glass/input/r;->e:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/r;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/google/glass/input/r;->e:I

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/r;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google/glass/input/r;->a()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onScroll(FFF)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget v1, p0, Lcom/google/glass/input/r;->e:I

    neg-float v4, p3

    move-object v0, p0

    move v2, p1

    move v5, v3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/input/r;->a(IFFFFII)Z

    return v6
.end method

.method public final onTwoFingerScroll(FFF)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget v1, p0, Lcom/google/glass/input/r;->e:I

    neg-float v4, p3

    move-object v0, p0

    move v2, p1

    move v5, v3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/input/r;->a(IFFFFII)Z

    return v6
.end method
