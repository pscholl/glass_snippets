.class public Lcom/google/glass/input/InputDetectingFrameLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/glass/input/InputListener;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:Lcom/google/glass/input/d;

.field private c:Lcom/google/glass/input/r;

.field private d:Lcom/google/glass/input/l;

.field private e:Lcom/google/glass/input/InputListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/InputDetectingFrameLayout;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/google/glass/input/d;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/d;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->b:Lcom/google/glass/input/d;

    new-instance v0, Lcom/google/glass/input/r;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/r;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->c:Lcom/google/glass/input/r;

    new-instance v0, Lcom/google/glass/input/l;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/input/l;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->d:Lcom/google/glass/input/l;

    return-void
.end method

.method private a()Lcom/google/glass/input/InputListener;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lcom/google/glass/input/InputListener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/glass/input/InputListener;

    :goto_1
    return-object v0

    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(F)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->a(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IFFFFII)Z
    .locals 8

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->a(IFFFFII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->a(IZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->isFocusableInTouchMode()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingFrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

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

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v10}, Lcom/google/glass/input/InputDetectingFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->g()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->requestFocus()Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->c:Lcom/google/glass/input/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->c:Lcom/google/glass/input/r;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/r;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->d:Lcom/google/glass/input/l;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/l;->a(ILandroid/view/KeyEvent;)Z

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

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->d:Lcom/google/glass/input/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/l;->b(ILandroid/view/KeyEvent;)Z

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

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingFrameLayout;->a()Lcom/google/glass/input/InputListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/input/InputDetectingFrameLayout;->a:Lcom/google/glass/logging/i;

    const-string v1, "Could not find an InputListener in the children heirarchy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/InputDetectingFrameLayout;->e:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->s()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
