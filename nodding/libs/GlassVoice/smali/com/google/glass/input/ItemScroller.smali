.class public Lcom/google/glass/input/ItemScroller;
.super Lcom/google/glass/input/SimpleInputListener;
.source "ItemScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/ItemScroller$5;,
        Lcom/google/glass/input/ItemScroller$Scrollable;,
        Lcom/google/glass/input/ItemScroller$SwipeAxis;
    }
.end annotation


# static fields
.field private static final DISABLE_ONE_FINGER_INERTIAL:Z = false

.field private static final FLING_DECELERATION_FACTOR:F = 10.0f

.field public static final LOOKUP_HINT_SCALE:F = 0.8f

.field public static final MAXIMUM_FLING_DISTANCE:F = 20.0f

.field private static final MILLIS_BEFORE_ZOOM:J = 0xfaL

.field private static final MINIMUM_ANIMATION_TIME_MILLIS:J = 0x64L

.field private static final MINIMUM_DRAG_DISTANCE_TO_START:F = 750.0f

.field private static final MINIMUM_FLING_DISTANCE_TO_START:F = 2.0f

.field public static final MINIMUM_SCALE:F = 0.33f

.field private static final MSG_FINISH_SCALE:I = 0x1

.field private static final MSG_STOP_FLING:I = 0x0

.field private static final OVERSCROLL_AMOUNT:F = 0.49f

.field private static final SCALE_ANIMATION_DURATION_MILLIS:J = 0xfaL

.field private static final TOUCH_PIXELS_PER_ITEM:I = 0x5dc

.field private static final VERBOSE_DEBUG:Z

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private animationLeftover:F

.field private animationSelfChangeHandler:Landroid/os/Handler;

.field private dragVelocity:F

.field private flingAnimator:Landroid/animation/ValueAnimator;

.field private flingShouldSnapOnEnd:Z

.field private lastAccumulatorX:F

.field private lastAnimatedValue:F

.field private lastFingerCount:F

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scaleDestination:F

.field private scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

.field private swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

.field private userTouching:Z

.field private zoomedOutOnUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/ItemScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/input/ItemScroller$Scrollable;)V
    .locals 1
    .parameter "scrollable"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/glass/input/SimpleInputListener;-><init>()V

    .line 99
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    .line 155
    iput-object p1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    .line 157
    new-instance v0, Lcom/google/glass/input/ItemScroller$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/input/ItemScroller$1;-><init>(Lcom/google/glass/input/ItemScroller;Lcom/google/glass/input/ItemScroller$Scrollable;)V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;

    .line 172
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->setupAnimations()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/ItemScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/input/ItemScroller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->cutFlingShort()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/input/ItemScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->flingShouldSnapOnEnd:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/input/ItemScroller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/ItemScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/ItemScroller;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/input/ItemScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/input/ItemScroller;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/ItemScroller;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/input/ItemScroller;Z)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->leftEdge(Z)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/input/ItemScroller;Z)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->rightEdge(Z)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/input/ItemScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomIn()Z

    move-result v0

    return v0
.end method

.method private animateByItem(FJ)Z
    .locals 1
    .parameter "deltaItem"
    .parameter "duration"

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJZ)Z

    move-result v0

    return v0
.end method

