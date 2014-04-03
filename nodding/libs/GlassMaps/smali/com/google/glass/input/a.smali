.class public Lcom/google/glass/input/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:F


# instance fields
.field private A:Lcom/google/glass/util/Stopwatch;

.field private B:Lcom/google/glass/util/Stopwatch;

.field private C:F

.field private D:F

.field private final d:F

.field private e:Landroid/content/Context;

.field private f:Lcom/google/glass/input/k;

.field private g:Lcom/google/glass/util/bj;

.field private h:Z

.field private i:F

.field private j:J

.field private k:Z

.field private l:F

.field private m:F

.field private n:Z

.field private o:Landroid/animation/ValueAnimator;

.field private p:F

.field private q:Ljava/util/concurrent/Executor;

.field private r:Landroid/hardware/SensorManager;

.field private s:Landroid/hardware/Sensor;

.field private t:J

.field private volatile u:F

.field private v:F

.field private w:Lcom/google/glass/sound/SoundManager;

.field private x:Z

.field private y:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private z:Lcom/google/glass/userevent/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/glass/input/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-float v0, v0

    sput v0, Lcom/google/glass/input/a;->c:F

    return-void
.end method

.method private a(FJ)F
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1}, Lcom/google/glass/input/a;->c(F)F

    move-result v1

    const/high16 v2, 0x4461

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcom/google/glass/input/a;->j:J

    sub-long v2, p2, v2

    long-to-float v2, v2

    sget v3, Lcom/google/glass/input/a;->c:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v4}, Lcom/google/glass/input/k;->c()F

    move-result v4

    iget v5, p0, Lcom/google/glass/input/a;->d:F

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/google/glass/input/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/glass/input/a;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/glass/input/a;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/a;->r:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/input/a;Lcom/google/glass/util/SafeBroadcastReceiver;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/a;->y:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object p1
.end method

.method private a(FFF)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/input/a;->a(F)Z

    move-result v0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/input/a;->m:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/glass/input/a;->m:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/glass/input/a;->m:F

    add-float/2addr v1, p3

    iput v1, p0, Lcom/google/glass/input/a;->m:F

    if-eqz v0, :cond_1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/input/a;->m:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/google/glass/input/a;->m:F

    :cond_1
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/glass/input/a;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/google/glass/input/a;->v:F

    sub-float v1, v0, v1

    const v2, 0x3dcccccd

    invoke-static {v1, v2}, Lcom/google/glass/input/m;->a(FF)F

    move-result v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/google/glass/input/a;->t:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Lcom/google/glass/input/a;->c:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3e80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/a;->v:F

    :goto_0
    iget v0, p0, Lcom/google/glass/input/a;->u:F

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-boolean v1, p0, Lcom/google/glass/input/a;->k:Z

    if-nez v1, :cond_0

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/a;->c(FJ)V

    :cond_0
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/a;->b(FJ)V

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/a;->c(FJ)V

    :cond_1
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/google/glass/input/a;->t:J

    return-void

    :cond_2
    iget v3, p0, Lcom/google/glass/input/a;->u:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/glass/input/a;->u:F

    const v1, 0x3727c5ac

    mul-float/2addr v0, v1

    const v1, 0x3f7fff58

    iget v2, p0, Lcom/google/glass/input/a;->v:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/input/a;->v:F

    goto :goto_0
.end method

