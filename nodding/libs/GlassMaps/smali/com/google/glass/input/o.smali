.class public final Lcom/google/glass/input/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:J

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/google/glass/input/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/glass/input/o;->h:Lcom/google/glass/input/p;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/input/o;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/glass/input/o;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/input/o;->a(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/o;->c:Landroid/hardware/Sensor;

    return-void
.end method

.method private static a(FF)F
    .locals 1

    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method

.method private static a(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invensense"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MPL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v4, "Using sensor: %s (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v1, "Could not find Invensese MPL sensor of type %s."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v1, "No default sensor of type %s found."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v2, "Using default sensor: %s (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/glass/input/o;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/google/glass/input/o;->f:F

    sub-float v1, v0, v1

    const v2, 0x3dcccccd

    invoke-static {v1, v2}, Lcom/google/glass/input/o;->a(FF)F

    move-result v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/google/glass/input/o;->d:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x3089705f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3e80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/o;->f:F

    :cond_0
    :goto_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/google/glass/input/o;->d:J

    return-void

    :cond_1
    iget v3, p0, Lcom/google/glass/input/o;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/glass/input/o;->e:F

    iget-object v1, p0, Lcom/google/glass/input/o;->h:Lcom/google/glass/input/p;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/input/o;->h:Lcom/google/glass/input/p;

    iget v2, p0, Lcom/google/glass/input/o;->e:F

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/google/glass/input/p;->a(F)V

    :cond_2
    const v1, 0x3727c5ac

    mul-float/2addr v0, v1

    const v1, 0x3f7fff58

    iget v2, p0, Lcom/google/glass/input/o;->f:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/input/o;->f:F

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/o;->d:J

    iget-boolean v0, p0, Lcom/google/glass/input/o;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v1, "OrientationHelper was already started, but got call to start again.  Punting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v1, "Registering sensors..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/o;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/o;->c:Landroid/hardware/Sensor;

    const/16 v2, 0x4e20

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/o;->g:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-boolean v0, p0, Lcom/google/glass/input/o;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v1, "OrientationHelper was not started, but got call to stop.  Punting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/input/o;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unregistering sensors..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/input/o;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/o;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v3, p0, Lcom/google/glass/input/o;->g:Z

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/input/o;->g:Z

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/input/o;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/o;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method