.method private animateByItem(FJZ)Z
    .locals 7
    .parameter "deltaItem"
    .parameter "duration"
    .parameter "snapOnEnd"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 345
    const-string v2, "animateByItem, from: %s by: %s duration: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v4}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 348
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 351
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomIn()Z

    .line 360
    :goto_0
    return v0

    .line 356
    :cond_0
    iput-boolean p4, p0, Lcom/google/glass/input/ItemScroller;->flingShouldSnapOnEnd:Z

    .line 357
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v6, [F

    aput v5, v3, v0

    aput p1, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 359
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v1

    .line 360
    goto :goto_0
.end method

.method private cutFlingShort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    const-string v0, "cutFlingShort"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void
.end method

.method private getDecelerationFactor(F)F
    .locals 4
    .parameter "velocity"

    .prologue
    const/high16 v1, 0x4120

    .line 365
    invoke-direct {p0, p1, v1}, Lcom/google/glass/input/ItemScroller;->travelDistance(FF)F

    move-result v0

    .line 366
    .local v0, baseTravelDistance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41a0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 373
    :goto_0
    return v1

    :cond_0
    mul-float v1, p1, p1

    const/high16 v2, 0x4220

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private incrementItem(F)V
    .locals 3
    .parameter "deltaItem"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    add-float/2addr v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 668
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 669
    return-void
.end method

.method private isOverscrolled()Z
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->overscrolledLeft()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->overscrolledRight()Z

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

.method private leftEdge(Z)F
    .locals 1
    .parameter "allowOverscroll"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    const v0, -0x41051eb8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "message"
    .parameter "args"

    .prologue
    .line 684
    return-void
.end method

.method private overscrolledLeft()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overscrolledRight()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rangeDeltaItem(FZ)F
    .locals 2
    .parameter "deltaItem"
    .parameter "allowOverscroll"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    add-float/2addr v1, p1

    invoke-direct {p0, v1, p2}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v0

    .line 315
    .local v0, itemIfDeltaApplied:F
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    sub-float v1, v0, v1

    return v1
.end method

.method private rangeItem(FZ)F
    .locals 2
    .parameter "item"
    .parameter "allowOverscroll"

    .prologue
    .line 309
    invoke-direct {p0, p2}, Lcom/google/glass/input/ItemScroller;->leftEdge(Z)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/glass/input/ItemScroller;->rightEdge(Z)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private rightEdge(Z)F
    .locals 2
    .parameter "allowOverscroll"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    .line 301
    .local v0, rightEdge:F
    if-eqz p1, :cond_0

    .line 302
    const v1, 0x3efae148

    add-float/2addr v0, v1

    .line 304
    :cond_0
    return v0
.end method

.method private setAnimationLeftover(F)V
    .locals 0
    .parameter "leftover"

    .prologue
    .line 320
    iput p1, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    .line 321
    return-void
.end method

.method private setupAnimations()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    .line 179
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/ItemScroller$2;

    invoke-direct {v1, p0}, Lcom/google/glass/input/ItemScroller$2;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 229
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/ItemScroller$3;

    invoke-direct {v1, p0}, Lcom/google/glass/input/ItemScroller$3;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/ItemScroller$4;

    invoke-direct {v1, p0}, Lcom/google/glass/input/ItemScroller$4;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    return-void
.end method

.method private shouldStartInertialScroll()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 492
    iget v6, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    const v7, 0x3ea8f5c3

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    iget v6, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    move v0, v4

    .line 493
    .local v0, alreadyInertial:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 506
    :cond_0
    :goto_1
    return v4

    .end local v0           #alreadyInertial:Z
    :cond_1
    move v0, v5

    .line 492
    goto :goto_0

    .line 498
    .restart local v0       #alreadyInertial:Z
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->isOverscrolled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 499
    iget v6, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x443b8000

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    move v1, v4

    .line 500
    .local v1, draggedFarEnough:Z
    :goto_2
    iget v6, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    const/high16 v7, 0x4120

    invoke-direct {p0, v6, v7}, Lcom/google/glass/input/ItemScroller;->snappedStoppingPoint(FF)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v7}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 502
    .local v2, travelDistance:F
    const/high16 v6, 0x4000

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    move v3, v4

    .line 503
    .local v3, willTravelFarEnough:Z
    :goto_3
    if-eqz v3, :cond_3

    if-nez v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_1

    .end local v1           #draggedFarEnough:Z
    .end local v2           #travelDistance:F
    .end local v3           #willTravelFarEnough:Z
    :cond_4
    move v1, v5

    .line 499
    goto :goto_2

    .restart local v1       #draggedFarEnough:Z
    .restart local v2       #travelDistance:F
    :cond_5
    move v3, v5

    .line 502
    goto :goto_3

    .end local v1           #draggedFarEnough:Z
    .end local v2           #travelDistance:F
    :cond_6
    move v4, v5

    .line 506
    goto :goto_1
.end method

