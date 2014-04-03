.class public final Lcom/google/glass/widget/ar;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/google/glass/input/InputListener;
.implements Lcom/google/glass/widget/aq;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private c:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private d:Ljava/lang/Runnable;

.field private e:Lcom/google/glass/sound/h;

.field private f:Lcom/google/glass/input/r;

.field private g:Lcom/google/glass/widget/ValueSlider;

.field private h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

.field private i:I

.field private j:Lcom/google/glass/sound/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ar;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/widget/ar;->a:Lcom/google/glass/logging/i;

    const-string v1, "headsetPlugReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ar;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/ar;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private a(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 5

    const/high16 v4, 0x42c8

    iget-object v0, p0, Lcom/google/glass/widget/ar;->e:Lcom/google/glass/sound/h;

    iget v1, p0, Lcom/google/glass/widget/ar;->i:I

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/h;->b(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/widget/ar;->i:I

    invoke-static {v1}, Lcom/google/glass/sound/h;->a(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    sub-float/2addr v1, v3

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/glass/widget/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v1

    const-string v2, "v"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/ar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/widget/ar;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 5

    sget-object v0, Lcom/google/glass/widget/ar;->a:Lcom/google/glass/logging/i;

    const-string v1, "Initializing slider with headset state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/glass/widget/ar;->i:I

    iget-object v0, p0, Lcom/google/glass/widget/ar;->e:Lcom/google/glass/sound/h;

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/h;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/glass/sound/h;->a(I)I

    move-result v1

    new-instance v2, Lcom/google/glass/widget/VolumeControlDialog$3;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/widget/VolumeControlDialog$3;-><init>(Lcom/google/glass/widget/ar;I)V

    iget-object v3, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    sget v4, Lcom/google/glass/d/e;->ic_volume_2_large:I

    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/google/glass/widget/ValueSlider;->a(Ljava/util/Map;III)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/ar;->e:Lcom/google/glass/sound/h;

    iget v1, p0, Lcom/google/glass/widget/ar;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/sound/h;->a(II)V

    return-void
.end method

.method public final a(F)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(F)Z

    move-result v0

    return v0
.end method

.method public final a(IFFFFII)Z
    .locals 8

    const/high16 v0, 0x3f00

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/ValueSlider;->b(F)V

    iget-object v0, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iget-object v1, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1}, Lcom/google/glass/widget/ValueSlider;->a()I

    move-result v1

    int-to-float v2, v1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(IFFFFII)Z

    move-result v0

    return v0
.end method

.method public final a(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/ar;->a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/ValueSlider;->a(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/ar;->a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/ar;->a(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 4

    iget-object v0, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/ValueSlider;->a(IZ)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    iget-object v1, p0, Lcom/google/glass/widget/ar;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ValueSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/glass/widget/ar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ar;->g:Lcom/google/glass/widget/ValueSlider;

    iget-object v1, p0, Lcom/google/glass/widget/ar;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ValueSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/ar;->j:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    invoke-virtual {p0}, Lcom/google/glass/widget/ar;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ar;->f:Lcom/google/glass/input/r;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/r;->a(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected final onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/google/glass/widget/ar;->c:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/a/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.HEADSET_PLUG"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/ar;->a(Lcom/google/glass/userevent/UserEventAction;)V

    return-void
.end method

.method protected final onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/google/glass/widget/ar;->c:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/a/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->a(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/ar;->a(Lcom/google/glass/userevent/UserEventAction;)V

    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ar;->h:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->s()Z

    move-result v0

    return v0
.end method