.method private a(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/input/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/input/a;->x:Z

    return p1
.end method

.method private a(Z)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/glass/input/a;->h:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/glass/input/a;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/a;->w:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/a;->x:Z

    :cond_1
    iput-boolean p1, p0, Lcom/google/glass/input/a;->h:Z

    return p1
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/input/a;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/a;->y:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private b(F)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/google/glass/input/a;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/glass/input/a;->l:F

    return-void
.end method

.method private b(FJ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v1

    iget v0, p0, Lcom/google/glass/input/a;->i:F

    sub-float v2, p1, v0

    invoke-direct {p0}, Lcom/google/glass/input/a;->d()Z

    move-result v3

    invoke-direct {p0, v2}, Lcom/google/glass/input/a;->b(F)V

    const/high16 v0, 0x40c0

    div-float v0, v2, v0

    iget-object v4, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v4}, Lcom/google/glass/input/k;->a()F

    move-result v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v4}, Lcom/google/glass/input/k;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/glass/input/a;->a(FFF)V

    iget v2, p0, Lcom/google/glass/input/a;->m:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/glass/input/a;->l:F

    invoke-direct {p0, v2, p2, p3}, Lcom/google/glass/input/a;->a(FJ)F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v2}, Lcom/google/glass/input/k;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v2, v0}, Lcom/google/glass/input/k;->a(F)V

    iget v2, p0, Lcom/google/glass/input/a;->l:F

    invoke-direct {p0, v2}, Lcom/google/glass/input/a;->d(F)V

    :cond_1
    :goto_1
    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v2}, Lcom/google/glass/input/k;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/input/a;->g:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v2, "Changed focused item while head scrolling"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v0}, Lcom/google/glass/input/k;->a()F

    move-result v0

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/glass/input/a;->C:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/glass/input/a;->C:F

    iget v1, p0, Lcom/google/glass/input/a;->D:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/input/a;->D:F

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v2, v0}, Lcom/google/glass/input/k;->a(F)V

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/google/glass/input/a;->h()V

    goto :goto_1
.end method

.method private static c(F)F
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4190

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c0

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/glass/input/a;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/a;->s:Landroid/hardware/Sensor;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/input/a;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/b;

    invoke-direct {v1, p0}, Lcom/google/glass/input/b;-><init>(Lcom/google/glass/input/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(FJ)V
    .locals 1

    iput p1, p0, Lcom/google/glass/input/a;->i:F

    iput-wide p2, p0, Lcom/google/glass/input/a;->j:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/a;->k:Z

    return-void
.end method

.method private d(F)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x3f00

    invoke-static {p1}, Lcom/google/glass/input/a;->c(F)F

    move-result v1

    const v2, 0x3e2e147a

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/glass/input/a;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/input/a;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v1, v0}, Lcom/google/glass/input/k;->b(F)V

    return-void
.end method

.method static synthetic d(Lcom/google/glass/input/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/input/a;->c()V

    return-void
.end method

.method private d()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/google/glass/input/a;->l:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4190

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Stopping double blink detector..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/a;->e:Landroid/content/Context;

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->c(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Double blink detector is stopped."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/input/a;->e:Landroid/content/Context;

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->a(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/a;->e:Landroid/content/Context;

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->b(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/a;->f()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Failed to stop double blink detector."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/glass/input/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/input/a;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/glass/input/a;->e:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    invoke-static {v1, v2, v3, v0}, Lcom/google/glass/gesture/EyeGestureUtils;->a(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Wink detector started."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Failed to start wink detector."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/input/a;->g:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    iput v1, p0, Lcom/google/glass/input/a;->l:F

    iput v1, p0, Lcom/google/glass/input/a;->m:F

    iget-object v0, p0, Lcom/google/glass/input/a;->B:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->c()Lcom/google/glass/util/Stopwatch;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/input/a;->a(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/a;->k:Z

    invoke-static {}, Lcom/google/glass/util/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/input/c;

    invoke-direct {v1, p0}, Lcom/google/glass/input/c;-><init>(Lcom/google/glass/input/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    iget v0, p0, Lcom/google/glass/input/a;->p:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/input/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "zoomToPanScale"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/a;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/google/glass/input/a;->o:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/google/glass/input/a;->f:Lcom/google/glass/input/k;

    invoke-interface {v2}, Lcom/google/glass/input/k;->c()F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/glass/input/a;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput v3, p0, Lcom/google/glass/input/a;->p:F

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/glass/input/a;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/a;->g()V

    invoke-direct {p0}, Lcom/google/glass/input/a;->e()V

    iget-object v0, p0, Lcom/google/glass/input/a;->z:Lcom/google/glass/userevent/a;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    iget-object v3, p0, Lcom/google/glass/input/a;->A:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v3}, Lcom/google/glass/util/Stopwatch;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    invoke-direct {p0, p1}, Lcom/google/glass/input/a;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method