.method private snapToNearestInDirection(F)Z
    .locals 10
    .parameter "direction"

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    .line 465
    const-string v2, "snapToNearestInDirection: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    cmpl-float v2, p1, v5

    if-nez v2, :cond_1

    .line 467
    iget v2, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    add-float/2addr v2, v5

    invoke-direct {p0, v2, v1}, Lcom/google/glass/input/ItemScroller;->rangeDeltaItem(FZ)F

    move-result v1

    invoke-direct {p0, v1, v8, v9}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v1

    .line 486
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    const/high16 v2, -0x4080

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 470
    iget v2, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    sub-float/2addr v2, v5

    invoke-direct {p0, v2, v1}, Lcom/google/glass/input/ItemScroller;->rangeDeltaItem(FZ)F

    move-result v1

    invoke-direct {p0, v1, v8, v9}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v1

    goto :goto_0

    .line 472
    :cond_2
    cmpl-float v2, p1, v7

    if-nez v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_3

    .line 476
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v2

    iget v3, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    .line 477
    .local v0, snapTo:F
    const-string v2, "Confirm while moving one item at a time. Snapping to: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2, v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    goto :goto_0

    .line 483
    .end local v0           #snapTo:F
    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    move-result v1

    goto :goto_0
.end method

.method private snappedStoppingPoint(FF)I
    .locals 7
    .parameter "velocity"
    .parameter "deceleration"

    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    neg-float v3, v3

    mul-float v0, v3, p2

    .line 387
    .local v0, baseDeceleration:F
    const-string v3, "Using deceleration factor: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->timeToStop(FF)F

    move-result v1

    .line 389
    .local v1, flingTime:F
    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v3

    mul-float v4, p1, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v0

    mul-float v5, v1, v1

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 391
    .local v2, stoppingPoint:F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method private startFling(F)V
    .locals 7
    .parameter "velocity"

    .prologue
    .line 413
    const-string v3, "startFling with velocity: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 415
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->getDecelerationFactor(F)F

    move-result v0

    .line 416
    .local v0, deceleration:F
    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->timeToStop(FF)F

    move-result v3

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-long v1, v3

    .line 418
    .local v1, flingTime:J
    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->travelDistance(FF)F

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomOut()V

    .line 421
    :cond_0
    return-void
.end method

.method private stopFling()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "stopFling"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 409
    return-void
.end method

.method private timeToStop(FF)F
    .locals 3
    .parameter "velocity"
    .parameter "deceleration"

    .prologue
    .line 379
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    mul-float v0, v2, p2

    .line 380
    .local v0, baseDeceleration:F
    neg-float v2, p1

    div-float v1, v2, v0

    .line 381
    .local v1, timeToStop:F
    return v1
.end method

.method private travelDistance(FF)F
    .locals 2
    .parameter "velocity"
    .parameter "deceleration"

    .prologue
    .line 396
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->snappedStoppingPoint(FF)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private zoomIn()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    .line 265
    iget v2, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 275
    :goto_0
    return v0

    .line 270
    :cond_0
    const-string v2, "zoomIn"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 272
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v4}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v4

    aput v4, v3, v0

    aput v5, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 273
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    iput v5, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    move v0, v1

    .line 275
    goto :goto_0
.end method

.method private zoomOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x3ea8f5c3

    .line 252
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "zoomOut"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 259
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 261
    iput v3, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    goto :goto_0
.end method


