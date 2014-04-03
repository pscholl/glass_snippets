.class public Lcom/google/glass/input/InputDetector;
.super Ljava/lang/Object;
.source "InputDetector.java"


# static fields
.field private static final MAX_PITCH_ACCUMULATIONS:I = 0x14

.field private static final SCROLL_PIXELS_PER_PITCH_DEGREE:F = 40.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accumulatedPitchDelta:F

.field private hasPitch:Z

.field private final inputListener:Lcom/google/glass/input/InputListener;

.field private lastHeadScrollTimeMillis:J

.field private lastPitch:F

.field private numPitchAccumulations:I

.field private final pitchHelper:Lcom/google/glass/input/PitchHelper;

.field private final pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2
    .parameter "context"
    .parameter "inputListener"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/glass/input/InputDetector$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetector$1;-><init>(Lcom/google/glass/input/InputDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    .line 76
    new-instance v0, Lcom/google/glass/input/PitchHelper;

    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/PitchHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/PitchHelper$PitchListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/InputDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/glass/input/InputDetector;->hasPitch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/input/InputDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/glass/input/InputDetector;->hasPitch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/input/InputDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/input/InputDetector;->lastPitch:F

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/input/InputDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/google/glass/input/InputDetector;->lastPitch:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/input/InputDetector;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/input/InputDetector;->handleHeadScroll(F)V

    return-void
.end method

.method private dispatchVerticalHeadScroll(F)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->onVerticalHeadScroll(F)Z

    .line 94
    return-void
.end method

.method private handleHeadScroll(F)V
    .locals 6
    .parameter "deltaY"

    .prologue
    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, currentTimeMillis:J
    iget-wide v2, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 105
    iget v2, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    .line 106
    iget v2, p0, Lcom/google/glass/input/InputDetector;->numPitchAccumulations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/input/InputDetector;->numPitchAccumulations:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 108
    iget v2, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    invoke-direct {p0, v2}, Lcom/google/glass/input/InputDetector;->dispatchVerticalHeadScroll(F)V

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    .line 114
    :cond_0
    iput-wide v0, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    .line 115
    return-void
.end method


# virtual methods
.method areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->isStarted()Z

    move-result v0

    return v0
.end method

.method public startOrientationSensors()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->start()V

    .line 81
    return-void
.end method

.method public stopOrientationSensors()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->stop()V

    .line 90
    return-void
.end method
