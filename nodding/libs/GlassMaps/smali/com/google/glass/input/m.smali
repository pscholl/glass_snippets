.class public final Lcom/google/glass/input/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/hardware/Sensor;

.field private e:J

.field private volatile f:F

.field private g:F

.field private final h:[F

.field private final i:[F

.field private final j:[F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Lcom/google/glass/input/n;

.field private r:Z

.field private s:J

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method static a(FF)F
    .locals 1

    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method

.method private a()V
    .locals 4

    const/16 v3, 0x4e20

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/m;->e:J

    iget-boolean v0, p0, Lcom/google/glass/input/m;->t:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    const-string v1, "OrientationHelper was already started, but got call to start again.  Punting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    const-string v1, "Registering sensors..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/m;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/m;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/google/glass/input/m;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/m;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/m;->t:Z

    goto :goto_0
.end method

.method private a(FFFJ)V
    .locals 6

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iput p1, p0, Lcom/google/glass/input/m;->k:F

    iput p2, p0, Lcom/google/glass/input/m;->l:F

    iput p3, p0, Lcom/google/glass/input/m;->m:F

    iget v0, p0, Lcom/google/glass/input/m;->n:F

    sub-float v1, p1, v0

    iget v0, p0, Lcom/google/glass/input/m;->o:F

    sub-float v2, p2, v0

    iget v0, p0, Lcom/google/glass/input/m;->p:F

    sub-float v3, p3, v0

    iget-object v0, p0, Lcom/google/glass/input/m;->q:Lcom/google/glass/input/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/m;->q:Lcom/google/glass/input/n;

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/input/n;->a(FFFJ)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/google/glass/input/m;->r:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/input/m;->s:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received NaN values from sensor, x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " y: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v0, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    const-string v1, "Rebinding since we\'re getting NaN values"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/google/glass/input/m;->r:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/input/m;->s:J

    invoke-direct {p0}, Lcom/google/glass/input/m;->b()V

    invoke-direct {p0}, Lcom/google/glass/input/m;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/google/glass/input/m;->r:Z

    if-eqz v3, :cond_4

    iput-boolean v5, p0, Lcom/google/glass/input/m;->r:Z

    sget-object v3, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    const-string v4, "Rebinding successfully gave us valid values"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    neg-float v3, v0

    float-to-double v3, v3

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v2, v0

    iget v0, p0, Lcom/google/glass/input/m;->f:F

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v1, v0

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/m;->a(FFFJ)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v0, p0, Lcom/google/glass/input/m;->t:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    const-string v1, "OrientationHelper was not started, but got call to stop.  Punting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/input/m;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unregistering sensors..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/m;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/m;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/google/glass/input/m;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/m;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v3, p0, Lcom/google/glass/input/m;->t:Z

    goto :goto_0
.end method

.method private b(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/glass/input/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/google/glass/input/m;->g:F

    sub-float v1, v0, v1

    const v2, 0x3dcccccd

    invoke-static {v1, v2}, Lcom/google/glass/input/m;->a(FF)F

    move-result v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/google/glass/input/m;->e:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x3089705f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3e80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/m;->g:F

    :cond_0
    :goto_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/google/glass/input/m;->e:J

    return-void

    :cond_1
    iget v3, p0, Lcom/google/glass/input/m;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/glass/input/m;->f:F

    const v1, 0x3727c5ac

    mul-float/2addr v0, v1

    const v1, 0x3f7fff58

    iget v2, p0, Lcom/google/glass/input/m;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/input/m;->g:F

    goto :goto_0
.end method

.method private c(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/glass/input/m;->h:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object v0, p0, Lcom/google/glass/input/m;->h:[F

    iget-object v1, p0, Lcom/google/glass/input/m;->i:[F

    invoke-static {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object v0, p0, Lcom/google/glass/input/m;->i:[F

    iget-object v1, p0, Lcom/google/glass/input/m;->h:[F

    invoke-static {v0, v3, v4, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object v0, p0, Lcom/google/glass/input/m;->h:[F

    iget-object v1, p0, Lcom/google/glass/input/m;->j:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/google/glass/input/m;->j:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v1, v0

    iget-object v0, p0, Lcom/google/glass/input/m;->j:[F

    aget v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v0, p0, Lcom/google/glass/input/m;->j:[F

    aget v0, v0, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/m;->a(FFFJ)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/input/m;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/m;->b(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/glass/input/m;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/glass/input/m;->c(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