# virtual methods
.method public getAnticipatedSettlePosition(F)I
    .locals 4
    .parameter "scrollVelocity"

    .prologue
    .line 514
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 521
    :goto_0
    return v1

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->getDecelerationFactor(F)F

    move-result v0

    .line 518
    .local v0, deceleration:F
    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->snappedStoppingPoint(FF)I

    move-result v1

    .line 519
    .local v1, position:I
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 520
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 521
    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 594
    const-string v0, "onConfirm"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    .line 596
    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->zoomedOutOnUp:Z

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 5
    .parameter "count"
    .parameter "wentDown"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 526
    if-eqz p2, :cond_2

    .line 527
    if-ne p1, v1, :cond_1

    .line 528
    const-string v0, "Down"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    iput-boolean v1, p0, Lcom/google/glass/input/ItemScroller;->userTouching:Z

    .line 530
    iput v3, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    .line 531
    iput v3, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    .line 532
    sget-object v0, Lcom/google/glass/input/ItemScroller$SwipeAxis;->NONE:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    .line 533
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 567
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/SimpleInputListener;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0

    .line 534
    :cond_1
    if-le p1, v1, :cond_0

    .line 535
    const-string v0, "%s fingers down"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_2
    if-ne p1, v4, :cond_3

    .line 539
    const-string v0, "3rd finger up"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 540
    :cond_3
    if-ne p1, v1, :cond_4

    .line 541
    const-string v0, "2nd finger up"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    :cond_4
    if-nez p1, :cond_0

    .line 543
    const-string v0, "Up"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    const-string v0, "Drag distance, velocity: %s, %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    iget v4, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v0

    const/high16 v3, 0x3f80

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->zoomedOutOnUp:Z

    .line 546
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->shouldStartInertialScroll()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 547
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->startFling(F)V

    .line 563
    :goto_2
    iput-boolean v2, p0, Lcom/google/glass/input/ItemScroller;->userTouching:Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 545
    goto :goto_1

    .line 551
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomIn()Z

    .line 553
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v3, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v0, v3, :cond_7

    .line 556
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    goto :goto_2

    .line 560
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    goto :goto_2
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 7
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    const/high16 v6, -0x4080

    .line 603
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->NON_MCKENZIAN:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 604
    mul-float/2addr p2, v6

    .line 605
    mul-float/2addr p4, v6

    .line 614
    :cond_0
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v6, Lcom/google/glass/input/ItemScroller$SwipeAxis;->NONE:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v5, v6, :cond_1

    .line 615
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 616
    const-string v5, "Initial swipe axis vertical, ignoring rest of swipe."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    sget-object v5, Lcom/google/glass/input/ItemScroller$SwipeAxis;->VERTICAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    .line 624
    :cond_1
    :goto_0
    int-to-float v5, p1

    iget v6, p0, Lcom/google/glass/input/ItemScroller;->lastFingerCount:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v6, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v5, v6, :cond_2

    .line 625
    iget v5, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    sub-float v3, v5, p2

    .line 626
    .local v3, deltaX:F
    const v5, 0x44bb8000

    iget-object v6, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v6

    mul-float v4, v5, v6

    .line 627
    .local v4, touchPixelsPerItem:F
    const/4 v2, 0x0

    .line 629
    .local v2, deltaItem:F
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->isOverscrolled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 632
    div-float v2, v3, v4

    .line 649
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/glass/input/ItemScroller;->incrementItem(F)V

    .line 652
    div-float v5, p4, v4

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    .line 655
    .end local v2           #deltaItem:F
    .end local v3           #deltaX:F
    .end local v4           #touchPixelsPerItem:F
    :cond_2
    iput p2, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    .line 656
    int-to-float v5, p1

    iput v5, p0, Lcom/google/glass/input/ItemScroller;->lastFingerCount:F

    .line 657
    const/4 v5, 0x1

    return v5

    .line 618
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 619
    sget-object v5, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    goto :goto_0

    .line 636
    .restart local v2       #deltaItem:F
    .restart local v3       #deltaX:F
    .restart local v4       #touchPixelsPerItem:F
    :cond_4
    const/4 v0, 0x0

    .line 637
    .local v0, amountOfOverscrollAlready:F
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 638
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 644
    :cond_5
    :goto_2
    const/high16 v5, 0x3f80

    const v6, 0x3efae148

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    mul-float v1, v5, v3

    .line 645
    .local v1, dampenedDeltaX:F
    div-float v2, v1, v4

    goto :goto_1

    .line 639
    .end local v1           #dampenedDeltaX:F
    :cond_6
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    iget-object v6, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 640
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    iget-object v6, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    sub-float v0, v5, v6

    goto :goto_2
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 5
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 572
    const-string v2, "onSwipe: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object p2, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    iget-boolean v2, p0, Lcom/google/glass/input/ItemScroller;->userTouching:Z

    if-eqz v2, :cond_0

    .line 589
    :goto_0
    return v0

    .line 579
    :cond_0
    sget-object v0, Lcom/google/glass/input/ItemScroller$5;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 589
    goto :goto_0

    .line 581
    :pswitch_0
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    goto :goto_1

    .line 584
    :pswitch_1
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    goto :goto_1

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setItem(I)V
    .locals 4
    .parameter "item"

    .prologue
    .line 673
    const-string v0, "Hard setting to: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 675
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 677
    return-void
.end method

.method public snapToNearest(Z)Z
    .locals 5
    .parameter "animate"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v0, 0x0

    .line 430
    const-string v1, "snapToNearest: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    sub-float/2addr v0, v1

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 446
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 447
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 450
    iput v4, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    .line 451
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1, v4}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    goto :goto_0
.end method
